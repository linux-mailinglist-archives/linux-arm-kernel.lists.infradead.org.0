Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5169ED436D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6lTJXB/vALJE86WNGMviFxRg0Thi8lj51yqbPttrwM=; b=DUHs8ZUkJdITya
	mdmY4Ng/a6QKUWGrS6tvmkeut1sPlJPR6xC5cpDlvT5/GYVSQLyHP2/acL6nv4PDpdTobf4Nr0M+7
	+/El8sBgcQHQC5mboifKOu+H3hHlXadPnYQeBG1bLuz5KugJ/pd8l+KH8OaU2vhDX8juNQhojlWy1
	CY3kwJhgha0CTDKnp31OHDNPJnC9TD7ggl4mW3Zr43/PHpwbp433Ad0an0IdAOULev4SpavXtTxKE
	15dJEiAh+IYM3dB7wSwFf7YhCKVhtj9MevXZhX/xSCWTGn1pyj4JyzkAUtIhkG9cmXYp+ZrhLSs0t
	7708RcX45upny7sovUIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwGx-0003Dt-8O; Fri, 11 Oct 2019 14:52:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwGq-0003Cq-2W
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:51:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 614DB142F;
 Fri, 11 Oct 2019 07:51:54 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 607CF3F68E;
 Fri, 11 Oct 2019 07:51:51 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:51:49 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>
Subject: Re: [PATCH v2 04/12] arm64: docs: cpu-feature-registers: Document
 ID_AA64PFR1_EL1
Message-ID: <20191011145148.GK27757@arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-5-git-send-email-Dave.Martin@arm.com>
 <87zhi7l8qz.fsf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhi7l8qz.fsf@linaro.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_075156_204780_45C5ADBE 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 02:19:48PM +0100, Alex Benn=E9e wrote:
> =

> Dave Martin <Dave.Martin@arm.com> writes:
> =

> > Commit d71be2b6c0e1 ("arm64: cpufeature: Detect SSBS and advertise
> > to userspace") exposes ID_AA64PFR1_EL1 to userspace, but didn't
> > update the documentation to match.
> >
> > Add it.
> >
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> >
> > ---
> >
> > Note to maintainers:
> >
> >  * This patch has been racing with various other attempts to fix
> >    the same documentation in the meantime.
> >
> >    Since this patch only fixes the documenting for pre-existing
> >    features, it can safely be dropped if appropriate.
> >
> >    The _new_ documentation relating to BTI feature reporting
> >    is in a subsequent patch, and needs to be retained.
> > ---
> >  Documentation/arm64/cpu-feature-registers.rst | 15 +++++++++++----
> >  1 file changed, 11 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentat=
ion/arm64/cpu-feature-registers.rst
> > index 2955287..b86828f 100644
> > --- a/Documentation/arm64/cpu-feature-registers.rst
> > +++ b/Documentation/arm64/cpu-feature-registers.rst
> > @@ -168,8 +168,15 @@ infrastructure:
> >       +------------------------------+---------+---------+
> >
> >
> > -  3) MIDR_EL1 - Main ID Register
> > +  3) ID_AA64PFR1_EL1 - Processor Feature Register 1
> > +     +------------------------------+---------+---------+
> > +     | Name                         |  bits   | visible |
> > +     +------------------------------+---------+---------+
> > +     | SSBS                         | [7-4]   |    y    |
> > +     +------------------------------+---------+---------+
> > +
> >
> > +  4) MIDR_EL1 - Main ID Register
> >       +------------------------------+---------+---------+
> >       | Name                         |  bits   | visible |
> >       +------------------------------+---------+---------+
> > @@ -188,7 +195,7 @@ infrastructure:
> >     as available on the CPU where it is fetched and is not a system
> >     wide safe value.
> >
> > -  4) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
> > +  5) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
> =

> If I'm not mistaken .rst has support for auto-enumeration if the #
> character is used. That might reduce the pain of re-numbering in future.

Ack, though it would be good to go one better and generate this document
from the cpufeature.c tables (or from some common source).  The numbers
are relatively easy to maintain -- remembering to update the document
at all seems the bigger maintenance headache right now.

I think this particular patch is superseded by similar fixes from other
people, just not in torvalds/master yet.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
