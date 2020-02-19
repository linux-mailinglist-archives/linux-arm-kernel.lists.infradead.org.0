Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAE316383A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LReR2re6yeElC+sH6a3k1uCRD1vJtCodrtp3COe+sM=; b=rZBOTs5qAhwVyR
	z2iyBHV5BccswfAbVxvnPyxIap3otZyxl8EVV1TRHEphpN7CaD01XjA7AMVX/oY6OUwB9JiNDEolJ
	5ZYu3tzMgLWtJ4WlWO7plwFjZ3+ULpE28pmvXIsQFzZK5xSSVDWp3IMNTwGSpbYsFjrYuBu9PTh7V
	HGxQ+mXecourbDTKungXWXxynjZtnklNrglk3AHMILIBjtrqKGYxoQO6hWHQnIMiT1zferIbnc0BJ
	+yjqDpwwKmKLsX6xTjndQ/pHyhUzGDb1Cf1W9vrP2WyvywuGxRkxFvr9OGPtkLINmD050ZB8FJy9B
	8+3vQFe30lMABmpqHKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4CxK-0002v1-7n; Wed, 19 Feb 2020 00:11:10 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4CvB-0008Ig-Mr
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:08:59 +0000
Received: by mail-pf1-x44a.google.com with SMTP id x199so14293462pfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=VaL1LZE8ycQeC44ksYepx5tOKr2VfyNgExyF+AnjA94=;
 b=cePll/TraKAUtAJ9SZ2Ia3LSLdgIxY1+FH9CeJe/Js8mU6ZMYsSLXkd7mkxW/sP5DZ
 KJT+Ei4X/Kieg25Nl3ijU9ilrBU19coqFUri04BfLyqK5EuVRfmB30gu2bmvAalUS6LN
 IMbhUPvGvYnYBxafAZ3iZSnwZoQLD7C4koK0IuRjhEPW0oZ2TaiJ9hz4upmRG6/Ns0dh
 UTADf0Yy7wZKSoYV844RlPmV80QoHhyiDwRwibkak3UTghfYE1JKAvnv9As5XVJ0WJ7a
 4rEss8BdwPK/XsciPHFcrXzGvsX8Q30c1NJSo5SBc2z3lUGDDitPI+TJwEDkMrNctWZh
 TcLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=VaL1LZE8ycQeC44ksYepx5tOKr2VfyNgExyF+AnjA94=;
 b=qvBueh+OZlCWJLh8N6qhBpwf7CI8piPgUzodJckzV/s6UafydiNvkigj+nXLtAaj3G
 sb381zdZS/pzRen86hzxtM3rdOoX+w3sYbALRlHFB+aGCJqRWpsVgYA8TX0WFW9TFYkg
 Cd2ZY6+AKdv9j9/Tl6D5g9ODh1A8gnwtbN0QhB8lHUzWuln/GBsj9lQbm9t7CnssLIEi
 8gujN0efmLKDclnG46tmixNo+FIUg5b7DPB1+GgysGK9KxSgLcTUR/jEi+XcexT6albE
 c03BLxoJgtiph9j9RmVRp3dk64KnTgMlUZ+2mfDdO0LKvRMQamWXqkTCIURVfXVH1UVy
 4zjA==
X-Gm-Message-State: APjAAAW+A6UHnwT4mSzEAtsVp85TtiGEUA8KDjwhKh5TTUfGKpdOsyws
 lHMNvDSCpx9Nh0DPzUygfpWjUbz+8a5mhQUV0zw=
X-Google-Smtp-Source: APXvYqzYgoNmANIZrWEkIv02R5SWh6hiOCKzMRDH3zyUcr6xB+/h3Rs6ymsqIKfuYLDLk6+SeJ73cy3XJLHa4n8oA1M=
X-Received: by 2002:a63:c846:: with SMTP id l6mr25182558pgi.144.1582070936327; 
 Tue, 18 Feb 2020 16:08:56 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:14 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 09/12] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160857_830539_2A13461D 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index a3a6a2ba9a63..0f0603f55ea0 100644
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
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
