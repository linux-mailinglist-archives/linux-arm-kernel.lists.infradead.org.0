Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41EC1201D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSgdsy39+6XUarFEq6L/XcmE3ZM03FLefWVw6EGmIG0=; b=IhzMKTByYWCfoE
	xbldRCworziUQ48cXMLW+4P4ZO5MGB9LWAtD4QCkPKau9edhC7m85GqFT9HJaZLiPe2pRwWRFcJKG
	G5RvM5/B+xJo4DXm7IZ4iOJxnjsamNfXXcPKOiDGLnIn6Yz3TazIciTRLIqJsjkACKhdJV+m3ELGE
	o5t+AmD6362ObOhOJYsIPVCt9CmZYXWSr/idmUT8GOG9OI4YN7S9PEeAxrVeDNSzxfNGYnS4K2mV9
	SZtpWtft9YvhrvebhBYINvNV9FE1Q+51eE2/YfJjhY0tYlnrODxiM4w/Y0kSXg74vCfa5pG1X1FrL
	wBSXcfiZaMXhuTvdlkCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignEr-0002nB-V0; Mon, 16 Dec 2019 10:04:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignEY-0002lj-Q1; Mon, 16 Dec 2019 10:04:12 +0000
Received: from wf0651.dip.tu-dresden.de ([141.76.182.139] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1ignEW-0007L8-VS; Mon, 16 Dec 2019 11:04:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH v3] arm64: dts: rockchip: split rk3399-rockpro64 for v2
 and v2.1 boards
Date: Mon, 16 Dec 2019 11:04:08 +0100
Message-ID: <6656576.A7zHEAv81k@phil>
In-Reply-To: <20191202055929.26540-1-katsuhiro@katsuster.net>
References: <20191202055929.26540-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_020410_998243_5FD5C6E3 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Katsuhiro,

Am Montag, 2. Dezember 2019, 06:59:29 CET schrieb Katsuhiro Suzuki:
> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
> v2.1 boards.
> 
> Both v2 and v2.1 boards can use almost same settings but we find a
> difference in I2C address of audio CODEC ES8136.
> 
> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> ---
> 
> Changes in v3:
>   - Add compatible strings for v2.0 and v2.1 boards
> 
> Changes in v2:
>   - Use rk3399-rockpro64.dts for for v2.1 instead of creating
>     rk3399-rockpro64-v2.1.dts
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3399-rockpro64-v2.dts |  30 +
>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 759 +----------------
>  .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 763 ++++++++++++++++++
>  5 files changed, 800 insertions(+), 755 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d9847b306b83..8d8658613c57 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -409,6 +409,8 @@ properties:
>  
>        - description: Pine64 RockPro64
>          items:
> +          - const: pine64,rockpro64-v2.1
> +          - const: pine64,rockpro64-v2.0
>            - const: pine64,rockpro64
>            - const: rockchip,rk3399
>  

applied for 5.6 with a changed binding. If you need a
"one-of-many" element it should use an enum ... see the rk3399-firefly
and other boards for example. So I've adapted the patch accordingly:

@@ -409,6 +409,9 @@ properties:
 
       - description: Pine64 RockPro64
         items:
+          - enum:
+              - pine64,rockpro64-v2.1
+              - pine64,rockpro64-v2.0
           - const: pine64,rockpro64
           - const: rockchip,rk3399
 

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
