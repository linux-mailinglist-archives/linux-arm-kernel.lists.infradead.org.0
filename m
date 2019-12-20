Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209C312813E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 18:19:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxD3k9vllJd4s1bm9qZxCieS8iI6ako27zPW0I4A3zk=; b=fuUCu3QmUyvEcY
	60h3u6Llxds7gVgX9UO1DF7TULaxEpeamTR8/ONClNKEnEtK6llO7NxW7P72HhAnj1a56eukVrTv7
	EwAwe86YZjruDn1H4IMeURIk0OWO+FMoUc6zyEdOsPLNhs2qsLwKnDSX5pi/JvTThvMTHAXssCpMQ
	HB0+75jfXkAuhhlQfEpcuH2KfO8zH7JIr/AiMC9p3BRN3UVmYcnHHrHk2X/IBEOzenrPxOLgoTc/C
	3l8fI3T/UcmBhXHigBLtqopXpxeXEd1JYTFUgH90Sr2A4QRoal7YZ8AcQn5QGPoeQv5nTXM4btf11
	kFx9JzSRehoHp5TfOzfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiLvr-0004sk-B0; Fri, 20 Dec 2019 17:19:19 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiLvg-0004sL-Id; Fri, 20 Dec 2019 17:19:08 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C450A30038D;
 Fri, 20 Dec 2019 18:17:42 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id B755E20244791; Fri, 20 Dec 2019 18:19:06 +0100 (CET)
Date: Fri, 20 Dec 2019 18:19:06 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Message-ID: <20191220171906.GR2827@hirez.programming.kicks-ass.net>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220102218.GA2259862@kroah.com>
 <20191220102256.GB2259862@kroah.com>
 <5b12b473-bf9a-6dc9-838c-f9312eb10635@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b12b473-bf9a-6dc9-838c-f9312eb10635@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexey Brodkin <alexey.brodkin@synopsys.com>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 01:05:43PM +0100, Marc Gonzalez wrote:
> If "fixing" the kmalloc strict alignment requirement on arm64 is too
> hard, maybe it would be possible to shave some of the devm memory
> waste by working with (chained) arrays of devm nodes, instead
> of a straight-up linked list. (Akin to a C++ vector) Removal would
> be expensive, but that's supposed to be a rare operation, right?

xarray might be what you're looking for.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
