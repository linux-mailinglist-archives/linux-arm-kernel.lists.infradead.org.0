Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81211F8455
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 18:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkd3IIEFIiifidMGu7d2bSMTC3u89/EReKDNbAta3X4=; b=LohZiP/UOO7v8P
	fBkuSLonF2N1hoND8bbI9+vLhaUUR/72hfeLZRLko7FRS0+sPBosH6YtdhDLfAYcHNWcoRbPmdbKy
	NwAb22g/350Sx6tdf2XYi4LgepCQix6/TNq6wdkHFMvQOj/+wsN4bx7F1zIbgtj9/u9WPuMebxtUm
	mj5ZkE3gqeqgI53CkGSFWpmxAygJyslQk4vknMIrad6gOh2zJY2I1w1N5bchhQzI8+QMS+YpqqsXu
	XeSwCv6pWZolb72B8rgy4NJw/avtcbAdlS+TbZJeR7yUyKVL2PFKeqcOqhrqe3kEFLN42hAF0+Sk1
	v+6o/TNBWA8XN/+O+lPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk9Gi-0005gZ-SM; Sat, 13 Jun 2020 16:44:32 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk9GF-0005Vz-OZ
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 16:44:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05DGi2xY095320;
 Sat, 13 Jun 2020 11:44:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592066642;
 bh=Kq9RmWG9zoUDdSoYUNDsFx1fgCZs2wx3Q+U+B2lGhGo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=rhe/LGv2Bs1MRQszFincmAPkufiOE3Ek3rDO0NbsWeZGJD5lqa09fQevdxTfwDUNi
 hcxJv8FadFEvr62AZgn6Clm6xAKVXUj3SI1b0nacwgXtsW4mfBCDzZ/JCeUYkLzC0G
 wX3jnVJ+OWLPsVC8VxU5gnmy9B58z6mP3pcI1sug=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05DGi1LZ037833
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 13 Jun 2020 11:44:02 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sat, 13
 Jun 2020 11:44:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sat, 13 Jun 2020 11:44:01 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05DGi0jX074501;
 Sat, 13 Jun 2020 11:44:01 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j721e-mcu-wakeup: add k3 platforms
 chipid module node
Date: Sat, 13 Jun 2020 19:43:46 +0300
Message-ID: <20200613164346.28852-3-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613164346.28852-1-grygorii.strashko@ti.com>
References: <20200613164346.28852-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_094403_887208_B95D83F1 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT node for the Texas Instruments K3 Multicore J721E SoC platforms
chipid module.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index dc31bd0434cb..e468cc1f8e4d 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -48,6 +48,11 @@
 		};
 	};
 
+	chipid@43000014 {
+		compatible = "ti,am654-chipid";
+		reg = <0x0 0x43000014 0x0 0x4>;
+	};
+
 	wkup_pmx0: pinmux@4301c000 {
 		compatible = "pinctrl-single";
 		/* Proxy 0 addressing */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
