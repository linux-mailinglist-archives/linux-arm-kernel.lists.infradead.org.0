Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE78B135D7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZPhUCOEwdUssxIMKrJMaU0pKF+PSGCgNYR8bgoOafM=; b=mmH1IeF0bQsn5c
	YokFL8AEq2VmrIvPePSNC5T8gYDLkU1GIKqtHLVNAoprjZke9V3qKJ7tKlTCxoLQ3BmPPRBuaSFk5
	X70vlsQix9dE65sb73lLT3tf1581x1DGJ6+WQBLrqmtuP5KGVRoiryOy+acbsmZWG6xVWeBl78b/e
	hZ/E4FKfw3xL9M8Kqn5rkoOtqAKzVi6FRImxOiaOrQ7UFcmX+abqcAzUyB6KguIypUVQFcHfcn6oY
	XDVzV6uYk/TxgTIgDVEjhE3urFyxDKYiHq8gIQMQXl3vrFXxb9iRvLg5l2DUMskXxFSeBTF+im9dz
	RrTeatBMV318gU7xBOzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaIh-00053w-3j; Thu, 09 Jan 2020 16:04:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaII-0004w0-46
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 Jan 2020 16:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kjViSquLhswyraCUEAkO3I/bte+UooXKuYBTgJ9Qqac=; b=j2ROrZtbH5qhsZVrL798tr8QpI
 kFlgsCOEXP8oLzWLVh678TbSWJfmySJ81EOtfSA0oJmhCL8JFgHOfiyAn+lBG89j49AwVhqEdJ+P0
 eH+OQKl9UhZonTvnRNN0NT0TUphdRVpIb8ZeNde89SBh4jtO0fM3TYLDFOG0W8sSphBNGsVvoyIM6
 xVIy2dqqQA82Sk/g8SDzub4XBpvj20yl/qhdwMuVXSHGFRwRXX+P8yiEmexLCr8vBLKA1z8X21VEZ
 JAwD2sZTwdtcdQlIpwjvcbqKD8HCBnyfFKI3q5e9eD+/i9khFLtUO57r2b+ajiXRDzj9xJM0XEIMA
 9GsZGZrA==;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIf-0007ji-H6
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585835;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kjViSquLhswyraCUEAkO3I/bte+UooXKuYBTgJ9Qqac=;
 b=RNyfQEzA6HQQSUMZjUB9UMQ2TQ2ZuDarn7J/WixjSY060U+l5Edd2xmmzvXqlBCp1BhC00
 BW0AnxCNQeQye0ApYIOg5AEOM98lr6AdQpNU8o4QHr20iAnEkyzODDeCmgxpZzkO7R1qWx
 RF1WxflJCIsYlwOuRNS7rf4FAjA4X50=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-313-OGQ3uRGaPRqT4muXbKuOcg-1; Thu, 09 Jan 2020 11:03:51 -0500
Received: by mail-wr1-f69.google.com with SMTP id u12so3042924wrt.15
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aRwsZXslrF8qlI5MyK0VLDbXIL7BVk96fwOyF4VyYbw=;
 b=qbiUb0rni2NvAZ1jWKQS658dqJcu1ULSOUeJuigi7r4mjzPnVRdD5CfZFdBOp+lwmk
 v5tXOTDxstgwTkueuPMLqXGRfBV9OTXoLwfDP2o/AlFxHGRILALIOdI1GLZlVEHjJFZn
 dVS2f2x7IETK0Y7x4wh3aJZ4D5qcPenCbO8s3YFQqagbNXSI7sK/8aw4UdT+/SjyhpkW
 k/00rG8q1TXZfOPsNhV9BV2H7Id0XY/8t8lGcnux2bDhDBXrPwzOMefI1/CHR3b9nxS8
 vOIVWN6o6/50NaOstjtXFuIrjRlCh+JIBKtzAVBWcy+4Zaxn/104koQVjKzXpTPBk/pD
 BPMQ==
