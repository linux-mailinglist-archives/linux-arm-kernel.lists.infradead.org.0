Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A36135E20
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBnZMlYZvoItkSxKHv3d5RnDZJ2nfj2AwJvKhjXRIIk=; b=SmH6fI9C2BQ9H8
	sLAB+KAlFCt7zegVaF0rNHIR0p7ig6HpnFMiD8SqR4sXoR8tSsV+g0IVFjKzMI85E8NDXNpRZwXhO
	N8SJI3L7ntKBuQcYbGCf6JxBosoETsGC8R2dDOpzF24ngvcrbKCNz+pv8RqI4YWwCpcQg2RITWBML
	dClpe11eSlgxfIzmNlu+prFrC/JEHs64JnwgIubzut8XxJT9fLtyQY65II8yQY4tCZ/AJNDDRMHPv
	1T0xcZwFP75j9AcSDbM0AR+Dc0E2OhHbe688KWg80p4koL0cwYRSO/+g0yjyY2t9/Enpj8DGt/THS
	nQmWuWPy/l/kJEBwcjRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaZs-0000W2-JS; Thu, 09 Jan 2020 16:22:32 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaO2-0004PL-Ts
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:10:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586217;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sbYnzt6Q3TQUglatyKTswckBiC0xrNxpjYH5/smlmTQ=;
 b=eJ6vuxumQru9kwCeDB4poaj9tNfaGERle0KeyygqX0t5lpro2ucOl/Yi+FOTOEVmZrRIq8
 KNhmNT5yxar3i/LnpKodNoFkZj0HAruUIH+dBQpPOybUaBp/KweLRpCXk83km396NXxFGx
 uFZ8mcSQRkTWDDSewYB6ac6zwu7PRgc=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-8yvO9ik2O5WwptoBeeNTBA-1; Thu, 09 Jan 2020 11:10:14 -0500
Received: by mail-wm1-f70.google.com with SMTP id c4so1097816wmb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:10:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZnSP0pZ70yH/YNEnLlm1kliMX25WmuqwN7ivPVxI2v0=;
 b=CltvDGN1nUtde+RzNKLr9Dbvr7k9h8tTbfkzhU9ewxMyGJ6H1cIvsiUvw/dBUMBpPD
 TbgZKJ9HTL1ZvqQpCU5aidFGRsuX4PrMvIw9DHT9nQaPG7o6Oy/kRvLyhZyONOlb/HdY
 sYGD0J/amPz8Vxf+yub2/cd1yfb5+I+m0rqJRUmwOm7McrK/2+we5eWytSKfvR8fiC+O
 84/3w+XI5PoBxpJwvXHRmcgqLZDW/ztSR2Cft3bFQ9Ru+EDHsM3nkfWxguaX85mVM46d
 fjKN75Zzxc4hjdTULerH5qFYutzLwXKL9ofGl4IhGs0gUDB5v23/umUhKFtLjygBNgWY
 Pqyg==
X-Gm-Message-State: APjAAAVrAXd/9Fkv2lNEo+3KsNJ/yHoQyr+Xf+vzQndRKnQvcybJmSUX
 5NTcr9VVW67VgMfMriot0XHdb3aTokqzEvLG+tvJ8f+2L+ba1JKqkZaMu1FEGRDq+YKK8gNSBtJ
 83z+2HTh+CdCzMpBAjSRbs6MJkDpxkOXLA+A=
X-Received: by 2002:a05:600c:108a:: with SMTP id
 e10mr5542132wmd.38.1578586212974; 
 Thu, 09 Jan 2020 08:10:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqxZtD+rP6Em4mTjnCX/pV4lGl7JJYz5/HOrqpOas0kvGyMcAfBoXa6ico6Rve7JUKRHzsZgbw==
X-Received: by 2002:a05:600c:108a:: with SMTP id
 e10mr5542098wmd.38.1578586212717; 
 Thu, 09 Jan 2020 08:10:12 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id y17sm2820948wma.36.2020.01.09.08.10.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:10:12 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 57/57] arm64: crypto: Remove redundant branch
Date: Thu,  9 Jan 2020 16:03:00 +0000
Message-Id: <20200109160300.26150-58-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: 8yvO9ik2O5WwptoBeeNTBA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_081019_049259_1A6CC3CF 
X-CRM114-Status: GOOD (  11.35  )
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

Having a unconditional branch between the macros do_cond_yield_neon and
endif_yeild_neon causes the endif_yeild_neon to be unreachable. It so
happens that endif_yeild_neon expands to a branch and already allows to
provide the label to jump to after the yeild.

Get rid of the redundant branch instruction.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/crypto/sha1-ce-core.S   | 3 +--
 arch/arm64/crypto/sha2-ce-core.S   | 3 +--
 arch/arm64/crypto/sha3-ce-core.S   | 3 +--
 arch/arm64/crypto/sha512-ce-core.S | 3 +--
 4 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/crypto/sha1-ce-core.S b/arch/arm64/crypto/sha1-ce-core.S
index c2ce1f820706..50ca9d11a61f 100644
--- a/arch/arm64/crypto/sha1-ce-core.S
+++ b/arch/arm64/crypto/sha1-ce-core.S
@@ -132,8 +132,7 @@ CPU_LE(	rev32		v11.16b, v11.16b	)
 	st1		{dgav.4s}, [x19]
 	str		dgb, [x19, #16]
 	do_cond_yield_neon
-	b		0b
-	endif_yield_neon
+	endif_yield_neon 0b
 
 	b		1b
 
diff --git a/arch/arm64/crypto/sha2-ce-core.S b/arch/arm64/crypto/sha2-ce-core.S
index 6f728a419009..c64716f5de19 100644
--- a/arch/arm64/crypto/sha2-ce-core.S
+++ b/arch/arm64/crypto/sha2-ce-core.S
@@ -139,8 +139,7 @@ CPU_LE(	rev32		v19.16b, v19.16b	)
 	if_will_cond_yield_neon
 	st1		{dgav.4s, dgbv.4s}, [x19]
 	do_cond_yield_neon
-	b		0b
-	endif_yield_neon
+	endif_yield_neon 0b
 
 	b		1b
 
diff --git a/arch/arm64/crypto/sha3-ce-core.S b/arch/arm64/crypto/sha3-ce-core.S
index a7d587fa54f6..2448d8dec0de 100644
--- a/arch/arm64/crypto/sha3-ce-core.S
+++ b/arch/arm64/crypto/sha3-ce-core.S
@@ -203,8 +203,7 @@ ENTRY(sha3_ce_transform)
 	st1	{v20.1d-v23.1d}, [x8], #32
 	st1	{v24.1d}, [x8]
 	do_cond_yield_neon
-	b		0b
-	endif_yield_neon
+	endif_yield_neon 0b
 
 	b	1b
 
diff --git a/arch/arm64/crypto/sha512-ce-core.S b/arch/arm64/crypto/sha512-ce-core.S
index ce65e3abe4f2..703724703f8f 100644
--- a/arch/arm64/crypto/sha512-ce-core.S
+++ b/arch/arm64/crypto/sha512-ce-core.S
@@ -207,8 +207,7 @@ CPU_LE(	rev64		v19.16b, v19.16b	)
 	if_will_cond_yield_neon
 	st1		{v8.2d-v11.2d}, [x19]
 	do_cond_yield_neon
-	b		0b
-	endif_yield_neon
+	endif_yield_neon 0b
 
 	b		1b
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
