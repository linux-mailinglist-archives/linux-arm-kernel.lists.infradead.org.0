Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7A7E3FBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lz5hodT3HIO2J/nP+ah70q0QmjTG77KujUDEREY8bCE=; b=WtU+2i1B6jHfre
	NWNDAyc3rGPR65Nw2SEYbaugPHkgZjj504GT/04zIxbBYyF7r7i2SaLXo1GyVpjE8LZuo/luAxuP4
	E6qESBEDgdw793bD5FsgNbKmAbTnRwMXPj47uuYYIMQ/uHlJ2D4zOulrBQ2b8KVWAeZPP6R3oAhja
	BVPVvu0Rh4wIWzZsdOafEjYxhbjwjnUsMRTcB78cQloHxvABvTM6JXR+pKhN0AqqWaHK4iv2VPHt0
	LLFYcNgVjZE5wbbj4ix4rPhd0JnRFMKSZsQXAHJcVOHLD088OcBqWzyEItPE5kYTWl4VoUQk4C9gV
	dc4cQcMNPg9sZomhK19w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm0I-0004ac-8D; Thu, 24 Oct 2019 22:54:50 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlxl-0002cG-3P
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:14 +0000
Received: by mail-qk1-x749.google.com with SMTP id b3so392101qkh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=mYL9Vajfp90RBhmOr5x+royOTK5ijTSQrnKKnKdSwP8=;
 b=h7CmDroHNc2GUxa+g8sWKLD1CcV9gP1uFZesaZzVHnU2a/VBAGDrWFnqCRU+m5Vbxp
 eaGC73Zpw9RZWybSnsktpUOkuEDcpbZIwlHpDgN79dPEQKA6imXqfphOHV6fZIX1vhay
 UCpiNG3JtiEVtrMytjk/nHqhnqy0gmdjuwm2NOkx0ncwhVH/+Zpkk8+VEcnFqvyBPvs2
 m5wks6dUtk7GMFS4ou0w6XEB2b6UOzqqnC4RoG6rt3wfmnkP2N6JtRALXiO9ySr4Fq8U
 CorUFaTzeYq9F1zwhAtdXHWC+48gHjKj20BQ918yQIZSbJoZWQzd8WGDJiFqjX+ZtINR
 p1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=mYL9Vajfp90RBhmOr5x+royOTK5ijTSQrnKKnKdSwP8=;
 b=HiRozkqZ3pAEDeOpOfszgWM4PCT3LMvXkdK84LwS2vie5zUa5JMVsnUbbjm6Tz815U
 0qIZBhk8u9B+ssItzxRByFPldjwnS1qWA+eXHxNSayBmNT0vROPqGFdQwJ/TmNBgowps
 wjMd+n5SgWfWaVUG3ZR+LWdPTZYBsScpybAxEE8WE2cf6T/07WsmFWcJgoLVXD1QoNel
 QxHie4L7OzXMTYONDpAkFR9MfcxwRFMEOUj9X8z851MHkOEhHQ9FdQjq9zJ9wk5vh1UV
 VRu1MWni41p9qPOKB2vOqnizFVz2izp8w8M4f4tkJXdraF+0OFggRA/c2VicW6jklZmi
 29bQ==
X-Gm-Message-State: APjAAAXh9sQXZSxFotLt1f7ML8rUuu0EJdbRM8eiKL2+k8ezqln6vr2F
 4NlfCiDz1bAYZPJQsqDNPfGxSUQCcp/7zJijM5E=
X-Google-Smtp-Source: APXvYqyjPZYDLgJTlGq99OGbhTAPtQvVAb9tamVCQRwQTsZBBJQIlLhZeafbs0GYaiDEFKiGX8NWZ+1DbuMz+1REocU=
X-Received: by 2002:ae9:e885:: with SMTP id a127mr114159qkg.427.1571957529972; 
 Thu, 24 Oct 2019 15:52:09 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:24 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 09/17] arm64: disable function graph tracing with SCS
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155213_252594_970509F1 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
modified in ftrace_graph_caller and prepare_ftrace_return to redirect
control flow to ftrace_return_to_handler. This is incompatible with
SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..8cda176dad9a 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -148,7 +148,7 @@ config ARM64
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_ERROR_INJECTION
-	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
