Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAB41B7B1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQjoIQ3n7sXnSUAk7oEwQoCG3j4etvI4AnCE/8y8fIw=; b=plU8c2eQX0TcWP
	kcAeG9oI342LxyvxVM2561zWMdUgCVtvs358sNavbXvoNe4bsDJa4d6VHR5+ENEnSt9q1n+WbVoMY
	vTX35R6vZXFf5nI+nZM4rwA+3fy02fEoR8yYPZsGIRyGVHF6q/6LZOsF5Ii3AbxibkflB1oVg0cMW
	oOAksr7tYub7fgdiE/WW7fOpVuJriePm7fYFXvL0sJMvNR0LzFSW6RVTo8bjyYqRZWa8QBEYrP7Oo
	e7PZ0sQbkWJwuunBhnVIhyhrd1ggr+5LXD/FpD0KEfpDnFrOX97bS3MG3tt10skZzWvjOLDWAvM1A
	vjYFSdV14HqF8IpDooTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0sn-0000CC-Kc; Fri, 24 Apr 2020 16:08:53 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0c2-0003Ci-29
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:51:47 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8DFD280E7;
 Fri, 24 Apr 2020 15:52:19 +0000 (UTC)
Date: Fri, 24 Apr 2020 08:51:28 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 00/17] ARM: dts: dra7/am57xx: remoteproc support
Message-ID: <20200424155128.GK37466@atomide.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_085134_203865_4891D921 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: s-anna@ti.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [200424 08:13]:
> Hi Tony,
> 
> This series adds the DT nodes necessary for remoteproc support, now that
> the driver side changes are (mostly) in. Couple of things to note
> though.
> 
> 1) There is a new IOMMU issue, for which I posted a fix today [1]
> 2) The remoteproc core still has an issue for which there is ongoing
>    discussion [2]
> 
> With these two issue taken care of, the omap remoteproc support is
> functional. The question though is, whether we should just wait until
> the above two issues are resolved and merge the DT patches post that, or
> merge the DT patches with status = "disabled".

If there are no dependencies between the pending driver fixes and
the dts changes I see no reason to not merge the dts changes.

> There aren't any boot failures without the mentioned two issues though,
> as one needs to enable the RPMSG_VIRTIO support before the failures
> really kick in (issue [2]), and this config is not enabled for OMAPs
> yet. Also, multi-v7 config doesn't seem to enable omap remoteproc,
> so that is safe also.

OK thanks for checking that.

> Another thing I was considering myself was to squash all the board
> specific reserved-memory region patches into the
> dra7-ipu-dsp-common.dtsi files. However Suman wants to have these
> separate and as he is the actual author for these, I posted them in this
> form. But anyway, just so you know it would be possible to merge them
> together.

OK. The combining of common features can be done in later patches
too.

Regards,

Tony

> [1] https://lore.kernel.org/linux-iommu/20200424145828.3159-1-t-kristo@ti.com/T/#u
> [2] https://lkml.org/lkml/2020/4/20/1094

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
