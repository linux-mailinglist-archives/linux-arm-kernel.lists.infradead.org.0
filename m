Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733FB119E8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 23:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BKuQzIWeFWbRPipjHCO035Ra9+9bRiFV4nZQn91IGXI=; b=E7C
	l22u9rJVGq2Y3Qo+atju8aNq9pLaDEaMLU8Gtgnd0r0kGn964IR2PaIxzqL3t9u12+uDvf7Sn67F0
	VmQ0cTuVOyI+FPCTnJS8HqnIUOse57a+n/tiVZX03m7hLXYc18pXYPssilBPSj3oN1PWoPRLt7O6z
	1VCrVTqNnJJlDW3A3yrCUEnJimPRlocivILv1iBd2tfK/91/0lqJxqsGeNWxKmf+CQqkLpXV6aFPq
	gMo//iTuQe37SQ9WfHqL5xjcveLzMuK74DZHRbDlw3CRc7Hhz33db4OjcvyOE6g0b6/YZSs20+/gj
	fwGRuTRCDL+twZXUpvb2PAI3/DygsMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieoLa-00050m-CU; Tue, 10 Dec 2019 22:51:14 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieoLR-00050M-SH
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 22:51:07 +0000
Received: by mail-wr1-x433.google.com with SMTP id y17so21961836wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 14:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Iq7lLPDxZxyyF6K7jckWs0XvEiXpXcXtYgOmBPW0oiE=;
 b=qfu2d5H7ZzEuxsIddTw+GLtP96qTv+bVqRU7LssVtRfl7wPwS4w08BJpF9+uo823Z6
 lgtIu5Zvu3K5vC8P59KtpBKs17wDe09XqWmsGZZ1TRMHUZQYTBFSvG3pG+qjKAR0gKuu
 0AyvkBjFZ76Q7o6WMY8e2YGWNfQQv3IFO9TIYYqP7xvCgJTclaiyc60ZdsXSd/LeGBlW
 h9mwYwVVenTJpc5dlFc1BZ55IPjWea/q8jbea52IfZUIz6vorwSCcvFsyMZp6EIRmWRZ
 Y309LnnM/CWkzpkj7gStv4ey/z0MqbIjka9g2kNqRoDx50c+3W1ZphOhc2xsSAsHuXrj
 m35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Iq7lLPDxZxyyF6K7jckWs0XvEiXpXcXtYgOmBPW0oiE=;
 b=ZdV+5JVZtvyaHpQY1s8Pwr6fYXoXSvC00oEojLNpjf6l3+4c4SZ1Ihzhw2wYPXvNs0
 h3d9sKNjIjxPqH3vrVzkGz29gkwD7UTOw2X+/iQfgIMrPUjd/RyBY3cd+zxNF/QD96sY
 liDVhIkAZxmII4Cv1M+3Bdkl86Nrj7yKcp6cVF4gqPQEzAgh5pZqbDo1//BSiSV4weaC
 OBH8xKrKuAtnmewDpiwgHpCVrBVrB6H3GKLYWCfTEkurDZMZhozFhCEUe5eqTaWm//s3
 v/OGCVsiAq8IvS2KuzA4wsf9CY1zudsUVa5P2yoUQzdk1opg7ahraunYyn7JYOosi1wx
 EIYQ==
X-Gm-Message-State: APjAAAWcGuw51d5yu5s3ls+5P+z/GRHNGQCzLpjUbsTGkv3euIwO3bFk
 g2RgBDxmitYByGrdM+PCrtUgviou
X-Google-Smtp-Source: APXvYqzWRtBZ0UuaeYln6buH5vRRA/W31n533sLUd++FnjhAQcd4ruwcZMQnYcr+kxgYU2wJVc78Cg==
X-Received: by 2002:a5d:4805:: with SMTP id l5mr5692293wrq.3.1576018263594;
 Tue, 10 Dec 2019 14:51:03 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i8sm4884042wro.47.2019.12.10.14.51.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 14:51:02 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: brcmstb: Add debug UART entry for 7216
Date: Tue, 10 Dec 2019 14:48:56 -0800
Message-Id: <20191210224859.30899-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_145105_912771_74513A96 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Justin Chen <justinpopo6@gmail.com>,
 Russell King <linux@armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Justin Chen <justinpopo6@gmail.com>

7216 has the same memory map as 7278 and the same physical address for
the UART, alias the definition accordingly.

Signed-off-by: Justin Chen <justinpopo6@gmail.com>
[florian: expand commit message]
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/include/debug/brcmstb.S | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/arm/include/debug/brcmstb.S b/arch/arm/include/debug/brcmstb.S
index bf8702ee8f86..132a20c4a676 100644
--- a/arch/arm/include/debug/brcmstb.S
+++ b/arch/arm/include/debug/brcmstb.S
@@ -31,6 +31,7 @@
 #define UARTA_7268		UARTA_7255
 #define UARTA_7271		UARTA_7268
 #define UARTA_7278		REG_PHYS_ADDR_V7(0x40c000)
+#define UARTA_7216		UARTA_7278
 #define UARTA_7364		REG_PHYS_ADDR(0x40b000)
 #define UARTA_7366		UARTA_7364
 #define UARTA_74371		REG_PHYS_ADDR(0x406b00)
@@ -82,17 +83,18 @@ ARM_BE8(	rev	\rv, \rv )
 
 		/* Chip specific detection starts here */
 20:		checkuart(\rp, \rv, 0x33900000, 3390)
-21:		checkuart(\rp, \rv, 0x72500000, 7250)
-22:		checkuart(\rp, \rv, 0x72550000, 7255)
-23:		checkuart(\rp, \rv, 0x72600000, 7260)
-24:		checkuart(\rp, \rv, 0x72680000, 7268)
-25:		checkuart(\rp, \rv, 0x72710000, 7271)
-26:		checkuart(\rp, \rv, 0x72780000, 7278)
-27:		checkuart(\rp, \rv, 0x73640000, 7364)
-28:		checkuart(\rp, \rv, 0x73660000, 7366)
-29:		checkuart(\rp, \rv, 0x07437100, 74371)
-30:		checkuart(\rp, \rv, 0x74390000, 7439)
-31:		checkuart(\rp, \rv, 0x74450000, 7445)
+21:		checkuart(\rp, \rv, 0x72160000, 7216)
+22:		checkuart(\rp, \rv, 0x72500000, 7250)
+23:		checkuart(\rp, \rv, 0x72550000, 7255)
+24:		checkuart(\rp, \rv, 0x72600000, 7260)
+25:		checkuart(\rp, \rv, 0x72680000, 7268)
+26:		checkuart(\rp, \rv, 0x72710000, 7271)
+27:		checkuart(\rp, \rv, 0x72780000, 7278)
+28:		checkuart(\rp, \rv, 0x73640000, 7364)
+29:		checkuart(\rp, \rv, 0x73660000, 7366)
+30:		checkuart(\rp, \rv, 0x07437100, 74371)
+31:		checkuart(\rp, \rv, 0x74390000, 7439)
+32:		checkuart(\rp, \rv, 0x74450000, 7445)
 
 		/* No valid UART found */
 90:		mov	\rp, #0
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
