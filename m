Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE95B104988
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 05:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f66laEBupUY/5H0pNX5Jf/sSDim5F1QGk2m9Xx782lA=; b=hwvvmkYk9dN1qy
	1kZ6DhHB7fiyKHrV9PGlOF6AkGuN3SjnANS/dp8JMSJO1wp9D18tzDluMpVav1kuD1ncBasErCLD9
	PgikP/DsItnLX4lZYL5ZqtSEtePLoNYKPQqtY8IQ8rKAyKGbumjdfOQL6sDjySVYp1OvekzMaUWFF
	i0pH3qAoaJ6EyKoxYlmZll+gC4UdCRnufa1hOcMhlrRufNLSDGL5GdQZHNg37bP/AMjw6s6S0C52f
	GrOBMgzlKGvEiCy/FzG4WeYt/nhF+YuRASFeSPjVMV4n0NlGr0FkM8n4JZjFbgFs/9Qlj1Qoil+jK
	4Kbc8A3iuk5bv2jKtLrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXdjG-00035a-93; Thu, 21 Nov 2019 04:06:02 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXdj3-00034c-LF
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 04:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574309147;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ddcL9As6t6N2W7FClqz+MM4Vj5YcYH8nBzk/ipEcve0=;
 b=YlEOov1KgX/dyD+QILmBCPs9izD2voLE9iPBpCobzFsbRqC4YBDrE4m3Ij1yABITjtZ7Gu
 Ru9o2sD9pkCkT0GOkII7yR1I+opn4dPET0EW7QRkhysmmSeMs4YbxjHyTAYX/bqJMnPwyn
 5tSS7m3ij4pqZVq4faTlrNom2gLAaaA=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-YKFXy-ljPdewg51yZYQ-SA-1; Wed, 20 Nov 2019 23:05:45 -0500
Received: by mail-lf1-f72.google.com with SMTP id f20so508858lfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 20:05:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XAdRIJ2WowQ38gyWjLPpmLE8JvGLeIMdMt69fOJjIH4=;
 b=MkRf2NiRMjh1NLRnb5WLluYsNR/y55DctuLGP9kS5TAIHJPx6i8cv937q88TU5TBB7
 hWt5qxzD6DeN3hbq/y64fS3HFWGPu0EXhQWJXFLrfeF9NMcigjG65Y5iLL5bPQqO0EaI
 9qUaafCkjoYn98qVxNnecVzqOmo5Sxz4Sd1Kht8p4XFqmzGfIg5y7ps0Bfo0XWSXl/7z
 vBTF1IDVjeUI1KtxfBJV/wW5Og1I1aaqNGreDHA3zudCNESLMGs4NgafXwUP2nm/aSEA
 dV8yBQ0+uwJygeOnAYcw0iG33zdOXsg6SCV/Rq8twXj5ghB603lUbrb6ljBKIqmNdp1Z
 N0Iw==
X-Gm-Message-State: APjAAAUrn2Q1KBORQbtDQkIGfRG6uVw5X+67JzeJaAGbq/Nr2/fsHwuF
 HzBPs0LL0985/qlM3Li7/2x0i8PFXS31Q91C2eHAh0lVy1rH1WJDMf1o44HJqMX9vtzGb2i4VkZ
 qr7HPuRYgfRuG8zmvzD5XBTWi1HN+iO4W/BIaGQs5CyLttmfN8fk=
X-Received: by 2002:a19:bec5:: with SMTP id o188mr5652138lff.140.1574309143483; 
 Wed, 20 Nov 2019 20:05:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqy5dgsLiGw/+gMUCqCKW9wbveCY62iBIDQZk8TIYLgEUZuvgMt3xbY56NyFoSWIFRlYSXo+FYcMeO7+9TakXnE=
X-Received: by 2002:a19:bec5:: with SMTP id o188mr5652105lff.140.1574309143167; 
 Wed, 20 Nov 2019 20:05:43 -0800 (PST)
