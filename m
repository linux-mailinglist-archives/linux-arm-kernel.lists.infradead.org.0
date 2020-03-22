Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1920A18E94A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 15:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1HRouP/YIjWFANpOnmNWJqTiplQMX0sARXJZaxxVGqg=; b=ilV
	DlXJU7WkVgKTYFNm/7P8lIfASoQMfFprX5xWPTt2bswRsQAdi3/wMeMcvnqvzITkhrShfap9TS8nf
	v0xtBBmDqh29ggnivcjJN1jNKYF84Vi4ncyN/TL9ub+DSEeO6WgJvkgYPPC9wl2UU3LmGCIEGVkzP
	C7kgAwYq+4HIDu9YOXeC/qAyHxykSbS84EomxHNWFEV2UAlNACT8wCSG9Df7DDbc6nn8aqw+GkYth
	BnpplUuguotucuhobBKwwn7SWPZjFp77x2Wh0sG1z6Y4QMfZUQbo7y6aUBhGv6XbOjIU2JJ+HUpEe
	OncSLPD5atsEcVB5Y2toIV8h/3KyjFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG1A0-0004ed-Sn; Sun, 22 Mar 2020 14:01:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG19t-0004e4-Po; Sun, 22 Mar 2020 14:00:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id m17so4318461wrw.11;
 Sun, 22 Mar 2020 07:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+Pk1Qm0yKFU4UFpPiRDPyywzNL1S0kp3oY+pR0dHLbM=;
 b=oi5rzEX0X8RLP2HKiTVVqVs7HpQ7aPojsZDgCYmMnYOtWabV8UXffBg4gms1wqcqft
 +/58QOvDf6bioXi8SnjrvUM7F6HcQ70/1Kpghz3s2qRBBNtUZxZnrX4Yh6Ho/3kN3BEZ
 2fwN1nJFoFiZLWIdXHivtU9nzJ/K74nWzVxFipAPBoTgjuB/lHjvOcolL4ISXWR2XX/5
 2SZu3Kx1bDbRDkXb8q/hn6hJR7uYBQmORF1lUEz1xfVgDOYNuaJYiHKGGcPQ7yUmPxN8
 +cEeu8HCCo+YMhwe0vXdnx9jtXryqqQwOsPdky5SVb8bgshlml7FsP7PDftZnOxPPhM3
 y/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+Pk1Qm0yKFU4UFpPiRDPyywzNL1S0kp3oY+pR0dHLbM=;
 b=Egj+b3253VMzggeym1AGD4o1GDNy8ua6UdkkWuEZf0wcZgrcPwRd1hX3D0k9WnODHr
 8b1IFnwhVD/mLNsw6o39M0aGAubOh8Nwt8Cig6LeUdMroWRsBB5aGcAkgidBVWtkV/Ka
 AtARjNwC9yz6hH5jeqC8iV01ZBn6Vu+1MhNj+NTauoOJCjnMjwiBZTVD3cIq79pT9aEZ
 GH6zYKCHX2Yew2VW600Wewjy+Q9AQJPab+E7RtegHgTvmjZfE33+DtlN7/QDoZMxe0fy
 FptD/vKCjRmhg58XBxpSPaAFWZf5GjKn34vAWEsnLWMpS5ROLFmDxJ0MGMB9GNjUNYIo
 VHbw==
X-Gm-Message-State: ANhLgQ3wncvAF6wB+y19u5I1GyjfKPrwRlIiBlqw9SWYlbJWvXU2qWl8
 QAMYUF6euMvx8RQXastisI4=
X-Google-Smtp-Source: ADFU+vv9LrpAvriFkI/duBNcEmS2l2/uhLRxDqAJ4ObMkC37RlGZ/y1+sMgI5XKHs3Xia3KUeu4Mjw==
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr24215660wrb.90.1584885653724; 
 Sun, 22 Mar 2020 07:00:53 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 1sm11355129wmz.32.2020.03.22.07.00.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Mar 2020 07:00:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: fix defines in pd_vio node for rk3399
Date: Sun, 22 Mar 2020 15:00:46 +0100
Message-Id: <20200322140046.5824-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_070057_840809_7E67832B 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: pd_vio@15:
'pd_tcpc0@RK3399_PD_TCPC0', 'pd_tcpc1@RK3399_PD_TCPC1'
do not match any of the regexes:
'.*-names$', '.*-supply$', '^#.*-cells$',
'^#[a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$',
'^__.*__$', 'pinctrl-[0-9]+'

Fix error by replacing the wrong defines by the ones
mentioned in 'rk3399-power.h'.

make -k ARCH=arm64 dtbs_check

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 8aac201f0..3dc8fe620 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1087,12 +1087,12 @@
 					pm_qos = <&qos_isp1_m0>,
 						 <&qos_isp1_m1>;
 				};
-				pd_tcpc0@RK3399_PD_TCPC0 {
+				pd_tcpc0@RK3399_PD_TCPD0 {
 					reg = <RK3399_PD_TCPD0>;
 					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
 						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
 				};
-				pd_tcpc1@RK3399_PD_TCPC1 {
+				pd_tcpc1@RK3399_PD_TCPD1 {
 					reg = <RK3399_PD_TCPD1>;
 					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
 						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
