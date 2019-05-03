Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A72133EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 21:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dfjo9tIeLXWZbVWh+qHHGN+4S82FJ40QKAs69CQ+7jM=; b=Cr23hqLo5hSeFb
	J0aiPOzI1Viz2rNTcmjPgg5vpPEQ1Iw+LHnab03WUJwHW48Bq9+2p0DQeDGi2ZTwdSoCLCPiP8DAh
	qMix9vjGC16dJtwzqgHJuY4EII4CFIlh3oc4DcUXl8CJXpvCU88fFReE3kpehP2OTJm7jWO/hfeOO
	iBGOcW0SYIngrMdalzecz0D9XcbdhWygjxcKFiHmNXCq/68Ix76fA01oTu1B+qOlwvboCilXIcKlA
	y0+RasWJL+qlYhnhL9Ns4uIvGWQGlUJgYomIiiacMLnXkbP7FKNd8/eN5ZVQBA3W9zOVnUVMdFxCl
	E6dMNUOWtmnl70rDX+/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdbo-0006b0-Bk; Fri, 03 May 2019 19:12:36 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdbi-0006ag-AP
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 19:12:31 +0000
Received: by mail-pf1-x449.google.com with SMTP id j1so3640542pff.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 12:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=O2Vxsbw2zu+jyE40NtPtRm30b2ngTXxWqx+K4kLTmWE=;
 b=Hx23H1DMpzXrHfaM/QpifQPXcTEhJhckBh6ao3h1amBiE+2XYEMYapBwlYSjVB+teN
 OnUjs9WfrkDDyoXtKzMvz0m8/UMwuPu2YzysOWVEyvOz2FJMdbfyAr6+BxXMOdgkxyP4
 hgez0RKWV7cmUXF3NyYb49ErucoSds3mGFaHKpUCg7SZAqukFzga2DsCWeI48XGxZF5f
 o8lE2Z0PVAATcxT8+puCu5WEB8sHtyfWthy5Hs6ojxP0L3JFg7hyPh9G3CsDq4GluOpo
 6mdrmymd0+mw/rGnIInKxlS0khRfKIFBv0OaEMxXmIBpd5PdMC8OuzR3QXB1HZLs9jD5
 QJrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=O2Vxsbw2zu+jyE40NtPtRm30b2ngTXxWqx+K4kLTmWE=;
 b=cK/yI76mppl4g7CNFeUKxL+47+rGoICYLuJ8U7XMm8Jxbps/aVa86b2nrIWkZbNiIT
 mdYB0c08wnB5Ah2UvJYs0tmBrrGFNXuN0ZHD1LZ5yNoIETPRnhcR1WyvorHizlxoJJvB
 QXaBVTtghQN3aYzM3O50A01immiAFabYrjcV/ZPhhx5nlXPM99gERWj38NTMA8MAOVbU
 bAdWVvGlfQits2Qfkguu9C8Ejl72O+eLrX/sTJOsOPaOAkuz6y5D/+9dXikMIGaNiFdG
 2w5/dzlivAQdt8AC41zvz6O23H5CHaEQnVu1WoGSyJlwQBi/VFjL2T/zY9IW0vzItEZo
 jwIg==
X-Gm-Message-State: APjAAAUy+Ii8BW4iQLqP/HLe2Ol+SiN1m1cr6yY/2l8lxmXqNRNkML1D
 nrsXwLTyh6jXh5DWbkLF9icZvMFSRgFd4gzX+0A=
X-Google-Smtp-Source: APXvYqxsZAjO/Cr5QAMyVh+5vxGrimquZNEx1GMyBOtaek+vtybfj/5fHjagTf3nr2/qNevhxA41G7Kzkp4FzygW7uc=
X-Received: by 2002:a65:5c8c:: with SMTP id a12mr12635106pgt.452.1556910748545; 
 Fri, 03 May 2019 12:12:28 -0700 (PDT)
Date: Fri,  3 May 2019 12:12:22 -0700
Message-Id: <20190503191225.6684-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v2 0/3] fix function type mismatches in syscall wrappers
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_121230_386361_D6515B88 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches fix type mismatches in arm64 syscall wrapper
definitions, which trip indirect call checks with Control-Flow
Integrity.

Changes in v2:
- more informative commit message for the syscall_fn_t change
- added a patch for fixing sys_ni_syscall

Sami Tolvanen (3):
  arm64: fix syscall_fn_t type
  arm64: use the correct function type in SYSCALL_DEFINE0
  arm64: use the correct function type for __arm64_sys_ni_syscall

 arch/arm64/include/asm/syscall.h         |  2 +-
 arch/arm64/include/asm/syscall_wrapper.h | 18 +++++++++---------
 arch/arm64/kernel/sys.c                  | 14 +++++++++-----
 arch/arm64/kernel/sys32.c                | 12 ++++++++----
 4 files changed, 27 insertions(+), 19 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