X-Gm-Message-State: APjAAAW9XiM5WRF4umI10y2fEYuhTsna51Qq/TweWvZkzo6wyO0AieRg
 3N6RG+MAVgFTqD/Ln4jIDqdTfZwtz9vuAQJ0Fa4yqz4YAYSiwOxCgU9lgSnlHgf2YlGHuT/SyM2
 Gg0i7KZAOdM5ZO9RBV6ChmOchV2WaR10EVpo=
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr11697761wru.40.1578585830109; 
 Thu, 09 Jan 2020 08:03:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqwdTwKmwk+TMSvNrwowSzjOiXNj+qkJd4Gz4AqQII7UyixaAnIcNddNNeu3UQ7anmhP/LotHQ==
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr11697736wru.40.1578585829847; 
 Thu, 09 Jan 2020 08:03:49 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m126sm3321546wmf.7.2020.01.09.08.03.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:49 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 06/57] objtool: Give ORC functions consistent name
Date: Thu,  9 Jan 2020 16:02:09 +0000
Message-Id: <20200109160300.26150-7-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: OGQ3uRGaPRqT4muXbKuOcg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_160445_673895_28C27EC5 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename ORC manipulating functions to have more consistent name. Have
"orc_" as a prefix for all of them.

No functionality change.

Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c   |  4 ++--
 tools/objtool/orc.h     |  4 ++--
 tools/objtool/orc_gen.c | 14 +++++++-------
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 6a5f78cca27c..dd155095251c 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2481,11 +2481,11 @@ int check(const char *_objname, bool orc)
 	}
 
 	if (orc) {
-		ret = create_orc(&file);
+		ret = orc_init(&file);
 		if (ret < 0)
 			goto out;
 
-		ret = create_orc_sections(&file);
+		ret = orc_create_sections(&file);
 		if (ret < 0)
 			goto out;
 
diff --git a/tools/objtool/orc.h b/tools/objtool/orc.h
index ee2832221e62..cd44417487e4 100644
--- a/tools/objtool/orc.h
+++ b/tools/objtool/orc.h
@@ -10,8 +10,8 @@
 
 struct objtool_file;
 
-int create_orc(struct objtool_file *file);
-int create_orc_sections(struct objtool_file *file);
+int orc_init(struct objtool_file *file);
+int orc_create_sections(struct objtool_file *file);
 
 int orc_dump(const char *objname);
 
diff --git a/tools/objtool/orc_gen.c b/tools/objtool/orc_gen.c
index 27a4112848c2..29bee7bd212a 100644
--- a/tools/objtool/orc_gen.c
+++ b/tools/objtool/orc_gen.c
@@ -10,7 +10,7 @@
 #include "check.h"
 #include "warn.h"
 
-int create_orc(struct objtool_file *file)
+int orc_init(struct objtool_file *file)
 {
 	struct instruction *insn;
 
@@ -81,9 +81,9 @@ int create_orc(struct objtool_file *file)
 	return 0;
 }
 
-static int create_orc_entry(struct section *u_sec, struct section *ip_relasec,
-				unsigned int idx, struct section *insn_sec,
-				unsigned long insn_off, struct orc_entry *o)
+static int orc_create_entry(struct section *u_sec, struct section *ip_relasec,
+			    unsigned int idx, struct section *insn_sec,
+			    unsigned long insn_off, struct orc_entry *o)
 {
 	struct orc_entry *orc;
 	struct rela *rela;
@@ -116,7 +116,7 @@ static int create_orc_entry(struct section *u_sec, struct section *ip_relasec,
 	return 0;
 }
 
-int create_orc_sections(struct objtool_file *file)
+int orc_create_sections(struct objtool_file *file)
 {
 	struct instruction *insn, *prev_insn;
 	struct section *sec, *u_sec, *ip_relasec;
@@ -182,7 +182,7 @@ int create_orc_sections(struct objtool_file *file)
 			if (!prev_insn || memcmp(&insn->orc, &prev_insn->orc,
 						 sizeof(struct orc_entry))) {
 
-				if (create_orc_entry(u_sec, ip_relasec, idx,
+				if (orc_create_entry(u_sec, ip_relasec, idx,
 						     insn->sec, insn->offset,
 						     &insn->orc))
 					return -1;
@@ -194,7 +194,7 @@ int create_orc_sections(struct objtool_file *file)
 
 		/* section terminator */
 		if (prev_insn) {
-			if (create_orc_entry(u_sec, ip_relasec, idx,
+			if (orc_create_entry(u_sec, ip_relasec, idx,
 					     prev_insn->sec,
 					     prev_insn->offset + prev_insn->len,
 					     &empty))
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
