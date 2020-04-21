Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2221B1BC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLwTQbBwYHY6gVif6+OASDgK3I5qbny4fd5OCE4IMqM=; b=Bt77OXlpKtkhr7
	TTqXMfLO3rlpsO03ZRKvr9HiRASkpt2+8Eif0+Asp2O34bCTiXJuLV+B0GbK4ffENzpDEDk3fsAqo
	BAGYnbv3ASNNaBWt+4gDtIwXP4qHY4eZgV4UYMzdODTk48+nGq6CW4fANlGagiWXOo1O41KVEH59s
	y5gXbtNsbtgLGk+GtH4FvU1J1jR3qUkyUrftq68D8XH94hWZall/CAa7i2Nq8Kur5n9DILKE2FjbF
	nZ+3V7/W5ZDhyzXDq+LqB7y2RlNekJE8AiSzbnNHz12g7Qafh9oXiVnTIlrrNMolU7VDGxGITZVlz
	DlOwL/7+7FtKqtGHyrbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiUE-0003VK-Jv; Tue, 21 Apr 2020 02:18:10 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRV-0001E8-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:25 +0000
Received: by mail-pl1-x64a.google.com with SMTP id 7so10406027ple.19
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=SV1DVkULqNa+FuGbiBRMBHT4OnEsBDpzGAv6cWsD5ng=;
 b=e31q5D2LrF426GuLmKIN4uDuIUm2ZlLf+lRFsNEbELVTAOal8baaG14T9DuGBQz14r
 9Sto7/6FnMn7605IKHg2tf5tw7v+feFsEopk4mtmCip0yo8yDm7Sny62DxKqEH8EV614
 4cTMwKZcAj3aIykYJCFNeM2dddIQaDNfUJ6G5vsq6dSzq9a93ykfl7fWvHYOYeMBNO4G
 1AdylY/8z0uA5mBptLxCAUS/3ywEaqpAYW8Opd2HGdYzg2Ovv2fTec1epYlugUIrLtLa
 hSZOcKEYjSTr5Y6X4B5SgVnahzxKHNojuiY6qPK/Iwbq3wwfF8vt+aWPW3Ij55A/TxGv
 zh6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=SV1DVkULqNa+FuGbiBRMBHT4OnEsBDpzGAv6cWsD5ng=;
 b=iCdK5Ytvk6tjU+Ys2OqJqLyxzSE5PxBwoWpNFLWaNjcmIN89OF9gJUM7mojDlsc0a2
 doHIcJk77LpsdhLnj4QDRFFmL2AFaEVzzDnlDDe/zzTZKUntYACK637BGzKFTRJ3tph9
 wRlRRO7bkUZmvbxmhnoU4qQnsLymQxUDDhQfo5Nm79CC/ZWUnnDz9vSSgYBCoRTGhUUq
 MiB1etLJks2dC1fwY3Tiz/I1V9wFYczUt7JsPrwR6KuGMXMFEW6nr4adiVXIjG9Lpk7D
 uNYMD2A5SyG5v7eLFfXX+khTbCkEzE695ZqRZvAgzoIuSWtftcc/F9mh+Tvhqx96gse6
 oYAA==
X-Gm-Message-State: AGi0PuY6qPtpg4SSgvEnK8Und0/bptys8jeXilNFOgiO8q2jcfTNW8Nn
 gg1JRPbzKbVFgY65q9YSuWMTIvCiQpMwK6YfKS0=
X-Google-Smtp-Source: APiQypJ9tTRXTUL1zr6rmczfjnjv8aBX2IxTWUoRDjJtoqdCJcveKeh8g26L37LntO5tp4a613singP8/fZsqc3oszc=
X-Received: by 2002:a17:90a:65c5:: with SMTP id
 i5mr2797895pjs.18.1587435319203; 
 Mon, 20 Apr 2020 19:15:19 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:50 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 09/12] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_191522_559910_8C6E60EE 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..875b106c5d98 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
