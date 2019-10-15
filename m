Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F46D8405
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=06prx+2AMclzrpa9R+0NPToYccuMir1E1YrCRev7Msk=; b=Hf/rGZKau0dA+DmTHn4B+ABDkt
	IC513dhYu7DRgsS7QeXdM5wpBrOCjV0XJzmF0FGkbxkkuSZ0q71E1CBIgEvzzTdGLDhzT9VDnXSiw
	UDdSmYEL29G5THBdautUHgxj+/T14z2Zfsoxc5HZzkBRSh6OHGjRJLFW/zozVxhmnluc2GykfUxvC
	iPPwRuqOL5k3nt8tfZwS7sfjw5h4xoVKVJk7YVhyRNlM92XTDBy7BopXHDVO5B3eEaMj58Cq5kQTv
	yreQhqtmEvEE0Mw/5a3+loIuwN9kbe9rHvci4QK6JTq4tMFRDWbuoCbYCf7VXqqvee6dcZrZIFQVg
	uOmb4upA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVc2-0005Ok-Tj; Tue, 15 Oct 2019 22:48:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVak-0004UK-KD
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:47:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id 23so13036364pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Xkl1PEm6PjOKAdBEuYy5l8ljzm4XzkefiTF2G+osw9g=;
 b=WfxjInaH8u7IeDqrg3R8m7CSa3YmVXEHADW0204Wh2b1NKxFkH0maH6HGfUvTHCTJH
 SX0t74KIu8UHc3mc4LQhFSJ5LP2p56s/JawwceVz8t5qhGbBxM8Hyr5evin/CH7kpEYI
 i/dP4QgPlyIFLgPrCsZARwLppOdt1ywuYPJqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Xkl1PEm6PjOKAdBEuYy5l8ljzm4XzkefiTF2G+osw9g=;
 b=o1BtVM6AY1JeyOXtTj7XLzBfNuGkrUqFnEowiRSCbYcDy+8KBEbdkqvYjEBdIv6fFu
 +GhgUgYTB9T0Trc3XjHXMLSoOvrRdKf/iY432L3k3h4FiTr7kk8h7JrdiQvPsETNLf7Y
 gFLBYaG5iL7U50OGXD9D+cCD+iIpIZPGnp9w1oI3y9hy89zCZI1mStrg2xD37OrfFnzu
 7Y8D4UrsBU1ihSViDj+dnbDoF14dnWq4i0RFRzuFmBQ5OEieOom8pUpyAizCFGl3eBTI
 FCLXaiDUT1Xzkl5saCZ3bXddNXt3ZnR0w1lor0OAztr5+ixAwc7cW0/mq8PjPL3j9elz
 upmw==
X-Gm-Message-State: APjAAAXysXvfGmsQc4Vl5nDOSVMOZ+KGUDh1c92X/YiU4TgBlP6Kb2YE
 /X6LfoJMHaDdA07bZ/tC8q7oSQ==
X-Google-Smtp-Source: APXvYqwd4d6rKMvAQu8jUWvGRjFaibW9gAyF1bRumkomfCdN6jllEUE7XSWEANlcX3OUnyZHyND6QQ==
X-Received: by 2002:a17:90a:32a6:: with SMTP id
 l35mr976437pjb.55.1571179617670; 
 Tue, 15 Oct 2019 15:46:57 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.46.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:46:57 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 7/8] memory: brcmstb: dpfe: Compute checksum at
 __send_command() time
Date: Tue, 15 Oct 2019 15:45:12 -0700
Message-Id: <20191015224513.16969-8-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015224513.16969-1-mmayer@broadcom.com>
References: <20191015224513.16969-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154658_703138_A2AE90A3 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Markus Mayer <mmayer@broadcom.com>,
 Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>

Instead of pre-computing the checksum, do it at the time we send the
command, this reduces the possibility of introducing errors as well as
limits the amount of code necessary while adding new commands and/or new
API versions. The MSG_CHKSUM enumeration value is no longer necessary
and is removed.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index cf320302d2c0..7c6e85ad25a7 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -127,7 +127,6 @@ enum dpfe_msg_fields {
 	MSG_COMMAND,
 	MSG_ARG_COUNT,
 	MSG_ARG0,
-	MSG_CHKSUM,
 	MSG_FIELD_MAX	= 16 /* Max number of arguments */
 };
 
@@ -243,21 +242,18 @@ static const struct dpfe_api dpfe_api_v2 = {
 			[MSG_COMMAND] = 1,
 			[MSG_ARG_COUNT] = 1,
 			[MSG_ARG0] = 1,
-			[MSG_CHKSUM] = 4,
 		},
 		[DPFE_CMD_GET_REFRESH] = {
 			[MSG_HEADER] = DPFE_MSG_TYPE_COMMAND,
 			[MSG_COMMAND] = 2,
 			[MSG_ARG_COUNT] = 1,
 			[MSG_ARG0] = 1,
-			[MSG_CHKSUM] = 5,
 		},
 		[DPFE_CMD_GET_VENDOR] = {
 			[MSG_HEADER] = DPFE_MSG_TYPE_COMMAND,
 			[MSG_COMMAND] = 2,
 			[MSG_ARG_COUNT] = 1,
 			[MSG_ARG0] = 2,
-			[MSG_CHKSUM] = 6,
 		},
 	}
 };
@@ -273,18 +269,11 @@ static const struct dpfe_api dpfe_api_v3 = {
 			[MSG_COMMAND] = 0x0101,
 			[MSG_ARG_COUNT] = 1,
 			[MSG_ARG0] = 1,
-			[MSG_CHKSUM] = 0x104,
 		},
 		[DPFE_CMD_GET_REFRESH] = {
 			[MSG_HEADER] = DPFE_MSG_TYPE_COMMAND,
 			[MSG_COMMAND] = 0x0202,
 			[MSG_ARG_COUNT] = 0,
-			/*
-			 * This is a bit ugly. Without arguments, the checksum
-			 * follows right after the argument count and not at
-			 * offset MSG_CHKSUM.
-			 */
-			[MSG_ARG0] = 0x203,
 		},
 		/* There's no GET_VENDOR command in API v3. */
 	},
@@ -432,9 +421,17 @@ static int __send_command(struct brcmstb_dpfe_priv *priv, unsigned int cmd,
 		return -ETIMEDOUT;
 	}
 
+	/* Compute checksum over the message */
+	chksum_idx = msg[MSG_ARG_COUNT] + MSG_ARG_COUNT + 1;
+	chksum = get_msg_chksum(msg, chksum_idx);
+
 	/* Write command and arguments to message area */
-	for (i = 0; i < MSG_FIELD_MAX; i++)
-		writel_relaxed(msg[i], regs + DCPU_MSG_RAM(i));
+	for (i = 0; i < MSG_FIELD_MAX; i++) {
+		if (i == chksum_idx)
+			writel_relaxed(chksum, regs + DCPU_MSG_RAM(i));
+		else
+			writel_relaxed(msg[i], regs + DCPU_MSG_RAM(i));
+	}
 
 	/* Tell DCPU there is a command waiting */
 	writel_relaxed(1, regs + REG_TO_DCPU_MBOX);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
