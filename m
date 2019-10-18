Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC79DCAB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bcu04wbcdd7y38jDq1fbMzRd0GHWEsGWwKxvEnxyoAk=; b=gWTw1ej49pSg6H
	dBCreHW5aWkT3/eBC38ZbpBBiLp/HXQpaWnGAHT+6wxsY8AwFZ3N1OR5N+xQrpRwGI5T5fatcTu+8
	s425GIfhb1LcacwbVf8ZGBgdk2tTObWFBlb16Clk+q4tT1yeKaKEe06EPrv6GXQdrYcaLDTir9V05
	/9sJGzzz0UOxbZ1UKe3Q6mGv1k4QCWPC6ESYzNhsPu62fMnOs5tBWRLjNVKoYftxEqGG5UMOX5lCl
	hgrsCKSSnIrAvDKaOwPMqVAE/uZfjwhx7eEDCbLSFOKs2K1jIgjzhIypS4Y1S5LTRba1efx7Gw8aR
	I0UbDVm6681IiaIuR1Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUuo-00077G-G4; Fri, 18 Oct 2019 16:15:46 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqe-000265-Of
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:30 +0000
Received: by mail-pg1-x54a.google.com with SMTP id u4so4565401pgp.23
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=kAZH5b29Q7ARe7ApEbNubNt6T6v1C763yQTiGjc3PQk=;
 b=MU3xv8ySUWa8q2gpjX+qFLOwCKhVBxOWHnEJ3R9sBKpRssnEcrJMlv2k41DcBabefp
 YGOIRyOHtuLqhQjP/H6UeJPJ31HbWh9EpsVg0P4HVVdbNapzd4whA6CQO0jcE6HFqrZI
 pgFlyp8aklTxhdiWcaDBLc5CpmFKJZswMRP/d6udWasrZrb61oeIxbFInJG3ZOTF4sVk
 8JrRWRNQEQR/efYLvQF070upFjEKFVFMcnO8HN9mWGmqJ5+afIdNL+vr/Zp/pbDcSsCQ
 e4yhuM2R8kT/imgzLMvhUd7v/AWzMuvSo0KChcal0UxqcYxBSXGTsqlDEDweUlIG3qti
 24Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=kAZH5b29Q7ARe7ApEbNubNt6T6v1C763yQTiGjc3PQk=;
 b=LnK+xEzkskfann2/ObzCqfpCG+jzyaVd6/ZQtB/UYdQGcE6UGOr0jy/3h7mXW722oR
 yWtIgeSAdwzR7M68Hs3ljPcr6Gkj3BD7v5zT8HzKOjS1QUBDy0pV+OueXY70GsVkLNNr
 AMZ0y3CoFTjBW0o8a2KGpCEWvphlDbEL4FSN1wK5jludjgNXaPAjXcpHFNuUpPnlx3MH
 veng/v9m5PRrrlCpuTnZNa7u8AdSZpQOk2ngEvujgql4nIcb41+izJVHuzYByBzzJDwz
 80yjbYGsi3LO7slI7XsbmrGdOquuBZ87RlSjXkmw43AeLjhRwPDCbdQ5KMYmWbx9/J24
 Xpug==
X-Gm-Message-State: APjAAAV9fTlzPmqQw/De6sGWjTZxPZJQBZogcxd/xrVUAhKmzLdw0Q5/
 w4FZhM10vW7+tvaa/x6gl78Q3vXnxPvKrwivQCU=
X-Google-Smtp-Source: APXvYqxrZ7wEgagooCPTAQmdCRYdis4uNkIIYm64oppMcYVDpcyhHuDu43I31sdZRydHODqHUlaqbmkndVluNi8asAA=
X-Received: by 2002:a63:ff08:: with SMTP id k8mr10900425pgi.8.1571415087691;
 Fri, 18 Oct 2019 09:11:27 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:30 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 15/18] arm64: vdso: disable Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091129_018429_A8C3E7D7 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..b23c963dd8df 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -19,7 +19,7 @@ obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
 ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
 		--build-id -n -T
-
+ccflags-y += $(DISABLE_SCS)
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
