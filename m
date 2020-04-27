Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C8A1BA9A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+hItOUISeb+DovYDP2GjypUJ/zT+L2mCUgubmaeqV0=; b=JONBTIJJcGiDKm
	Xdu60YoGDRr1JIUHY6WzmgaYIf1HkMq347FWyIQIceyFDlKqE/HcIZfoEMoD985jeMveyHuh1ugc6
	vO5GDOyGGx7tvIdvm3K3+FRc40ODlOm8lMnPgaRGtkMkMuK7h3FdRoatAOrKRAlyB6WxO1CrgL6mg
	t0GuWG3/VK03RlRQP3xiyEIvIcbmysFq1DEaxP7VWW9O4BFZpF6RRHgbpkFW5DqxLlEsaw59rnypB
	QjQrknx+I9lr3g4pqxf9EHNRKOq5DbBrq2xxZr0eYiChxT74wXBfwPR0ZF7AwHrUzEf/djVqDvkWO
	s1GMoiBkZILcrXQx5Jrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6Cr-0003Gm-PQ; Mon, 27 Apr 2020 16:02:05 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6BT-0002Dh-OV
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:00:41 +0000
Received: by mail-qv1-xf49.google.com with SMTP id m20so19205947qvy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=jTb4YPIUPKL1E1OLE2ifNkQg2x2HSYmo0hj4Ci3DZ3A=;
 b=fqLi0SkyPjbXxPX/hPsXZeMNhq35aYqBNJAvT/Xx+BzPh7YlBx6i8WTACzT4FBHIRv
 yB3PamKTCHUBg04d9KVAhujS595QnxeeGH1EBSaBLJkOM7C2p6uhVroooOZkVWSFANBo
 EQq7r79O7lYvn3jVBEw+TI04/17VIVUaDIXO9ddhSuge+F4kykHowiB4XA1PixFt7f06
 knShlLB1Y6N5OLuGmCs4M7eKqc6BblFu2RW9cdCpUqsLmxzOIrCdokmS7rXLST3WR3EJ
 4YBYToSahIZ4xPJWmk/lOEd0e03hxC16yaJ1xBfFhei9FtsLMetBOg+CemUkcnsn0gik
 hibA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=jTb4YPIUPKL1E1OLE2ifNkQg2x2HSYmo0hj4Ci3DZ3A=;
 b=lu8jAD4hw4tyoA0/1VVEEVRzPF60pF5u4anzFTGY/rUFeD3KEDL1cgoPkcmrVCJPyW
 J63rSn3/zVnMVXsZ2BB6VI2tj1aJ53rPy2UE9oA2oRzgKPNTP7ERQCikfDntt4R1HdWy
 lm4Y6ZnvDaIOQqnmbwo2Hso16PBmBykp3nFeodv1BLBrbfAaq9KEy0SacgHQKHh57mQz
 rdzsSFmH/K7lvidxxsWxtl34+k7ynq/HYhbGJN2RwHScQEry7Y9nnrTAn54q4AFuCavi
 hHELqUx+td9A0EWIEQmaWGMufcUZTvIxRdEkZTDzREenxlLEv4d+DbAQSLVNnsbO5KA+
 q+VQ==
X-Gm-Message-State: AGi0PuY4ljuBO1Asu/yiva2p5/ZZKNzs2WdTqEJMk9d3Ua1HkS2AL+sR
 JfjvJI05b5gs4vAww1ruzV+tPwMHKESD8UtdkKw=
X-Google-Smtp-Source: APiQypLDtauRhcKiTQyzgC2LQ3XamOTxT1OCw5Clsp9y71dsXWMyuVGmw4gnWIV3Yp64XvmFFiqiRAvcGkJl+hJ0vkc=
X-Received: by 2002:a05:6214:1513:: with SMTP id
 e19mr22507959qvy.75.1588003237430; 
 Mon, 27 Apr 2020 09:00:37 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:10 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 04/12] scs: disable when function graph tracing is enabled
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
X-CRM114-CacheID: sfid-20200427_090039_798505_C837FC51 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

With SCS the return address is taken from the shadow stack and the
value in the frame record has no effect. The mcount based graph tracer
hooks returns by modifying frame records on the (regular) stack, and
thus is not compatible. The patchable-function-entry graph tracer
used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
to the shadow stack, and is compatible.

Modifying the mcount based graph tracer to work with SCS would require
a mechanism to determine the corresponding slot on the shadow stack
(and to pass this through the ftrace infrastructure), and we expect
that everyone will eventually move to the patchable-function-entry
based graph tracer anyway, so for now let's disable SCS when the
mcount-based graph tracer is enabled.

SCS and patchable-function-entry are both supported from LLVM 10.x.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 334a3d9b19df..45dfca9a98d3 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -543,6 +543,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
 	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
 	  shadow stack to protect function return addresses from being
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
