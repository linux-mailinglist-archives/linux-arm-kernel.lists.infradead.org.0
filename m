Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6A288842
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 06:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9YcvvTZ4xbL1I00DU81E9CP4Hk19mk1VuzJVBR1XALA=; b=cIidbIBDthPSn6
	ZgYQWTKEZh0XjDfXoziOE5NMgoalFGc1Dekk77zPpqnY6GDgDPCzI3dt+fvNuQMd1yFoLruZYPLRG
	QbyXmJlxKusFbYDw8bBMQhFTIs2YBCotkz2jSqyVWox3CoC+BdLqEVskpGrzeMFBTs+Xl+RPv6Alc
	UBbgDS/t/6BK5pHC8uQUthdXUGCd9mGk5/LmyrCtDkrfMfvZoBUzbhRHktOitFYbDHV46YhrYsE/Y
	StwXrUpT5TDEYiTe9lvN108HkqIj+VgkYCFfr10JzxVrNcuio0dv7Cswtpu1RW/NYa0gacJhFV2li
	pffJuWOAmfkA3BrJBzfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJK4-0006R0-SK; Sat, 10 Aug 2019 04:49:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJJj-0006QS-Ny
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 04:49:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id z23so7272118wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 21:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ulCsjp9diZ2qriE+4Cg5mruQzjkUXFDOkC4POtPmsWA=;
 b=NGDK21aDRWljP1LXoWB7S8eE+O4vZ1sRPfi/6k40/DMPybzHr7mNWtTKcHG0jjthsc
 mV6aD6OTfwuTwiXPbaIBeM1dCZR8XWtXG9Czx1qYs8W/PMQ/6bDvj9e6BSjBqdwd8c1e
 52QFjvRyIOsQ/+25KtWxSUB5hhxSKnG/Btjh34aUpDxqD9HwvhTUJBVFHi/UXJ1xCb1L
 nvhVcOSavxIpIEDynzALLMcV4JKDQ/2udmYf0Y6hLKloclHqeyBWRalaDV+/Cf6g/hrs
 VW537ESr+2HbYHILjzG/P5KZ7RuW6XQCcpErSc6c0vjbcHeOXh8OdXGznEDLtxbk9cT6
 /zDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ulCsjp9diZ2qriE+4Cg5mruQzjkUXFDOkC4POtPmsWA=;
 b=nibcXipKK+PmBzQMyw8KBlgw9rcSFiDGw3j4H3AOTOGzrVgItT0WIcZKBEJliu23Iw
 8D3AFkky/BcCUUDO9JX8WP1pKT5dqiTItVIk/ApQGzv60ooRwK3SK3ayfZdw/Vi4jZsp
 /Ewa5a0kdo+yiamJ0fh5k7PHypOw6aXDEt0nIeskSEhjXnfAgz6Asr+16nAgNTseyi84
 M/TfDJTGt+AKkHyojbSC7mScCuwOM1BXtIAtNCpEqvHnz4MyV3vaLkH6uFQjDLkBl/9m
 johEfRZ15feYh2YuG8u+DKnVE46HhgDHlc3HhLkZr+gfhvCo1mc3krdJY2qgGSYXJ9Vb
 P9xQ==
X-Gm-Message-State: APjAAAXL2hBgd3eDBhbU8UByqrOC3gq83Lfv8wxr2SuerETHtzysWm0o
 vO7Kth55rZn62H4WCvjFFM8=
X-Google-Smtp-Source: APXvYqzmsiCROnIJE2KU/ceUpPoCJ5gdssn6Ej3YVxoCbp7xgJXDFAogI097PejjQ27EpheLWUvANQ==
X-Received: by 2002:a7b:c310:: with SMTP id k16mr13781272wmj.133.1565412561667; 
 Fri, 09 Aug 2019 21:49:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id x20sm218826181wrg.10.2019.08.09.21.49.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 09 Aug 2019 21:49:20 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] firmware: arm_scmi: Eliminate local db variable in
 SCMI_PERF_FC_RING_DB
Date: Fri,  9 Aug 2019 21:49:10 -0700
Message-Id: <20190810044910.114015-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_214923_806945_36886AFC 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

clang warns four times:

drivers/firmware/arm_scmi/perf.c:320:24: warning: variable 'db' is
uninitialized when used within its own initialization [-Wuninitialized]
                SCMI_PERF_FC_RING_DB(db, 64);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~
drivers/firmware/arm_scmi/perf.c:300:31: note: expanded from macro
'SCMI_PERF_FC_RING_DB'
        struct scmi_fc_db_info *db = doorbell;          \
                                ~~   ^~~~~~~~

This happens because the doorbell identifier becomes db after
preprocessing:

        if (db->width == 1)
                do {
                        u8 val = 0;
                        struct scmi_fc_db_info *db = db;
                        if (db->mask)
                                val = ioread8(db->addr) & db->mask;
                        iowrite8((u8)db->set | val, db->addr);
                } while (0);

We could swap the doorbell and db identifiers within the macro and that
would resolve the issue; however, there doesn't appear to be a good
reason for having two copies of the same variable. Eliminate the one in
the do while loop to prevent this warning and make the code clearer.

Fixes: 8f12cbcb6abc ("firmware: arm_scmi: Make use SCMI v2.0 fastchannel for performance protocol")
Link: https://github.com/ClangBuiltLinux/linux/issues/635
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/firmware/arm_scmi/perf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 2c5201c8354c..ab946ef6b914 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -294,10 +294,9 @@ scmi_perf_describe_levels_get(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
-#define SCMI_PERF_FC_RING_DB(doorbell, w)		\
+#define SCMI_PERF_FC_RING_DB(db, w)			\
 do {							\
 	u##w val = 0;					\
-	struct scmi_fc_db_info *db = doorbell;		\
 							\
 	if (db->mask)					\
 		val = ioread##w(db->addr) & db->mask;	\
-- 
2.23.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
