Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E32B67455
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 19:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKpW+l3LN/HEub6i5chKqAZ66c2TWeuVgN2HfBh8VIw=; b=EjK/aUt1/zxA0d
	a/4hFY4vHTnpTA+oWmGKaZabzyAWncI3tPdqXzyPMVEbiV/9IJNNNXljoOjmkTEtaZE9t8WKv5T17
	gJuxcvhkoXlZyVBE+GJW+bk10RO0wJqZqWUa9b/MoZOBnqehbXV6WI+2oA/Zt8WIBDyjma+cJjBRz
	zPUX5jEIFkB1iGnvdKFQOk5vz9YjYEwhFyPL/nJUGMrygSGa5Jcd14ccZ/1IMhqQ3tJlGZ9xpJwrd
	hZvGb8JtxKINbD/b/VGulEsIhPgnuqsdmVP4opD50Oyrlu8EaJuN2IMe806XCR/8EhnUfRD+lHwJh
	df0Y5NzfaFSYTRdySM1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzRZ-0000mB-0O; Fri, 12 Jul 2019 17:34:49 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzRO-0000lf-Gm; Fri, 12 Jul 2019 17:34:39 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id B29512CC;
 Fri, 12 Jul 2019 17:34:28 +0000 (UTC)
Date: Fri, 12 Jul 2019 11:34:27 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Alex Shi <alex.shi@linux.alibaba.com>
Subject: Re: [PATCH 01/12] Documentation: move architectures together
Message-ID: <20190712113427.62fa7ffc@lwn.net>
In-Reply-To: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
References: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_103438_560705_5D592733 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, kvm@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-omap@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019 10:20:07 +0800
Alex Shi <alex.shi@linux.alibaba.com> wrote:

> There are many different archs in Documentation/ dir, it's better to
> move them together in 'Documentation/arch' which follows from kernel source.

So this seems certain to collide badly with Mauro's RST-conversion monster
patch set.

More to the point, though...if we are going to thrash up things this
badly, we want to be sure that we're doing it right so we don't end up
renaming everything again.  Grouping stuff into a new arch/ subdirectory
adds a bit of order, but it doesn't do much toward trying to organize our
documentation for its readers, and it doesn't help us to modernize the
docs and get rid of the old, useless stuff.  A quick check shows that many
of these files have seen no changes other than typo fixes since the
beginning of the Git era.

So, in my mind, this needs some thought.  Maybe we want a
Documentation/arch in the end, but I'm not convinced that we should just
create it and fill it with a snow shovel.  This might be a good thing to
discuss at the kernel summit in September.

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
