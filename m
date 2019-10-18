Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ED7DCA9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XW8UPCp6M127uwbHVzrAy86afaEooYchPbulTAn0aBk=; b=b8vRADGcMPkNaA
	xMTgSS45Rxpz7t+95vv3tVIk72BIAzkUBHTx7V8MbrHF0QGHnLKKuj8yCWziCtgtcJQIAUF0hS7Bu
	N21bQwLx8lBn6VgxTw9c4zoAJ5KtoMUhNF4pZYj8CRo2sDKgGrJYWZImXqOpWUCoDYBR5DnvfAktn
	/1d8zJqO0WGPnSjX+YuAnknuuzVSdD/hGWXfiJ3Ql3pNTaBe2z1y3phcqak43n5hmbMLL1W1lCEUj
	01iLzDW+YYwOYZuLZuvPzKuT8J9cmtwSug3sFl+IHzKnDHDR/IZAPasRrAsNvxQPhY0KiFajhVSj4
	6+wtymR/PWY4u1oKeXLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUtB-0004JM-Ue; Fri, 18 Oct 2019 16:14:05 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqR-0001pr-3W
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:16 +0000
Received: by mail-pf1-x44a.google.com with SMTP id 194so4984215pfu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xX5gUTsoboVAmCrU5x0kxTyEAN1I1znyOrkoj+71V3E=;
 b=cCT9hs91spgek13wGsP9y0ttC9ve4IQ6YalGlMpwduvwu42Woqshf/GsDukku4Rd7z
 LzngBaQqis4pXbheJCLuLc/BuznaLuuhhZ0eQYxuqnnHcZIUFUvXDs57h723E1aVsqCN
 hDJ9NJVmzOzxHezv4iMvDqkeOoKw8JtHeSXKma4kAFNaEABY3mU6axzTP9w4Lq+UPCd3
 3Ot78e0aaFfEd1x8s4TQXDNAkM6/+cID/LMqGDex4NuLmCmij2J8d1teYJAiH7hir7mz
 bJcHXcpZNWl2UPJrt20n+Cj5d8KKW3//pqk3cC5O9Pz9D8EOb1EO2oSOjKTQQUWNt+am
 FQTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xX5gUTsoboVAmCrU5x0kxTyEAN1I1znyOrkoj+71V3E=;
 b=qZBWz+91wC8CcbaSvv24JQZHzym3GtHvUPHuII+tqVdx7vNJFGxeTyXQbf6+pd3sNR
 1i+SpIOvd06zwj0K2yOcFD+cgH5cLXAOm5K44mz+7s3Y+wOVoHJoRXdDhf/Ujq1CamPg
 NtXDSnrnaV3pYuPi2Ts9LNKfaZk14fvpv6WhuP+YHZrqkQogGzct+5KGTr6RLqVSTNXP
 M6ljp6qp6ZKbgFN1j4gsp/Y1a9LTJxw1O6jjm7+vEPXWH9PNMVIN9xLp2tHnuyuIgiXG
 NT35JQIoxnmvy9Pn7XBFXrsXHxNr6D1JNchDGmuG2RRVcLzGU9QTzzQMJrTjC76zBrnB
 32Ng==
X-Gm-Message-State: APjAAAXKwPf4y62UwhDRQE+VHGuH30IZsnqdrG+AcpMVnc51WItnpeKJ
 +8zMWnsh9DkJaecgED04y+sQXL96cQ3xhR96v0w=
X-Google-Smtp-Source: APXvYqxwiguloHdhaLpo4FBp0WjObBKG43Zxu/Qf9Jmum2rfBGkEmvxrlieIAShHEtrTW/4mJFtXISqp4bSzlzbpPKY=
X-Received: by 2002:a63:e148:: with SMTP id h8mr10684150pgk.297.1571415072880; 
 Fri, 18 Oct 2019 09:11:12 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:24 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 09/18] trace: disable function graph tracing with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091115_156712_DD0232F6 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
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
return address protection.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/trace/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
index e08527f50d2a..b7e5e3bfa0f4 100644
--- a/kernel/trace/Kconfig
+++ b/kernel/trace/Kconfig
@@ -161,6 +161,7 @@ config FUNCTION_GRAPH_TRACER
 	depends on HAVE_FUNCTION_GRAPH_TRACER
 	depends on FUNCTION_TRACER
 	depends on !X86_32 || !CC_OPTIMIZE_FOR_SIZE
+	depends on ROP_PROTECTION_NONE
 	default y
 	help
 	  Enable the kernel to trace a function at both its return
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
