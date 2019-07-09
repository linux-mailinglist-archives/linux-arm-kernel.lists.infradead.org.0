Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE6763A61
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vygqmdX5tuDWLBF1ZxWRlAaUkC8F2ZJYCV+jrYQ3x9k=; b=ExP5vqSUxipYN9
	FZ/Jfm3rGnggNvi661CabZGYefcb+zX6JSqNuWiDP6kWqPvxTunNOdg85hyb495DZg9K1q986cBED
	7eLzMRQ9SvoprUVaw6LcOXpUR6VN7JgTGC0hfy5sJmvpOMww4VZpyPGMYWJ0xTxe0hHbHzel4fdH4
	AZvdOXYga6I1DuME6EqfqHRmpspDF+gl0U1m0PaN4h/r/kju4q+ZWXwswR7kwIZfXw6QDz/cRrh6V
	tswwpqofAvjSGH+ZIcuZu8JfIbPlgVynaN11oeXZKIuhPgB0AEKyfhGFXrkyRxgRo7sJFzMcPgQtE
	7x/+8AK5h3jRBUX+yQ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuPy-0007g3-Ny; Tue, 09 Jul 2019 18:00:42 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuPo-0007fS-PG; Tue, 09 Jul 2019 18:00:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id az7so3021918plb.5;
 Tue, 09 Jul 2019 11:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gIm1hPdGKhQmW9ErbwFuKhHNbmgcrYySHT3l4GVOH6c=;
 b=vSYNGu27hbFUbPkKzkmaX8CVuWVjLxzg3Or8kFkrstXu4gbnhVmH3N371zBH5lRaj7
 HXJupA9bVnLjJXu/9teZuuFJuDzrq7UC8SOENweH+4XSMMzTvdsKapJeUXUsPHTYrT+y
 F5gWpkYp8FixFjs0ZrK+kTJxpEfwLvq8VTkojG/9z8j+BJhBOjpycgVdd3WGyTICiUQi
 p3Qj/7BrV8fMlJw/iPRjnFVVBkPyhFbPW9IL6hWjvWk+1Zxcpsbb06mWGxeXVG5dptnu
 cUjsQ0Q5/c4/bK9xjUUd0htzo6sHX/ab4iOFumViqJr0kDQ4FzcQA77Tr0ghmOH7MxYQ
 /2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gIm1hPdGKhQmW9ErbwFuKhHNbmgcrYySHT3l4GVOH6c=;
 b=qF/sfbRc5yCJXYJL0hdOL9E/SiJtsZPahMG+sc6PWyAOIwVT2JPufAoRKcMo4AVgQW
 S87r++2+TCH7WOtyp4VpxsJ7IAdDfE62vo1OhSCfKB072yo2hp5SoWnq6pacUpyozvZL
 QFhkRQH4pblewilxgna5x6vMo4KEvz/g3U3KZauDmmBXNqTM9fxJ6W2TKrxFyzinXDYw
 HTTS1T2qHgiLdSsny4NtYKeGeujOIemptZTa/qK1nYHUGyPOUAyNxuLcuEYB+uDsd96A
 CqNZSn9fJ3v+k5xGi+xdZzECGuLuWxJdhvNGHgeWv2quPhucBSSJD4G0Qah/8K7cwlKN
 URJA==
X-Gm-Message-State: APjAAAXiWvwze9rlG3HKQHmUIMzi/mbw1jQ9qs8qwaWCqC1BdH0d7uJR
 zBlPJMUoD0Id7j1A7UnOn9OSa3zW
X-Google-Smtp-Source: APXvYqxXpHfvlVzg5Zzf4I3fBMs0VkzZWs3fA4YyAdnXSG0FgM7Vq+GaeeCH2ulBoLKAG2o4wXvdLA==
X-Received: by 2002:a17:902:bc83:: with SMTP id
 bb3mr34405078plb.56.1562695232327; 
 Tue, 09 Jul 2019 11:00:32 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id x8sm19094651pfa.46.2019.07.09.11.00.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:00:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: matthias.bgg@gmail.com, dmitry.torokhov@gmail.com,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH] input: keyboard: mtk-pmic-keys: Add of_node_put() before
 return
Date: Tue,  9 Jul 2019 23:30:19 +0530
Message-Id: <20190709180019.14339-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_110032_825124_B5C934A5 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Each iteration of for_each_child_of_node puts the previous
node, but in the case of a return from the middle of the loop, there is
no put, thus causing a memory leak. Hence add an of_node_put before the
return in three places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/input/keyboard/mtk-pmic-keys.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keyboard/mtk-pmic-keys.c
index 746ff06eaf8d..62391d6c7da6 100644
--- a/drivers/input/keyboard/mtk-pmic-keys.c
+++ b/drivers/input/keyboard/mtk-pmic-keys.c
@@ -277,8 +277,10 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
 		keys->keys[index].regs = &mtk_pmic_regs->keys_regs[index];
 
 		keys->keys[index].irq = platform_get_irq(pdev, index);
-		if (keys->keys[index].irq < 0)
+		if (keys->keys[index].irq < 0) {
+			of_node_put(child);
 			return keys->keys[index].irq;
+		}
 
 		error = of_property_read_u32(child,
 			"linux,keycodes", &keys->keys[index].keycode);
@@ -286,6 +288,7 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
 			dev_err(keys->dev,
 				"failed to read key:%d linux,keycode property: %d\n",
 				index, error);
+			of_node_put(child);
 			return error;
 		}
 
@@ -293,8 +296,10 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
 			keys->keys[index].wakeup = true;
 
 		error = mtk_pmic_key_setup(keys, &keys->keys[index]);
-		if (error)
+		if (error) {
+			of_node_put(child);
 			return error;
+		}
 
 		index++;
 	}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
