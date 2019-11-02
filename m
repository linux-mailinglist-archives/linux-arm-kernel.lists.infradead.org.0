Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D38ECEEE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 14:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=egJMdchE15EDkcfJL1QhGH3S6X7jtGvhyFN1kxUXiTg=; b=SL+APKu4hW8+1AAf3XMJarfHuV
	bODvG0tyip1odPi/nLs8QEoD4tWSPsBM/d1X+Ottjs1JQyqlnRDKBv59PnPcwSYtbUPbtq/OCHz+I
	ZhKvHHPkmzkRe06SiBZcXitQXzsIl0BwFtGxti7jDotMVgdrixBYoKiaReFi1MZZ+qn3RqtpbT0tU
	EoSVtzW/LEZF12jslIFtSXIo35BSNxSG5GUhzu1MjHPxzTFHO16Lyhp6+SOObsAa7rCRKtWqGQ8zb
	PLcwkr7NDdxwAJGMZCaLFBz3Pp22ELvzvlbmaGMmQfU+B9B9Na3+LJlR3DCTe9A789R2if+mWt6dZ
	tVdeLOmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQth6-0003xA-3O; Sat, 02 Nov 2019 13:43:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfe-0002iH-47
 for linux-arm-kernel@bombadil.infradead.org; Sat, 02 Nov 2019 13:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MjlfGXhCyeC2CwSiW/4mY80WIUN4vTXPKxkAj874Ydo=; b=KMIaZWr3L+LfIyc8MYOPAP85/F
 c5bQmpNJ5lg4/nK8buAyYgY3Fe4kALGgcJnR6K9CmKN5CffYaodkkyMsPjMgnMYChN7rw8pZxZTZ3
 Q96NsNaodDqS3vM43kFfOWdgDMXCurxMNge93IW+BBCOTJmr0yxxlQTpgyALh83koiS9LUxu9TxKZ
 /BcGERxM1svnOWnOa71RrrX3CxuoVInM7dnqMKmaOGV7v/lWOSZspbh32Yc712YBP1dWwknagrFXc
 BdnSYE588Qs9Z5y1PRja6t0hojw0EzCsjjv9VHRw810s7yQbZQsoNuXcDcGnpUZg5XiUN6AVIXeyY
 Kldd/UcA==;
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfa-0002DO-JH
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 13:42:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572702114;
 bh=Kq8jVv4KTT/YEFqTzeDy0DyjuJ0jO8lh0ibZKH2OXh8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ht3ka2QPxdW/avugLVP1F7v4AW/+qWpbLD0OytfiCkbj8XSZ2rltSa6EVUOdAWAjf
 zP14DGeXFAEQmZOw/oRdp5fW0Joc7Q8uUc+/3gL1tH2NxjHbr+uFL24+qoypJIkptB
 RgCKcoi/t80fyg7t9vvFybEeV41glDeUt1yqGzRs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MvbG2-1i8fky2rna-00shZa; Sat, 02 Nov 2019 14:41:54 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH RFC V2 3/6] net: bcmgenet: use optional max DMA burst size
 property
