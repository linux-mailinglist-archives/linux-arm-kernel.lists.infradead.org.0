Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD78FE1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=He/ykw7gvOHblTwf7D9p+u/pQBxSIjtGipqqX2Nvgt8=; b=CNtK7okoW49HdU
	CW+/yXgV9xz1fT3KUTBf2iX5Vj1uG1c0HMzIPHv2ei/Ux10rT1nThrsE8K8lj7sKxwQufCbaCVtC6
	ZhOyNkHwFGYw98oskVOOKXn0E7DaMGcthguNXbYAaInPXR4gGatO1NvGbFwiq1dNBoZujoy1mi8A2
	j1gRDLtBC+gBpUcq+2a8YZCYWWB10Emi7KIKk99trP6M2OHxfiZdQQelECGUPPxLIAjYTOPhy19C6
	s8vljKgpsGlwEa6Rh2mv9GZwHZqzJa/eXC5UsmjG9r7JETdpX2HZU2L8i7a4mY1705Y+8a5tPfifV
	/t8uUM4HUgxV2AGswfWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVuW-0004uu-7h; Tue, 30 Apr 2019 16:47:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVuP-0004uO-DM
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:47:10 +0000
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45D67217F5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556642828;
 bh=S48pNAsTw7BEZ36AW1e1TSyWImwtIKer4k1K+rKGgdc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OfHCGrtUbiFJqLJB8TSFf7ldICXZA8iqik5XHx+uu4ZsE2UzlSk2VQWW6WYUsnUZr
 hB6najoPJUOCFObaMzBNFOEjtzUHebohanEO9HfhAwUAKuM2Lq8Up3CVLv213XzgBu
 yfoLpbcuVy3Wm2yY972dudRHvVjBb4hHzg0rXing=
Received: by mail-wr1-f53.google.com with SMTP id r7so2088044wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:47:08 -0700 (PDT)
X-Gm-Message-State: APjAAAU0i+4ou6sCOPGtalMYu7ASIizXFveXaZHoG0IwljiOOkiVXGov
 XoXylQGSiLtczBKbNkychu1k2nsU3UNq0KDvHmPoFg==
X-Google-Smtp-Source: APXvYqzHEqvh6x3xmyRtRqKnO98xcUmDJgjMNHD1klJcb2L6wbWRNt5Tm23i28W+RKElRE+GeRwRbM4AmqFkXIl8JL4=
X-Received: by 2002:a5d:4e82:: with SMTP id e2mr2206324wru.199.1556642826765; 
 Tue, 30 Apr 2019 09:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190318104925.16600-1-sudeep.holla@arm.com>
 <20190318104925.16600-4-sudeep.holla@arm.com>
In-Reply-To: <20190318104925.16600-4-sudeep.holla@arm.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 30 Apr 2019 09:46:54 -0700
X-Gmail-Original-Message-ID: <CALCETrXEebRqX0W8MuS0SeaMDpEO5KdS3k7id279hZgHrmc8yA@mail.gmail.com>
Message-ID: <CALCETrXEebRqX0W8MuS0SeaMDpEO5KdS3k7id279hZgHrmc8yA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] x86: clean up _TIF_SYSCALL_EMU handling using
 ptrace_syscall_enter hook
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_094709_470260_293FA01F 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jeff Dike <jdike@addtoit.com>,
 X86 ML <x86@kernel.org>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Richard Weinberger <richard@nod.at>, Ingo Molnar <mingo@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Bin Lu <bin.lu@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 18, 2019 at 3:49 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Now that we have a new hook ptrace_syscall_enter that can be called from
> syscall entry code and it handles PTRACE_SYSEMU in generic code, we
> can do some cleanup using the same in syscall_trace_enter.
>
> Further the extra logic to find single stepping PTRACE_SYSEMU_SINGLESTEP
> in syscall_slow_exit_work seems unnecessary. Let's remove the same.
>

Unless the patch set contains a selftest that exercises all the
interesting cases here, NAK.  To be clear, there needs to be a test
that passes on an unmodified kernel and still passes on a patched
kernel.  And that test case needs to *fail* if, for example, you force
"emulated" to either true or false rather than reading out the actual
value.

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
