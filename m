Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77513FD66A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 07:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2V0OjI3jNttYZKUP7DYM4ueiq3zPKrv7SAC//s+zumE=; b=d54Q3+hf5OTl4e
	kIxP1TI2Xln701RiE9cKLpIz2EAAkeEJMORsA88sucKfKG17LqqXd/O1n8hSvxi58FG/muztP7s1+
	Bf1hsOJEdWM049AgJ418O2rSGY9l3MPBN5WGAzVn1ws2fXmA1CALArbR0VOrL8eL1kfEmNw85M5Pb
	zuhXukKt7+3Mjt1AmJwSrWMmValaN5dWtOybFp46nxamk8TxhNO/Q5m0Pf5VEZdvBTmzvBta4xHcm
	+jZ7xEyqn2YddARmBQtQO1ukzccbYt1Z/pdiRoA6q+FumeEXo1lOOxxeKfGEZ5557dLTQ/ALJy1JN
	RfwoO4kIYHULXmpcIMtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVV2o-0006XI-Vn; Fri, 15 Nov 2019 06:25:22 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVV2c-0006Wz-49
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 06:25:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id p24so5954186pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 22:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=emY2gm5TsWVFMMimxBC4143icxj0Lbfx5oWae/Wjzvg=;
 b=deE53lHyv3gBGOhbVrzsmx5AS+FgnvHsukhfzzzf8IlWkABanwS1kPT7d9+GGS7SLq
 9vgDdWBzjQ1sqInHEcAwxncYtJ9ANUZRYKU9e3lUOd0rEauvyQOD9S28eJFfG617YpuF
 v9tXvhSw8nJEdeJQuaapRemOoqJTWTdpmkzVOF+1dGRbcONQLOG2GyGC6JbevBPIaJ4L
 Lg2VVozbDvEVzmuh2GSMJ3eS9OpPNshjmxhJMnv6H47/BAvsCf7LY+TwKAMn6f/5M9F4
 5Z6Nt4FOsLwyr6TplE5YbIDUAKYeKFg0armnFHusn0X4SgEYgFV0LJicnKyEZOcVx1hA
 ENjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=emY2gm5TsWVFMMimxBC4143icxj0Lbfx5oWae/Wjzvg=;
 b=c+prHUCDZJCWfDHt4ErIne0l3Q6EsJ0QFHXk+xVtykUoLm3Cz6q8g1wlaXvnIK1vRF
 ChbrdAJafody9lkA/nphW4ZGQuznyyRJVkfXZTko0QJmEC28SKvlKbmnKQmTablRIVr5
 nVnu5Q6nw0PmRzhTBD1yk1tzh5bPFfAJ4q8cO1yZ3LJuxNO81FD5PR+UtWk+zFDEAQ+6
 hxuuy3Bjnha0DBAiF++im3GDlqFku+orXaacDWF+Rh2s/jDihMThFddgnrSvZV62SRo/
 ZrnXZM4K8YyJo7FN/mytO8Lu0BKL4svH444ByKOvbUcYg1q8CFJ8zhn8aYJB8IzmAQ5t
 K7hQ==
X-Gm-Message-State: APjAAAWnKJpcds9siGBCQMfxQDq7SEiBQwZN6/QGtto0AE/y5KOJ/Yn6
 XWW3GEdfPH+rY2onqfvwRgI=
X-Google-Smtp-Source: APXvYqx2LRk8ZsBsVdFB5I3fmxd1WHEZUGZSqXkZVvYdDc+YC5TohGqEXM7LaPk0zlzoKpxMqoJlAQ==
X-Received: by 2002:a17:90a:a616:: with SMTP id
 c22mr17996247pjq.46.1573799109294; 
 Thu, 14 Nov 2019 22:25:09 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id u9sm9256060pfm.102.2019.11.14.22.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 22:25:08 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] net: gemini: add missed free_netdev
Date: Fri, 15 Nov 2019 14:24:54 +0800
Message-Id: <20191115062454.7025-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_222510_190175_1B9D4039 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver forgets to free allocated netdev in remove like
what is done in probe failure.
Add the free to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/net/ethernet/cortina/gemini.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/cortina/gemini.c b/drivers/net/ethernet/cortina/gemini.c
index e736ce2c58ca..a8f4c69252ff 100644
--- a/drivers/net/ethernet/cortina/gemini.c
+++ b/drivers/net/ethernet/cortina/gemini.c
@@ -2524,6 +2524,7 @@ static int gemini_ethernet_port_remove(struct platform_device *pdev)
 	struct gemini_ethernet_port *port = platform_get_drvdata(pdev);
 
 	gemini_port_remove(port);
+	free_netdev(port->netdev);
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