Date: Sat,  2 Nov 2019 14:41:30 +0100
Message-Id: <1572702093-18261-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:+ydjqLwQaCCuVahtqEKzjJXqL9Ne/Q5iMTBvbfN3R6S2K5c4hwX
 LNswrb190cgkUxjuUhHIFTydQtBZ8LWWMYKqv8EOInLc1r1AeEsfxWF96SOlC3Sm+2pZr6u
 mEveIih2H+AOE0vf31YY7Eur3dLhwqac0AbgNss4wW5TG58b5p3EhyH4nS4q7DTKiJvgL/K
 qud2WqYF5i9ywzH7eSorw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L3iBkhP8wEs=:1HEfBsxwIJyRLUPTQwuZdE
 yu/JLTUKkKDKmfPEVXNPdWQtR5mTbVB/B9p/OzXrKTJ1gqRx4s2ntufda6vIZ2scJXfgjA5Qy
 Sx+DxH8ReMTubbCVe2iuaUfd4dDAa0NBUSBTa0JZzQRI97r3T0S/mmah6LFQ1tPOal5rccktD
 46VJpLK750FxqPwj+CQaXBftYHDSlKBFF6+Esesfx2g83x2D9T/NiGYpz85Q+UnLCMtDfejLE
 Dhujx5lxszeBrNzYdIUdDnRlt5Hj48EP1ko+7XN+w90kpqo89mYUKCyWBSl3+kju0tsDKUJdZ
 RXsH2bvnA2Vov/mabjidqRAKnwxlpZgMEZEU+5Gf6DQTUiLV2uJS71Fe8hkM0HO1RQaLUfJAQ
 4FEij54Et+Hyf96oh7P852ZRi56T6pF7oa46iHME/+/77r7Hq8PDksaSlNJhVFhtv2aQLPy3R
 Vh91kc42wceZImPJFg9otqlrLK69a6K3Gwo0qtfjwoTM97BPosNhhndW0muNsEk0KBx2y+m48
 1n3G1bsKk5HRlWiDdj9wQNkBJa6yuRMsJHRjhVPZBLoimk1glqSo0JuPcWur/JWbpQ9R2NCWy
 kCCrhH4LYPc8/Ydl/naTvEY971yhCVrlWqtD8/2x/055HQ23o/v+5wm/nlIlsr5bOJ2UQrPS9
 o+u0wuqwG/9yTGJIp8Jzt79bcvvveupUwwIv2QLDzUm57kLAGBQx81Bnt47NmMdaXhC3GJHIi
 2xJfuOt4cfQvajpAHFfd5SPNlx2Kf3842KGDJo3ExgAuj8mAfxPNS1Zo1IoCHFW+BAZO+bAAV
 Cl/Wcv4lNr1VA90iT7Utwz1gkP+9CGM/I2QWtb+u5/+mikE9IxzkANJJ4/5v6V4Jukz/fsRnn
 6GrteYFSLBII493Hd/Ppks5xM+Sy3l6v5Pp/6U0PMfS6EwNJjgghUp/3VHu/jry8RWj850n0u
 QIpKBvlfVwVr9pX3l3KtqtGOzRkbkIVl+Ct+V92sei/+3TpehzjsBBGyafL1O0/4NgVzDUFtt
 biE9O04Bd2dellqA8HiQ1xnOJZ/GAraLR3Sqcat9n5+PHGkoJ8RK1sIFd/hVHWK2Deu+Kwic1
 E5z2zaKaAuQuUEfyiWkWQCzifsaLGRY+Iby65/5Eto3+Kys3DvBPDRzzhDEy5Cfn1Mls0FRYx
 SFJGGzYiaXMXl8hKMIBnESEApFPYBWotRKUi3wVlM1TozpKhaaSNmSk3L7WGy/RrUdLZjqENN
 03aiCxg5n2WPcrWoiA8tUc4sy31/RXJ+V5VXwVQ==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Depending on the HW, the maximal usable DMA burst size can vary.
If not set accordingly a timeout in the transmit queue happens and no
package can be sent. Read to optional max-burst-sz property, if not
present, fallback to the standard value.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 13 +++++++++++--
 drivers/net/ethernet/broadcom/genet/bcmgenet.h |  1 +
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index ac554a6..8d0093b 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -2578,7 +2578,8 @@ static int bcmgenet_init_dma(struct bcmgenet_priv *priv)
 	}

 	/* Init rDma */
-	bcmgenet_rdma_writel(priv, DMA_MAX_BURST_LENGTH, DMA_SCB_BURST_SIZE);
+	bcmgenet_rdma_writel(priv, priv->dma_max_burst_length,
+			     DMA_SCB_BURST_SIZE);

 	/* Initialize Rx queues */
 	ret = bcmgenet_init_rx_queues(priv->dev);
@@ -2591,7 +2592,8 @@ static int bcmgenet_init_dma(struct bcmgenet_priv *priv)
 	}

 	/* Init tDma */
-	bcmgenet_tdma_writel(priv, DMA_MAX_BURST_LENGTH, DMA_SCB_BURST_SIZE);
+	bcmgenet_tdma_writel(priv, priv->dma_max_burst_length,
+			     DMA_SCB_BURST_SIZE);

 	/* Initialize Tx queues */
 	bcmgenet_init_tx_queues(priv->dev);
@@ -3536,6 +3538,13 @@ static int bcmgenet_probe(struct platform_device *pdev)

 	clk_prepare_enable(priv->clk);

+	if (dn) {
+		of_property_read_u32(dn, "dma-burst-sz",
+				     &priv->dma_max_burst_length);
+	} else {
+		priv->dma_max_burst_length = DMA_MAX_BURST_LENGTH;
+	}
+
 	bcmgenet_set_hw_params(priv);

 	/* Mii wait queue */
diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.h b/drivers/net/ethernet/broadcom/genet/bcmgenet.h
index 7fbf573..22cde8c 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.h
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.h
@@ -664,6 +664,7 @@ struct bcmgenet_priv {
 	bool crc_fwd_en;

 	unsigned int dma_rx_chk_bit;
+	unsigned int dma_max_burst_length;

 	u32 msg_enable;

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
