Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F38F60F9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v6IWJ/UqdoSExPBBQt4rk7pt01QLTHSZkEMylcHNxGc=; b=fwS6wHnWONJMeCM7dZHLL0tNgm
	3K0xHsq3ME2pe27BtX1/BWxz2oFUumbmub2gvt/bB64/JTXom0dLYgdOmawhJADhrvZ3z2JY7xWlj
	NNouAnkS75TJGtnKD19ZsakuveNcvRMhrCFKKhsmxuJ5bWXpBgA3e1NEla0bintpQlF6If6Cizn8l
	iU7VfE6mNEWB1xom2atJEJzHFywxReiGu6hqlbOka+7dzV9aftHgpqQ8KMU62Hb+VeZFnJP4YlRM9
	C89s+8R+FmM7t4zJjltbfPMK6tgdp3o2OxkRfY9tyUvo3debwDsD2l4gnNRmJ4I7BCp96N4rFBWYN
	EALQWopA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTW01-0006o0-Ps; Sat, 09 Nov 2019 19:02:17 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzp-0006mR-KM
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573326041;
 bh=bF9IRVU1Z+oU5tnKjEXvJJa+O7P8tQaVbU3MEL17pDA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=l1FJt/JVrFQ4Cc3d64j1zLpF2x/BffVHtslCVFAZp7+a0ZmvFDWr9WPJuNoCS1baB
 gMRqbU7o9qZZlJ1DhUKQArkhlyVR/gW48DrxeU3omPQxoxq6SBWJtO8OUFkhOK6lok
 a8mYMTLjROCWDXQI/EhZpB6xBG9xTXsgrsEjwGY4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MHXBj-1igUXY1l21-00DaRC; Sat, 09 Nov 2019 20:00:41 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V3 net-next 6/7] net: bcmgenet: Add RGMII_RXID and RGMII_ID
 support
Date: Sat,  9 Nov 2019 20:00:08 +0100
Message-Id: <1573326009-2275-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:19XFGzU2npmrhE8QyHNaT8vHf0VoFCxuBlYlyWoEyLrl7mZ23nD
 1LFggpxZFlO39/Av6KGSxJ6cwbPl9dqfjsnA8Imx/J+ZjAnbiKNZHB6jOOeJy1ZyDcpFGwl
 cIZ17iEKCDsuYgG3If+xeUijiLiLh9iHeY0mqdWs61eJi8k8W1sa/CfIy7b/CSA0F1B6nIN
 HYWQ8WDYBPDn9FePEVZAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S8YkU2xmVYo=:UBd6+Er4cHJHAJM6IVJi3G
 F/XexFmtKjVA6wM+Rp3ZSNbZScoCrX4HbAFRMikvtMoapWQ2BSMCicUydV0K0eKcRa2/36iNV
 hximV/GxMQbaTK9SlbWFCzKXsrGsdh/lsR4RM0Pz1boX80N7VK5cmnjsz/iIL8vBAFIvyG/Ti
 if0MEuxfGHWaXDn/errOPjRWj9vQWkPGyotTTgh6fVjvkWRgR9Brp7exxm45FKgEg3ecZbJp/
 RPHCyegUDnLaHaZ7FUiqHurOplS+tuM++l9BhSp9iA1nz/zlpydEUqQ+8kLS/q18VBepxdR3X
 0aP1wcVORhsKGvoFZvyrUrOM1bf0HmmZjlHyScxODeAfC4fBAniUyzwzfEpdf1PqnuBdZOgLG
 9sflnO/i46Pc29mwjvaSdbwCF1+vd+Gq+o/GH7uM84eDUltf0YL+IJyvXAzPVTQFWf7+hEe7S
 Hl0IYKtwuPZ9SgTj63gnW415To6VJvjcdpEVTTkKrzDjeaQqmmcRPCDDyggHzrZT5N/DV6dMG
 LIeP9VpXMJKE3D1jDZV/a4zUtzRcYpFgZLR46DfismFhGtGdXSemEmbr5DGXFrH3wOQIXf+t4
 KxjlO22vG4jyFO1xIWiW/CbSxrFBL6xl9l3Bmz/qUaNhHjt5ebAUVtxoXdY1zK/g/PatRERQN
 K3fnT5YcWfh/seVjE+15ppheIqTIzAL/nDPSklwOfMSFpMseh2sLGXzppMDE21FFUtRJmj1s9
 1kfabuNO1tJasx63nHwcsq7pXCCPZCh0RDudS45VWBgk8jhJOTvQMSWx1YfwAP4+zYmrRPN+R
 7ZAaC50uwxNJhOP6ZKBqbYXVquZf+7VlRvjMy2aa9jHOwNRXsYqIvVjvIGoOPPIake62CqEjG
 5q6J6k+SvJ/ocAuE+1vkErNhseHBuz7zlxijVgK7bWClK0DkeUZRwheU/vjc+APNht0PlEH72
 n7wDI5E5okFqrDn7+8sf6iNhjypwpdrCVI3m6syAhRIKtGo67LV+ml3l2ap9ZEoN72AlfXpHQ
 sYetSlHVRmMSzP9+bpSILe1VUEVGAXZ5YaGATihulDEUwcotv3mwfFV8aW8fwXZkYqYHbBwTs
 5PkyLpbPZV9ynfYwENZ548282CqhvbN3pzrdU3L5ocjl3cmMaznTkfM52WvUccV3NZQH9GPhe
 yfqGrWB3RnuW6UK7xkWaXOJ8QA1inUJPy2S0Ju5J4aVeHDfnbVIqfWteRFJz4tpI8eiFJgtFZ
 FFHW8gAz0UWcgaw9p5m0Pd94CROW/fY4Ecp0b4g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_110205_960830_920EF228 
X-CRM114-Status: GOOD (  11.06  )
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

This adds the missing support for the PHY modes RGMII_RXID and
RGMII_ID. Based on the used register settings in the downstream tree
the mode RGMII_RXID is necessary for the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/broadcom/genet/bcmmii.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/ethernet/broadcom/genet/bcmmii.c
index 8f7b2c0..9091e5b 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -273,6 +273,16 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 		phy_name = "external RGMII (TX delay)";
 		port_ctrl = PORT_MODE_EXT_GPHY;
 		break;
+
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		phy_name = "external RGMII (RX delay)";
+		port_ctrl = PORT_MODE_EXT_GPHY;
+		break;
+
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		phy_name = "external RGMII (RX/TX delay)";
+		port_ctrl = PORT_MODE_EXT_GPHY;
+		break;
 	default:
 		dev_err(kdev, "unknown phy mode: %d\n", priv->phy_interface);
 		return -EINVAL;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
