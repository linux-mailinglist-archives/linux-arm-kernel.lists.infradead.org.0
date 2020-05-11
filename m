Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCD51CDE50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRfMkMsXZDOv6nx6m5nTPcaMcAPHUfaDNPhR82holhU=; b=YyiKqzkc1wQtot
	cOBCfNtxvqRVbFmgFewr6T8ISGiz0VWucFfsjtSl7H48CY4iI7H63GquheEriU9JsVuhdpnubSpmK
	ajfFf7ij40mLVi+ynJtdsPIE3bjyG/lmae7KW5SsmoBJzx1lbn/Uewu5RmZU1gGKWa5L6kr2l2/4m
	1mYJFwYXOGhL68BRehxt2AhwZ4JW6dtVYo2owqxqtuQztFX5kFIeOwatmeKPTCwkSlioPuVbR6NcN
	WlYot3ZogN1Ujo31WOEJF4mYxveCny+Bo+jQv6Ef3vNctd7n9GwjAUyzvEBHDqxPFp7DtK11dkYmg
	7VyDOHlpNHry/SBRUSWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA41-0003hR-Vx; Mon, 11 May 2020 15:09:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2c-0002QF-MD
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id e16so11424710wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=IONh+DpnmejFuXALAwr/I/OjxLG9/eNbjfLpyONcGQibovX8pI46VIZgC9xXwCv98H
 Ky9NUKjT2vd6Ug4cS8NQuuG/ijvNN86K2vpP/v5IdxeXFOrdi9TwLnprkwDDJXsKFnuw
 /vRoJJX2IslmnZxnrfWaBBRCyW1JbduGoxT58Yx/n3jOInNrLcgpirPWOVnp07i32Q7+
 vjHPKCdqY5TRz9Krgcho0oar/Ep/f5M5qDpMJgBk88UWDXbKxzhxsOeSaIA8vbRlD2Eo
 XUzGSDPMVx702v2gEp1ifsTebqSwhxEbem43H0bhsSH+4P7qfxv5J+IWtyUaPlnHxjuF
 Fq9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=EbvFyCo6gfxQBxAawiNPlKDlHReJtL3eHQ50g6zrSylb7irVJiassA4B7gBldhsnpI
 I0CUIMRv3b9sF5hjjDy10ySRCUQ47p9HwCJzrV+MSoqqtc0xoPk9K24ElSiWVRxBdC/H
 DgribP0GbPNo7c01pZ8KRI1y0aO25DlDlUat3RosFoJDWzqez0q5Ddhf6pG5cedjZhJs
 3mqOftIHj7MVhYoAqzM++EXm1tJlzO1XRPjQLu3BqqJG8Rlb6/PxRVXMmG8YK03OXOzf
 wEoCvCyBpwqLZXm4aXGmCR4mP1cUc/5QhjJ3CZ2lK7CZqBqUkAzt5E1RKXBChKYoEeBV
 2H7Q==
X-Gm-Message-State: AGi0PuaEYx4FCpI1PDQE+dNXP2LKP/X35o+cz99hvQt1rUfp1PsjZ7ZP
 tgezn5y4oK67A/AnZOSGFmRuSQ==
X-Google-Smtp-Source: APiQypIP0Bn3KOIOBxC1UBNqcqDai8qWfKN8IcFL5zqV14Hb8VXZDCZKqkzaVDqG/Ivki43uegY3ag==
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr8322148wrp.427.1589209705382; 
 Mon, 11 May 2020 08:08:25 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:24 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 04/14] net: ethernet: mediatek: remove unnecessary spaces
 from Makefile
Date: Mon, 11 May 2020 17:07:49 +0200
Message-Id: <20200511150759.18766-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080826_918471_480970A1 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The Makefile formatting in the kernel tree usually doesn't use tabs,
so remove them before we add a second driver.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/Makefile b/drivers/net/ethernet/mediatek/Makefile
index 2d8362f9341b..3362fb7ef859 100644
--- a/drivers/net/ethernet/mediatek/Makefile
+++ b/drivers/net/ethernet/mediatek/Makefile
@@ -3,5 +3,5 @@
 # Makefile for the Mediatek SoCs built-in ethernet macs
 #
 
-obj-$(CONFIG_NET_MEDIATEK_SOC)                 += mtk_eth.o
+obj-$(CONFIG_NET_MEDIATEK_SOC) += mtk_eth.o
 mtk_eth-y := mtk_eth_soc.o mtk_sgmii.o mtk_eth_path.o
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
