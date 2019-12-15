Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7D311F537
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 02:11:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VIb3wVpvkr767cU26/PWWRvv8vK90PovlG0saKjhQSU=; b=qEo
	oRV4y9rSr53StM1ZktfknwMdWEDKGZTOaiJD5WMFVXCOWfGMcVlK8U9zo1ACLQiw6GON8cPDK+cCn
	GXpOtMhbgnEan/Rs3vq2dLm2z2mC2r2VB0BDuf5dKCjWVRcc9ybVT8+2SLwnEumRB8ixX9tNyL7qm
	7G1eTmn+BQJ/qbP3rnUNDvfS5KLpjp8mhC4BcehCUn0/Lh/sCp1yCV2GRgRHqB2DY1vVdail1i4aZ
	veTDBxEo6S3HVeUPeAnilTtMrWoRNkUG5SjV1JBFRk6e7A9DgS/H9jLtvDI6ckWiZ16AFjY3c7wg8
	Bgs0ZYZPbgFG0JqHONWMc1vsve4huZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igIRI-0000Re-FX; Sun, 15 Dec 2019 01:11:16 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igIR5-0000RG-Ah
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 01:11:08 +0000
Received: by mail-il1-x142.google.com with SMTP id p8so2576819iln.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Dec 2019 17:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iCgRvU1WGRJdB8v0mlRWij6VbYbiUNZ9qlhjDWyv8b8=;
 b=mm8H9mwC/H/B8L0ty+x6fcNvz2ecrsgaucPP5ScxIuULp9xV8c3kSOfLyVGkYoQpn7
 uPXaE/CijJAssAhAeilkHYXZLa5R/2oicE0u0UnqKFdBpeQUFPDWIE5xaL21KMv3yrKt
 1joiBx5xrRHuWNl6KMt1g2wW2p5lwVHRxxfFbwcUBJ8F1QSMRkEDGAfWAwx8WvipCkaF
 NFBphQv26wL4csd5dfB6/GZfyJ4yJEs5yWtfF98WpHkQGeGigkdWbt6K8QLgCssj8PCM
 0ScrtnuJO3zF57oGe5SIDAeVJV6N/vzck3Y5jtHGa52HTIu+yL2NMDLe6nebM1P8TB1d
 Osqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iCgRvU1WGRJdB8v0mlRWij6VbYbiUNZ9qlhjDWyv8b8=;
 b=otuJtSbja3RGxHv8LjE90ivrBxSuU//5gxduOVNIv79O6wDpDqVumaYDQYI+szFgSj
 l018j2AVDwQkJWLK0Hdi6O51yVAYA0Tw1RhpjiYmzzS6ijnm0F+0Xcb/mHa8/dQQyHhs
 bQKZnH6aw42eOb54XsQ8fxKdNA5lXy7FiaMOdtl1K+bvfgpSzAKKHfZGM/DjefNEFDDK
 bz1TQekh4sqLx8CBiL/lRgCewamYKOWLZ4r3cBnYyrghfcYkTW1joT1lpm2WF9Sezt91
 FCe3XouU4MF58jv2JNQ+41yC13/bTKbW5R0fj7qJo/CA9ENC+KDr724CRsrdUYCLDJ6t
 1n6A==
X-Gm-Message-State: APjAAAWEiHBMpxTEMl698JG+XuaPixWjkksrcES7hNdTlHKrAw1+XkDw
 TrMQb38TV85Q1hz9G0qWhY8=
X-Google-Smtp-Source: APXvYqwKeEjguHOSD5k7hXba9znk0S8i3ioaEZxvZ7qBuvFHYAtLl17fRxCyhC2/A6BeFGt22r3lwA==
X-Received: by 2002:a92:5c8f:: with SMTP id d15mr6913133ilg.102.1576372262269; 
 Sat, 14 Dec 2019 17:11:02 -0800 (PST)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id 129sm3173169iox.84.2019.12.14.17.11.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 17:11:01 -0800 (PST)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] net: gemini: Fix memory leak in gmac_setup_txqs
Date: Sat, 14 Dec 2019 19:10:44 -0600
Message-Id: <20191215011045.15453-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_171103_394298_AEE9CD33 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
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
Cc: emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of gmac_setup_txqs() the allocated desc_ring is
leaked if TX queue base is not aligned. Release it via
dma_free_coherent.

Fixes: 4d5ae32f5e1e ("net: ethernet: Add a driver for Gemini gigabit ethernet")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/net/ethernet/cortina/gemini.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/cortina/gemini.c b/drivers/net/ethernet/cortina/gemini.c
index a8f4c69252ff..3a796fe099dd 100644
--- a/drivers/net/ethernet/cortina/gemini.c
+++ b/drivers/net/ethernet/cortina/gemini.c
@@ -576,6 +576,8 @@ static int gmac_setup_txqs(struct net_device *netdev)
 
 	if (port->txq_dma_base & ~DMA_Q_BASE_MASK) {
 		dev_warn(geth->dev, "TX queue base is not aligned\n");
+		dma_free_coherent(geth->dev, len * sizeof(*desc_ring),
+				  desc_ring, port->txq_dma_base);
 		kfree(skb_tab);
 		return -ENOMEM;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
