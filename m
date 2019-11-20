Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AA0104046
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/m1TL3sqIfvHc7v1ZSRMDY4oHY18nI4yehY5k4VF4A=; b=BUYRxidFpjgJsW
	JV3IRAapiTwyNGxW0z3WGT3TL4bjfdCxJRrfdmqPIhRxDBm4nksIBkcUYjfCocwEGOmtkx6yjJNjo
	DbxsWbpC1+k69ttuh41jNVB6bUbUW2vm0g9+iqtCmV8asqCLjuV+VuGQHM07k2XzUSAN1/Opb02SD
	9Lni91u76FKpuBSAQgchddxjqaCOEt+1LkWJP8Vh5XqV4SNxpIWC0pNVoFpKkaloOcrsaV2GlGsK5
	mSFXizn1FEC3UZ2YgcmK/W3W/fEaxDwxUIKwzyjuXHAk5qs6Cf3Kta7fMClAL7ewE/ekb8osMmgn2
	uEmzTWU9BQj/GtOdKu6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSUI-0003lR-Ct; Wed, 20 Nov 2019 16:05:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSUA-0003kw-5O
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:05:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id s5so473613wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 08:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8HkFmKUlELYRKY5nvgrfOS99YjUv3ULICRZwk6a5wrM=;
 b=DELBtj6kup7zWU0Y1RuRWL5s3snHLoAfsKrBp1kYP6ZOien2dubcdCE9PmspZXieDm
 ab6/35sR0CeBaSewHofTA8/CUa3Z5VKIHnHNOloGvR6Gfmfsn6iVe1reQ9Yp3TNydDHm
 cuX0YlOlRbpDRHx42+a9OSQ7CLLySHWgYDuUHv8v8qpRrSjOVgUiyluuZf17H4a50tzL
 8ege6KQYJKOWVjWVyCjeWWxDU4Vm0f0ILpAgHVMcOvmDzbspUABa7dYbjxE+VP/Vg2yy
 4hTa2FW9WZPg12n5oJBCP5EPY68Irq5W2xLvVzIT60PPJQJFz+BMBrqJBz5PjiBUD2xR
 6w0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8HkFmKUlELYRKY5nvgrfOS99YjUv3ULICRZwk6a5wrM=;
 b=TY8awplcbxEx9VUifK+W2fedaO23bE1kdfYk+4Ols/m6ytUclQwECJA47kptJVgZGF
 CRa+R1EtcshcDib7lHnlUrD2Cyu2oO0c0TOgpjTAMdgpsm0CkP5Qwu7ggdcrJ/2nlX6n
 2Ui14guZqvelXoMCj9b/ssdw60PwaSmEsARE9D8xo5rySvMdw91vqtvvJeMDam3L0iPV
 UR+Sri4cE9RL/1P1roRkj0U0ql5y1gzhe+Atx4cTJW8g5NbfYsFZa3w8y32oNx0DqFRA
 Dq1vGiHFo9mhULmsFCFXR3Xkz8WN57QWLcXPtKD+VxgHqJFdDA3mygLiCPy2a6G8GTOY
 n4Gw==
X-Gm-Message-State: APjAAAUnmiFTw1ZiPLJgDpXRllHzh3TGYrjYNHU8Bc1xxSf9tcg0zBIt
 fh8E3a6NB++trG+ndSPi51rkY8y6DKGK5BqgGRmoCw==
X-Google-Smtp-Source: APXvYqwT/7hFW67UkE8DY8p73hmaGLH1RqwtzOJw7gfG9L5yLafb9uLjZuYMHaqogxpdwzfB92d8Ilr1yXZup2AALF0=
X-Received: by 2002:adf:f743:: with SMTP id z3mr4239569wrp.200.1574265937885; 
 Wed, 20 Nov 2019 08:05:37 -0800 (PST)
MIME-Version: 1.0
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 20 Nov 2019 17:05:26 +0100
Message-ID: <CAKv+Gu85AMezxHpNhBOtnK3X6P32qhZ5LtvFOSpzo7ju4=wBAA@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] arm64: return address signing
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_080542_233089_CDC0D73F 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>
> Hi,
>
> This series improves function return address protection for the arm64 kernel, by
> compiling the kernel with ARMv8.3 Pointer Authentication instructions (referred
> ptrauth hereafter). This should help protect the kernel against attacks using
> return-oriented programming.
>
> This series is based on v5.4-rc8.
>
> High-level changes since v1 [1] (detailed changes are listed in patches):
>  - Dropped patch "arm64: cpufeature: handle conflicts based on capability"
>    as pointed by Suzuki.
>  - Patch 4, 10, 12 and 14 are added newly added.
>  - Patch 12 adds support to block probe of authenticate ptrauth instructions.
>  - Patch 14 adds support for lkdtm to test ptrauth.
>  - In the last version if secondary cpus do have ptrauth and primary cpu do not
>    then the secondary will silently disable ptrauth and keep running. This version
>    creates panic in this case as suggested by Suzuki.
>  - Many suggestion from James implemented.
>
> This series do not implement few things or have known limitations:
>  - kdump tool may need some rework to work with ptrauth.
>  - Generate/Get some randomness for ptrauth keys during kernel early booting.
>

Hello Amit,

As we discussed off line, we still need some place to initialize the
PAC keys for the boot CPU.

We should follow the same approach as boot_init_stack_canary() is
currently taking: it is called from start_kernel(), never returns, and
it is marked as __always_inline, which means it does not set up a
stack frame and so its return address will not get signed with the
wrong key.

Something like the below should be acceptable for a generic header
file, and we can wire up kernel PAC in the arm64 version of the
stackprotector.h header whichever way we like.

-- 
Ard.




diff --git a/include/linux/stackprotector.h b/include/linux/stackprotector.h
index 6b792d080eee..4c678c4fec58 100644
--- a/include/linux/stackprotector.h
+++ b/include/linux/stackprotector.h
@@ -6,7 +6,7 @@
 #include <linux/sched.h>
 #include <linux/random.h>

-#ifdef CONFIG_STACKPROTECTOR
+#if defined(CONFIG_STACKPROTECTOR) || defined(CONFIG_ARM64_PTR_AUTH)
 # include <asm/stackprotector.h>
 #else
 static inline void boot_init_stack_canary(void)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
