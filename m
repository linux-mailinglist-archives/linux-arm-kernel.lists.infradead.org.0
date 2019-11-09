Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0174FF60FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:02:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2YWFfVe3jVQS+kA+OYyh/t9Pj75S7XqTviRSKcem/VM=; b=J937Szocrw3EMYgQP83dLbuAwl
	K239NnK01S2dGSp6zEGSFWW7z6lRT/QpQhKUe/0WKzl+P334dC5iM8Ybo11POfJdyc7NhIBrxfhdR
	yJN1U7uX4WXdsRVgjCnz8hOD0RXncaT9ZDb1xV0GQu5gsjBfjI/HFBqq7MGYwDBTvmYR5xBnJLyPn
	TDpZ+U7L/WZJPg/2AuGuMz6jXZY3mvZAno+GJruJENUnKTKtDuN0fusD/7PA/TGFv+BCi8k0ceB9R
	4YSOArh83/AlbyuI1be9Z0mk9Jupl7UP3UduDYtA2CZUNrM6lhbuPQXKelJsUFtY5F3gT0IR0yHFE
	ODrb++PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTW0M-0006xB-BC; Sat, 09 Nov 2019 19:02:38 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzp-0006mQ-GM
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573326041;
 bh=4tHGKE+e17UnhyLVKq76j3dokNGsfO7qmeQ/3LMCwKE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=czluM3FTlc+BYMWlEGvkMYtPQlObKZbfsLLAT66Ns2weja1jDBTTSMRje37yDXJ6g
 6Eij/IQ7IttjKhQqJCnMo8QZ4JyWSrHWRt9iKqKE4NrLoU2k3Bug2um8DXf5+pF9/6
 xylg94t+76ksbTrCjCm4FBxm1tUYK89ZuJz6zhAg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MYNNo-1iOgfq3maI-00VORB; Sat, 09 Nov 2019 20:00:41 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V3 net-next 5/7] net: bcmgenet: Refactor register access in
 bcmgenet_mii_config
Date: Sat,  9 Nov 2019 20:00:07 +0100
Message-Id: <1573326009-2275-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:SDewv7JeUg4PC3g8+zwtSYku0IF54nARmVAnnYYd7o0rb0WqPMP
 qQSZ92NGiWz50ZwCoGeJlnQ0fAaXeLrNrl3XOjO3Otx1AJ+ZqHzN+/d8QxYCorv8lOeho2U
 +A4XI8RKiL3v5/FzynFNXokYYSf+l+6l9j6iE7Cl/dMkzxLxSPQcwX9M4RAzeEogSvbd6eo
 PsgVdy7yygDKREXdEjg/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z9p06GDHyOY=:+VQs+zygUqtK6j/EItEXvr
 wcTaKcGWhhIr9M7q98yrw4sCoV7+w4beQGUwNt1AALkGYLCUE8Ejzg4rUq5MSbd9LPwLKJEVg
 D9D08HhSq8LpduAoNYGQMN4pRGOu0/RQ8LLY71hHYf/mtdVxpaXRfBEcnCztCfIwSwpZ3txFa
 81NFm9PBX0kbR0s8uWB61IxZW/ATJhT6VFPbcf4oYjSF7XzR5XV81Oj57B1osixiWCDoLYdg5
 bK8pO0QLU958yCjEeT3kdeOILJJq8fDSgSOzgfRHQM3Fk8P7AoZY0NfwG3TkZAWsluj0UPBax
 eEyaIvQtk6xMRQYgRfUat4RwqsArvfwglRQBeCBJ9F75acEnfqgV8xMBdlV6rW2520HdH2NGG
 v3NA9RaQS78BeqwyiOS3mnpGkOwCfULkmzyeyPYWmRQ+Mr/u1X/Bc8CsVRKkklViMhQoy7k23
 q3dtnG5RT1VA8h1PV/zL6dNLfhbshwWDQysa9M088oyDbvtJ5hL2zSGYTX0BaDfUNm20JLCMK
 okZsygOvXA+pzYfxExtvjOPvlD+fJH1Dk/ttXr0ZXYg5esYC5Ia5rknZpF2C9mO6rdnwTYQUZ
 BioNfK8K4H9eB3W9Dfm+i9lr2xNFblvU4LWH2BCcWa1LjYMsaT58R1OVn11Uub4jZ+2mz8/hR
 KbLT72PFv67tV4rC2n7USPpIIHn9vwQn0af4xzJMtxkV3jFesygs95BlU4ervsUsn5gZFjpaN
 WzlMgm17I1P+nSiYmPbNx8SEiw/5uvasWAqBcVa7fjRfpNYNYgqxGf9xL/TfPjUOTS4x5afmt
 9XpLXdnKf7ImJg1H07XmaF15mBhnVjy084ml3P3+Z6N4nTkfdS0PpcVyS44sTkFqnUiFLmwlu
 peSm++mG1q7ejzYeIIUiodFuAPMtx0SJYzWem9FueCQvRBvrH30qe/mH4WMePC5FMR9/kPTrg
 XwdxbYfm6D1PlTNWsbj2VUAR3UZeyMuczA+3MgHvKsuhDETOcQ2wXekh3pBLkjerPufK/IGNx
 Ip29Q9MNTr4SQk5UfSRRnEUIoiikIRzIuM8xaYLk53u5ZUeIRrmEZMRxHwP0tXWLWCXu+qnDU
 1Pjrr2Mv9UYWyI7oNKhN+uSz4HpmM/lm4fQGXuQGXR078pw5XqBDHOuSFDLolLqXFPFRbHZF6
 tD7yooz0ePmhw2boun/9NnBDk6Q5FzjN3d7K8oOzPtWx6U+i0AbpPYALIclmTWuVdrJQd8yuV
 pQx+ewTNKprr6f23ZNZc63wNd3C3jFTy+fBSBrw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_110205_872568_B41BFC03 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The register access in bcmgenet_mii_config() is a little bit opaque and
