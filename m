Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1238E135E14
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khgVQ+Itnang6byXD/D1BY8BOIcKgrxcb30E+DClTLw=; b=XlO4cTT76b6FWA
	WYLjuqVFoGktBQlpWfGNWVoi/uDQnAs2tsapc0lVNGfSqWw2aG+H58nkbS2e/QeBsEkzsBNsJehR3
	fFDiRp2jfn6Q73Zy1cNvagTKBnpobmjxPji0E3ooPB4XjVuT3WJ86Orr7LQ+q/lErqksKbvaFEB93
	idKy2vrMIcJPbiocilTM8x7LPhnkf8/Dr894JrIrafl7EEP+H5EyDIMylBqqf4tvrw3rcse/+taLz
	hd8CdOKUeIdVZHx8xqGyl3cJlnL6Iqpb+tjSiZ5PepHJ+CHARAMWj2F6PyQXhBf6s6JZsXYUadAFW
	WVkCq4J2oNcvrX/aV5Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaXl-0006De-Ci; Thu, 09 Jan 2020 16:20:21 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaMt-00021D-BW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mAHGJTw6emz4uceIu6DFrravfZx1rImSewv+paxvKpM=;
 b=BFHKoJGnOkWEr4Z9Pk87zA3aosYP0UC+PhIRw/hUZY8WEyLYnJOxh7vL7ouY+Axs1nXQoW
 tZCPaLiYOXgNoi6z/L8aQoG44nLdPsGM89VKs04UI7P1w9fjfLBpyarlAtrEVpsVzB78vT
 grFdY+nK+ZB2ppmZFPVCa6koRRlKkS4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-9-bhw7IMOu2_2YXwNP3tzw-1; Thu, 09 Jan 2020 11:09:01 -0500
Received: by mail-wm1-f70.google.com with SMTP id t16so1103033wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:09:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4dPDKFSZi3e3u+46jDRIhE74sgAn3tXL+nGRZRHhzxI=;
 b=Z8ZXG5X69ZGkCEAM+5Pk9DcX+Ip7G+VwaLacX6ERXGRVZaeXYFX9WNZCDfmxvr/K8D
 BhBQkAMoX8DG7vh0iUsadUTrRQcBqZACf+OmsPB4R2AbBImf3fSUVLLlGdiDHpQl57SH
 VqqSH9NnJGgxD1H48vcaYMHJQK7/nLXFvyXrdysMb7iQVDXsqjQzGWJ+XNw94bGAW2G0
 F9lwSoz5fvMiAFiBvMFucI3JLG1u13EqfsCYPEVdNh4eEYw9Gzno+DrltxGQWahh6shd
 uwp6IwJgZ1D3/DnGQlHABUHKrovcLS3hH0+uTWbf6DMfLTmy76jUvmDJSAFaG7aaegPx
 na+w==
X-Gm-Message-State: APjAAAXKxrNjxejgp1cBCOy4EQCJNeLDIMAVONrmL9XAWvnoDEz51Sy6
 jUDnVtI0apHpOYvlOe9y2p4+e7QOpKKEbkmk9Dv0xsrNAtWI2rGUuqqYKLIZjRrunasWnuEExKJ
 TZGXOK6bGF/gu7zPPz8sNsPY7qle6f/gyyAo=
X-Received: by 2002:adf:a746:: with SMTP id e6mr12285682wrd.329.1578586140098; 
 Thu, 09 Jan 2020 08:09:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqxidILoaEYUa5ievTi0I/NuFQayb9Diwg52FSlLGCUYTke4Wmfm1U43xAy4el85wmxpFXckwg==
X-Received: by 2002:adf:a746:: with SMTP id e6mr12285661wrd.329.1578586139895; 
 Thu, 09 Jan 2020 08:08:59 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id v8sm8403505wrw.2.2020.01.09.08.08.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:59 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 49/57] arm64: kvm: Annotate non-standard stack frame functions
Date: Thu,  9 Jan 2020 16:02:52 +0000
Message-Id: <20200109160300.26150-50-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: 9-bhw7IMOu2_2YXwNP3tzw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080907_482879_519E4B05 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Marc Zyngier <maz@kernel.org>, Julien Thierry <jthierry@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com,
 James Morse <james.morse@arm.com>, jpoimboe@redhat.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

Both __guest_entry and __guest_exit functions do not setup
a correct stack frame. Because they can be considered as callable
functions, even if they are particular cases, we chose to silence
the warnings given by objtool by annotating them as non-standard.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
---
 arch/arm64/kvm/hyp/entry.S | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..c3443bfd0944 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -15,6 +15,7 @@
 #include <asm/kvm_asm.h>
 #include <asm/kvm_mmu.h>
 #include <asm/kvm_ptrauth.h>
+#include <linux/frame.h>

 #define CPU_GP_REG_OFFSET(x)	(CPU_GP_REGS + x)
 #define CPU_XREG_OFFSET(x)	CPU_GP_REG_OFFSET(CPU_USER_PT_REGS + 8*x)
@@ -97,6 +98,7 @@ alternative_else_nop_endif
 	eret
 	sb
 ENDPROC(__guest_enter)
+asm_stack_frame_non_standard __guest_enter

 ENTRY(__guest_exit)
 	// x0: return code
@@ -193,3 +195,4 @@ abort_guest_exit_end:
 	orr	x0, x0, x5
 1:	ret
 ENDPROC(__guest_exit)
+asm_stack_frame_non_standard __guest_exit
--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
