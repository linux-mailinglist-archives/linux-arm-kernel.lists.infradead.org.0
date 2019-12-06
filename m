Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B404E115710
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JRiNeQpm3AQPnrWTte0+vIjmpIZrnCTJCg6cnsWGxJ8=; b=RkE
	1DsWXLFM6LykIWSLhOmDHllgQZ49rgAUAr72SnUcoHzboENgCMhPTdTrDjF9gvXHMKGOiSEttHCH5
	Ex2k1/AwCBU/8LbQPeIVl3KgR0IWPeoBhHAECTckSv/79kAHyeLxF+S1Z2126Ldh/rql86g7YM3K8
	V688Q6iQyMWuoWkUT7CuCI/92MReqvYZAogKzwQnDujdmj7arBYtV+C6MFqSUJbtd8WCiRy+i/wfm
	9Oso7k9f47lI6E4qrPWgKc4/vzICWWwhxqcxvMPVxdkYi+1DHmBTKXpm1I+H7e3N7FjxR+SaB276k
	wLUKOa5P5seRKiTetA7AETtxgupM2WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idICR-0001SD-Ec; Fri, 06 Dec 2019 18:19:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idICI-0001RN-TU
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 18:19:24 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so8281438wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 10:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FLXIS+tKJCZqQe3ftQxxCM+L53W0Z6CULqU1f8qurnM=;
 b=iDCgPSRHh0gUGVnFOkxtPY2RDOw572sk0YWW6UlwZ598i8jnR/Xhr9PhI+ECGk20r4
 Ijh4TfgHHU2/MltTHFfh5RdL3WuPZ6M2TPj9Ju/TsKr/5CD8TSGAJlN0AHsKbL4fgMHz
 oDeO0I8qbQeHGuamUJYZVwk2NLxJlk+LCSQVwRXfYIk8cIwodbRjXm4mGFkqEvfGv4n8
 vIoq46nsn/7kkshxMSrM2ZOV/oao5+vRXA/4KX1cDgZGbtJ43Vzaztl84tO5TrB0PAp2
 znAlo82zWdAf8NM54dJP/6z4ZyCQUUOxCxCXqCZxzn5z4MiGpsqtMk1BnaqUv+NXEvmu
 fXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FLXIS+tKJCZqQe3ftQxxCM+L53W0Z6CULqU1f8qurnM=;
 b=S2Z27KsE2mNOLLrCJEu1u64OFl/kVCRtisBBD4mOAz6ujIF5Q5E3mrXOBK/e824rDW
 XZGG0nex+Drqx01P2bjJr/gwvnOEASyO1RH1rnBIZpiDh3GiTe45PgBdeFwESHdm9hyj
 rN3AbdJfsWe+GGNQ1d+BCVsRHbFdvv+Hvzcvh75ODqwaVDrpfWseX3fLPCrXlGJfCHqW
 DMoYP1OPCMaKj1xKTnp/FZQvfApc2sDlpg7gS8d07QJwV9GM2XHiCu0b8Nf45mbqiU+B
 OiWvUSCoJg2UewOdUiX8pqqeGvzFG/6ZDqIQr6/k0m/qmiKpcjCeTaAuqV08Zh/7W5Ma
 CEiA==
X-Gm-Message-State: APjAAAUiDTQbDIK2psW87e9qkg5dt4dtHNisf6BA3RA93FBN/86CQTFw
 0vUF0+zV84VdlmU0N3vEQ21p3Df6
X-Google-Smtp-Source: APXvYqyfwNCbAL3g1EUSeCA3aLJS8wmE10SYjLXzCh/SY2IcTNyz2rf2XMLQRBmVXph3Ztp0xP0JMA==
X-Received: by 2002:a1c:3d87:: with SMTP id k129mr11474183wma.26.1575656358536; 
 Fri, 06 Dec 2019 10:19:18 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b17sm17073339wrx.15.2019.12.06.10.19.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:19:17 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: Cygnus: Fix MDIO node address/size cells
Date: Fri,  6 Dec 2019 10:19:09 -0800
Message-Id: <20191206181909.10962-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_101922_975420_3D243662 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, grygorii.strashko@ti.com,
 Scott Branden <sbranden@broadcom.com>, devicetree@vger.kernel.org,
 simon.horman@netronome.com, open list <linux-kernel@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 rafal@milecki.pl, Florian Fainelli <f.fainelli@gmail.com>, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MDIO node on Cygnus had an reversed #address-cells and
 #size-cells properties, correct those.

Fixes: 40c26d3af60a ("ARM: dts: Cygnus: Add the ethernet switch and ethernet PHY")
Reported-by: Simon Horman <simon.horman@netronome.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm-cygnus.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-cygnus.dtsi b/arch/arm/boot/dts/bcm-cygnus.dtsi
index 2dac3efc7640..1bc45cfd5453 100644
--- a/arch/arm/boot/dts/bcm-cygnus.dtsi
+++ b/arch/arm/boot/dts/bcm-cygnus.dtsi
@@ -174,8 +174,8 @@
 		mdio: mdio@18002000 {
 			compatible = "brcm,iproc-mdio";
 			reg = <0x18002000 0x8>;
-			#size-cells = <1>;
-			#address-cells = <0>;
+			#size-cells = <0>;
+			#address-cells = <1>;
 			status = "disabled";
 
 			gphy0: ethernet-phy@0 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
