Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FE47DCB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj0Mg1oUEkK73Yymfa34SVdWbGQvvoUTfKmjibTi47k=; b=g53ZsNdjC2X38H
	PuyIMmesg6d9O0pWZuXTRCRDE5afdTyEOweN3MXjGl5k+O8EwlITq0pSglnIPOj6pSvMBnj1+BVGm
	LskVCX4FQv6dhhi7lDMxjLwwj0vZX6TeMFGrKhXc6zeiAvSTSEsGMQrJeFcxcWdxTuGt4MJouOPSO
	JtwLxa9TUM4NU+RCunTQ8m0v/1t2wk3EJHCVMFz+KVhP9NW2fXttAGZ9rKIDfHJ6LdiUgFuFPyRl1
	JsQTVvhkAc5YclD0rcqt9MmbkAZekiNUhs8xkvbYPTrb0OdZ44xD2BAlxS5klO1Sc28H+mrNYEkK/
	CbG/IT7Pg/TNLVtD/grQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBMB-0004Kr-CA; Thu, 01 Aug 2019 13:42:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htBM1-0004J9-JA
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:42:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE31E337;
 Thu,  1 Aug 2019 06:42:48 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAC743F71F;
 Thu,  1 Aug 2019 06:42:47 -0700 (PDT)
Date: Thu, 1 Aug 2019 14:42:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] ARM: dts: vexpress: Add missing newline at end of file
Message-ID: <20190801134245.GC23424@e107155-lin>
References: <20190617143547.4721-1-geert+renesas@glider.be>
 <20190801131527.GA23424@e107155-lin>
 <CAMuHMdX+Nd1XH0KDHXmdOa_=UYcBso_EKfugYbZ_Zyd=4e2nGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdX+Nd1XH0KDHXmdOa_=UYcBso_EKfugYbZ_Zyd=4e2nGw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_064249_679390_346F10E7 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 03:31:34PM +0200, Geert Uytterhoeven wrote:
> Hi Sudeep,
>
> On Thu, Aug 1, 2019 at 3:15 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > On Mon, Jun 17, 2019 at 04:35:47PM +0200, Geert Uytterhoeven wrote:
> > > "git diff" says:
> > >
> > >     \ No newline at end of file
> > >
> > > after modifying the file.
> >
> > Sorry for missing this earlier. Just found this unread and thought of
> > applying it to v5.4
> >
> > However doing a quick check on the tree revealed more file and wonder
> > why you are addressing only handful of them. Why not all in one go ?
>
> I did address all of them, but sent separate patches per subsystem.
>

Ah OK, may be different mailing lists and hence I failed to see them.
Anyways queued this for v5.4. Thanks for the response.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
