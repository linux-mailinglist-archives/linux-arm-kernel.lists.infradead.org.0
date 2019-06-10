Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA293B484
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeE5L28AA78CIcsh0JknvNVrq17HdmbeBu4EQhawJ5o=; b=rY5rFjngC96Oua
	ODez2co7tbUrFdVJK47xL0PT2Ld/DbptBAgeLmn1uPvLFInpcbPuhNR0v+KDJwMsigp7Hn2WUc4kl
	0IkH0PLz5Bi80CfKJh8qds1TWo6DR31JofhzXS5PO4C4+Ow9gXEKOMSrS1qkzWS8Rwwj2PdIcMDqC
	fSw3VzxsjoVzW9WvrvBM3sqQZsPPaldm/DDFLfV757TIjTnr/QmS9tjRtpeIoJT2k3wWgNY0iwGO+
	S0AvrTKOmOFp1BBgP0ChsjYi4IXRMbx6Ia+9zGtswMUklXOcU7ecvCb5a7f3iVf61uIj6YVaQpkmh
	IkYcarDn4DekD7UVUYAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJGv-0005vh-Qu; Mon, 10 Jun 2019 12:19:34 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haJGB-0005Ub-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:18:49 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id DB2EB80CD;
 Mon, 10 Jun 2019 12:19:07 +0000 (UTC)
Date: Mon, 10 Jun 2019 05:18:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Yue Haibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ARM: OMAP2+: Make some variables static
Message-ID: <20190610121843.GY5447@atomide.com>
References: <20190413141744.34488-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190413141744.34488-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051847_808901_B98285B8 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: paul@pwsan.com, linux-omap@vger.kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Yue Haibing <yuehaibing@huawei.com> [190413 07:18]:
> From: YueHaibing <yuehaibing@huawei.com>
> 
> Fix sparse warnings:
> 
> arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c:532:25: warning: symbol 'am33xx_gpio_hwmod_class' was not declared. Should it be static?
> arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c:542:19: warning: symbol 'am33xx_gpio1_hwmod' was not declared. Should it be static?
> arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c:562:19: warning: symbol 'am33xx_gpio2_hwmod' was not declared. Should it be static?
> arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c:582:19: warning: symbol 'am33xx_gpio3_hwmod' was not declared. Should it be static?

I just noticed this is still pending, sorry for the delay. Applying into
omap-for-v5.3/soc.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
