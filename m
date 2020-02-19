Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5D3163830
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PM/rgeVdyjUVcm5cCMEZ52/Ig2pFK//qCGtPpACei9k=; b=KLHgvK/WRRNX77
	bJxeOi0A7ZfvM8LXjub2WqWKr2177vXPZZPmYRjrJt6IUmCyzr4Xv2NjMbNXC2afxQisDRHu8eo95
	Pu3oZi0/tBJqmLq0n/mcNhOI+wyXIyeyPMdqKHtGD8nQO+tai72UGpDovMlbVvnlVLBWOdlnlZp2D
	CbaDNPb9rtx498zMKB+OCT3ghsHvf/KaFmsIdzBm3hj20GoqKOFdqXB0pLCMDlwBCjsnFmnltk/a4
	/SiNlgmbBQ6U6rVGRrJBTdzAIJnkpdbRW3yqXj393SE3oBxbS+RBEhnIo7nCIShUccWupfdL84Euu
	uGaRQtn07d6OucUsPp/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Cw7-0000ZG-G5; Wed, 19 Feb 2020 00:09:55 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Cuv-00084u-VP
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:08:43 +0000
Received: by mail-ua1-x94a.google.com with SMTP id a30so4400401uae.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=l6scMayGLTv8i90n5kl1qjpFIVxp1ij4wxIMmOxT7WY=;
 b=MxFF3Jv/EWuhcxvZl8W5ImYcIiftihQ17JrQuHbGUe20LeBqGWlX0Vs6EqB8LFvumk
 b4ZoyiHXFOiODzyJoXD5yx1cna013lW8Pi2WUil5kfKJ4aedq1jjXZg4P8fML2UAyTyQ
 /uNIUrr21WgVaMdydYT05C0JnLFxVqjKAJsDDyn+vQuSScdem6mYvmOJiF6hb0qLTEw0
 Smd2xgO77Gu1gxaZmS0EyOZN3oetuc1I+tCOXl2LodF41Ek5dZApBYffEvCiAu/ywSMJ
 +XuBMpKej6buzdbjJGHsVoEc5I0LNkBH4XpX2SCaya8u2R9u8a9PAO1CbeaL1bxUo0gF
 FQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=l6scMayGLTv8i90n5kl1qjpFIVxp1ij4wxIMmOxT7WY=;
 b=fdnPJErvkmCZAYdM68wOct2R7mbfjdAvKH1cFKC+xu0BNNySgODloRCa/eLbEjPCdH
 XGnloMsGl/ZNOgVWXMRkDSbXBLZrS7AMGKEKNIrxzKcGLWl6Ex6oeZE8PtaocJhUdcCD
 XEP+WjckuKQGY8/4vrO4wqyhnI8GGS7EgIy3cDnIYBhJCGLuYGDi4YncEzjfYW5YN0CS
 /HPjBcUyHa+co+bjNHVleqzpU7hxiV3IzafCapICkZOkI2chHu/0trY/JMa6l37bCHmy
 6CQXXTirScOfgOD3xlvhC20GVtexqQKR4TNw6VpUhY7CXv1gVvDYPQXypYni4mjcThAc
 rgHQ==
X-Gm-Message-State: APjAAAU2SaZ3AH3K4N/sreQ0lsBXqmctQXPIefZS3JaJv+XFei8O/PqX
 8WzBd6JTtySHqNLZ36pwo8d6VWS0w2L+xjWTO0M=
X-Google-Smtp-Source: APXvYqy3zHVo0z8Du/q8/Or94E/PkF5YNEjibMIbCyb79vcUFl2W+utvk9qo3cjFU6si1C3cTLmny5LfSy/puV4ifSs=
X-Received: by 2002:a67:f144:: with SMTP id t4mr12321250vsm.36.1582070919665; 
 Tue, 18 Feb 2020 16:08:39 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:09 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 04/12] scs: disable when function graph tracing is enabled
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160842_102916_14C436BD 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 66b34fd0df54..4102b8e0eea9 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -535,6 +535,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
