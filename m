Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7707D1D8B49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUiQmw+ES+6Oh4JAXjj1sGu/c6dWjYp6qppN7waM7CA=; b=NHgbJgF+oJc/ZR
	2kIgh5Ypb5CHBgeed/XWZo0WDLEIeoCW2v2A2fUkOlSuVIcTOQEc1hlMhrf1fn/6rbKxoig2raZZM
	HxXiiX7DpMl3J87Lfsbg4zwruk0pp+T3Go7186/1nvHBB+9ICl/z5VWk8rXErwxQMbg/aemJWMqxP
	UCsbxEjbxB2j2csW2rjVg4bNJqWPt6L4BTTS6clcKh5pyT18jYc/LtHEcM3Tku/RuZ5X7HcaBOEg+
	Zq5MvwU0LxRdELd8HouO1YShAJVKu1JO5j9q501ILz8Hk1Q5wGV+KELIIHBM4ro2OxcGgilt1T1RW
	7IbQYBpx/s6Uh9Wdis4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaocz-0001Av-0h; Mon, 18 May 2020 22:52:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaocq-0001A2-IR; Mon, 18 May 2020 22:52:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaock-0000GM-7J; Tue, 19 May 2020 00:52:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Rutland <mark.rutland@arm.com>,
 Justin Swartz <justin.swartz@risingedge.co.za>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 0/1] Add rga to rk322x device tree
Date: Tue, 19 May 2020 00:52:40 +0200
Message-Id: <158984232928.2265632.16859446100127654389.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200419125134.29923-1-justin.swartz@risingedge.co.za>
References: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
 <20200419125134.29923-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_155248_609663_4FDC2E8F 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 19 Apr 2020 12:51:32 +0000, Justin Swartz wrote:
> This patchset aims to enable use of Rockchip's RGA, a 2D raster
> graphic acceleration unit, on rk322x based devices.
> 
> Changes in v5:
>   - Remove the patch to rockchip-rga device tree binding documentation
>     as Johan Jonker has already included mention of "rockchip,rk3228-rga"
>     since the conversion to YAML.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: add rga node for rk322x
      commit: 54b1a4e070330c3fba5becfb0b619bf360bc2657

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
