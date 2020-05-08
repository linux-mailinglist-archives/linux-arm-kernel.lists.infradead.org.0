Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8011CBA05
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 23:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JbiALNgOlpvPxS9d1VYi9ejnRj9YGqXjOyAiz6x3pJA=; b=O+WjDL80MjxvhC
	Z3JTbDhtT8qj8gzIoO7QnPwy1RvmHxR5cnC4omSoeHEWUJMMNOF0JkzRizdmQdCGOg7949DYRax3Y
	AFhMPAqqA9pf2nHbKN/3CM+FF3bcRe5HrxpMoTB5rS+AsUklFOK+BIFcyH9EZu7K2v7vzrUj+HEX7
	21Xn0Pi0cqtW61OSa236Xy64NsnMcj6I7JJu0uuFOi/dRnUHDMQKwZM/+sOv9IQvI2RFys+Kk4n24
	K4Zt6JVJRRkpAqPRGs3Hl+SPSXpXmuXMwe6nHPvrCgiVpdYfqCY7pc4tpLiH/oJtTPKwnK41NrGco
	nuA6hm/X7nc3ha8wfIAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXAnT-0001uE-5X; Fri, 08 May 2020 21:44:43 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXAnK-0001ly-88; Fri, 08 May 2020 21:44:35 +0000
Received: by mail-lj1-x243.google.com with SMTP id h4so3213771ljg.12;
 Fri, 08 May 2020 14:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9STgKXxF3MEqSS/+ei2u4BjGAAZhqufG8MU2LAh7EQg=;
 b=kJLIbnrg6MmybxYNLRvCXzrBwTiRUK/PQBatG+wYug1rf68UKki38ZcZuT1lRoWbsD
 k9BuCcn9eiq3d1lG1nH/FtUe/+B243ZvqiwmLqz3MqCB+5QF7CC76BXfqsPHZ/7mJpse
 Uv+Qx520d+eGS18fNhIiuKscNeFnLrY5tFZWC4gUtEf5w5tK6rvv/AH4FaFLKJucWrM4
 qYNsq2Q1dWx8oDvBsErx9COd8mUy31p2DxMkHm9/YOHwnoE/A4pzksst7ekzgtMt439C
 VTGT14vcFyK+nzFOxG96bwVxG0EUMorq1Xbu33eseUwCzBAdOZckzKQy2nu0cGPKXy2x
 A61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9STgKXxF3MEqSS/+ei2u4BjGAAZhqufG8MU2LAh7EQg=;
 b=WRZqwUk6W0gCw2S/KRL7ZX/2No8TjwJ2GF8WGJdc7hW4uPdoTkLMf2+aeGFsK06bBm
 EIcU+H79xZhoqpMkeEz9Fbb77BMgFlVkS8qXFmXto37cBZXuh5ejrt+M0FEL5F2jaTQM
 Kn2Kiv4QvhtvevMQSgCE/6ujKasSkhyj5sjeheZ7Vy90/h2yTTzwlwG5MdSJ0iNwGmk9
 /7aDJ8K9m6xxrjpzcHCAMRzQztSnsVZwDLenxvz19r6UhRAVdLht+mtFLEz8G1aHSjej
 Sq7MWQ0G7Co02w9Gt1mFcOZvHztE/4KXrWgfGu+9+syY982W23tSDKh05qHLghLnn+Sn
 O62Q==
X-Gm-Message-State: AOAM530isR3ycA5N3B2Gy+D4Rt7wlHp4fbN1ac9Yba1oRO5i5XdCOckH
 5JltWtXoEamkZ92UzYAIbb0=
X-Google-Smtp-Source: ABdhPJwOERlMcC9Nci0ag57cuaBOQkLsyrFQOZWAIlonkVNH0qg8oU10/kTQbLoBvsCGYzJamq/Sng==
X-Received: by 2002:a05:651c:32e:: with SMTP id
 b14mr2993745ljp.277.1588974272109; 
 Fri, 08 May 2020 14:44:32 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-22.NA.cust.bahnhof.se.
 [158.174.22.22])
 by smtp.gmail.com with ESMTPSA id v17sm2174863lfi.49.2020.05.08.14.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 14:44:31 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: chunfeng.yun@mediatek.com
Subject: [PATCH] usb: mtu3: constify struct debugfs_reg32
Date: Fri,  8 May 2020 23:44:21 +0200
Message-Id: <20200508214421.3943-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_144434_328987_B8D0E83B 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rikard.falkeborn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

mtu3_prb_regs is never changed and can therefore be made const.

This allows the compiler to put it in the text section instead of the
data section.

Before:
   text    data     bss     dec     hex filename
  19966    7120       0   27086    69ce drivers/usb/mtu3/mtu3_debugfs.o

After:
   text    data     bss     dec     hex filename
  20142    6992       0   27134    69fe drivers/usb/mtu3/mtu3_debugfs.o

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/usb/mtu3/mtu3_debugfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
index c96e5dab0a48..fdeade6254ae 100644
--- a/drivers/usb/mtu3/mtu3_debugfs.c
+++ b/drivers/usb/mtu3/mtu3_debugfs.c
@@ -276,7 +276,7 @@ static const struct file_operations mtu3_ep_fops = {
 	.release = single_release,
 };
 
-static struct debugfs_reg32 mtu3_prb_regs[] = {
+static const struct debugfs_reg32 mtu3_prb_regs[] = {
 	dump_prb_reg("enable", U3D_SSUSB_PRB_CTRL0),
 	dump_prb_reg("byte-sell", U3D_SSUSB_PRB_CTRL1),
 	dump_prb_reg("byte-selh", U3D_SSUSB_PRB_CTRL2),
@@ -349,7 +349,7 @@ static const struct file_operations mtu3_probe_fops = {
 static void mtu3_debugfs_create_prb_files(struct mtu3 *mtu)
 {
 	struct ssusb_mtk *ssusb = mtu->ssusb;
-	struct debugfs_reg32 *regs;
+	const struct debugfs_reg32 *regs;
 	struct dentry *dir_prb;
 	int i;
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
