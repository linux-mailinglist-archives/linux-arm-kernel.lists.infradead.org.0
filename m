Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DB880B8C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 17:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=52mu62gqgVXW+BCxFvYkaUUYfA0lxIvi+89SCZUh8XI=; b=ocUr1ARYFNlyXv
	ppyKP9HIvUWiCNGZJ0usdN9AjQKJpPTIRPFNJwQAH0OOC9KdBxLjMYx2grm4HJYFUvvBH0jKozQ/E
	oedwJpy7Vg4vt3WWYZQ7OTwBp+auCUJm8dMSMJ7LZf6I9sJMZPWFO/5gWekByBAD7lyhjqx1VSQj1
	6UXTbv/S9y6QHLzKFRF8yICEckBxuzoMZTa8Ko24hMIf2PtjiqvC834Ak2UGKLvefiWnzmElaFgvp
	jLOuN3M3VgoJUGEQlUOnJ5sCTZwlyYaRWTfqW3TjvWNDTfhxWt5n6fP98VFLm5xZYbrHMpZyrjxYS
	kjP865t0IAjqMVdipWaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huInr-0005Ay-SJ; Sun, 04 Aug 2019 15:52:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huInm-0005AU-Km
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 15:52:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id z14so1170820pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 08:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ooigmBUNXeViX1CED6/aN3RgJTiHQf1ueDyPW+vnG4=;
 b=kCbfVhosZXDYeKKIYzF+E8hmsz5gJO6/CUi1zEOrgK4/2/cSLuEUS+rVgueQns8DKW
 8JIMQM4lP0nYSZT16pIzwDXVqa/bgjy8+Y+vjfebV1JGrv4722kxKJjGZ+rIPaZbb8bE
 iZFnQKNw8I1FUR/xpzhSOHrTZnF6fSVNWimM3m/ta5bA2v8/Z3hCR6+PR6FFc8Lv0/sp
 9hh7CV6RPkB6LtEqkCVeT/ILTPcgLWeU/IS06pvqNbYwUdFrqB3FVsHEcIFrdXV2Bjjs
 vCGThWrlm04Z41REPTlKP+nor2Szj0YFi02Hfh4Gjanq/zRXN/2JbbVgAP6/7bxbCds9
 JA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ooigmBUNXeViX1CED6/aN3RgJTiHQf1ueDyPW+vnG4=;
 b=LROvi7FuYamL360wR9VTuEbZoGzRGgeRmHwhCCTEzHL0uVANHDMF80cjGOeOGvrVxy
 /JnsZHj5OS63P+HmDXJzwOO5wCx0YNtqQ41xxNA3PTbkD+Ekh87+J0UCfB3KWlh5IenT
 j+sqw3aDQ+EC7vSlZ+zYIPd6iR2dSPawTCSNTXzy2BUBfczr28Eg1kTP14Q2rwcQ0mar
 1HdQImQliic3qPaN6dBoUhIjSfx372UITTae+u1N/Gf70kU9bLw7LcLuzrSuMVC7LU+g
 2pDMK1QUKEyyiJzOWK7YwTe6FZD47pHqlj5c/U4G5LGtTMc4Swjf3HOr5JF0rBpfQtz5
 GhJQ==
X-Gm-Message-State: APjAAAUMpuR6gyYnqj7Fv1pFGY6FLRwlqdpuxhUM77eJnpS7sHU4CcpJ
 S0CbzIq691MZ5T4lIyhtEVc=
X-Google-Smtp-Source: APXvYqypLtPwZWYXKROQYBGOXS0sdWqNpDQP9LloWbKQEcefx8fIM8m6X6/T88nZ4FbrH0W7dZkU3A==
X-Received: by 2002:a17:90a:376f:: with SMTP id
 u102mr14236145pjb.5.1564933925920; 
 Sun, 04 Aug 2019 08:52:05 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id 10sm96504004pfb.30.2019.08.04.08.52.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 08:52:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Subject: [PATCH] pinctrl: nomadik: abx500: Add of_node_put() before return
Date: Sun,  4 Aug 2019 21:21:54 +0530
Message-Id: <20190804155154.4916-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_085206_679585_62715357 
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
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 drivers/pinctrl/nomadik/pinctrl-abx500.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/nomadik/pinctrl-abx500.c b/drivers/pinctrl/nomadik/pinctrl-abx500.c
index c3595200e1e6..7aa534576a45 100644
--- a/drivers/pinctrl/nomadik/pinctrl-abx500.c
+++ b/drivers/pinctrl/nomadik/pinctrl-abx500.c
@@ -815,6 +815,7 @@ static int abx500_dt_node_to_map(struct pinctrl_dev *pctldev,
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
