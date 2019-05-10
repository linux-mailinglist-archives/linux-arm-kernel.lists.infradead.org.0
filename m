Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656171A4A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 23:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQiSYCxHblY5u5YuZzlZMHC2G1H30mdz+J3/kD3Mko0=; b=WsZepKwjcpVSkq
	R3Qj9o50wAmWEEGUjIZTG9389/iaUjfB4U3zOiJVukTe9+nidtM3E1gJ9n8w//JJ67CZzr3jO54UQ
	abWVfIv2BmPcqM2U9plK2IDO+A50OL48OMVUuCU4m1gKLBU6/KYq/luB7UHrcbt7qpp/eFT595aKX
	84jESFIEZOdVlxDI9/S+kz7JvmEHUUOM0yErRGE1w7hTbQmLECwHUqrMiyLwFFYpcv1/Y1qDGbzak
	ZqqknEKMg+MpLnk/VidcHe0B77lVINJ+DSvymd46r15OwOlTPErK4S3K6nFnZH4OXmZz5aP5Z4INN
	4jZuryLPoLB4IHOsM4Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPDFV-0003DM-5b; Fri, 10 May 2019 21:40:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPDFO-0002he-SO
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 21:40:08 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 6A0A7808C;
 Fri, 10 May 2019 21:40:23 +0000 (UTC)
Date: Fri, 10 May 2019 14:40:02 -0700
From: Tony Lindgren <tony@atomide.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH] arm64: arch_k3: Fix kconfig dependency warning
Message-ID: <20190510214002.GV8007@atomide.com>
References: <20190510035255.27568-1-yuehaibing@huawei.com>
 <f7c420ec-ee4e-c17e-7650-353002bb81b9@ti.com>
 <86o94acgdg.wl-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86o94acgdg.wl-marc.zyngier@arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_144006_962443_2545B2B4 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lokesh Vutla <lokeshvutla@ti.com>, catalin.marinas@arm.com,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 will.deacon@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Marc Zyngier <marc.zyngier@arm.com> [190510 18:30]:
> On Fri, 10 May 2019 06:16:38 +0100,
> Lokesh Vutla <lokeshvutla@ti.com> wrote:
> > 
> > 
> > 
> > On 10/05/19 9:22 AM, YueHaibing wrote:
> > > Fix Kbuild warning when SOC_TI is not set
> > > 
> > > WARNING: unmet direct dependencies detected for TI_SCI_INTA_IRQCHIP
> > >   Depends on [n]: TI_SCI_PROTOCOL [=y] && SOC_TI [=n]
> > >   Selected by [y]:
> > >   - ARCH_K3 [=y]
> > > 
> > > Fixes: 009669e74813 ("arm64: arch_k3: Enable interrupt controller drivers")
> > > Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> > 
> > Thanks for catching it.
> > 
> > Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
> 
> Tony, can you please route this patch via armsoc?

Thanks adding Tero to loop so he can queue it.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
