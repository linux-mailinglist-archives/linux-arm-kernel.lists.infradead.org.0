Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CE580B96
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 18:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jl7McrdAUGMDj37xLBNNxGHIEZsYLacCkEuPM40M8qQ=; b=Ns3VE6nT/RwioR
	RG7ebiTISYeJgE04WCiaQJKwgU3yVz3ecGOhaqIWFilG7mJQ/uB5tz8uTCJEB6jZ/nrYBW/2wMHDc
	G54dbG6LK+b8AVLIt3MI8pHvfP2XWOoLkN5E3yPAqtgC334yGvV1h7N1uuI4H/uhW/8ElswLJXSEd
	jLzJI8Gb0fFsPHG5rBVghvP4BLTzJLB3PSWwCuWWZoZlQ1nYO2uNOQuHdUIlsMOFoB8aeP32KrYGS
	Aq02nn4bIUAtQ7/6i312ZObvoT3CfwbcPOmhAzfRm5nJEq6TUbU+vtL9bkPs7aCAZudx9uZA1JH2v
	MA2yz2qhaDyEMMvhss6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huIzx-000050-33; Sun, 04 Aug 2019 16:04:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huIzq-0008Vy-UI
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 16:04:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id n190so3283310pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 09:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=43+wBAA2pYCZyIeE6dblgNpeldlqw4UsjWWmEq3JFkQ=;
 b=MNB/Mc92mGLyuhVsZap7ySAwBC6u9/2UU+v246vUn8jld4GTJtPBdEK/sS4jqDUALx
 ASGO3QxSSTMfen5a4818hqHKc6dGWuxarFx4xVAR37oOi3z8C6DwKf3cpZXKhDzcZzDT
 ARu26iZVW+gzOfNZZ9Id3tcZBBzBwANnqVKwf8VzC5/yECvRSodP2CfPxpjUyEwuSPxC
 qH90LTTJ6KOYUienovhJSPBFDDWqgKPSz1JCYRZq/rovUJDq6RyBecXXng5tZP2ocKyN
 hfLDw1Dxmy84XUppiFSG/z4ANSf/CaaFsXaIFTK2flreppmFfwGRRCzJxKNQuDlWqeJP
 okjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=43+wBAA2pYCZyIeE6dblgNpeldlqw4UsjWWmEq3JFkQ=;
 b=l+eHa5YgE02wcDA8AmQYoK50atKirolAiqd9I/Hz0ntCyIcOPLsqe/gaOsMiR1lbdO
 DeENE7DhqQIGX5zkdZTZSrXXDBteLqcahIJ+wEef7DEvv1goYngYwTX2+TJNKh7GxV7Y
 r7RR61wFVBtJo1CnsmvGoxwNsITC69YrT5Fpqeg0ZZKq/KLpP+LuIb3JxI+UNmmBlrLq
 OStBoDzKbklbk1pTT+3ZXL5m1HFNPkM0rxRXBK34DFnJJt9iXvlz8x0WPonHx+OWmIEH
 ntf8BSCkjzRANIapedtOrOhGOLcsgn8LNAIawXJ62RXpjrlftlGPgS8mOXpuTyihVwPH
 GzJQ==
X-Gm-Message-State: APjAAAULNh8pGRnmWL1ZcbbAg9myiLA3DSdJDtzXE9YGtLOCFuno54ZS
 7DZ+d53QE7cSCulpBB4dBL/2zpo/MCM=
X-Google-Smtp-Source: APXvYqyoNpL7JNr6fzQGvbgLfKgJsIZcPfbrRAGknNTrjrqkxFtSsE80PHNU91LWByI9gkjdaETv6w==
X-Received: by 2002:a17:90a:fa12:: with SMTP id
 cm18mr13985647pjb.137.1564934674142; 
 Sun, 04 Aug 2019 09:04:34 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id c8sm9505686pjq.2.2019.08.04.09.04.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 09:04:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-imx@nxp.com, s.hauer@pengutronix.de,
 kernel@pengutronix.de, stefan@agner.ch, shawnguo@kernel.org,
 festevam@gmail.com, aisheng.dong@nxp.com
Subject: [PATCH] pinctrl: freescale: mxs: Add of_node_put() before return
Date: Sun,  4 Aug 2019 21:34:20 +0530
Message-Id: <20190804160420.5309-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_090434_976636_6439107A 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.163.105.8 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
causing a memory leak. Hence add an of_node_put before the return in
three places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/pinctrl/freescale/pinctrl-mxs.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/freescale/pinctrl-mxs.c b/drivers/pinctrl/freescale/pinctrl-mxs.c
index 641b3088876f..735cedd0958a 100644
--- a/drivers/pinctrl/freescale/pinctrl-mxs.c
+++ b/drivers/pinctrl/freescale/pinctrl-mxs.c
@@ -488,8 +488,10 @@ static int mxs_pinctrl_probe_dt(struct platform_device *pdev,
 		if (of_property_read_u32(child, "reg", &val)) {
 			ret = mxs_pinctrl_parse_group(pdev, child,
 						      idxg++, NULL);
-			if (ret)
+			if (ret) {
+				of_node_put(child);
 				return ret;
+			}
 			continue;
 		}
 
@@ -499,15 +501,19 @@ static int mxs_pinctrl_probe_dt(struct platform_device *pdev,
 						 f->ngroups,
 						 sizeof(*f->groups),
 						 GFP_KERNEL);
-			if (!f->groups)
+			if (!f->groups) {
+				of_node_put(child);
 				return -ENOMEM;
+			}
 			fn = child->name;
 			i = 0;
 		}
 		ret = mxs_pinctrl_parse_group(pdev, child, idxg++,
 					      &f->groups[i++]);
-		if (ret)
+		if (ret) {
+			of_node_put(child);
 			return ret;
+		}
 	}
 
 	return 0;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
