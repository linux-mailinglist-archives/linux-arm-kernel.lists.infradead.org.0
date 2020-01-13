Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC27D138D80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpK99WVvId4diLuuDdbX+m7Bt48nabX9P2P5oP/krR4=; b=r4aX7LnKfeoA2A
	MuFOG9Vevsz9j/jWIJBBXeIUECkfU++eoeAJMQdT1hinzq5SH+ly76R9MVCSGJ8oIxLZL6B9obZtq
	7RrajN5JKNBTnM8F7P0bMZ8qRtzgMgK2Z+JJv3IuiwLWelyDw7wVaa/F8GrAy4dLMzXFRHNo5nGhd
	+cSAYhaWrOAsx29eHF/XtjBekrPCTpzhXrUZSNaiNTy3VpNeG7voVVYJYAlZlUBu5nfngLHUiTvue
	0xJJJHk7tO49uiwGQ22vm/cDSMP6An5txW/QQzRMweLepgOWsHWeGQQv6U/kdHZ+T3uf4QS8ilBhx
	1ZfxHlNRGitwqXek96ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvpg-0001So-22; Mon, 13 Jan 2020 09:16:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvpL-0001R8-EY; Mon, 13 Jan 2020 09:16:05 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqvpF-0001xO-Fh; Mon, 13 Jan 2020 10:15:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix dwmmc clock name for px30 and
 rk3308
Date: Mon, 13 Jan 2020 10:15:56 +0100
Message-ID: <3203839.F8si9oFvou@phil>
In-Reply-To: <20200110161200.22755-1-jbx6244@gmail.com>
References: <20200110161200.22755-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_011603_638023_4DB3AC46 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 10. Januar 2020, 17:12:00 CET schrieb Johan Jonker:
> An experimental test with the command below gives this error:
> px30-evb.dt.yaml: dwmmc@ff390000: clock-names:2:
> 'ciu-drive' was expected
> rk3308-evb.dt.yaml: dwmmc@ff480000: clock-names:2:
> 'ciu-drive' was expected
> 
> 'ciu-drv' is not a valid dwmmc clock name,
> so fix this by changing it to 'ciu-drive'.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

thanks for this fix, I've split it into two patches (px30 and rk3308) and
applied for 5.6

Thanks
Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
