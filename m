Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10173129CBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 03:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqVdXQebnIAFrUK70kEv8HIwpHKDbZd0p6LQBv1kOeU=; b=KR2VQ28intjCzT
	RRALegwlzV8q4lg8QHdoHddIMEXnNaTqkh1MVVtj80UQYmb4lbjUEbE8jy16/kiyXTRKdm6yjNGDt
	l9sdfzeYkXY52fPOvbEj2u8ckH3oqMednZkWnNZ+gte/Ho+NhVrnTmvB6pgoV/VqeGphmnZ8SBcdz
	MWR0uzY0IRTubfxYxGDlzaxDS6mjM9vqJcZgpejT/3E1m9n3CgssIDjCcKupjDDs87gpfFEm7c//v
	sXGrnFcJJ6ONtkmi305CZJUtoMlcdKUHvt+HST8lqtVQI72H2D7gFe8dvwBVa2iZACIDCNLJOyBsN
	2goAtyOsHCjpS4z5tsRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijZvY-0002H9-EI; Tue, 24 Dec 2019 02:28:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijZvP-0002Gf-0S
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 02:27:56 +0000
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7226B2075B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 02:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577154474;
 bh=urdNwQ/OTeq2Z4hdgMEm4P258E+sy9JNDdnsxX/A+m0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=e5/A2TMzWmvgBVcYJhSASriiw23lUwDkTKRRrtVzBPcnxYy86U7OFXx0HfahVlJoE
 gR4r6zzD7UbCJZ6hzzKPUkP9RiRaHMYXHegUwL+YEO5JXAbwTkd+koSfO5sdzwK5Kg
 cSsvwQzIEipkLbhYGIOw86xV4zgHkcuJxD1NzlXU=
Received: by mail-wr1-f46.google.com with SMTP id j42so18590811wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 18:27:54 -0800 (PST)
X-Gm-Message-State: APjAAAVBrzegnz259z54h13gSlW9rSgk6FmMpCcBdFk/yOgTnnt8yXbZ
 xYWCHBHgCcqMrqQqVlg53SdPNUJ1IK4dWwU/ZqhgPg==
X-Google-Smtp-Source: APXvYqzX7Wx0WQQGQxSsSx/rylu702E8XhFQtmBzrPd/vN45dmJAZ0EePwEz406rgBkEgebEu04CDi9IHkjEhDWde+I=
X-Received: by 2002:adf:f20b:: with SMTP id p11mr31631213wro.195.1577154472974; 
 Mon, 23 Dec 2019 18:27:52 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <02861d0a05c2d48db4e9ee9093e2e2598093c372.1577111366.git.christophe.leroy@c-s.fr>
In-Reply-To: <02861d0a05c2d48db4e9ee9093e2e2598093c372.1577111366.git.christophe.leroy@c-s.fr>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 23 Dec 2019 18:27:40 -0800
X-Gmail-Original-Message-ID: <CALCETrW9hsrVVzudvRY22AqakcsrVzqp=SdwOTwW2zRBK+kEaA@mail.gmail.com>
Message-ID: <CALCETrW9hsrVVzudvRY22AqakcsrVzqp=SdwOTwW2zRBK+kEaA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 04/10] lib: vdso: get pointer to vdso data from the
 arch
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_182755_068019_02A0999A 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 6:31 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> On powerpc, __arch_get_vdso_data() clobbers the link register,
> requiring the caller to set a stack frame in order to save it.
>
> As the parent function already has to set a stack frame and save
> the link register to call the C vdso function, retriving the
> vdso data pointer there is lighter.

I'm confused.  Can't you inline __arch_get_vdso_data()?  Or is the
issue that you can't retrieve the program counter on power without
clobbering the link register?

I would imagine that this patch generates worse code on any
architecture with PC-relative addressing modes (which includes at
least x86_64, and I would guess includes most modern architectures).

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
