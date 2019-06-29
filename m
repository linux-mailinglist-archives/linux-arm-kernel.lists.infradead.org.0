Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C565ABF0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 16:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BKnV58rEtR7AEcMh4MVunBUi20Hmecy29u9YLU2cUk=; b=n7UjPQG3u+FhF7
	cp08JrKhn0kAAk0T+0Dm3Bzxub4e2lmvsH1nzORPnoNusSacb8oAuv4BeafrKOpTNHmgl1Ci8pEGO
	qoo24UQKM4TnKhq51Jio0fa0o9+7vbTgmlwaWOgsJAHx7eJ5cVxhJ1xtGVOjZIyF4jRb2W5plfJW+
	KP7r3XSEscmKBxrMkTwl/RhMQNcf2Y01tv9bBBFwO6MvXcDdiprxcPni6bHkCPs5SA6u0MbBVQaVY
	k5eUsij0zV0z+jNiPv/gg6FVLqAkgw8h0ZX4L+Ibz+bi4N34Vgg8swWqLCWrKfmtREmPSZj7QZrei
	FZPmbEk3rij58EetqxTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhEgI-000864-W6; Sat, 29 Jun 2019 14:50:22 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhEg8-00085E-8y; Sat, 29 Jun 2019 14:50:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id c14so4880695plo.0;
 Sat, 29 Jun 2019 07:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gpwY9SEzwskjwipmCEjEPDzJ+JkSWKdevJdN5fw1/iM=;
 b=AlVvTidmIeM8754EXuPmkm83s6qNg5Jm5gjt3YhUtsu7/PgF7C0PqVa6ptBpiy7P+b
 7w/vUfWCCFqmbb8iWdujQ5RlItRswygS1/W7QpiSFfq/fT2Nu4dRgemGkLF72hCTAl9s
 CRIHmYzfZsico8YFuLWYJ5693A7o/b4yO4xb3CGFk8Csreadz74Dd/N3TbnDzTPI329w
 tmx7Gx26KM0nmNFaM17rZJNe2CjctoMPNGJ1w13qOjvTkEKMGe5RVpeApLtX8/DXjhQN
 S2voeFsnwfTZ/9nocjMAB1DWN9izRoiZR3qOpRdSjzhL8358DohG1/ewXzBcpnKciwy+
 LQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=gpwY9SEzwskjwipmCEjEPDzJ+JkSWKdevJdN5fw1/iM=;
 b=W9rj+PjBYap3bt3U7FTP4WgEoaSw+3HApCQg1BxregVxHsPlDavIJMCI807R82arZO
 i56s0HWYPWea7TSq5jO6YC1/MQwQgDqpVpM5byesk9ODVxO5YDRz5Cl9b49kJNrZbhXf
 B1Ao4Do/xAhMDu5enGT2CeIWlxryyID1FJQ73yngGkAu4VBEa3BHTAD6I92QVSVYdAxz
 Dztoipl8NXBUYSRdIZlQr0Rs7zrcouVvZMy4cY6cUGPqN6IEzhpNsXRwEhXhJtxCgK3Z
 rMCRQ1vUMkBnINrkB6Ujxd+Dv6qbYvdKwBj0pTxzIiZG+9hWiHnQwFx7gQyRSsK1mEUY
 fU2Q==
X-Gm-Message-State: APjAAAVkSTxgKvxQYqo1KTaMK52uBY61yPLBR2yKltkHmzZvxzZkySk1
 5rGsleDl0WerBuSb/4FDxac=
X-Google-Smtp-Source: APXvYqwzAvuZq8uFS3MlBSIKk71/6JUg9AHYM+1A6MpIzGTxNNk8+GY2Jbg28JKN9AieKqNESQt07g==
X-Received: by 2002:a17:902:2bcb:: with SMTP id
 l69mr18151254plb.155.1561819811065; 
 Sat, 29 Jun 2019 07:50:11 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id r196sm4899405pgr.84.2019.06.29.07.50.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 07:50:10 -0700 (PDT)
Date: Sat, 29 Jun 2019 07:50:09 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
Message-ID: <20190629145009.GA28613@roeck-us.net>
References: <1560420444-25737-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560420444-25737-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_075012_343477_10E5AEAF 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, James Hogan <jhogan@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-snps-arc@lists.infradead.org, Fenghua Yu <fenghua.yu@intel.com>,
 linux-s390@vger.kernel.org, Andrey Konovalov <andreyknvl@google.com>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jun 13, 2019 at 03:37:24PM +0530, Anshuman Khandual wrote:
> Architectures which support kprobes have very similar boilerplate around
> calling kprobe_fault_handler(). Use a helper function in kprobes.h to unify
> them, based on the x86 code.
> 
> This changes the behaviour for other architectures when preemption is
> enabled. Previously, they would have disabled preemption while calling the
> kprobe handler. However, preemption would be disabled if this fault was
> due to a kprobe, so we know the fault was not due to a kprobe handler and
> can simply return failure.
> 
> This behaviour was introduced in the commit a980c0ef9f6d ("x86/kprobes:
> Refactor kprobes_fault() like kprobe_exceptions_notify()")
> 

With this patch applied, parisc:allmodconfig images no longer build.

In file included from arch/parisc/mm/fixmap.c:8:
include/linux/kprobes.h: In function 'kprobe_page_fault':
include/linux/kprobes.h:477:9: error:
	implicit declaration of function 'kprobe_fault_handler'; did you mean 'kprobe_page_fault'?

Reverting the patch fixes the problem.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
