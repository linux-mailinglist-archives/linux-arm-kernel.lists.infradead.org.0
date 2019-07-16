Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E096A204
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 08:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WtW4Tyjx/+digjQfhIYU8lPzN0RV7Ca9a9E/JWRNXpA=; b=bE49ggmgGoLcQa
	Cayv0GR7J8101LD0PDxIY/+Kask3BAlMZVvGxvqONnmphTgys1XsJJfncRrCpzmeMFwHlkiquFTFm
	UHu5hy0yK3EHnRKUTaoFjr67C2VIVA6+cG11FONW1785Cjm2+rhj9EZfwHYzwJLjyk44LkRVeOur0
	aYCHnDoG9mZIWNCc8f85gwv5FDJBB836zNPEAaqrYxNyF+O/Kf4H9xiCNHIGgE57zLJ2kW+gV/Ybf
	eVVAMOlXttxCpzIobivMJp8PcI+vOcol6FiZoHxBnasJe0KNWQL7VsS+oxw0ieGlUJopcPMp8YPjT
	qdBH2cz0No+lLFKLzm4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnGVa-0000uZ-Bj; Tue, 16 Jul 2019 06:00:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnGVI-0000tj-7p; Tue, 16 Jul 2019 05:59:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so8553043pfn.5;
 Mon, 15 Jul 2019 22:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9ivc6od8L6GPBsgJw/8JaZqQBLdmXOUxA5+liRugWa0=;
 b=fI4bHT3317Rtp+aKT5/k2gKQB3L6a4JNnKR/DjjEmsP0K3XKagE/bN1tibma9pMliR
 dbt0cQ96jOYjd4tJR1trjSF0cJhMWquOBIKB9GFetViNcyldI3gv0Aqh2kcdoNC8RIHd
 cyEUkv2JqmMXklnHPYJqacCd6xj3g9foz4ITuESUz9nR28Rmhmiu62YJxmV5WwVAeRUl
 x1Hq5pvY2d0/txgG+jMvRhX1x9quNZSLPgKcgqLWBINiSSb7OGT3CYUQiHG9qXSC4yyX
 cCZ6hcITQ9aqwTKjRATr3m9TeBLz1WbzThZcywl7lbbcHHFyzVuwRAG1BXBV7O0JFAcl
 rtPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9ivc6od8L6GPBsgJw/8JaZqQBLdmXOUxA5+liRugWa0=;
 b=ZehjYwyoNwIM3hD5/oOQp3K6AyucI+QCrwuhwdcPjZNvruEB0+4MbbBNBIkYV9eSsy
 S2z6BxUQ5uIEoX02u5dovoxMUAaubVl2mGvkB9BMSvI8azV1enxlJxcEyVdSQvrm/v3S
 Kx/urCg9e963kMypA8FwrSfFIt/pkF2vVj8Bkbq15mm6776ny96WQ9c3X6IsqAHGSH71
 PUBWG9Tcufu8AXz1uxdCdgV15KgvRrTJ0rJi0ehx82+3ZY2sqys9+6ISOjgmF3slFr/B
 E+5GiWMy6x4yYgnG7bAjJ8Z4UCxzEosuiriFxeUPovBgMEg7B/b1Rb8yCZDwB4/U1zod
 xwZg==
X-Gm-Message-State: APjAAAV06S66ZAnu1qxHMniLTtpkvZxt/gSjqCO8qbodhXce7VTEwhqs
 y+53a1PA0VKymqv5t0wJmFXrHesa
X-Google-Smtp-Source: APXvYqz4dVd2k8L42iep3Zx8Gmj+7Yp3InAeif4HZktkMvbnTxNhWpLrKi4GwQ6osBcNn5usI3zYEQ==
X-Received: by 2002:a63:20a:: with SMTP id 10mr31109140pgc.226.1563256795658; 
 Mon, 15 Jul 2019 22:59:55 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id i3sm20864172pfo.138.2019.07.15.22.59.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 22:59:55 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, matthias.bgg@gmail.com,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH] staging: mt7621-pci: Add of_node_put() before return
Date: Tue, 16 Jul 2019 11:29:44 +0530
Message-Id: <20190716055944.3237-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_225956_277532_ED850232 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_available_child_of_node puts the previous
node, but in the case of a return from the middle of the loop, there is
no put, thus causing a memory leak. Hence add an of_node_put before the
return in two places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 89fa813142ab..2e37fd136ab8 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -400,6 +400,7 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 
 		err = of_pci_get_devfn(child);
 		if (err < 0) {
+			of_node_put(child);
 			dev_err(dev, "failed to parse devfn: %d\n", err);
 			return err;
 		}
@@ -407,8 +408,10 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 		slot = PCI_SLOT(err);
 
 		err = mt7621_pcie_parse_port(pcie, child, slot);
-		if (err)
+		if (err) {
+			of_node_put(child);
 			return err;
+		}
 	}
 
 	return 0;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
