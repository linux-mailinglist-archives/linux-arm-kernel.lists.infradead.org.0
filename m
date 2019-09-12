Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C08AB1075
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OESJXhOPgMhCR6bc1RVYLWNB3P2CzSxerauMUIsjTpE=; b=TOYDW3czAEot/E
	J2upsaT7ye1Q+ImnNFnbNTZ+yCTFgKmSovtoLlbD46UE9s/lVz2BJUjV0DXV/ccd5o1/9l6mcYCwK
	RViABe1JPT1eD9BDmG3um5Bo+h5TxaAyZXpI18BuVd8s80SKlTaGVY10zBLO9cS4w5qvCz5fIricp
	B16RLf8nT/V25+54Awuy4GThpbMmTMI0EaPUizrJbtQYbd+zJjpeJ0UY/UACm4G0REgSysrLWWRka
	LcZZpQhHL942/SqZO7yhN87wmOlxjLzozfLkaD5uddhROhYR58NoSdYnJzhVVpPbnaeZ56xD2n/Zu
	cj0SNWQ8ApiMwjxfVAqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PZ2-0005Bh-UX; Thu, 12 Sep 2019 13:55:13 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PYm-0005AK-Hz
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 13:54:58 +0000
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EE2D22A09C4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 13:54:51 +0000 (UTC)
Received: by mail-wm1-f72.google.com with SMTP id f63so33888wma.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 06:54:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=jtKVnysH6a6/Zp0gjCWWRZszcxjtja0HC7zaeIzDlNA=;
 b=MOPO9iiVRAT7IyF55ULlGH/X/rZErxkcindrS5P6F2FG9VwAQYIUYcnrL0Y19Uq1HC
 I75pKWVqGQWgBgScrxJBqrM3Y3lp/gGlglRTCKoIzBaVSJ4jYh4/MPKJSyNkKr8T2Dfd
 e3Vi2Za+5izfcZM6JogAobM4E7uYwNPthL652j3fYM76H2N1SA7z85NSW2R2l4cQ1KCu
 oAjrsKWLqebw5w1VjmMuK9Ve4GwMBOAML/ahYV2xAQlQuWFHdYKDS0AWcZWIYm2Br2di
 yjQrVJBi6GxbtLZZrI+tzOCqbzAfmEF5WZnPrFK1BoUboj64VSNaf+X/gh/SU8YQU0RH
 Z5Ew==
X-Gm-Message-State: APjAAAWLRaLIJIfIj0uFny6zlaPdHfaRZcghL3dMnwUnSHSO98kI8HqP
 ZICeBzQTL8yR2eQ078C2AQgiuCbTaxq6iD4J19bEPOohBggtf63H8MNUeekcAfQQYehveBjcI4x
 DQPe2dNWJGkjuBKpVjhxBRwucE2jK6Gj5gY0=
X-Received: by 2002:adf:f606:: with SMTP id t6mr2185640wrp.197.1568296490383; 
 Thu, 12 Sep 2019 06:54:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwC3kNPUcOsh7Bb73QPWu//fbO1BgsdzUDsLIP9vFsm5R0Jt3bi1WcmYSjZOjhd6eyKj5g78A==
X-Received: by 2002:adf:f606:: with SMTP id t6mr2185611wrp.197.1568296490120; 
 Thu, 12 Sep 2019 06:54:50 -0700 (PDT)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id g16sm5160325wrx.21.2019.09.12.06.54.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 06:54:49 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: kvm@vger.kernel.org
Subject: Re: KASAN: slab-out-of-bounds Read in handle_vmptrld
In-Reply-To: <000000000000a9d4f705924cff7a@google.com>
References: <000000000000a9d4f705924cff7a@google.com>
Date: Thu, 12 Sep 2019 15:54:48 +0200
Message-ID: <87lfutei1j.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_065456_632760_C3E1EACD 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, x86@kernel.org, wanpengli@tencent.com,
 narmstrong@baylibre.com, catalin.marinas@arm.com, will.deacon@arm.com,
 hpa@zytor.com, khilman@baylibre.com, joro@8bytes.org, rkrcmar@redhat.com,
 mingo@redhat.com,
 syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com>,
 devicetree@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 robh+dt@kernel.org, bp@alien8.de, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 linux-kernel@vger.kernel.org, sean.j.christopherson@intel.com,
 carlo@caione.org, pbonzini@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

syzbot <syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com> writes:

> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    1e3778cb Merge tag 'scsi-fixes' of git://git.kernel.org/pu..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=15bdfc5e600000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=b89bb446a3faaba4
> dashboard link: https://syzkaller.appspot.com/bug?extid=46f1dd7dbbe2bfb98b10
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1709421a600000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=168fc4b2600000
>
> The bug was bisected to:
>
> commit a87f854ddcf7ff7e044d72db0aa6da82f26d69a6
> Author: Neil Armstrong <narmstrong@baylibre.com>
> Date:   Wed Oct 11 15:39:40 2017 +0000
>
>      ARM64: dts: meson-gx: remove unnecessary uart compatible
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17e78a6e600000
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=14178a6e600000
> console output: https://syzkaller.appspot.com/x/log.txt?x=10178a6e600000
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+46f1dd7dbbe2bfb98b10@syzkaller.appspotmail.com
> Fixes: a87f854ddcf7 ("ARM64: dts: meson-gx: remove unnecessary uart  
> compatible")
>
> L1TF CPU bug present and SMT on, data leak possible. See CVE-2018-3646 and  
> https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/l1tf.html for  
> details.
> ==================================================================
> BUG: KASAN: slab-out-of-bounds in handle_vmptrld  
> arch/x86/kvm/vmx/nested.c:4789 [inline]
> BUG: KASAN: slab-out-of-bounds in handle_vmptrld+0x777/0x800  
> arch/x86/kvm/vmx/nested.c:4749
> Read of size 4 at addr ffff888091e10000 by task syz-executor758/10006
>
> CPU: 1 PID: 10006 Comm: syz-executor758 Not tainted 5.3.0-rc7+ #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
> Google 01/01/2011
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x172/0x1f0 lib/dump_stack.c:113
>   print_address_description.cold+0xd4/0x306 mm/kasan/report.c:351
>   __kasan_report.cold+0x1b/0x36 mm/kasan/report.c:482
>   kasan_report+0x12/0x17 mm/kasan/common.c:618
>   __asan_report_load_n_noabort+0xf/0x20 mm/kasan/generic_report.c:142
>   handle_vmptrld arch/x86/kvm/vmx/nested.c:4789 [inline]
>   handle_vmptrld+0x777/0x800 arch/x86/kvm/vmx/nested.c:4749
>   vmx_handle_exit+0x299/0x15e0 arch/x86/kvm/vmx/vmx.c:5886
>   vcpu_enter_guest+0x1087/0x5e90 arch/x86/kvm/x86.c:8088
>   vcpu_run arch/x86/kvm/x86.c:8152 [inline]
>   kvm_arch_vcpu_ioctl_run+0x464/0x1750 arch/x86/kvm/x86.c:8360
>   kvm_vcpu_ioctl+0x4dc/0xfd0 arch/x86/kvm/../../../virt/kvm/kvm_main.c:2765
>   vfs_ioctl fs/ioctl.c:46 [inline]
>   file_ioctl fs/ioctl.c:509 [inline]
>   do_vfs_ioctl+0xdb6/0x13e0 fs/ioctl.c:696
>   ksys_ioctl+0xab/0xd0 fs/ioctl.c:713
>   __do_sys_ioctl fs/ioctl.c:720 [inline]
>   __se_sys_ioctl fs/ioctl.c:718 [inline]
>   __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:718
>   do_syscall_64+0xfd/0x6a0 arch/x86/entry/common.c:296
>   entry_SYSCALL_64_after_hwframe+0x49/0xbe

Hm, the bisection seems bogus but the stack points us to the following
piece of code:

 4776)              if (kvm_vcpu_map(vcpu, gpa_to_gfn(vmptr), &map)) {
<skip>
 4783)                      return nested_vmx_failValid(vcpu,
 4784)                              VMXERR_VMPTRLD_INCORRECT_VMCS_REVISION_ID);
 4785)              }
 4786) 
 4787)              new_vmcs12 = map.hva;
 4788) 
*4789)              if (new_vmcs12->hdr.revision_id != VMCS12_REVISION ||
 4790)                  (new_vmcs12->hdr.shadow_vmcs &&
 4791)                   !nested_cpu_has_vmx_shadow_vmcs(vcpu))) {

the reported problem seems to be on VMCS12 region access but it's part
of guest memory and we successfuly managed to map it. We're definitely
within 1-page range. Maybe KASAN is just wrong here?

-- 
Vitaly

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
