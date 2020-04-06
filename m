Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B3219FAA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTz8WpCuIRMerKEw/1VTwcOhlj3N9Lgf08vlDzqnW0Y=; b=Y6ZwIMcU582uJe
	gJDGdM1AZKYNRWFbGn5CGF6+7LFnwnFrac+CRjvjQA9EOc16ePC1uUoXZand7nFXrhx+ArbSloA/L
	IL9xKbsmSA68zVikObocUtDXAGJ6UHdCQ7r/oRG9b74a684vRB+7Nj5LyVRY7E5xCwLdJVcm7it+6
	AjMpybnnh+UoHpTw0dl+u5YVaghBLIchIyHFKqvDAIg/9Nsysi6hcchg/EXHD/W2lOjKmZawzUVqE
	Fbdf7Hyoi4phy4tA0+upAbQW62CbiE5tpjx8pTUXmdtjeDXWfMTnJAGHK9RmZnRapMQntuYggSOLe
	xmIPYvl8YcRnEfKsojWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUrJ-0006IC-1C; Mon, 06 Apr 2020 16:44:25 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUp0-0004Kc-Il
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:42:04 +0000
Received: by mail-pl1-x649.google.com with SMTP id w16so117795plq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=og4BfgkxEdyP0L7K3K2SXksO/AChbKUXMouXqYPSA00=;
 b=sFTilaimS0olRUWr52P6NjZp8iOs10uO0Z0JxM5Uuc4SjrkX4akRPhGMMko6yn6Vjl
 ws3NQWWVJtJ3ueU7u0ytNYHOplXfphbPsUfJrc6hmnfKIl9LG70ErBmGNeEAaScsBIsa
 8pzQNL6ueTZCTceiNxzsBsZ4KCIrIv1gusx7ObuDw8OyHYxmtcP4Mhcku3xGZumdZOoc
 822uP7JCGsr7Bd/cARY+mTanl8Xs4pkuavmztPyJ4QiMT2w19+ROUOHp2IOOfM+O1hNX
 7nYMkWpEpPknWEovRK6lAkDgfAOYFuYN4lNw2My6u1IqRuL++rFvl2FIx6OjAvMIwUcN
 E4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=og4BfgkxEdyP0L7K3K2SXksO/AChbKUXMouXqYPSA00=;
 b=f6sS7/ylAmtS7q5ai2J8Ocf2yFUja2w+9JV5JAebFHX12sq/86iUuXJrTwm0ff5iOM
 urg3L1VlpQ30kIlMk3wT0MLYHkOQeDc3yBXfn2PrZwbxupyjy0LTiwB4Oqegs/5ms32E
 EGRQ4A4EmnYn7QQTrCbPz6UVjar2PxZZWxOzK9Sbl3Dl5h3L9cPsbwb0JFfXqxIngut7
 2C1bQ+45aqZiMAu/8iU0Nrm3+/9bGNMe1gKqa2J/Zc3fh0uRGF8mLLDM+Je/zQjPZ9lG
 uM7W6ED5DoR+yZT1P4m/EvTHmxToQbxLxvNl9Nv4E6Tu3E3rQCgIJKhlHYbKbAX0EPIJ
 PRvw==
X-Gm-Message-State: AGi0Pub7n4LUVB/ESXaTVo7swlyO/3dymTbCI3c4IUBP6S4k4zizHq4a
 xnf+4PI67ZJk8jJ+cmpx6NCKlD4Y+/wcgU4fQ/4=
X-Google-Smtp-Source: APiQypJDVItbvdsaAcfKFSSNsMelQNBO6U0MvHJemAJCSTnqHm4EIsriO2lzZR7x/iXYclFFASObx3hqbCBuu2Gzn3g=
X-Received: by 2002:a63:c504:: with SMTP id f4mr1623499pgd.292.1586191321112; 
 Mon, 06 Apr 2020 09:42:01 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:18 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 09/12] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094202_668315_CB3AE146 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
