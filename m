Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BD6F0AC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 01:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=web2MIqdaQaZlmbioBDkjzWbHxP3CjuG09uVLcrnlVY=; b=E6oNdT2Z4tmz+4
	o3Yf4HkO/zxzy/FBErkk2LbOZooRowXWbXHbBce4khoMFciW6GQhbg2CPKC0v2Ef38ecImgdGpvKi
	uEWxaVJR/+u9GimDRWGjk/nLSyKIYncz7QP2lr57OBH8ANNgZlY9iW4iUEyet6cecACsCxzwvCLRG
	YEaIN7mWr4gy12WHG4ByJhyqvbTi6QkM6E6s76XTQ7PvTJWLNZx7UeZ3M8GKPyzOr4exxeKGlZPW4
	Ba1B5rWof7JxOYDNZNOzEjZJ8sha+RkRosQG+/W1fqqrKD4o9eeEcaRegEzFH/fvkbr/QGoa93+f1
	GIBMdaXoWhpAhE08pdkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8k9-0002gK-3w; Wed, 06 Nov 2019 00:00:13 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gw-0008ET-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:56 +0000
Received: by mail-pg1-x549.google.com with SMTP id b14so16303732pgm.22
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=SBPjjox/K0nQBp9p/UReaX06mOCKZA5VG5oKrHSRp3U=;
 b=p/+qormWzpAk/hn6fTIAq1GD6e0WQRag5NF7NjqAhGo5V+9tCeqWxMigwtXWt/lGNp
 q9buszXWKYVWoziPQLZS51iBSuLA1nUdgVLAfYt05cUtAWebiilSqti+DjDN8Q0UKshx
 57MAdb8441Kh4kMQAc47B2g6uSc/jktWoSENQoAO1SfBArC0JfH71OE1ZC9X88wFzf7D
 1zKwIMNiGpyq7Ox2PdBV9bj7qpbfLeuEOQjRxH+b5fzmSdlQBlgmJqQb6wUCW+t/kkJd
 W22heVjnv5z8zfiAr2e8BVc/Krx9f9PGp3snmyjgH+VW1d5sU1rFDMtHZ42LB6knm6uR
 i+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=SBPjjox/K0nQBp9p/UReaX06mOCKZA5VG5oKrHSRp3U=;
 b=f7DcQmiqtqUFrJ14jjkBNR7st1xcTOhLTTfadtFchM10EHHZSp94Ru70H7Xqm1fmXM
 vaH5I/ltdX8GS6I3mATwSry0BvRbEQju0U0se+7KEXA3Avg8PbliFL8oQddnNy8TduMz
 U/fUnD9AF9t0rL3W7jtizgF/YmMnkvb6v5gPOFoosKr8EEKvHDPXhOZ6NViOtw/WLAd2
 X76ZxPpGgVJvOqscYao/bqRA+GHhzWr+cC7QJ8/Mkc7KhdZe/1LmAf3PqDbBvUTgSbnX
 qI3+8XaxF+mj3bss93AovOUta29xSYtzaX6r+z2rBdl5ZFCecsEygpwosF48BpimMgp7
 tOGA==
X-Gm-Message-State: APjAAAXxLO/WRI9z3X4wJizIMMjqJwxsXq6FVSXD4GSYaD97xyMZoUCw
 Q6qYSjSIVCTZmflKIAOrmO2CsNDrod5f9wPdJ7A=
X-Google-Smtp-Source: APXvYqwMtHOZMoB23ssF7JNCZzaMw12LgXJO1Cx/fyHqurm8wqZn755XqIGbFFeB1mv3cEwMcIBCpgy6byzfZbrNKqg=
X-Received: by 2002:a63:6483:: with SMTP id y125mr5619534pgb.444.1572998212169; 
 Tue, 05 Nov 2019 15:56:52 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:07 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 13/14] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155654_370569_854980E7 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Filter out CC_FLAGS_SCS for code that runs at a different exception
level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..17ea3da325e9 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+# remove the SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
