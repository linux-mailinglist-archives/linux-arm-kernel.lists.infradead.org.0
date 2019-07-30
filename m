Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BEF7B4F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 23:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OJCAgzVF3zYwHMJyyI9uNNooKstamJXJIUo7bYKs+Y0=; b=IeZ
	Mv+dlIKokePTsN2HfBVjV4dNhJpla83A4c+BKPMKyjtUkru29yDSYqwOw06Iby9VrIdHicFfXjGmF
	3Q4IoOXEFMDbjIkYnwNqegEs7YwnyhXqWfPa1odIfIQKZ5b0zOffcSxzJGuLG7qNf7lpkpk+Ex4AA
	1I5KY8oJUhYX1dAmmTEO0XKz5jkuf/2uN9HZwwJe9TXDwb1qaS+foBxJVvG51zQpw4qic9AuIueo3
	dwonQaTee5hU4Ge3M039iuOAbIchM9xYFnqpH+sJZG6qARDSldE5g2rw0PB8DYwCbtdviFVW7QrAS
	rhLdNUZmGKkD92FBVeWSYNBPbwKzLcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZbV-0002gk-DA; Tue, 30 Jul 2019 21:24:17 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZbM-0002g4-NX
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 21:24:09 +0000
Received: by mail-qk1-x741.google.com with SMTP id 201so47625316qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 14:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=fLyVZXsTtfD1Xe1hWNe3oAIm1grhCSch4p5oOUN1k6U=;
 b=ogU3+0aYpayj2LlsZEQy0gKpRlrbB5anGsga45tY0zPJv18dr6xElrw7ZTngtw80F6
 xAysXhDMZS3bSrqmwSLvz6/FdhW7uJMmZyeYt3DjhokEphewaFV+UQ387K5X72bVy1im
 6+8r6GlpluXaC1iiYYq7j1gbDfb/a4BOM4dYFuTzjEUHBHtA1TgiUe5VJM9nslxIVzs2
 lYByorPyXH6H3+znbp+YM9ydGqdJBRzz7LTEdmctUOc/14MRWpCTQq+w8WLhByAnmL3C
 7TkvMkKta1s76Yk7Ocu3F9QstZWqfr1AM705WiFkgZwATc/GkJSAMH1tR8xeD8HZwDwS
 ubRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fLyVZXsTtfD1Xe1hWNe3oAIm1grhCSch4p5oOUN1k6U=;
 b=JbQMZRpmXXMuDElkTBoU8QUxnKrkxrcjAVoBXZh2wf6dKq/xWucqrX+YbpD5ORHblD
 MsFGo8YdrMlYHua0OTeCqSeXOFIAThDvP8RqvlO1TxapfL5Ot81w4bsMsmc5wVo64sTO
 f1Aw2oA5SK0a+H3BLshvWf/irrp2wyeiOr58nA6otVWTf07w/2n2yAbrHQIcKzDu4guC
 jE4vZVES8tP7vyXVzitaY6NXPXUl1ah9P12JLSLiLuAcKgOKD0eOpKYKL3JuFXd3ykax
 dr5diWCqIzn+RfpS+++6LA5SFY3DOEhgfabCF9EJathicABdR0j/1Zz+v7A2Sudp3rYE
 cd+g==
X-Gm-Message-State: APjAAAUMnQliBqD8ySkAUilqnt48buszbquuHBPDkndbE3QnaXB3TtVM
 PzYOK8FqbnLOkVU6owLEMUdO3g==
X-Google-Smtp-Source: APXvYqzGGzOl293rhLB2qxiR8WZ4xNszIZjsNseUBLKyYrY8Ml809POIZeuGW/8BcsF1e891maSxWg==
X-Received: by 2002:a37:6243:: with SMTP id w64mr74090146qkb.444.1564521845978; 
 Tue, 30 Jul 2019 14:24:05 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id q9sm26738659qkm.63.2019.07.30.14.24.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 14:24:05 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: ard.biesheuvel@linaro.org
Subject: [PATCH] arm64/efi: fix variable 'si' set but not used
Date: Tue, 30 Jul 2019 17:23:48 -0400
Message-Id: <1564521828-4528-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_142408_796506_BFCD751E 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi@vger.kernel.org, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, Qian Cai <cai@lca.pw>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GCC throws out this warning on arm64.

drivers/firmware/efi/libstub/arm-stub.c: In function 'efi_entry':
drivers/firmware/efi/libstub/arm-stub.c:132:22: warning: variable 'si'
set but not used [-Wunused-but-set-variable]

Fix it by making free_screen_info() a static inline function.

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/include/asm/efi.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/efi.h b/arch/arm64/include/asm/efi.h
index 8e79ce9c3f5c..76a144702586 100644
--- a/arch/arm64/include/asm/efi.h
+++ b/arch/arm64/include/asm/efi.h
@@ -105,7 +105,11 @@ static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
 	((protocol##_t *)instance)->f(instance, ##__VA_ARGS__)
 
 #define alloc_screen_info(x...)		&screen_info
-#define free_screen_info(x...)
+
+static inline void free_screen_info(efi_system_table_t *sys_table_arg,
+				    struct screen_info *si)
+{
+}
 
 /* redeclare as 'hidden' so the compiler will generate relative references */
 extern struct screen_info screen_info __attribute__((__visibility__("hidden")));
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
