Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D0EB535
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:48:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHSFOvdAH1Ths5DHzxhe18oWPgt14g/6m8U6cCYbvv0=; b=s3tftVthpsUd9v
	H4T7n45paq0wQE30Zdk25nZ0oKJJb/xmfIPbfZCHkcF+SZ/SYmV7xCdgjhXR0W9Xs+OB1d0mv6yVC
	B6RZ1gu+LWcWXoreKSAuDOPW5VVTfCRnhYE24v/A0Sf1SpiVm01GSXtmWYR+Y5wgPJD8QfjKRhl01
	VnJYVDvTWf8RMtM8LYuhFfFa762uJ35kzQOrMLoPtzAKaz5McW8kbyfdhzkcmH7NWcDW63vfwQN0d
	bIEGll3qZ9zhAzmwSfRxKej62moa3TELqlh4sCWxukxpXXHl5n1jV6ouaxwFsNuto0PXxUigFRGVu
	vN5OGIvkdWylIwskMXvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDcf-0007xL-AG; Thu, 31 Oct 2019 16:48:33 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDb6-0006py-4l
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:46:57 +0000
Received: by mail-pf1-x449.google.com with SMTP id d126so5011822pfd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=aHKOoX9zJAla15qSwjd99c+7iNT/pdKXHfBAM0TSbiA=;
 b=DwFMzJZ+kUlOAWN2GvdIrb0spmd3RCFaXXrjuk+n93RrGiHVTkKIE8QVClddg7kBDe
 7IeZak8mKqDEsiR3pvG5D58rS+2OmcCl2VoAJ8fblz+yYSO2P8d24syfdwx60D462Dgh
 XCr3cWY+P9lvUhF8i41PfwSmLeFuaKf2xbTVnm6vK5gGs924c4E8sqG7J+640Cc4jSv1
 COp3Hpg8QTv21PL1iF/DfTs8X6WtTvBta9g6udg3ODicYi1TP2epIsbDEj+VXTpASGOq
 p/A+gt82BwR62uCobShpcPv4dkr4CW0qj8ti60vpOnCzk1mJe/Au4gEO3Ke231E6vBr6
 8IJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=aHKOoX9zJAla15qSwjd99c+7iNT/pdKXHfBAM0TSbiA=;
 b=jOC4b7Q91MroE29+1bZVTbehYbRMp3bejA4kjKj+KyAgun7LAkXbt8s1uo0OVfARch
 ba3gyrjgi43+Z3eOsfOjpAPhW+TJZ5kjZQM+KxO+y++feZOpJGePfwGxiBbi4AM/qrtq
 tDtatpLCI0qAMv2H0Md542sADRojjUlWGln3qYVYwb4wo7WVipXUkoBiAoVyvCqnLb7k
 Wp4SghqFzjjiZi6CrTo36bX7FogM/3gWiGdZLeAqm5DyI5vXhNo+4tmy6ourSnn18z1H
 6mkQEJyklXn42rk8w3mcFVrqA6FjkFxlNzVC9ZU6dRMO9KWucngohqrniI6x+/kosTYm
 sVMA==
X-Gm-Message-State: APjAAAX7pk14zDrFwMuZxl3ZH4gWRNaIJTPh5zYNSDO+p9XoPGkyxjOj
 DhRUqMTkcgEL45ttwbgdBL5xw6I9UJgV/jOE54A=
X-Google-Smtp-Source: APXvYqzWKFl/JealEA2qBs8OC840r89CQ5kizTD5lUFGsTusSG0GdYwJSJp9KVbGkb+yd42ZvImlbPdCOavSDAkzBMQ=
X-Received: by 2002:a63:1904:: with SMTP id z4mr7825364pgl.413.1572540414204; 
 Thu, 31 Oct 2019 09:46:54 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:24 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094656_377329_27D95F95 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
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
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
