Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3F2135E18
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxTWSFtD9JXBfXA22lR/Ec2FFF/ZvKTOwJ1ipDEb9KI=; b=s+p0IJs8buYQiU
	F013KV2KOTh3FzK2GCqDDxDPGYibFq5ga3TcO4u/kxWXollv564odaaPDdgf5fKX/XYZi7LzRL3KE
	WA3ISmKdRAb1PifnYAg08XE/R5G5zIaBGSdX1/dnRTHkWKAN1jUrw4KgnwT0JEYjZbI0RcKewb5+y
	LN/XyZIFEBMMr7dqe29LdMYt4n8sudxk0SlxBkkRdmq51XRLTnVkJjrXnzPSwdJzTfalTfCIbMG4E
	Xwu5JjVZyOtixs10NRO6AwxDsUl+Fi2uxRxyDCQ8IOdf8h3v8DBdmwy3u4Y5/RCB+cCX4+DndKjqJ
	/9l62NwtJ3sCVa8hPRrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaYZ-0007m5-NC; Thu, 09 Jan 2020 16:21:11 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaNP-0002Zx-Im
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wn1PlW5FinwniCqrxDmb+VE4wicag5GxlG8u/eXxlDw=;
 b=AZnf+wMBi8oBnLj3J3X/2hjZCEjUEhQT9MN0XtcbNjEV7vcXZoxKHQnetuLtwF6v2BOsDU
 M9dubHtfVgur8xvUgoKskFo82pYJhuiwCKwrLdgn010e4t+aLcG6kwL/jfzmRD8f0nDj7A
 Aw0vdc9uj2Ba/AEXlw+CSNKSjWOJy6k=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417-X5JnqSg4O1GQfhPsEUKapA-1; Thu, 09 Jan 2020 11:09:35 -0500
Received: by mail-wr1-f71.google.com with SMTP id o6so3042271wrp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:09:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x/rxJnoz2dp9/OgwOSiXn1XXvPb+lm1fPDfoPO+TlzQ=;
 b=K/Z5CIZ9Gg4AYWxiJ3yZWCWo6QdC1bhJZlsj+68FO3KLmVUdgqhtLPu2jd8+KF3rQK
 3XTDrkRk1KN/zEnVoMY/nCYHtzqBtQzsU+2kwf2FPDb/h8jUYcoladiC6tDmDAHAL6EY
 JoDN1zGYqqA1OgrNXYe0+98FbpCGd6Xh+uMhl2d9Bjc1PmXcGVtzi2aUtBr4CKSqn2GL
 pZeR7AM5tqr1p7EelZjXpp0+/yo6f8VFxylt5xRsJMgkItD4Z3/xOLDwg4YOtjF+/eLE
 P1jJGx7S9ikkE2udRnatsksSeBVwx2nUaZECEmUdbFSF4LS0Wn6o6xj6VsQseVOzv+ns
 R2vQ==
X-Gm-Message-State: APjAAAUgGoDWHIN/MGJ7/Am//YZOAa8nxLYy3xb34nyD1YB8W8FnkCxP
 +2KmwCxXLklamQX708GxCjnHiUMZG4WbfKnckbLtnP1aA+4nd2m+cx2AeZ2JKYmUAaxibgjRJpK
 KVS2Y+URO0MDf7S1pj10w6afIxaTKpRP7YFg=
X-Received: by 2002:a5d:6a88:: with SMTP id s8mr11396382wru.173.1578586173702; 
 Thu, 09 Jan 2020 08:09:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqzzBZ0BLVEYI65yhSFFLKAZJl16GgmFQUcOJvP3sjdvkoaxTwI5EQ3O12ZHhk4lBNKmTURtAg==
X-Received: by 2002:a5d:6a88:: with SMTP id s8mr11396364wru.173.1578586173488; 
 Thu, 09 Jan 2020 08:09:33 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e8sm8517707wrt.7.2020.01.09.08.09.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:09:32 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 51/57] arm64: crypto: Add exceptions for crypto object to
 prevent stack analysis
Date: Thu,  9 Jan 2020 16:02:54 +0000
Message-Id: <20200109160300.26150-52-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: X5JnqSg4O1GQfhPsEUKapA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080939_725922_D4FCF51B 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

Some crypto modules contain `.word` of data in the .text section.
Since objtool can't make the distinction between data and incorrect
instruction, it gives a warning about the instruction being unknown
and stops the analysis of the object file.

The exception can be removed if the data are moved to another section
or if objtool is tweaked to handle this particular case.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/crypto/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/crypto/Makefile b/arch/arm64/crypto/Makefile
index d0901e610df3..576a19923185 100644
--- a/arch/arm64/crypto/Makefile
+++ b/arch/arm64/crypto/Makefile
@@ -43,9 +43,11 @@ aes-neon-blk-y := aes-glue-neon.o aes-neon.o
 
 obj-$(CONFIG_CRYPTO_SHA256_ARM64) += sha256-arm64.o
 sha256-arm64-y := sha256-glue.o sha256-core.o
+OBJECT_FILES_NON_STANDARD_sha256-core.o := y
 
 obj-$(CONFIG_CRYPTO_SHA512_ARM64) += sha512-arm64.o
 sha512-arm64-y := sha512-glue.o sha512-core.o
+OBJECT_FILES_NON_STANDARD_sha512-core.o := y
 
 obj-$(CONFIG_CRYPTO_CHACHA20_NEON) += chacha-neon.o
 chacha-neon-y := chacha-neon-core.o chacha-neon-glue.o
@@ -62,6 +64,7 @@ aes-arm64-y := aes-cipher-core.o aes-cipher-glue.o
 
 obj-$(CONFIG_CRYPTO_AES_ARM64_BS) += aes-neon-bs.o
 aes-neon-bs-y := aes-neonbs-core.o aes-neonbs-glue.o
+OBJECT_FILES_NON_STANDARD_aes-neonbs-core.o := y
 
 CFLAGS_aes-glue-ce.o	:= -DUSE_V8_CRYPTO_EXTENSIONS
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
