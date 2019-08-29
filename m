Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED411A18F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAYGcEbJwZSsi1c47p9ogTsoHe9UtnbPikGQM/4dTxY=; b=IvaSYv3K4Gyf2y
	ycRRnpVUNekT9UYRbMRgOxaDBhKru+PLafTbP8UJmEhJFBzWSjhbBMyqVz2sXXwqpnm66Zd9i/V+3
	q508+rrgOlXZU+4Q0hNrUR/xYikZgg2G8Uc2N5xnEJdghTh/pFPcBJVMe8nPn47oaYaLia9cbZU8E
	/oPNbb5Jq0uzlEHWgyaVJdTJXR+kJBXmZp5y+ellBclju6iCd+RChy0pYMTjjCQDXnW0Zv+2f8xml
	L9HSZkREdGtM8BuLiLzwyEJh5xGjdTdFuGcGxs6kCuKTU1EcqV0TeguY7z4cvEAApkFba7ASh2keq
	Tqe3g08RJe+2wOnEyjhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ijy-0007oA-6m; Thu, 29 Aug 2019 11:37:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ihr-0005eL-Up
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id k3so1435676pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gNlfncScxDREAT7VjTEXAFzdaeKYbTqQ4JYCBMZ7gaA=;
 b=nr9Gk8pFzTEB0x/gTQjg70ogkUAAe3PHOryfDr3XdOw9hGozLABdCRERUdlFdyM7+w
 XHQw4yTqjOc8IyDdh+/0FqzVT4e1ygwvvGGySH8M6jc170I3CFooffLknoEUesluak5N
 cxL5uYIwuadRSsXimRlPBaq/8VvZLJsE1kbwhTrwzDOZqRlUVflQjLZfJfNNwvA1UvUV
 /0dbHEI2+EGV0WVYNpHt3fXS1ewsXIvWvbUYjW0AFggyhIJSNlYHsFFRF4jIhgR4nxda
 yIWg7uib71hLdizQQgudJGAhAGNeIYZX+h063Xjs2s6Jkw5Kxyc575C0eeCvUpZxCEt1
 B5jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gNlfncScxDREAT7VjTEXAFzdaeKYbTqQ4JYCBMZ7gaA=;
 b=OEYb+GOd7H6d7XLUshEUd+cf01M2XlCJ9BLZlM0Q1XmSyORHQHPuBxWfjluKMPcKFj
 BHlmb8YdaJesrmgf8GjHKat5FzNPzC5APPRPDcqh7GSu5oCYgp65CFg3rJkVyjpbqgsV
 G5ii8RuvtCdA0/NewtvDeJpZBHxXzjKdD+mHbfGsuHjoCzSqAgmSLADaBT8IU7pzVgJ+
 47zQi9Nm34a5xdQwpPoN0Go2D1KtcA8i4MCzydNuHdl2+041w2eilkOtZterqmXRtRh+
 GtlEbQQl2VHQK/vmxix+74GAleGKESWtSDGyPOJDXAbe3oDEne3SKBCpeuLOtEJ+9sYP
 yk4Q==
X-Gm-Message-State: APjAAAUZesQn+Fcpzy8aLb5x+v3XBdMT5HCceMyBXsVjXP2Y6cub6Yhr
 T0xW/PI1WGVszj4aW8Ts4jaj3+VksTE=
X-Google-Smtp-Source: APXvYqxaRmbjVog/4nw9seikvSB7LtDuhZkYKTDMv2tEWPXr5U+mLgf1hoaM7vkP2NpyY98Km++xqQ==
X-Received: by 2002:a63:c03:: with SMTP id b3mr8067964pgl.23.1567078510622;
 Thu, 29 Aug 2019 04:35:10 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id n10sm2183349pgv.67.2019.08.29.04.35.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:10 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 07/44] arm64: uaccess: Prevent speculative use
 of the current addr_limit
Date: Thu, 29 Aug 2019 17:03:52 +0530
Message-Id: <dbe69b13f77052abf5d342b2775b1ebdbcce241a.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043512_095709_0B5C70C0 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit c2f0ad4fc089cff81cef6a13d04b399980ecbfcc upstream.

A mispredicted conditional call to set_fs could result in the wrong
addr_limit being forwarded under speculation to a subsequent access_ok
check, potentially forming part of a spectre-v1 attack using uaccess
routines.

This patch prevents this forwarding from taking place, but putting heavy
barriers in set_fs after writing the addr_limit.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 75363d723262..fc11c50af558 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -62,6 +62,13 @@ extern int fixup_exception(struct pt_regs *regs);
 static inline void set_fs(mm_segment_t fs)
 {
 	current_thread_info()->addr_limit = fs;
+
+	/*
+	 * Prevent a mispredicted conditional call to set_fs from forwarding
+	 * the wrong address limit to access_ok under speculation.
+	 */
+	dsb(nsh);
+	isb();
 }
 
 #define segment_eq(a, b)	((a) == (b))
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
