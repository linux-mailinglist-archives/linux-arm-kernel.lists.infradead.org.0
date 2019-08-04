Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9829880B89
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 17:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WIxOyrGoLyA2wFY4SN6BH+hA38Wi85Jv5k7MwIqQPfw=; b=jEX+iVznoGBzGj
	kbfO7Yy7fRVmP9tA/zXl/He7Zi/mTXcgyZcsa9OJUsGGFp6GZWqKeqL3+43TCQ27WO9uHqFrr3PDQ
	E8uWEl2VlXsniPFF8HLUAbFaaV7JbS5jiz/COwnQO/ZXROX2EWun74hRm/23v4WR4UlNsgUXIVF+J
	F0ARq118qdaN5tcKKjutQFqMKqgJyyimQwFAdbbv6ggvnouv9Wx6Pcn0cgb2Erf+i5zwPB85GWHFX
	OM/I93AsDE7gMs2uA5YX79X2zXRyA+SH1bPRfNMMiRaQsrR1TRGaOHeS3Uv0fPHvqqC1U6UBp4AKE
	Zzzr/ZVfPIyaVRMRKMPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huInJ-0004wg-4M; Sun, 04 Aug 2019 15:51:37 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huInD-0004wL-0b
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 15:51:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id t132so38398056pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 08:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G566TvMGpbyrdmyi4hISjE0RUzXp80LgC28v/uH1er0=;
 b=AFuW0mPAQQYFBknjv5dxX5YJPxWPoJ2Qfe5i7zEZgRxcOeSE6JU2bSdOWbdNT82vWM
 hUeTP7u40svoS1JlouZgRMA/zB7d0SHasxVXBnJZ/gKcGlDfFrreFBOUV9zkCdYU290d
 +UPhqSePdCEmAyv9fJEY8ZVo8TM4ByjAO3JB57Dvf96FWtIXGjTTkjG6pg3cADR09gJm
 QmpXchjOSpbqPSKJXts7fy0Hlz8NW9yDVBsbo8v7cR/HgiVH3Se41hRxvKSHnKem5IHW
 jUUfI6MZ+BKboqPkq8RqybbyJJ/Tv/xcube2e1ScW2VMIO2ZTZmGtTwv7eyU2VAdHZcS
 Ii7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G566TvMGpbyrdmyi4hISjE0RUzXp80LgC28v/uH1er0=;
 b=a35SXNn6lwdkQC9XET/mqnRGIo9xiiSOaIjharVthQ5f70G0syFAvRGEi9AvwY2uer
 Mkq5MDm6vqJ2Hq+zdh8KOQNVgQh9CAJU7fMVSF4X4Hoc/L17UiLDwaWES53tuT5kQccy
 tj/9zi/vE7HbPhgqEXsZubi1VEymosvqj3rXAOeOiEuu0V/GLoqGmnJ7QDKWhHKe29BT
 53UPjxXfIbc64UfdgmvCXBZaaAUMx67OgoFYOioPA8RCZ4Ncjkl1v/XtGuxwrzc0JWYH
 0G648mt6lySXGJLT0ZQN+hd0sU5k8Zcd+/bdR8Jupzgue2MD9UU03dh6MkpNpQ5/xHdv
 NSig==
X-Gm-Message-State: APjAAAUHqPl/0dx12+hjchOZTEYy9MPDofL2ojK6ash+vA4a9Ybln47q
 NbnHIrrgWUZcXJbyX3JYUfw=
X-Google-Smtp-Source: APXvYqz1/RqGvqOaq+vIHHUhQ3GgCLYpN/7ITTw1Ara3qOA6y2TFX6ICY3SOhJo5Urgs13o+W7g1Iw==
X-Received: by 2002:aa7:8641:: with SMTP id a1mr69489669pfo.177.1564933889558; 
 Sun, 04 Aug 2019 08:51:29 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id t8sm13080369pji.24.2019.08.04.08.51.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 08:51:29 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Subject: [PATCH] pinctrl: nomadik: nomadik: Add of_node_put() before return
Date: Sun,  4 Aug 2019 21:21:17 +0530
Message-Id: <20190804155117.4753-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_085131_055686_41120FDD 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.163.105.8 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/pinctrl/nomadik/pinctrl-nomadik.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/nomadik/pinctrl-nomadik.c b/drivers/pinctrl/nomadik/pinctrl-nomadik.c
index ddd1f466d302..2a8190b11d10 100644
--- a/drivers/pinctrl/nomadik/pinctrl-nomadik.c
+++ b/drivers/pinctrl/nomadik/pinctrl-nomadik.c
@@ -1508,6 +1508,7 @@ static int nmk_pinctrl_dt_node_to_map(struct pinctrl_dev *pctldev,
 				&reserved_maps, num_maps);
 		if (ret < 0) {
 			pinctrl_utils_free_map(pctldev, *map, *num_maps);
+			of_node_put(np);
 			return ret;
 		}
 	}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
