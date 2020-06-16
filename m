Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21681FBE4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZBez8oIKMQnbrL45zYj+ZF9opUuIuS6K83jTJXblcE=; b=AKoAMwhaDM+Txb
	0VUOlMhqRgu9kocn8T+qks4Xm3KXdnDAkZyWVrGw2Kg/fPc6ZzHoa4nSBbNovCR9SdTOjwUcNTa/q
	6929rWZxnGVk5oYQyfHzOp7XPLypMHCw53/zR1K9Zc14/bNGXxArld0j3FS17ry5Pp4oDDyX+omv4
	Oxtxn6gCMCN60HEZ+PNrzAHopu9RGfj4/evp+Mbdy1p8pTZ0ilEtqXhb05B2Gz2Gp1uYe6SjN7mQh
	reWPoLEfs/Ap1CAabBDPANLru/cNiuRijv5GKyuniCBkqg5rcMcz9uC6UedmQ/WOSTHo6VC5zBksN
	kxwb/3Q/XJ6D/aBOr+Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGWF-0004qv-PF; Tue, 16 Jun 2020 18:41:11 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGW8-0004qS-1h
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:41:05 +0000
Received: by mail-ot1-x342.google.com with SMTP id n6so16774704otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PP7fmAbOpJZrG6mulNueKfGjRKbISo90aGcU+mmxhkk=;
 b=SgAoxLDptRorhLbctZtc14ATPvMoCUVa3Qnaiv74Wiuv1Ilv206h0pAJIcfFT61aT3
 TGsR+YKgKMSDULwayZzpH5NWxgKMEYM0DDUSD+lIpY8DhQexmgJcizp99NQiikgW6ukP
 Zd7nAKg39fEeI9E6htfe35poocMbVFKOmzwp3QgnE6LakKJ3/EU1jFX1y3WzBZ6kJHII
 OI1XJ63NXQ4Pjy2JsU266e5NkX/nn9PIe50bFu3HWPsPuIa2P5lLz5gXwBKQazYOD68x
 A76P5vM3aqB9A1Mc7WxEW32CyBdJ707uudzbiJDP21aIOgjIVwyqqEBBH1UwUo5hmHVI
 hqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PP7fmAbOpJZrG6mulNueKfGjRKbISo90aGcU+mmxhkk=;
 b=qNZXvyUhXz9I41Lgb9gw9wC67n+f9hFWiQQW/YBaxi7hIo4+feGelq0AO421Bptfgq
 3SuxZtTKaVYbujfFWQ2j7lJVUoHVg+LPFiLaleBu132cTGfz6QhwaiwkIbGNsxSpG0ud
 aVjODWVgH9WcbMvvJfHmA0jWeSDDwcVZt2grgmf6l45lL7dQTjO5vP3eJJvlpgqkTJM+
 N3b53TPgsAezkd+t30iLTmyBYkF6JGBd8+jC1xzlxcVGVyH4NCF4IHQiv1kwSCTtR3zc
 qvVVsXFVFK+6ZE0HFQj/CsrbuYMZhcghsImZLLpNAfQtVxVWqtNodNpaJ2VueLOZjPXg
 +woA==
X-Gm-Message-State: AOAM533P2i7stREKn8FUuaOZGgHwLJyxKoQj/hSyo4Ehf0KC83TgW813
 lkIKq2YV+z5SZXMX5YmC548=
X-Google-Smtp-Source: ABdhPJxnEWwnHUl/c/MyM+N7uSRiG09E0fxOaeW0WzY4MfR3BxexxyYSdh1RKl+q6rdmdqoIDPLPxA==
X-Received: by 2002:a9d:798a:: with SMTP id h10mr3609584otm.241.1592332859994; 
 Tue, 16 Jun 2020 11:40:59 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id 48sm4215646otc.31.2020.06.16.11.40.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 11:40:59 -0700 (PDT)
Date: Tue, 16 Jun 2020 11:40:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Message-ID: <20200616184058.GA3734330@ubuntu-n2-xlarge-x86>
References: <20200616183630.2445-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616183630.2445-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_114104_091000_DB12647D 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tom Stellard <tstellar@redhat.com>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 07:36:30PM +0100, Will Deacon wrote:
> Unfortunately, most versions of clang that support BTI are capable of
> miscompiling the kernel when converting a switch statement into a jump
> table. As an example, attempting to spawn a KVM guest results in a panic:
> 
> [   56.253312] Kernel panic - not syncing: bad mode
> [   56.253834] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1 #2
> [   56.254225] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
> [   56.254712] Call trace:
> [   56.254952]  dump_backtrace+0x0/0x1d4
> [   56.255305]  show_stack+0x1c/0x28
> [   56.255647]  dump_stack+0xc4/0x128
> [   56.255905]  panic+0x16c/0x35c
> [   56.256146]  bad_el0_sync+0x0/0x58
> [   56.256403]  el1_sync_handler+0xb4/0xe0
> [   56.256674]  el1_sync+0x7c/0x100
> [   56.256928]  kvm_vm_ioctl_check_extension_generic+0x74/0x98
> [   56.257286]  __arm64_sys_ioctl+0x94/0xcc
> [   56.257569]  el0_svc_common+0x9c/0x150
> [   56.257836]  do_el0_svc+0x84/0x90
> [   56.258083]  el0_sync_handler+0xf8/0x298
> [   56.258361]  el0_sync+0x158/0x180
> 
> This is because the switch in kvm_vm_ioctl_check_extension_generic()
> is executed as an indirect branch to tail-call through a jump table:
> 
> ffff800010032dc8:       3869694c        ldrb    w12, [x10, x9]
> ffff800010032dcc:       8b0c096b        add     x11, x11, x12, lsl #2
> ffff800010032dd0:       d61f0160        br      x11
> 
> However, where the target case uses the stack, the landing pad is elided
> due to the presence of a paciasp instruction:
> 
> ffff800010032e14:       d503233f        paciasp
> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010032e1c:       910003fd        mov     x29, sp
> ffff800010032e20:       aa0803e0        mov     x0, x8
> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> ffff800010032e28:       93407c00        sxtw    x0, w0
> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010032e30:       d50323bf        autiasp
> ffff800010032e34:       d65f03c0        ret
> 
> Unfortunately, this results in a fatal exception because paciasp is
> compatible only with branch-and-link (call) instructions and not simple
> indirect branches.
> 
> A fix is being merged into Clang 10.0.1 so that a 'bti j' instruction is
> emitted as an explicit landing pad in this situation. Make in-kernel
> BTI depend on that compiler version when building with clang.
> 
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Tom Stellard <tstellar@redhat.com>
> Cc: Daniel Kiss <daniel.kiss@arm.com>
> Link: https://lore.kernel.org/r/20200615105524.GA2694@willie-the-truck
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm64/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..4ae2419c14a8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>  	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>  	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>  	depends on !CC_IS_GCC || GCC_VERSION >= 100100
> +	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
> +	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>  	depends on !(CC_IS_CLANG && GCOV_KERNEL)
>  	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>  	help
> -- 
> 2.27.0.290.gba653c62da-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