MIME-Version: 1.0
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
 <20191121032047.GB23368@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20191121032047.GB23368@dhcp-128-65.nay.redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 21 Nov 2019 09:35:29 +0530
Message-ID: <CACi5LpOXW+HTsAZfxbwnCnypSdpk4=t8bsS=SRx0crc=4261VA@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: Dave Young <dyoung@redhat.com>
X-MC-Unique: YKFXy-ljPdewg51yZYQ-SA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_200549_771027_E6BAD584 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Paul Mackerras <paulus@samba.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Anderson <anderson@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Boris Petkov <bp@alien8.de>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On Thu, Nov 21, 2019 at 8:51 AM Dave Young <dyoung@redhat.com> wrote:
>
> On 11/11/19 at 01:31pm, Bhupesh Sharma wrote:
> > Changes since v3:
> > ----------------
> > - v3 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022590.html
> > - Addressed comments from James and exported TCR_EL1.T1SZ in vmcoreinfo
> >   instead of PTRS_PER_PGD.
> > - Added a new patch (via [PATCH 3/3]), which fixes a simple typo in
> >   'Documentation/arm64/memory.rst'
> >
> > Changes since v2:
> > ----------------
> > - v2 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022531.html
> > - Protected 'MAX_PHYSMEM_BITS' vmcoreinfo variable under CONFIG_SPARSEMEM
> >   ifdef sections, as suggested by Kazu.
> > - Updated vmcoreinfo documentation to add description about
> >   'MAX_PHYSMEM_BITS' variable (via [PATCH 3/3]).
> >
> > Changes since v1:
> > ----------------
> > - v1 was sent out as a single patch which can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022411.html
> >
> > - v2 breaks the single patch into two independent patches:
> >   [PATCH 1/2] appends 'PTRS_PER_PGD' to vmcoreinfo for arm64 arch, whereas
> >   [PATCH 2/2] appends 'MAX_PHYSMEM_BITS' to vmcoreinfo in core kernel code (all archs)
> >
> > This patchset primarily fixes the regression reported in user-space
> > utilities like 'makedumpfile' and 'crash-utility' on arm64 architecture
> > with the availability of 52-bit address space feature in underlying
> > kernel. These regressions have been reported both on CPUs which don't
> > support ARMv8.2 extensions (i.e. LVA, LPA) and are running newer kernels
> > and also on prototype platforms (like ARMv8 FVP simulator model) which
> > support ARMv8.2 extensions and are running newer kernels.
> >
> > The reason for these regressions is that right now user-space tools
> > have no direct access to these values (since these are not exported
> > from the kernel) and hence need to rely on a best-guess method of
> > determining value of 'vabits_actual' and 'MAX_PHYSMEM_BITS' supported
> > by underlying kernel.
> >
> > Exporting these values via vmcoreinfo will help user-land in such cases.
> > In addition, as per suggestion from makedumpfile maintainer (Kazu),
> > it makes more sense to append 'MAX_PHYSMEM_BITS' to
> > vmcoreinfo in the core code itself rather than in arm64 arch-specific
> > code, so that the user-space code for other archs can also benefit from
> > this addition to the vmcoreinfo and use it as a standard way of
> > determining 'SECTIONS_SHIFT' value in user-land.
> >
> > Cc: Boris Petkov <bp@alien8.de>
> > Cc: Ingo Molnar <mingo@kernel.org>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Steve Capper <steve.capper@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Dave Anderson <anderson@redhat.com>
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: x86@kernel.org
> > Cc: linuxppc-dev@lists.ozlabs.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-doc@vger.kernel.org
> > Cc: kexec@lists.infradead.org
> >
> > Bhupesh Sharma (3):
> >   crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
> >   arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
>
> Soft reminder:  the new introduced vmcoreinfo needs documentation
>
> Please check Documentation/admin-guide/kdump/vmcoreinfo.rst

Sure, will send a v5 to address the same.

Thanks,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
