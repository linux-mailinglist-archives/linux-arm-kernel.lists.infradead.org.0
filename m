Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9578958886
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 19:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AM8QRQr87p7E3oalT1OEqy9Jg+64YLMGyQ42otNVNzA=; b=EZm
	9agDn1LeBRTb/HjoZGv88iD1xFc1s2mfjcZ4hK0TEu845RDtE96Nm840R54/rKItt1xJD8FrZGRAI
	XbwShFATBvcrJCwNws8EuX8XXlDUT38OPT5ISxD+kgQXdnTN/sC3TEPs6ps9znfbdcDLunRy/USal
	Y/i3HiJYxkSC5/92JWf0RY0Zax4XMRTGYLLG53L3YhqeRlwrXlN2jCrr1lSAVkcS64IBicqBglXHH
	pfb3jN3M1aRvm/Nte3h/j2HU7MlrbOSmu/JtVNOuSV7C3NxcbGabJsHhXQZhV2pxKMYNY//AVWtjo
	Z4Lqd85jWi/KGYwCcBONRadvT/yvHDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYJW-0002iB-3U; Thu, 27 Jun 2019 17:36:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYJF-0002hH-Dz
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 17:35:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id bi6so1654389plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 10:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=swE2uPeKQhZkn33ToHN0/DGisXtpeV3c7xG1CSkw2+k=;
 b=Miy6dVwuphqr0+9kYCyN1mdCjUPNegKo3U/+jmoyKUClmFp7MPluirtH8Z+Nw+RKBN
 3eXqH5NvFlFjeLHWjlhaTdvYVEk28pRatoMtSHwEN0fG3I7pIxLan/nZ+xXIygT9qB2i
 SsYL3BUCqVLpX3Y0c0pBJ6wW60QbBFvwq1uK+kS0PFokK64IRKEo2bo8XgxTxyrLEPoF
 BLsDUjEoVc8s4x6BXDSp0zqnSZjPZbwdDVeZwEfv/Apa97ih8qy2cnu8zqI56FBKe+NY
 04RfHsEwz8iH0uzJUsuyugOC54n4B2Zp4bELVfl2HkNF9KychUb+JnOpPcIhUGSyFcpR
 PKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=swE2uPeKQhZkn33ToHN0/DGisXtpeV3c7xG1CSkw2+k=;
 b=LFAFeMlgNKxu5drhUoA4FGUM6bU8shZwRFdSOJNEBfE9LextPKvujim/Wm3tM+SJ0y
 +vIMgydeLrJCPShW4WRtySQFWLqlUdUrEnIpf1l19EdhjzUF9ZK32EGlHlfn12e+1rfE
 Ap0f6SWB0UaicbeKMNZ9YIr+EQZEtAHBNbjVsRnRpxS+372rr8x9FQe1aj2NImw4UDdH
 5OWJYGWOzO3rh1QamseRYdi/kFqQ1hsleZHQ47+R9oD2r24pIg/OKzOd9j1MdS7aHjyh
 O3ZtyGvbpUbeV9DRznNQoCdWty/WJ7gE/2GeZaW9dy1gvN2HnbJmLJ9PaxUs6suhpukA
 Ap1w==
X-Gm-Message-State: APjAAAVYEFX3ct8mZav62MAMhkLvStFeu3I3DU92RxDXibghj0yDPc0f
 dg2TowPzLXekhxFNkhPp7Bw3GMpjEkDpNw==
X-Google-Smtp-Source: APXvYqw4m8q2FPtXEiZooJ1RVdH5A46FRMsZhFAfyz6Kp2srD4Txv/gFtWJs5K+G/1ZWXnU6AHUaDA==
X-Received: by 2002:a17:902:d88e:: with SMTP id
 b14mr5839060plz.153.1561656943033; 
 Thu, 27 Jun 2019 10:35:43 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id t11sm3479203pgb.33.2019.06.27.10.35.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:35:42 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 12/87] dma: imx-sdma: Remove call to memset after
 dma_alloc_coherent
Date: Fri, 28 Jun 2019 01:35:35 +0800
Message-Id: <20190627173536.2457-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_103545_476678_D654AE9C 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fuqian Huang <huangfq.daxian@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

    In commit af7ddd8a627c
("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
    dma_alloc_coherent has already zeroed the memory.
    So memset is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/dma/imx-sdma.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 99d9f431ae2c..54d86359bdf8 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1886,10 +1886,6 @@ static int sdma_init(struct sdma_engine *sdma)
 	sdma->context_phys = ccb_phys +
 		MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control);
 
-	/* Zero-out the CCB structures array just allocated */
-	memset(sdma->channel_control, 0,
-			MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control));
-
 	/* disable all channels */
 	for (i = 0; i < sdma->drvdata->num_events; i++)
 		writel_relaxed(0, sdma->regs + chnenbl_ofs(sdma, i));
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
