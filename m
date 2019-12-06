Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF1111593D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xm8cYk0AEQziUzfEfo/gQ4z1mTVf8SAcsGxtDNIeVSM=; b=VaKwgp4smAstQh
	Sj5yw9G79/hul8+ahBvryyrThKjIAjXdXRPWwMZaVnWPQNbfIDnVU99yje3PBnKKvK0gcPR4mC4f3
	r/wcJuDAfr7uV820LoMZBXs/KQAOdBWq2y/B0aUhgvKH7mf+Iv2mPbx63WndZE8qJUoYyP7b5NGZC
	rvlcja1LyyDljXnlfop6gCnt5KqxZsBhtK53ro+zEH+qGSIQc82RteckpSmtb8daWhNoGrXcwHx8O
	MCSPidHCMGQTr1FC0Q1Fggl2kcGGh9OeWvONWPNx0G/OVDzWiIu/RUdF6S4q/jLdrogUyyrCB37UN
	4HdY6NoLWn7rsLriG8Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLtm-0001I5-VX; Fri, 06 Dec 2019 22:16:30 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLre-0006gL-LO
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:20 +0000
Received: by mail-pl1-x64a.google.com with SMTP id p11so3259436plo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=l4zxu+Ve1HL3tnwJkQPbvyP6wBLrUpssPL9/jgnN43M=;
 b=Ndn1mcggyHBtKAX2XvpEyO1cvzn5t5Rt5EL74f5oQNI8xON9HZdOIOpGfCHheh4ROb
 ZMN247KbIgaMPUDc6e3RJ7DYNG8PST7u+oWWP+k1N+jSEe2J/d2Hj+oq/JPjyElDDN0s
 1bajoDV+ePEiqhlZBkx0JT+WTHRbNVJ9xUb/RgEkuqCSSWGQ87CELue3gJUsVkVLLj1/
 jMc9JOE96jedSwbK6Jh+owxavogPTbBQc3Lm1+HVnkCfDUu1/SEqZVkaAo5gGN3APpx7
 /ziJCrqylxkp6ltt8RGxlVAjAuQ46tyN3U7+ZPVlmKLcHn2gKg0ggIkQts840wwlTABV
 1Rpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=l4zxu+Ve1HL3tnwJkQPbvyP6wBLrUpssPL9/jgnN43M=;
 b=XE6kiGK5lTxkDeUHlDvRhBnI2lLspMG7I9KfUH5BRjNwW0v8zrQGgUbv4InGw5ey4+
 KjZMTaKog1PGNhUzlElU8yxGDPytODFWIeoTXg5PwBrM9dgiPqTBHRRMEvOg7YGwNiq8
 CaSgTlwHdE7lCMWSt6GeIJXMW0Z1erQ2sfc+96CxSHpbh9u3d+hhY4TsaT8K7iQRnePY
 DSvZEs4x3Bu89qmlFZDnw3BbjhbB9d7LS5eWT6Aiw2nroKLWPzYnZzkMa3TWSpNDicG6
 AQSALjBsWynpOTgG6gBYvic0Zsa+yQb3qUqwI4iElZwfjRmJ1ZfiNpOn+hW8br+g/X0E
 tKZw==
X-Gm-Message-State: APjAAAWvZ4B/fAsuvRpl9LIPytNm5KPnzVxsMJj26F/+wL3L0t7uGEV0
 sN/uV98+o51xabs77FTYYtoDrmnHgZ9wg8OFbUU=
X-Google-Smtp-Source: APXvYqxNGRCIoJl/pi6uCzgUEQ/oTKWPk8JXk9O2ag4WW88WJwvi2rvTurqocnD02MdVkQxGa8htdlPNVJwyO2G3YuU=
X-Received: by 2002:a65:4345:: with SMTP id k5mr6095564pgq.252.1575670456528; 
 Fri, 06 Dec 2019 14:14:16 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:44 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 08/15] arm64: disable function graph tracing with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141418_721018_5827DD04 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable the graph tracer when SCS is
enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..49e5f94ff4af 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -149,7 +149,7 @@ config ARM64
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_ERROR_INJECTION
-	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING
-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
