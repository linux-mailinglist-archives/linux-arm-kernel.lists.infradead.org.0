Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02CE1AFA1A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mko3nSVCe5h/BINdmbdMAiopCoxacbefqn5BEGvveGA=; b=SuAPYBgECTYkDL
	Hw0RiDHehsjxlPeQpWjncFrG7gKF5Qko+CPFKbueaeuVzH9ltp7CltdZANI9n0amCuN3Ler2pFxVo
	dDhxXlR1mXVE9j6zqsrKOGi6kVxkCM0XpeMu8fZTwsvWnuVJEVMWjApqOxAnSVBxw8/7z435g6vJQ
	fkG2gC25m7Z+8/mLqS6JE/nJL2dW2bE3pmTsdvx2jlxyQklzA2rqAKzsb79ViReLsrdfCx/5PJBXU
	ozs5Jb++kxF1nxir3ccIVTVRmnjs1Vd2qWRZVp5VpJgCerolQnmY2n4ci23AzWTE0EcMfJcyqO35n
	J5Wz/sCmSr8fzMOFbHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9Cl-0003ww-N7; Sun, 19 Apr 2020 12:37:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9BH-0002km-7k; Sun, 19 Apr 2020 12:36:16 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ9BB-0006k5-AZ; Sun, 19 Apr 2020 14:36:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/3] arm64: dts: rockchip: add core devicetree for
 rk3326
Date: Sun, 19 Apr 2020 14:35:56 +0200
Message-Id: <158729964648.70529.10290347754936450590.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414082938.2977572-1-heiko@sntech.de>
References: <20200414082938.2977572-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_053615_302775_B7D59985 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 kever.yang@rock-chips.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 jbx6244@gmail.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 10:29:36 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The rk3326 is basically a px30 without the second display controller.
> So add a dtsi based on that, that just removes the affected nodes.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: add core devicetree for rk3326
      commit: df07f7df7e5a61d06b21f89c4ab744fb4e4c2222
[2/3] dt-bindings: Add binding for Hardkernel Odroid Go Advance
      commit: 98412e1e57ea776b4581077a68fe6ed598bfba99
[3/3] arm64: dts: rockchip: add Odroid Advance Go
      commit: ce33988fb69828dfcb5825f9086d9dc2b37a9282

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
