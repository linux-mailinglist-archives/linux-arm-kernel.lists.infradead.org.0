Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B92ECEE2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 14:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=STjEK+fSWYieMiScGkgJPOuPU3lvN84XufKJJjcD6kY=; b=Zt3hBbt8564IkO1FRhm/Q2miku
	iCs7X3LFjDljS4OBrcAAs2D32kmI+VS0beqzADVfkxC7++T100732XC9j173HNk+Vxk2Cdn5y8dZ+
	67uhZlIghQ8BFOinuWj0k9ju7ERlArkXTHC765Qm84xnXV4iJuG1XvgEioKAtpLghUQXSG1efOWHc
	87r1KUkfIf7ac3W34KdLYwd7jvyv5LvBShP/enXy3Er+MF4AFShhTExtdLD3QnbaTRPW/i+OJuCqc
	T8bhRl0mMu9w9lkilndowZb5MKH4YdD/l8hwFvIFKukDMST15WESawZdN2x+72M0HcmDoTBfGB4lT
	lKHhX8Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQtga-0003VG-A4; Sat, 02 Nov 2019 13:43:24 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfW-0002aL-OD
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 13:42:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572702115;
 bh=B+2ielFzQfrNXcrr2rG7ypa++YSnuxddRmAyBorL8W4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=NSR4jjTcIbME/Mma0/vrjDQ+Eq3suj0eYWC2h6wu4yIE0LvpkpivqvCIDGhoP3C6k
 /U+tHPPbqW0FXoALDJRW/kuAGojfAj2N27bdshkDhjuIha9odbN3fhAhAdsMGqRoOF
 DilHEi9bqqLCG/vkKJdZkGSlxXDFRsqLOrZMA7/E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1Mzyyk-1i4I2n2Zp0-00x7Pu; Sat, 02 Nov 2019 14:41:55 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH RFC V2 5/6] net: bcmgenet: Add RGMII_RXID and RGMII_ID support
Date: Sat,  2 Nov 2019 14:41:32 +0100
Message-Id: <1572702093-18261-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:YlD3liMtwTM1X67+rhs9J6Xk/Cwvcrk77ukSyY9OTn1dfuB9FOI
 jGgd8VLi90xpNxuWu39vsNO/fDPMETXQaHn/LQ0rxh4yN3JzG/tghvPlRTtjrljUZz4jli+
 dgqVIhFlwAGcgjmEE5WI3jcMtJucbB4+A8RncLYtMLOR4thjYNj+pGpFuzg1/hTuTENjelm
 gyyGdF+qvraFwknJbwQ+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DRhM9sgeMiE=:LAjnbh1+DHmkNZE9H6ptZL
 PXjAVZevOKt0vCnIVyFIposySYFwMZSTZhGyXfF7iojc+aWi9tNJokwTvSkQmzMegNME6K1hD
 1o60RlcmJvisrRDaoCAnSchJb8zi/Kp05OMqc8PcIjNQ4MC580fXXkVNFM9je5zIPOQaslK3O
 jHNzv4GTNGiT5b+lnr9qqc1/bh9cwqMp5EY1a3KZLszzOOr0olCVIHkZ2K2oeUz+WVG/n2kzN
 TTkgKLbPbuYGBU+wurZ0fx+SDBlX9N+PYoq385dx0W1rkbkvnGhIXXKMReaeeMKQs9M3A25jR
 brg4MITtDKRNggRJ5I0ib21CkXZLfBZ+ub+r0GSwpfeDokb694wOcEu2BdPgLrVlK9vyw0S6G
 up5wzQnTfXzfiP1C34V1bSz4L8QEMcKj1GEuhEcCVJRdc6EPU1nPX2Fxd79tJlLBGNJ5Ffcqp
 oNobvJq9oTMbB/Ehhnwp5HK4ZpKnoEQOVxddOMOSVu1wEQQdPoYxoWo3irM3p4mrOQV7HGoz5
 roUoYE85QHUPBSQ6h4kYDmh2PVN+tNFTvygJ2mfmchG8kRfsQpmjMsMGiEjRb+M9QWxxvOuCg
 hOoLXnSLptzkxUJ8Bq3CWNnpEWY29pNmOLTVpHEleprbXNVsYlRkk6liHKVmhug9RZObx10Zi
 7d0CwQA3cknJWp0aB5pjN+TgzkxwwsfYrJIFaaJeEd4DUhp2yF+nn362//DCZbXKtcQwLPzcD
 Yxnj+UDbgzdW90+uQpGwcbZf1N1EAmXaeDpfN/2y7UsBTQCeiIaaM1Oej39fIXLl/3MxCt85A
 tnLy5511X2afbb2F8WYw2Erf0XyY2s7ChLERpvJ1SVRC9bFQ4Mlxydzg5WO3Ru3XymcY1MPLY
 ZgyaDEqfw4OwCbCbDTVbSKIGnYoSOayVTMuCQx/WhX3lZLobzJNBeZNTu5JznzkmSIBB2naJ7
 wE/NEM+kGdTJvXQfxqhg/+8ayhrlyo1zaB9vD2ldMF1WIDe2MmUGl/p1A4PAU0g5APxNxbap3
 Qlr2Rb9tXOI2jJapxc4+94pTOfybvPr6fjPli9ZWF7eT449Vsva6mH1mFBuGGqfe05DuuaJyM
 WrNlP17t+2X9DpqVZsxDSpcJti8ci3VCJfeSfcvlKh3tGkd4vWV1odp2duCgqcwrw8pYjiN8w
 EQzNWFLgdfccn2WyJTyM3TjQB4ORh+yE8AR1uDEMHUY77M+RgLgC6pFwNJvOXX/5x8nYVgalo
 DsZuteUHJQ9HPt/SvlteKk58Z4DLnfl0KKuAPBQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_064219_094522_64BF2851 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
RGMII_ID. This is necessary for the Raspberry Pi 4.

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
