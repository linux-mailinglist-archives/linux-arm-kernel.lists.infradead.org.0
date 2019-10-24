Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A8CE3FC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w96oPGGAAeePUF7/8oG39AAMqF/CntPhON17rYNmy58=; b=JYMNQj7uLTHDL7
	yV+CWDVVsYWxpisg9Ye5iOQj69/OjEvfDmdygTBSX6qeq2AAg991eAhkp/uwputCYuYjJS1KCW0mq
	UhlcBCZUUUrCx+HpMuJ6MIho9YKx9C1wUOW8rUMsd8WwLWEJux7X5ZdNdD5TZSKsLAwihp4m3ptxZ
	3Jb2eSMCV00DT/rVonsU0t+AYifLvVsl1VPhbYUpcYQR5q9HwsypHkkarjYvW/1d+96lee2igm9p0
	Y+gOYcUnOOcxadu1C6tBGcr16Yaxqtzoeo6nNyTdijLk7KPqqZb2VWnJD/kBFjDqR3r6SnhE8vLQJ
	6U4k+pctGRPNKbtl2eqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm2F-0007jV-8C; Thu, 24 Oct 2019 22:56:51 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNly8-0002ym-4s
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:37 +0000
Received: by mail-pf1-x44a.google.com with SMTP id l20so338474pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=1o2AK/x7KnetiIYq4sD6lyk+Z1PFoM7PTIwarlqCwx8=;
 b=KnquzFopxhgUh+yJfoei8gVVx1UFevR3Wi9RJ0Dct5s/wjoLo0UIULHJ52iyDlFB6P
 94/Io21URIBdRGDxFS0tbpT8pf9wFw8CXp+hb35OeyzhyhJZzuNbeeXwAhpUtwNbkNqL
 edchxQirUe1MwQD/Bh4qSgXOeqnChy0v7mDVdemPsERGoJorUBOTSCiz1vXHX3iTQXqK
 L/AQoYVVPSbkYTN+kSNfz4S5Cfd9VFTM/5mH+ilYFDv/qrO8wemOh+JMQ//CnpweWdoe
 mgXlVK8nsRV8k399Qz5bXX+5b7BlTlHNqA1J8uDhWD+EG7ALlgdLoLxjV63C4rvVMaoN
 Kpyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=1o2AK/x7KnetiIYq4sD6lyk+Z1PFoM7PTIwarlqCwx8=;
 b=O0ymeM9SaoxhUrItlcFkcNtNMEuHY6GLwlBq7VWi+UwDn0BF1yZcS03nJCefkibfzg
 AuLBL+HEAIGX8SXPrJnH86PsWHNsQd4miArRKbhDyTUJQlRSkhNzvsmILa9CxBFdNT0V
 +SfB5yPJhZb4g+0dPJ0WHnBCgImP3XilWXiEX4fUDRRi7VosFvWx9vTezrcvKljp8DGS
 k0YglWrmNbKfqMhwUE9HcB6aPvhPrWtXaFKRFcHKTUJ16kwqYGyz1SbE9zTT/YQTxwF4
 8FqSCey8wPlggJvnWxXloiAKQt5RK6tUGlYJ1pRtgMgTRs/Cy9h6dzWZvDrJ0BdB+wJn
 Fxfg==
X-Gm-Message-State: APjAAAVODiSVjLsdkIt2c83lKgcBL2/jDfSAOT1sa1EOCgkprZ1TfYCf
 zogYcL8DBRNHjZvrmxZcb9VlivTG9HOWFvmfi3I=
X-Google-Smtp-Source: APXvYqxqUYVuoLyhOB6Va7uYpgm1rgX3n1dq9Gi5p5wkBMwq0WVn5KMyKDwxuEEfjT/w/yrqMmcBrDqFtfNYzjT3hHU=
X-Received: by 2002:a63:3c19:: with SMTP id j25mr558800pga.12.1571957554655;
 Thu, 24 Oct 2019 15:52:34 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:31 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 16/17] arm64: disable SCS for hypervisor code
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155236_213380_20255357 
X-CRM114-Status: UNSURE (   9.22  )
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..8289ea086e5e 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+ORIG_CFLAGS := $(KBUILD_CFLAGS)
+KBUILD_CFLAGS = $(subst $(CC_FLAGS_SCS),,$(ORIG_CFLAGS))
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
