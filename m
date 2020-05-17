Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F1C1D6DA7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 23:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHALPvT/Ul9WfaRGAaoOOh+rDaPW491nqgv0V1eMezk=; b=Xm7/kK9Amim8EO
	kGGC1pyZmdHbnhUDL5ECCR2tBXHndtE2Ccmi4KGw/luKmo9V1Z66TMNlEFnsPYW563s6Hbw/oDteJ
	3RAKvobbIKcHRETs5gD8iaQfcVmmIPUaIbKp12LyxNlFUPEwJoCbPTEGvN3awlNUg7pMR0BFSFa0U
	na+R3BL3uNeub0wLhXlD4H8e2pWtxgKNCjjlV6Su5huWxfo1Q7oiCdGmdfBF5JsMUOmaOG+60bKUt
	j5hOBArAuvuGecKDlzkOjbsRGP/YdS5YUR/37+GODEBPPmljQFEjHFAXUE8dTnPjThCQMZFKz3Zgh
	8qFulu1GOQDLXBYkM07g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaR9j-0003Cy-IS; Sun, 17 May 2020 21:49:11 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaR9T-0003Bo-9U
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 21:48:56 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ci21so688262pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 May 2020 14:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TseoBxNXqkGmc0BKeUpNhNoekdY6lwjjJANkYe94qbs=;
 b=fXmuXfld1C+1UPw1bv9c3bwmjxXKQ31A0dYo8c5KzRXgHDVDq/BETl1kTkVyzT4Izt
 vP9YW8g7iuXzdYnOt9Tx31MSyhBkvlqnenYGMaitwycLw4gdiHYi66Dl4OiTkwb0oTH9
 F1q76kq5IFts9C62noNssP5sjvsEmychJJIgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TseoBxNXqkGmc0BKeUpNhNoekdY6lwjjJANkYe94qbs=;
 b=d6y3FQqZnD2ktgPzQrzDDbet6Ev2yel6nxGY9OBXPeQSq+cfF42lU7aWeWwzX71Xsh
 KlPhqNc/VlsprlYAxfiVdjAgoVySEna6X/TC4Wc1wisW0GDZJLmrSQeYn3JLZpHk+umL
 T50EHpwzH/3+vTb132T23f05wq4R4zzR9i54CiwQMCZ1fEIQaTiKrSdDDLrvTIDLorK3
 mknIDC8O2/rvRx+jC3nvp+UFEEu8aKU0/6CasBlgQdSzbSmHtkBWGGVATUzbwVtbrEl0
 c5ImPWou9Hhne8+Am2tY3Vh2KYb0Gxbu3kZyuXqDcGH3JWLu61CVw2vMIuechOtaOfP8
 7UKg==
X-Gm-Message-State: AOAM532lr+w3jy5U5zSQkcXEwEUAee94N5OEw8K4fJ87c1TFv1ZzAnAT
 ygHVDgGQYdF+LKGL3jV2fVQ3Z1Xv4ZU=
X-Google-Smtp-Source: ABdhPJwu0BwlUzPfekehCQs1ka3ojGBVEk1UZ0Rcu5atUYqn4c22iHglE7ZsiOSiXntjAfphkl4Hcw==
X-Received: by 2002:a17:90a:dc83:: with SMTP id
 j3mr15509573pjv.59.1589752133982; 
 Sun, 17 May 2020 14:48:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i184sm6443327pgc.36.2020.05.17.14.48.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 14:48:53 -0700 (PDT)
Date: Sun, 17 May 2020 14:48:52 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH] ARM: kprobes: Avoid fortify_panic() when copying
 optprobe template
Message-ID: <202005171447.00CFE0C@keescook>
References: <20200517153959.293224-1-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517153959.293224-1-andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_144855_355104_C2EA1D02 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 mathieu.desnoyers@efficios.com, mhiramat@kernel.org, labbott@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 01:09:59AM +0930, Andrew Jeffery wrote:
> As mentioned, a couple of attempts have been made to address the issue
> by casting a pointer to optprobe_template_entry before providing it to
> memcpy(), however gccs such as Ubuntu 20.04's arm-linux-gnueabi-gcc
> 9.3.0 (Ubuntu 9.3.0-10ubuntu1) see through these efforts.

Ah, dang. :P

How about converting them all to unsized arrays, which would also allow
the code to drop the "&" everywhere, I think. This is untested:


diff --git a/arch/arm/include/asm/kprobes.h b/arch/arm/include/asm/kprobes.h
index 213607a1f45c..e26a278d301a 100644
--- a/arch/arm/include/asm/kprobes.h
+++ b/arch/arm/include/asm/kprobes.h
@@ -44,20 +44,20 @@ int kprobe_exceptions_notify(struct notifier_block *self,
 			     unsigned long val, void *data);
 
 /* optinsn template addresses */
