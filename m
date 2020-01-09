Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD24135E11
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6Op3OL3m2wXWSP56zN5pPS6PX8J20KA6fhWOzdVXdA=; b=mX9MKLsWldBK1p
	eXab65qPhJb3R49ipFldc62MV+ew1CiZhjQVv3LhRxC0nzSZCLeGQ5cvktgl1ppzmF8a7zLhkzzJC
	dJJYQ6j80RxceVNBtLpbPugEp/ZdvfUDvaFOdbMjDzs/36uxPcye2/bQTkLNH4tRg+579ciErFQ4I
	FFN3IxuhypgU0E2Hm35KJin60sjfp+T0YSBOXhQT72qiz3FlYGwhuuFL/+CKB96+SJo1kUvPSxhbs
	SMWIabPQc6IA5ZuqPfJz2p/rLiUisWleAg451d0ge3kWlKIOCkXkWTZSk4EgYgq/B+tMCv7nG7N4K
	w9kC1qSBheM/xs/+fdLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaWr-00057h-5j; Thu, 09 Jan 2020 16:19:25 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaMn-0001wJ-0G
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586140;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J44m9E003H18Upos9FG6C8b2vnlMaH/tcVcfPlZlhX0=;
 b=ezk+4xTf+syIFT0AtXHvkPq0JdYJMf8/t3Wdul+vDUTG5T7/KMGRmYtOq9h+tcpkRZYvcT
 DM3/zBvXZYR60jmQ0zwbLIWbNyFX3z1TuMCypUhO+K8firgHBLFHJ6PpswDrg9pjAMzISJ
 uY2um3+J9X8ggE7kjCoIWJFy65bSkSA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-72-RwJ7jwuxNA29nRacGa1Ldw-1; Thu, 09 Jan 2020 11:08:58 -0500
Received: by mail-wr1-f71.google.com with SMTP id o6so3041682wrp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:08:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GX1HWyW2RBViA1jhSt+OmG2SA1mVF9hKLd9ureUedGg=;
 b=OqGeKybaVUk8jt0UpYWTF42L7M2XUwCCrPV9TH4tvRQyi9NoVnoCGGCdsSHBIv/QwU
 UeBChnpraYnWdU0sx570g5agYmAqqdtFlPwfOldwNANRYuQWCo7MOSMP8DaIUrYFk8zp
 9Xl9wdQFNJvtqi7s5RevjpvnLFeeRnbyrcPe6V0JgBZJSUJ6/w/nXUI32y6IsbZtPBVh
 2UwxPCyhD+co7Ymo/OhHKGghZz4AoWR/H1QBLw0KW2pu/OevpcXTLJX9KBG0jJIJjiKL
 HMlRSWWk4x4KHKPaKDVNH8mB2Nw2A60zV2B+J1q8X29sr3MQd2BoXvaT/2RJHTqvf5hD
 SH6g==
X-Gm-Message-State: APjAAAW6WafdGsfn11KQ8dDeoLkNb2gxs+RNZjhzH+K8CHDj0TYyhP9O
 S0No/tB4XWyv0J4JejEyumAL/FBGFdejNFhcTBh2MJt2NOwcyYnqewHGQMPCv3wQRMePMM1oug6
 MOzvPndu8I3n+QN81RTUNxouojk8Y6P9uMWU=
X-Received: by 2002:a7b:c750:: with SMTP id w16mr6091425wmk.46.1578586137409; 
 Thu, 09 Jan 2020 08:08:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqwjCp+Y4dd1UCQgpsIRC3EeNqpxSOKmFBNBlJEwGBmeaO0pEch53HDZj8tK+YxsBYtcqb3jbQ==
X-Received: by 2002:a7b:c750:: with SMTP id w16mr6091403wmk.46.1578586137235; 
 Thu, 09 Jan 2020 08:08:57 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id v8sm8403505wrw.2.2020.01.09.08.08.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:56 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 47/57] arm64: assembler: Add macro to annotate asm function
 having non standard stack-frame.
Date: Thu,  9 Jan 2020 16:02:50 +0000
Message-Id: <20200109160300.26150-48-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: RwJ7jwuxNA29nRacGa1Ldw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080901_136474_8553D435 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: Raphael Gault <raphael.gault@arm.com>

Some functions don't have standard stack-frames but are intended
this way. In order for objtool to ignore those particular cases
we add a macro that enables us to annotate the cases we chose
to mark as particular.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 include/linux/frame.h | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/include/linux/frame.h b/include/linux/frame.h
index 02d3ca2d9598..1e35e58ab259 100644
--- a/include/linux/frame.h
+++ b/include/linux/frame.h
@@ -11,14 +11,31 @@
  *
  * For more information, see tools/objtool/Documentation/stack-validation.txt.
  */
+#ifndef __ASSEMBLY__
 #define STACK_FRAME_NON_STANDARD(func) \
 	static void __used __section(.discard.func_stack_frame_non_standard) \
 		*__func_stack_frame_non_standard_##func = func
+#else
+	/*
+	 * This macro is the arm64 assembler equivalent of the
+	 * macro STACK_FRAME_NON_STANDARD define at
+	 * ~/include/linux/frame.h
+	 */
+	.macro	asm_stack_frame_non_standard	func
+	.pushsection ".discard.func_stack_frame_non_standard"
+	.quad	\func
+	.popsection
+	.endm

+#endif /* __ASSEMBLY__ */
 #else /* !CONFIG_STACK_VALIDATION */

+#ifndef __ASSEMBLY__
 #define STACK_FRAME_NON_STANDARD(func)
-
+#else
+	.macro	asm_stack_frame_non_standard	func
+	.endm
+#endif /* __ASSEMBLY__ */
 #endif /* CONFIG_STACK_VALIDATION */

 #endif /* _LINUX_FRAME_H */
--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