not easy to extend. In preparation for the missing RGMII PHY modes
move the real register access to the end of the function. This make
the code easier to read and extend.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/broadcom/genet/bcmmii.c | 41 ++++++++++++----------------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/ethernet/broadcom/genet/bcmmii.c
index 17bb8d6..8f7b2c0 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -223,9 +223,6 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 	u32 port_ctrl;
 	u32 reg;

-	priv->ext_phy = !priv->internal_phy &&
-			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);
-
 	switch (priv->phy_interface) {
 	case PHY_INTERFACE_MODE_INTERNAL:
 	case PHY_INTERFACE_MODE_MOCA:
@@ -238,22 +235,12 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 			port_ctrl = PORT_MODE_INT_GPHY;
 		else
 			port_ctrl = PORT_MODE_INT_EPHY;
-
-		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
-
-		if (priv->internal_phy) {
-			phy_name = "internal PHY";
-		} else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
-			phy_name = "MoCA";
-			bcmgenet_moca_phy_setup(priv);
-		}
 		break;

 	case PHY_INTERFACE_MODE_MII:
 		phy_name = "external MII";
 		phy_set_max_speed(phydev, SPEED_100);
-		bcmgenet_sys_writel(priv,
-				    PORT_MODE_EXT_EPHY, SYS_PORT_CTRL);
+		port_ctrl = PORT_MODE_EXT_EPHY;
 		break;

 	case PHY_INTERFACE_MODE_REVMII:
@@ -268,31 +255,34 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 			port_ctrl = PORT_MODE_EXT_RVMII_50;
 		else
 			port_ctrl = PORT_MODE_EXT_RVMII_25;
-		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
 		break;

 	case PHY_INTERFACE_MODE_RGMII:
 		/* RGMII_NO_ID: TXC transitions at the same time as TXD
 		 *		(requires PCB or receiver-side delay)
-		 * RGMII:	Add 2ns delay on TXC (90 degree shift)
 		 *
 		 * ID is implicitly disabled for 100Mbps (RG)MII operation.
 		 */
+		phy_name = "external RGMII (no delay)";
 		id_mode_dis = BIT(16);
-		/* fall through */
+		port_ctrl = PORT_MODE_EXT_GPHY;
+		break;
+
 	case PHY_INTERFACE_MODE_RGMII_TXID:
-		if (id_mode_dis)
-			phy_name = "external RGMII (no delay)";
-		else
-			phy_name = "external RGMII (TX delay)";
-		bcmgenet_sys_writel(priv,
-				    PORT_MODE_EXT_GPHY, SYS_PORT_CTRL);
+		/* RGMII_TXID:	Add 2ns delay on TXC (90 degree shift) */
+		phy_name = "external RGMII (TX delay)";
+		port_ctrl = PORT_MODE_EXT_GPHY;
 		break;
 	default:
 		dev_err(kdev, "unknown phy mode: %d\n", priv->phy_interface);
 		return -EINVAL;
 	}

+	bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
+
+	priv->ext_phy = !priv->internal_phy &&
+			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);
+
 	/* This is an external PHY (xMII), so we need to enable the RGMII
 	 * block for the interface to work
 	 */
@@ -304,6 +294,11 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 		else
 			reg |= RGMII_MODE_EN;
 		bcmgenet_ext_writel(priv, reg, EXT_RGMII_OOB_CTRL);
+	} else if (priv->internal_phy) {
+		phy_name = "internal PHY";
+	} else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
+		phy_name = "MoCA";
+		bcmgenet_moca_phy_setup(priv);
 	}

 	if (init) {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
