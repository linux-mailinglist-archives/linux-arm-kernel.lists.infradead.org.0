Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC1030A8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6jwKTeTDgETOhzaoKVKj4GhDTDm+XE70k57RhZRoHQ=; b=hOl31VD1moPthF
	4Y41tE4R9ndeHBw1zF6A+srlUGftrseyHce3egUgMv16vjTtg/MlVGpC1akWBXLynotrS4HSACnLU
	BWfE+aX4S+6A08Nu2iA7g2tTBHHL9CFRbFsxeibysNAtgwen3yZ1+znvsgaixkeftZHX1BVRkjBIe
	VvhFnVIXbg+BA5lVi7REA/9bC6q6AwudR8Jdsbmfu8QmSCsYEhRQG/oPm7Q7e+cV3qN7Xuzdvti1Q
	JR0koSDdkn9MZlkMDLMI3Cr+UFGw5gNsSBvb6v83eo2ILtHJmtVZ/ZNcEsum6jsJ1M8JJzpMsE3Z5
	MHsP2sMw1+gBCHYi36qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdBr-0007hs-QW; Fri, 31 May 2019 08:47:07 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdBk-0007ZZ-Qg
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:47:02 +0000
Received: by mail-qt1-f195.google.com with SMTP id s15so10388553qtk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 01:47:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=musdmvMfmuFle9U6pm5zoVH2cKv9Sr+Vl2GKNkM9WAw=;
 b=AL80P8lXuyZjc5XV6ZR1W8wlv4oCCNKh7dAPDVPbgy09N6/qi7C+G2OixLh/JguExl
 Yy2mKjPUsoDBl0K9ixoVctbAQNlvstpd1TZWkOkfxvqvKadkylB/6ynZzvwErCtVUSIp
 9V3v8Uo7L/WHLJikm+iBkFZcOlyUT4BwPvt3Dmnez3URsyheQaeSZ4SafJA5OXRG1+jD
 BgQkUjYvu9gqTOLehGsFH44yQDS5fCARzYjDl+4kamrhnlEsEZ/birfHOS6Y+PmXzR0I
 a0rrI9zDiRlE1bGdkMYorp+c/voS6qaCqhKkoYaZb53eCVuQnPMukwpVzQai819OqCW8
 X23Q==
X-Gm-Message-State: APjAAAVGzO6PIUFwiP41l47ridafLnN5g/YaFIWdRQFVHllqw8NXFxTg
 EaiZBUIfTOs+ZFdXK9GziJL5CiKiNbpDbddt4Kc=
X-Google-Smtp-Source: APXvYqxSrOECMcfl+h+gsYyFe6RMvJn3OIE0E1mWVu+ZeZ78o7tzQsJyOmKpAbm439V51yw3EWIWq4QnzKJ/LfAWdno=
X-Received: by 2002:aed:3e7c:: with SMTP id m57mr2866079qtf.204.1559292419933; 
 Fri, 31 May 2019 01:46:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
In-Reply-To: <20190530141531.43462-1-vincenzo.frascino@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 10:46:43 +0200
Message-ID: <CAK8P3a11DE0sXteZoaP_N=mDhx3tXitGKddn1ogtFqJBYO-SCA@mail.gmail.com>
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_014700_863296_0895BD66 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 4:15 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> vDSO (virtual dynamic shared object) is a mechanism that the Linux
> kernel provides as an alternative to system calls to reduce where
> possible the costs in terms of cycles.
> This is possible because certain syscalls like gettimeofday() do
> not write any data and return one or more values that are stored
> in the kernel, which makes relatively safe calling them directly
> as a library function.

Hi Vincento,

I've very happy with how this turned out overall, and as far as I can
tell you have addressed all my previous comments. I had another
look through the series and only noticed a few very minor issues.

I hope Thomas can have another look soon, he probably also finds
a few things, and then it should be ready for inclusion in linux-next
and the coming merge window.

One open question I touched in my review is whether we want to
have a vdso version of clock_getres() in all architectures or not.
I'd prefer to leave it out because there is very little advantage to
it over the system call (the results don't change at runtime and
can easily be cached by libc if performance ever matters), and
it takes up a small amount of memory for the implementation.

We shouldn't just need it for consistency because all callers
would require implementing a fallback to the system call
anyway, to deal with old kernels.

If anyone comes up with a good reason why it should be added
after all, let me know and I'll stop mentioning it.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
