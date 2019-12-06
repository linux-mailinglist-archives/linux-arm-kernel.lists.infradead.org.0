Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36133115929
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EW6xgw66JddTSO6bDDOiRnrVt3KymEPKwGfjcCQhJQ=; b=EDqOLe8T5karL2
	WX6nj3QxN4Upmfa1IFkDau/2Eu/l+/OxSL3WXrJuw7KNrkQrWg8En7kxENYVDs/GGN09iJf8Di0/R
	P4Zh58GxF7aTJqY/bWbJXPgoEEOPtfRnS7LZxheSDA/YgNaNXhH3EE792GJiyq9Vx4YrklinXqvBb
	U192ssXNXhqAJjShumyW/hZeWVut0yViafSZsji6fH92xXK2ILLYehl1kIHHlbM2dD1XtctAtF6sm
	3k/IhOM4Jo6N8PVV7c86nh0t9rYAUM7QS0q9sXe+DNQ2H49sDLKw3Cug5hKKx4bBq414dwzKEkWZN
	E9lhO9TCQlM/rfyYYkzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLsj-0000G9-A1; Fri, 06 Dec 2019 22:15:25 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLrU-0006Wt-55
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:09 +0000
Received: by mail-pf1-x44a.google.com with SMTP id q5so4815258pfh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=XVGcsXtiiPVE9a9TFllXGgGHEKcXDxSx20NO6hJScDc=;
 b=JUnATL/qYc1oxv8iBdTskfQzu3dUUjyggOYJEMcIQnnUL/Y0NRoC+SEMllJtcFOWiS
 N/ulKnmZgrhoasRLRMaSLDH6091pEOUYgXXuTdPJyA/+/zT+NjML18Xbk0q7JQJZlyWp
 6rTkEVNH+fLD7+o9KvYuKvTopFNc6WKI4uib8O/Vx3iw4Shp3SUt/TKbmahphI0HKiU4
 BPRPCXf6h87GZeFyHIHYFqSn3p3Rv69hjOpYO3XFPBCkg3Q3z4MrJ2EA56qijI8w4jiX
 NQZtE0UhN3gJbyVa0+qGFUMyTZbRuK6Bc5RytwdbEZTnrQcmzPqvaU68OoqewWa4Q8Up
 87AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=XVGcsXtiiPVE9a9TFllXGgGHEKcXDxSx20NO6hJScDc=;
 b=exBgndQc92UC21XxntZAyNS5TicrxmH8mc2HDtqIgN11bf8SBK2K3wICBQ07nZY6RS
 +lmppaOhr1HqQaphkqnodPuRDDc0KnoFeDqb6UwOgWXPDhbTevJlK7lM6wc44HFB0fnp
 yPzB1xAnnFfr2emXCv6rIRgRWwVj9ocxGD6ayPwuIIKPqs1HERe0/3ujWU8KWOTq9nss
 Z1CBdD+rNFqk41BdHGCW7yHl/h9uaLOBo/P5FehmhFp93u8Arl7RdpeR4SwC8wws8IkZ
 IxMhtrieRXIiXQeOONp1D8fJpaYVu4eEmxYcMPJN8CyuK84i6mG9ZhW2XhHaVY+oQLmM
 /ECQ==
X-Gm-Message-State: APjAAAU3ZUTrNoXd7R5F6a3yQSi46hag7rAXKG9KacrGREAzoh988SIW
 0GUri5kWftxDp+eYTWdwvSrrbnM6LJJDRPlEy2E=
X-Google-Smtp-Source: APXvYqzpc2h9jpUCodzOkaKdDJjjZM8itrSvWPNDKAcJvhYbUWMf4zn2+0r1408XQPHyy98KZt3TkfsfH2+NYjTL2w4=
X-Received: by 2002:a63:1c66:: with SMTP id c38mr5983922pgm.368.1575670446054; 
 Fri, 06 Dec 2019 14:14:06 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:40 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 04/15] arm64: kernel: avoid x18 in __cpu_soft_restart
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141408_232900_4D039B23 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: updated commit message]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/cpu-reset.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..32c7bf858dd9 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
 
-1:	mov	x18, x1				// entry
+1:	mov	x8, x1				// entry
 	mov	x0, x2				// arg0
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
-	br	x18
+	br	x8
 ENDPROC(__cpu_soft_restart)
 
 .popsection
-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
