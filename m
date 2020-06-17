Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A751F1FC8F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6sffOUjud/OV03XcA9SIw3PjF3aUk1ZLuyMB8ksI5U=; b=WV0ACFf+UdEv3I
	U04AuCo5PzgTe7n4MrgraBMxi8jHwklr2yYVX+lpsU4weuDFaIWNxSAksSD9+V+nhhPsIbsV+jzdh
	Xvw0tqs0spFgzGsJGL0/1PLkvMVOIjE3oeO2cjN8CAvab4G+lq+81NBooUEkskicGnMzKg2602TxI
	CWoLnhXTSoEOxH8kS0ebpH93Ag03YGhXWt78FVKK0NqNwQjy/VH9aslmLWoL6ESUQhHLwC60UmoF/
	icvk1LkoC4eq0XbHWMKFmGjfO6acub2KvyqiSe09zwGYgBh0df+V1266UU4SfBiJGFqrV3IeW5uGG
	AU4R7lVkBypFQQ3dXTIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTaN-0001rN-Cu; Wed, 17 Jun 2020 08:38:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTZJ-00010x-Ui; Wed, 17 Jun 2020 08:37:15 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlTZI-0005rL-P1; Wed, 17 Jun 2020 10:37:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rename label and nodename pinctrl
 subnodes that end with gpio
Date: Wed, 17 Jun 2020 10:37:08 +0200
Message-Id: <159238301927.1406601.14874206586861717011.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200524160636.16547-1-jbx6244@gmail.com>
References: <20200524160636.16547-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_013713_980521_3AFEE721 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 24 May 2020 18:06:35 +0200, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: tsadc: otp-gpio:
> {'phandle': [[54]], 'rockchip,pins': [[0, 10, 0, 118]]}
> is not of type 'array'
> 
> 'gpio' is a sort of reserved nodename and should not be used
> for pinctrl in combination with 'rockchip,pins', so change
> nodes that end with 'gpio' to end with 'pin' or 'pins'.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rename label and nodename pinctrl subnodes that end with gpio
      commit: 2bc65fef4fe424f5f8295175f1b42f8b94c6df01

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
