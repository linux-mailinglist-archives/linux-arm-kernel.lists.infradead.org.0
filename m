Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3C063A0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 19:17:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TRIo96oVoGtzmw2idGP2vW9ZdXASvjF+eW8lPMMuhqE=; b=e4L3QSkVBZtFHb
	bd0/TbEuJy4xDjgYCHho3TiMG9h5QUbYTXJsiTWQq98LH/yV7bYmQHFvQhEMFKzJYf+BILc9Dp40q
	sZFffnnXlIMl5Q0Ir0oDRd8xD/dxxxeqcfHGFFXgRA1S2oQPKpvJMyKkWk7seOrTHgiil77Egk5/e
	yRQGgXr4cEmosvzgDPQhVu/JwF3NO4f9PTsHiIhFK9s5MZNsCFKQZxdHqcsDCJZ01Azr5Z7uq8Adj
	2oZ1KBEHyK3dg75V7iv26wpk8OpXt6rXWUO1CNWH0q4lvc3Ht7zWIL+965DtHP+bgXllan0qNk7xf
	NB6jAtpfQt7LR9zNgIUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktk6-0001Sd-Hl; Tue, 09 Jul 2019 17:17:26 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktjf-0001EL-Tu; Tue, 09 Jul 2019 17:17:01 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so10412140plo.0;
 Tue, 09 Jul 2019 10:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jRtVZWK4MTGxEwKYhzR6M7REzjy7te0i7wdR2g1MuQM=;
 b=QWAQGZKy6CrgIhflpOFh47kI6dHDA+nDD/sN9GIvQhstjbDy8JIFLwhPeZk/OaMHLT
 +kHVwUkMXB/MOP5bxRAqHXCI7qtLLBWsTPwUtB5At8TkJ1TFeJNdw1xOzHmmM8TdywXD
 inO9tm3kc+/WTEiDDasB04YI/MzxqYKEm3nHMEcTdc6Y2ntv2py6yoTA59i/uykACuDS
 igCnacXSODbr4UjtV4RPF0CaiM/ME0g4JZrEz1pKWxKIIhHhws8D4jbL+pn/4RI8S2BJ
 32cErmebH5kI9o2bpQ/OYv8XGhdBs2ZfrkWp3IZHjgW8qDkgvJ2XeMI8CprD01wxHRBu
 4nEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jRtVZWK4MTGxEwKYhzR6M7REzjy7te0i7wdR2g1MuQM=;
 b=E+iNcwm1O3MGJ3it1DV3E4aWfDIF1VSZLWIAIP/tLwfbP7E9BNODo/YR/gis0ddCJR
 zrpOFs9uWP+lcvfkNfaOX824bieArRfdGloFJRnsL3DEJRn3VN6BeaqiMibk7maSoJle
 o2fm6CJ0ZeD5z0+VbcbvuXmsQr1Z8i28SLtqOVpQfdT7MTklm0lA+8PcdFm8EE1tbu3H
 xCqDl5xxYnPgKe/m2JnKRZMV2nyV5YkGpKvNQyYKgSakhqDLEBtnrJz2I3LdbtS4rZXJ
 +aTZQzANqecXbQUTs0BPPHqdaqm/47EFUNQoOXMzK+9DBaWijqhN6mEOQLZzeiEdj6LC
 mkNw==
X-Gm-Message-State: APjAAAVB8oWrVfYzYs/hp6eHrmThnjcPrGwaPkWPx28EFvUETQqu608v
 hq3IzQT+v0Ts4+pPM6lhQyE=
X-Google-Smtp-Source: APXvYqySGMj+xVnFBw6DoIow5YRNbAGRrtbuTNZrHqsVIA/EDf/TslUB/3GW9gmVusPNHl4OaFqc2A==
X-Received: by 2002:a17:902:28:: with SMTP id
 37mr31327361pla.188.1562692615742; 
 Tue, 09 Jul 2019 10:16:55 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b3sm32709107pfp.65.2019.07.09.10.16.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 10:16:55 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: miquel.raynal@bootlin.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com, vigneshr@ti.com,
 linux-mtd@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
 liang.yang@amlogic.com
Subject: [PATCH] mtd: rawnand: meson: Add of_node_put() before return
Date: Tue,  9 Jul 2019 22:46:40 +0530
Message-Id: <20190709171640.13511-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_101659_968439_FE2D7AC1 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a return from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/mtd/nand/raw/meson_nand.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/meson_nand.c b/drivers/mtd/nand/raw/meson_nand.c
index ea57ddcec41e..1b82b687e5a5 100644
--- a/drivers/mtd/nand/raw/meson_nand.c
+++ b/drivers/mtd/nand/raw/meson_nand.c
@@ -1320,6 +1320,7 @@ static int meson_nfc_nand_chips_init(struct device *dev,
 		ret = meson_nfc_nand_chip_init(dev, nfc, nand_np);
 		if (ret) {
 			meson_nfc_nand_chip_cleanup(nfc);
+			of_node_put(nand_np);
 			return ret;
 		}
 	}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
