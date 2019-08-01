Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA1E7D783
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvduuFibURvXSSVz5CXmEiI7sSqas1PjCRMjRIM+K/0=; b=Gy6XGGwQwKrKwA
	fr1SupGmqX4DX1CRPeskSR8RK9uNjXZ/s8SE0efY6com8MdwxwtMw8viTFbxz6hbF2fS+XNDba6aK
	nzyRoVtBUBnRFw8EF+l4FPj5gpmrXwStm60l9yKXMFYoLFRhxKz5Q19uxEPYdZ/z7STDXo1UkbtsP
	pqeY512jDxVUk8VQyFyyJxq7QAHnroUsDRGXVuDf/KBcFx2H+9tEP0fxAlKdhxCXEJi2xGhay/o4I
	dXOWhcLKPrWkzf/Q/k71zVYRkQDfGMvxYeU2sfajNl8gkrnvqBWprAEL6Qb0QWMjxolyPKNu9lLfa
	QBT3ZpCH7xbdIydDYsdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6PL-0001yr-FT; Thu, 01 Aug 2019 08:25:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KW-0002vh-6f
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so33739811pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+tEIHvT2/jri72b3g9sp066ia6oUWHcxPpBllqXMUPw=;
 b=zstarAAhY7wWmMaGY6D6L8D4JUjQWl1LpQDoGnw+W3hdCIJFeJzHRMBiPHafBsJN9l
 eZzvWMX/PZj6qV0aTkXMvuu43Wh3x673EnQCOEqPk197LcpNJFabikbGb65LoN4kOhsx
 WP8ba6yc2hAueRfZnHaWcCbYiVJiL13J4NUyBdoWUvmrtKDhtXrlXNWbiiOfVNIyZM1y
 /vNp/Yte3Jw4v6bpd1KDd53erL5yT9SmyfuxiqQAeLn/V5g/OTR1qSREfhWIZH/aBV/k
 qU8xqXAtcEchEEN/j5oB4C/dILnMiiNADOiXy9RhZkxWQGvOMs8ISwdONHMl0lypJqzS
 V+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+tEIHvT2/jri72b3g9sp066ia6oUWHcxPpBllqXMUPw=;
 b=VZafZr8n0iNxFon1WzqRnHeXVKXLMg/cU3t8a0l9NuBSOcnY4V8A8QSGLq9N1nWP/Y
 eH/wZ10U7y5YSuhzD7NT+o547viXkzeP9eoNP35n0TjD9TAMOE4GMwsb7kLr6dI9U9ZF
 SwHePFXs5/dmFw2UH4rGAL6wHiiSHyzcnxaM1C9pC2zqF8pjnhdNjQrRT5VrFGbdBEc9
 feQMcQe4KxfrEqQhFdwrNhihDbmDz/DBdouGdswNTbVG0iNEqPtf5dvy88tUJYamT57w
 zCBK0oi/kxoW7euvpLIB3QMNNL6V3rKhk7aYqrMazCDqNarK71B2kDihdl0Vzir+hde+
 sDuQ==
X-Gm-Message-State: APjAAAW1sSj6oAcYDAG7yKVxXBJsG66I/5T/nuVmONw544rG0kv1iSju
 nn7Qbu5HRLzIQHTvKIDE/pqpyg==
X-Google-Smtp-Source: APXvYqxf8BTnCquHpLYCvNUaNkn8x4u4LXcuJcRGMZOEAmDPdYlWD3TQ4h+IWrvNS6AN8KeE4afqWw==
X-Received: by 2002:a17:90a:8c06:: with SMTP id
 a6mr7401352pjo.45.1564647655514; 
 Thu, 01 Aug 2019 01:20:55 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 5sm2004064pgh.93.2019.08.01.01.20.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:55 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 31/47] ARM: 8793/1: signal: replace
 __put_user_error with __put_user
Date: Thu,  1 Aug 2019 13:46:15 +0530
Message-Id: <8aaea1bd07c7c54db7efc732ac3a041c32d3bb4a.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012056_371808_89134DDD 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

Commit 18ea66bd6e7a95bdc598223d72757190916af28b upstream.

With Spectre-v1.1 mitigations, __put_user_error is pointless. In an attempt
to remove it, replace its references in frame setups with __put_user.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kernel/signal.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
index 6f0bd90f6d93..4a4ab72d27ba 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -301,7 +301,7 @@ setup_sigframe(struct sigframe __user *sf, struct pt_regs *regs, sigset_t *set)
 	if (err == 0)
 		err |= preserve_vfp_context(&aux->vfp);
 #endif
-	__put_user_error(0, &aux->end_magic, err);
+	err |= __put_user(0, &aux->end_magic);
 
 	return err;
 }
@@ -433,7 +433,7 @@ setup_frame(struct ksignal *ksig, sigset_t *set, struct pt_regs *regs)
 	/*
 	 * Set uc.uc_flags to a value which sc.trap_no would never have.
 	 */
-	__put_user_error(0x5ac3c35a, &frame->uc.uc_flags, err);
+	err = __put_user(0x5ac3c35a, &frame->uc.uc_flags);
 
 	err |= setup_sigframe(frame, regs, set);
 	if (err == 0)
@@ -453,8 +453,8 @@ setup_rt_frame(struct ksignal *ksig, sigset_t *set, struct pt_regs *regs)
 
 	err |= copy_siginfo_to_user(&frame->info, &ksig->info);
 
-	__put_user_error(0, &frame->sig.uc.uc_flags, err);
-	__put_user_error(NULL, &frame->sig.uc.uc_link, err);
+	err |= __put_user(0, &frame->sig.uc.uc_flags);
+	err |= __put_user(NULL, &frame->sig.uc.uc_link);
 
 	err |= __save_altstack(&frame->sig.uc.uc_stack, regs->ARM_sp);
 	err |= setup_sigframe(&frame->sig, regs, set);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
