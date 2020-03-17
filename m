Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4BF187716
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TH7yyCL1syXN/EfeY99rCE3oWTeSH7WO3SpXbYB2d8=; b=GlCiSQ+N4pFAGr
	ZLta7npS5YCEoSB4kOhLx3e1aOaHGW0SUNVEWPJyRDZ6Cgh4FwBwmRZHdwF/OI7KnNbfdGGENupRw
	SzzRRYwiWGfJbZrF+EbhOhL1+7yfvvngs0GSgTKxg7ZuAhpOaGX0mBqRd+vsX9XvZP72aKnSDaHBA
	YKH696kN8F14/2z3RqYX+/ssJZVe0M3BphbhdzU2kZ6J2PErOq+9XUVEV/4qC3dId8tVT4MhEBgQI
	+p4I1ox00aSEXroGRqGMobxlk4vs0Yr49cqTnR9K+iMC0i/fWKKJgrBUu7Tq/YIgtnZuDYE3k8pjf
	AF719CRoZQwMSeT41zSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0St-0001XN-U4; Tue, 17 Mar 2020 00:52:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0Sj-0001Wn-4r; Tue, 17 Mar 2020 00:52:06 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE0Sh-0004VF-6h; Tue, 17 Mar 2020 01:52:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: remove properties from spdif
 node RK3399 Excavator
Date: Tue, 17 Mar 2020 01:52:02 +0100
Message-ID: <18213991.ifHWx50xby@phil>
In-Reply-To: <20200312172240.21362-1-jbx6244@gmail.com>
References: <20200312172240.21362-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_175205_340575_9E71CFCB 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 12. M=E4rz 2020, 18:22:39 CET schrieb Johan Jonker:
> An expermental test with the command below gives this error:
> =

> arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml:
> spdif@ff870000:
> 'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns', 'power-domains'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> =

> 'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns'
> are not valid properties for 'spdif' nodes, so remove them.
> =

> make ARCH=3Darm64 dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/sound/rockchip-spdif.=
yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
