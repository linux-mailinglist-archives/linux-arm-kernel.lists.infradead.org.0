Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1403174A38
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 00:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZITPbRvlILviC5bfkgwk6h4i7iHpmdb20Yk034Co8E=; b=VUYsF2WoPR9g77
	fyKc9dyr83At1b07nAmBch/u1HSbgF+IY5s3v9hEWCns4Cy1yS6Mddn0QCT2RBGkryCuu35ngq3TL
	PGFrSD/pDn/3OaLQrYQgsVMB6YG3zth8xUn1gm/Ov2PcNG+xK1Dx5NRVcpzbLblNLAevBT9RLv1cH
	LAnANtFYl58e5NDx8ydD0ziMKUdsNXaoWdbzGdZBpIq7Wv8fNq1Z5LRPbC3MIgYoGwifyZvS9gs3q
	PU/VLOFBFqM5RLk+32mS6Hvk2QWemQ315ggyrqq06qTRwF3rkLVCc4moMMHQjfS+kUI03Py/h/h8i
	aMeVyWx5DZCeZBIJ5g6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Bm4-0005cx-5r; Sat, 29 Feb 2020 23:44:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Blt-0005cP-AE; Sat, 29 Feb 2020 23:43:50 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8Blr-0004pd-AW; Sun, 01 Mar 2020 00:43:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix cpu compatible property for
 rk3308
Date: Sun, 01 Mar 2020 00:43:46 +0100
Message-ID: <2296994.saQPy0AWz7@phil>
In-Reply-To: <20200228084827.16198-1-jbx6244@gmail.com>
References: <20200228084827.16198-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_154349_510552_EF38C571 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 28. Februar 2020, 09:48:27 CET schrieb Johan Jonker:
> A test with the command below gives for example these errors:
> 
> arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: cpu@0: compatible:
> Additional items are not allowed ('arm,armv8' was unexpected)
> arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: cpu@0: compatible:
> ['arm,cortex-a35', 'arm,armv8']
> is too long
> 
> Fix these errors by removing the last argument of
> the cpu compatible property in rk3308.dtsi.
> 
> make ARCH=arm64
> dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/cpus.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7 with Robins Rb

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
