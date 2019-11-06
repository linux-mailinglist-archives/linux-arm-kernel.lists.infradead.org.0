Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8236F183A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=99hgILvcgfHIV80APcb+pyRG3KR7z9kFDaJ/wO9x5xw=; b=hEYKAmBZ5bYQPVmrMQAOiQQODd
	QUBDz4uZ9CQOTCIjD0EXvs5W5FZj7BBGjpJmwq1Wz1i7JiYV9zFGE9lDGXjWlR6qNJX7Q9c37Q1Ry
	fwlQFo96WvlUz+5C1ckvNPvxkSOpQj4q9RKVSn0vx3hfCHDG8HG4BE1TsE/4tjzTjjShXialRlw8s
	j5/cDCJE+tEBSFecaZoTu6pqxFZoip5OhoHXqX/dlrfKHZzTfEUV1jZykfPODkd4bATkVn5f64wKm
	XJtE/5NZU3Wxw0eAxRAi5okU7l1Ya0xywUotRuh6AvVF52XhFJcZaGLt+Y8itna0DYl1elNJw0aE0
	1yBe9iYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM6I-0003NO-37; Wed, 06 Nov 2019 14:15:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM44-0008Ne-Mx
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id z19so3524855wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EtW7c5+Vxuw361NPgarxEa4pkxF91xrS2XEr4qnN4jI=;
 b=e5nNk39VJ5IOgRqdcXf58JkLAmLsag2O4+U458JjYo5P0PSEMekSFRL7LZc2d3m3VJ
 URQyFUvE8jMn4eVvMtPS4S4bwU+o51HOhtfgwYme4dhoLAOHd8OHl1q5buqF/oxhumhw
 +z3jc1g7Ck1yBgoUiT30MrVfaQcI9SAZcV6//J2C/MjC41OM02IYNasElc3UDquPybqb
 baWyh7WRSDEfEhipTjcqjxsGo/IM/qSUCmUCE5UrGsB4dj0txgaPvPHy4E6e/8b6xTks
 +7wsbS1O4VTbwJoSISfsP2WPk3MvEuhRHnX4Tq6FkCgrC9KgWh7M7bDPmgQZAuRo+xGE
 Q0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EtW7c5+Vxuw361NPgarxEa4pkxF91xrS2XEr4qnN4jI=;
 b=kBD/UcvIBDm4geRGjEpJJ7LH1O4ieZ5eYHaQNrAf5lb6bpa8CXrdIwG7VpohRaZKQB
 LnbSZdgQQoE92FNeJoohrrahxObEZtDXxbCd56sXTFgeQKLnQJ562FbOgHRqMfoOdkaH
 /cTKsGDsneN8XFO27K5A5KytxPUuVi3WKDpFaJst7Oo+iGM5+Yk1r2XWShAVCuJSRcvl
 CmBb4TMJ6+vGVHvJ2xpcZLbr7u6ek9rki+yqu8vF5dI/9DuhoIsRIfw82F6G5IQxXP6J
 /MxZ3GcwoQm+ZnWgD9Z/CTBmKMErepJwNhtCdt6IlNXxyE0Cr8UG/6RG5+OYbq3ZFgfI
 SRww==
X-Gm-Message-State: APjAAAX8rsVxC1WU7vHhr/5Ogc4fnsBadUlg0SGYs+qvzH0rNurXAzzC
 LTSrUIerUjg+Di/LgE4zOF11TA==
X-Google-Smtp-Source: APXvYqwQkS3HkPb4xqO71j4GDBQsJDOPu6hiWKUGgF3l2gy8AO8EiMAAlXbkknCw6t0pwT+ISh1RMQ==
X-Received: by 2002:a7b:c776:: with SMTP id x22mr2609658wmk.144.1573049619319; 
 Wed, 06 Nov 2019 06:13:39 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:38 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 10/10] s390x: Mark archrandom.h functions __must_check
Date: Wed,  6 Nov 2019 15:13:08 +0100
Message-Id: <20191106141308.30535-11-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061340_819286_0DBFC193 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We must not use the pointer output without validating the
success of the random read.

Reviewed-by: Harald Freudenberger <freude@linux.ibm.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 arch/s390/include/asm/archrandom.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/s390/include/asm/archrandom.h b/arch/s390/include/asm/archrandom.h
index 9a6835137a16..de61ce562052 100644
--- a/arch/s390/include/asm/archrandom.h
+++ b/arch/s390/include/asm/archrandom.h
@@ -21,17 +21,17 @@ extern atomic64_t s390_arch_random_counter;
 
 bool s390_arch_random_generate(u8 *buf, unsigned int nbytes);
 
-static inline bool arch_get_random_long(unsigned long *v)
+static inline bool __must_check arch_get_random_long(unsigned long *v)
 {
 	return false;
 }
 
-static inline bool arch_get_random_int(unsigned int *v)
+static inline bool __must_check arch_get_random_int(unsigned int *v)
 {
 	return false;
 }
 
-static inline bool arch_get_random_seed_long(unsigned long *v)
+static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
 {
 	if (static_branch_likely(&s390_arch_random_available)) {
 		return s390_arch_random_generate((u8 *)v, sizeof(*v));
@@ -39,7 +39,7 @@ static inline bool arch_get_random_seed_long(unsigned long *v)
 	return false;
 }
 
-static inline bool arch_get_random_seed_int(unsigned int *v)
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 {
 	if (static_branch_likely(&s390_arch_random_available)) {
 		return s390_arch_random_generate((u8 *)v, sizeof(*v));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
