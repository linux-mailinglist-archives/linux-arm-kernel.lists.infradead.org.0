Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DC62A108
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 00:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2zcTjhigUPajMqkXjzjHX7LNwTAqjc3lAcYAonSOtI=; b=l9gyKB8fLF48F8
	irVECc0sdRwqFWfPcy8b//X4XtsXwzQUbxG55xwe66lzgjL5DT2UEThHZqPOs2yRW9TipUsAi4y9S
	Ql8Qx82Oq3Bia8nyImbO6/fX+WInusdBQ/7ezIey+tddaXNO1F5KH1RtYFo3zeIlaXP1yJUhZXVmZ
	M2DgRyc2bgylyxymMRz0+hOynapdG/cEdLpyEibYxkSR5Xq4OohMNIXlZcharJYs2d/OFtv1JS6cK
	/DgkJPS994Q7Kr6uRaHdyIdZfzTazsMEJNZ0S+Vjtav0rvAyfT6h8SB/zkbfZKLBvn4RXjoOBxjO1
	fT/QvIsEe+8srCkBFxBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIPl-0002WP-7G; Fri, 24 May 2019 22:11:49 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIPQ-0002Gb-GE
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 22:11:29 +0000
Received: by mail-pg1-x549.google.com with SMTP id j26so5099495pgj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 15:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=KIojoAmBE/BSnpEvXcodRJ0tgdeRBs6mJX1gQekfIhA=;
 b=Q5NF2enZHYLf+khWG7iyaIncDe+9M501ZKT4rE2UiUAeFpYGD7WgEK66eMZvTUH7Fm
 NFjo29hBJwD8aQ17sgD2jVdSTVQviNfFyuaYdeHxoTd9CLowxCNXxIz2cy+nwUQiEm3n
 uPGp3zdu44K5gxoq6OI2Ne54lRPHL/OQbkVi7SzpOfZpjg/G2s5DvIObUyPgQguVwN5w
 4kirThYDoas6ku5+JgEDrJ9eG1xjIM48ovyNjRUSP+ql++kE6VXnH9k3lBvyvInJin6s
 3t0d1YsZXzeFpMdHWgOQfeW8d9YqFB/slsOyowBXtIK0kbY1f55NODRjri7AT9XVl9Lc
 DA7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=KIojoAmBE/BSnpEvXcodRJ0tgdeRBs6mJX1gQekfIhA=;
 b=JRbbq20Fv1261FJQ7K+hqrvKBwVSXWStNUaw+olrIAWhkWX87p7sabivLVfVbTPD8e
 kPV20nVfMnQQM5GFPxhljHWAv+vWwi3xNijFAGt3b1TrS4W2lG2NTusaLqDWyn03/Lng
 nYqPXuLEN5BINMvhojrO14cdutRTAdkCc0vkajzJPAYyKUzyN+6l5BdC4sCBmyJ0IRKS
 /z9mFrKaOGsPzdg1qwkSM6hBYhtZpq5JqpexZLb0XxQKJv2xzApeO/ARSr6kBw+7RYoK
 xsVwJGhUYjhdceC8CxiG7QY0egj6VoTAIeny2oAmoggwbnUCLETjeHpgVALtpz4TMHp6
 smFA==
X-Gm-Message-State: APjAAAWO/zEzjtU8hM3eGM0V0AsPWt01mmsyy6p0eHd/g0jP8zf9PXVP
 jsLZ05QoWWi2ubGSGMFwUhrPZdMpQolnpGPXsHA=
X-Google-Smtp-Source: APXvYqyzCxYDZAxNhJ5uLrFZIu9zCTdanj30bKrE/Us1YXpWQ3S67zBs3LYPNicVI1QucfjHTqn4fWw8yWBsrcZD/ZE=
X-Received: by 2002:a63:a1f:: with SMTP id 31mr91586268pgk.233.1558735885221; 
 Fri, 24 May 2019 15:11:25 -0700 (PDT)
Date: Fri, 24 May 2019 15:11:16 -0700
In-Reply-To: <20190524221118.177548-1-samitolvanen@google.com>
Message-Id: <20190524221118.177548-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20190524221118.177548-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
Subject: [PATCH v3 1/3] arm64: fix syscall_fn_t type
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_151128_539955_CAF6ABF5 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Syscall wrappers in <asm/syscall_wrapper.h> use const struct pt_regs *
as the argument type. Use const in syscall_fn_t as well to fix indirect
call type mismatches with Control-Flow Integrity checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/syscall.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/syscall.h b/arch/arm64/include/asm/syscall.h
index a65167f5cded8..e8bcb9ecede9b 100644
--- a/arch/arm64/include/asm/syscall.h
+++ b/arch/arm64/include/asm/syscall.h
@@ -20,7 +20,7 @@
 #include <linux/compat.h>
 #include <linux/err.h>
 
-typedef long (*syscall_fn_t)(struct pt_regs *regs);
+typedef long (*syscall_fn_t)(const struct pt_regs *regs);
 
 extern const syscall_fn_t sys_call_table[];
 
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
