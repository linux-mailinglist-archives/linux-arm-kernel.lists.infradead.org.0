Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D63DCABD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dC9Kn66prJOr9OyXfDweOfGNpHblTXpGcqzWQaywG5Y=; b=YfVTGW2wILreOA
	Ex2I/NYiS4XIJuR9DsoZ7CsQnAN/0Fm8DtieclhXQ/v+BOSBAlBVGkudt2xKHa+W1T+a+uTF3QGDP
	HM1yhXqvGOKxPte6RKOmjaY9Lueq5TSdjnh8G0G1IvO/B0T1nc16ohEj27QRGNwIR3ZSbvBxbclYN
	yoqqwsjMpmYIypDVINVCnl4Ft5pxNxxr7fuzV+u3uYenivnIB1CNt30+BieWkpQxWiwR/m93Z8ZDm
	WKEBONAp7TDti1uqQ+8ZMsQJWqVm3zIVh6G8jjdovSOOo79gyN3Ju7hZQ90Q1BXHGCVS2Ncl9Rh8N
	DeTnZyG/GDv9FSwvNu2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUva-0007jN-D0; Fri, 18 Oct 2019 16:16:34 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUql-00029y-JA
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:37 +0000
Received: by mail-pl1-x649.google.com with SMTP id j9so4008788plk.21
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=5u5MugUg2eXeQck5Unb3LYQo29vaVROeFk+dSkSebHA=;
 b=B7xenBDHHI7ayNn+BP1Q6X8wnTR9uTlyid2Lxqej61gj2k9iN/wuKOJNKBobLxaFjR
 hT53He9gZ81WBRA7k1srlE5y9pRls5zgdJRc8CkufohNb7pDylEtWxFwrE2uoJHPqVMe
 SXZ+LI2gVL3V+ZFsZVGAp19D4zWSpAGia2X5kfETCOjg6mYUy8e3oO5INhcW9tdCJs3Z
 R+qaaFeh57hjiYMhdf3zjE/30gJ8GCvzwq1j+lgdEDaXxK/SXne8U2YrUzyBDK25HLGv
 sScwvilKx4tvHpfuXY9/27TdPb7wP+y5Fbv94C3Elzkmapg0qVwLdFfipvrL/n4U5zdf
 mmCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5u5MugUg2eXeQck5Unb3LYQo29vaVROeFk+dSkSebHA=;
 b=i95bzeekCTLiiLENnvTxAnlFMLm3VDj1g4UYr2FuYRUTH66JrhoLL+DjWzuCQkr+ew
 VPJBBkuLckG4XeRFHDrktFDTF0eqkgYOiB3K71dhV3830Mmy4dCe89E7otTmxQssOfiZ
 syD3f/gfCTiGl2H1ekVjL9NO3J01ee/d3PxY+trAj1zFIdygOqT423uew7bheU+S6FjE
 wtupDKUmh6q4eNHEHOOOhJ6CU38TIJ5YGbW7RCarduVOQCvQ9T4apegbskDzfQjY+PfK
 YxtRlaqj4r2bmE5umBQKBrXXfREeFPyYShmKse8SMZimBuXq+7wf3K3brrlFGaeoVmTx
 DPpw==
X-Gm-Message-State: APjAAAUi3CHvyVAeO/6tXqAV2luhDRpcDExGIG2Ht6s6RD3Ywq58j8ob
 ZCfsOLHhHOsKILWdmbmhHjhw/ZekEzr5xoYEM4o=
X-Google-Smtp-Source: APXvYqzL1rNkHTnWVT3YklNHjYJF0z1ethJHe5MAlJ9H7HUMSZwkLdmWhiBEeQet4XLN4HbPHGGrf5qLcex/d/OTBLw=
X-Received: by 2002:a63:541e:: with SMTP id i30mr10990238pgb.130.1571415092950; 
 Fri, 18 Oct 2019 09:11:32 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:32 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 17/18] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091135_654090_79343143 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
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
 arch/arm64/kvm/hyp/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..96073d81cb3b 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -4,7 +4,8 @@
 #
 
 ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
-		$(DISABLE_STACKLEAK_PLUGIN)
+		$(DISABLE_STACKLEAK_PLUGIN) \
+		$(DISABLE_SCS)
 
 KVM=../../../../virt/kvm
 
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