-extern __visible kprobe_opcode_t optprobe_template_entry;
-extern __visible kprobe_opcode_t optprobe_template_val;
-extern __visible kprobe_opcode_t optprobe_template_call;
-extern __visible kprobe_opcode_t optprobe_template_end;
-extern __visible kprobe_opcode_t optprobe_template_sub_sp;
-extern __visible kprobe_opcode_t optprobe_template_add_sp;
-extern __visible kprobe_opcode_t optprobe_template_restore_begin;
-extern __visible kprobe_opcode_t optprobe_template_restore_orig_insn;
-extern __visible kprobe_opcode_t optprobe_template_restore_end;
+extern __visible kprobe_opcode_t optprobe_template_entry[];
+extern __visible kprobe_opcode_t optprobe_template_val[];
+extern __visible kprobe_opcode_t optprobe_template_call[];
+extern __visible kprobe_opcode_t optprobe_template_end[];
+extern __visible kprobe_opcode_t optprobe_template_sub_sp[];
+extern __visible kprobe_opcode_t optprobe_template_add_sp[];
+extern __visible kprobe_opcode_t optprobe_template_restore_begin[];
+extern __visible kprobe_opcode_t optprobe_template_restore_orig_insn[];
+extern __visible kprobe_opcode_t optprobe_template_restore_end[];
 
 #define MAX_OPTIMIZED_LENGTH	4
 #define MAX_OPTINSN_SIZE				\
-	((unsigned long)&optprobe_template_end -	\
-	 (unsigned long)&optprobe_template_entry)
+	((unsigned long)optprobe_template_end -	\
+	 (unsigned long)optprobe_template_entry)
 #define RELATIVEJUMP_SIZE	4
 
 struct arch_optimized_insn {
diff --git a/arch/arm/probes/kprobes/opt-arm.c b/arch/arm/probes/kprobes/opt-arm.c
index 7a449df0b359..c78180172120 100644
--- a/arch/arm/probes/kprobes/opt-arm.c
+++ b/arch/arm/probes/kprobes/opt-arm.c
@@ -85,21 +85,21 @@ asm (
 			"optprobe_template_end:\n");
 
 #define TMPL_VAL_IDX \
-	((unsigned long *)&optprobe_template_val - (unsigned long *)&optprobe_template_entry)
+	((unsigned long *)optprobe_template_val - (unsigned long *)optprobe_template_entry)
 #define TMPL_CALL_IDX \
-	((unsigned long *)&optprobe_template_call - (unsigned long *)&optprobe_template_entry)
+	((unsigned long *)optprobe_template_call - (unsigned long *)optprobe_template_entry)
 #define TMPL_END_IDX \
-	((unsigned long *)&optprobe_template_end - (unsigned long *)&optprobe_template_entry)
+	((unsigned long *)optprobe_template_end - (unsigned long *)optprobe_template_entry)
 #define TMPL_ADD_SP \
-	((unsigned long *)&optprobe_template_add_sp - (unsigned long *)&optprobe_template_entry)
+	((unsigned long *)optprobe_template_add_sp - (unsigned long *)optprobe_template_entry)
 #define TMPL_SUB_SP \
-	((unsigned long *)&optprobe_template_sub_sp - (unsigned long *)&optprobe_template_entry)
+	((unsigned long *)optprobe_template_sub_sp - (unsigned long *)optprobe_template_entry)
 #define TMPL_RESTORE_BEGIN \
-	((unsigned long *)&optprobe_template_restore_begin - (unsigned long *)&optprobe_template_entry)
+	((unsigned long *)optprobe_template_restore_begin - (unsigned long *)optprobe_template_entry)
 #define TMPL_RESTORE_ORIGN_INSN \
-	((unsigned long *)&optprobe_template_restore_orig_insn - (unsigned long *)&optprobe_template_entry)
+	((unsigned long *)optprobe_template_restore_orig_insn - (unsigned long *)optprobe_template_entry)
 #define TMPL_RESTORE_END \
-	((unsigned long *)&optprobe_template_restore_end - (unsigned long *)&optprobe_template_entry)
+	((unsigned long *)optprobe_template_restore_end - (unsigned long *)optprobe_template_entry)
 
 /*
  * ARM can always optimize an instruction when using ARM ISA, except
@@ -234,7 +234,7 @@ int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *or
 	}
 
 	/* Copy arch-dep-instance from template. */
-	memcpy(code, (unsigned long *)&optprobe_template_entry,
+	memcpy(code, (unsigned long *)optprobe_template_entry,
 			TMPL_END_IDX * sizeof(kprobe_opcode_t));
 
 	/* Adjust buffer according to instruction. */

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
