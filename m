Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21757C433
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtNHKSB0VOUyZtwMWSdjTQ3XYYtJZxyjSqbAxmXfsFk=; b=RjvvjaEXAeVsn9
	D8dU3SEh/I7Cfa44nhK3yU/UOL4S4oCSIbF2mzzFUTeFPHMWOK4e2KG+W3lBOh9YGEmmvJgH96L7Q
	5Qu9WjgYMH15mVlebt43/2YIEsaCo7XfnEjXA1eyD2g26T5OrJQYA3SoAh5V1i/kgOjUJ86d7z9pI
	0dpB6On6rlkfoHJ3OPg2YmiyJ0EIL9x79jU+KLc767BkQdl4GafvvfRMFsfBR8J46zUC3ZXUnl+Z2
	Ec9X4Ku/wzL7Z709OTyBN2YtUOjYg2wISNuPuAFMXJfg75FNIs5PYb2oU1+4E250ui1OpEwTLONBq
	BPO/kHPyqls7iPjjRRHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsp8C-0007GL-2g; Wed, 31 Jul 2019 13:59:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsp85-0007FU-3z
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:58:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id z28so11474732ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 06:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6uyQRZ6J/VGu+GRBY89f4/UdsO6g2H35LuTyha3NB8E=;
 b=HI+gOcTaURQ3MEznucBgmDHuKOk0Y5171KUM3l34LlAOPW6XZpG6qqsyz9j/P+Llgw
 jJwKIjSYVPTNi2/CIUILUJLlr3357zISH28+A2IjbBfvfscK9MyZe3j7F9SO33KsnikP
 nbobJ+27D1CIl/MzLH7uP5K+S6ZGhkPC2kZ1PGxTuJC7Bygn93iO0bJMXcpPh9OOr2gC
 Evf1SJ4kQOz1Hb3UszrvxYBu4Qmdheq6ChjQlD8fQgdiO//KgoS6f0dv2yyJ1MnmlqEQ
 DctMddNSq9454hzkxOJCQz85RQokoy+If4U4Fozfhoenl1YWS4I0iJyPohnPdALeHUU0
 wTIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6uyQRZ6J/VGu+GRBY89f4/UdsO6g2H35LuTyha3NB8E=;
 b=SNhhq8LiytgW8T+vj7gHsruGXocF9I89ZSaXg6S5a29pRZNMnXLNrEzVz4GlA6ZeU+
 5OdKAqo/eqKiSb/jW0pX+RTf0mXuVc9WccaWQttWZhBza9iiL2bJsAJocjlc61F9aOe+
 qAYcWhQP1Nkp5sdXk8yi7JV1gDPSwPn6exsdrkzoK+5u5lcIZeymqPpwqyG/faZ7Z5cN
 2WUYmlyQHJFJzy+poFv39uWGbV8aaW8nwvAhDf4YBHlhHvo+486TM5BJwuORR6Or76jr
 Kg5dbjxsJvfxDP1EvkFATfYQL4ID8GWN5vOSO9LEVcG3Wm4qfHsLck9JFrISDE+GrUhW
 70/A==
X-Gm-Message-State: APjAAAX6XUtVFZyzmoMssQZ3+JrrsasNhHua3RtSzJFKD0s5/0LkFAhr
 1K7secRlgACfozBmdOxgLqfcVuzNchErQtxDLgwhtAIaiNQ=
X-Google-Smtp-Source: APXvYqy0Wt0sy2BNVrAcYeCI8ch73LVT0TjAvnK4Q5cvn/jHQarDv/IdlVkkeNuR9mCwu+8di8NX8a9uWp3ErIq3vbw=
X-Received: by 2002:a2e:301a:: with SMTP id w26mr63175510ljw.76.1564581534527; 
 Wed, 31 Jul 2019 06:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAE=NcrY7b8eTTovOszBhGhVbjfJAXoAYehiUJyPENGfwWoVcPw@mail.gmail.com>
In-Reply-To: <CAE=NcrY7b8eTTovOszBhGhVbjfJAXoAYehiUJyPENGfwWoVcPw@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 31 Jul 2019 19:28:43 +0530
Message-ID: <CAFA6WYOEqe1a1DCyVYKA+oZaZ0n5hnjxdubstUnrwdUW1-4xHw@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Janne Karhunen <janne.karhunen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_065857_171345_7FAA751C 
X-CRM114-Status: GOOD (  28.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 jejb@linux.ibm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Mimi Zohar <zohar@linux.ibm.com>, Casey Schaufler <casey@schaufler-ca.com>,
 linux-integrity@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 31 Jul 2019 at 15:51, Janne Karhunen <janne.karhunen@gmail.com> wrote:
>
> Hi,
>
> To clarify a bit further - my thought was to support any type of trust
> source.

That could be very well accomplished via Trusted Keys abstraction
framework [1]. A trust source just need to implement following APIs:

struct trusted_key_ops ts_trusted_key_ops = {
       .migratable = 0, /* non-migratable */
       .init = init_ts_trusted,
       .seal = ts_key_seal,
       .unseal = ts_key_unseal,
       .get_random = ts_get_random,
       .cleanup = cleanup_ts_trusted,
};

> Remote, local or both. Just having one particular type of
> locally bound 'TEE' sounded very limited,

TEE is just one of trust source like TPM, we can have other trust
source as mentioned above.

> especially when nothing from
> the TEE execution side is really needed for supporting the kernel
> crypto. What you really need is the seal/unseal transaction going
> somewhere and where that somewhere is does not matter much.

Its only the seal/unseal operations that are provided by TEE driver
that hooks up under trusted keys abstraction layer.

> With the
> user mode helper in between anyone can easily add their own thing in
> there.
>

Isn't actual purpose to have trusted keys is to protect user-space
from access to kernel keys in plain format? Doesn't user mode helper
defeat that purpose in one way or another?

>

[1] https://lkml.org/lkml/2019/7/18/284

-Sumit

> --
> Janne
>
> On Wed, Jul 31, 2019 at 10:11 AM Janne Karhunen
> <janne.karhunen@gmail.com> wrote:
> >
> > Hi,
> >
> > Interesting, I wrote something similar and posted it to the lists a while back:
> > https://github.com/jkrh/linux/commit/d77ea03afedcb5fd42234cd834da8f8a0809f6a6
> >
> > Since there are no generic 'TEEs' available, I implemented the same
> > thing as a generic protocol translator. The shared memory binding for
> > instance already assumes fair amount about the TEE and how that is
> > physically present in the system. Besides, the help from usage of shm
> > is pretty limited due to the size of the keydata.
> >
> >
> > --
> > Janne
> >
> >
> >
> >
> > On Tue, Jul 30, 2019 at 3:26 PM Sumit Garg <sumit.garg@linaro.org> wrote:
> > >
> > > Add support for TEE based trusted keys where TEE provides the functionality
> > > to seal and unseal trusted keys using hardware unique key. Also, this is
> > > an alternative in case platform doesn't possess a TPM device.
> > >
> > > This series also adds some TEE features like:
> > >
> > > Patch #1, #2 enables support for registered kernel shared memory with TEE.
> > >
> > > Patch #3 enables support for private kernel login method required for
> > > cases like trusted keys where we don't wan't user-space to directly access
> > > TEE service to retrieve trusted key contents.
> > >
> > > Rest of the patches from #4 to #6 adds support for TEE based trusted keys.
> > >
> > > This patch-set has been tested with OP-TEE based pseudo TA which can be
> > > found here [1].
> > >
> > > Also, this patch-set is dependent on generic Trusted Keys framework
> > > patch-set [2].
> > >
> > > [1] https://github.com/OP-TEE/optee_os/pull/3082
> > > [2] https://lkml.org/lkml/2019/7/18/284
> > >
> > > Changes in v2:
> > > 1. Add reviewed-by tags for patch #1 and #2.
> > > 2. Incorporate comments from Jens for patch #3.
> > > 3. Switch to use generic trusted keys framework.
> > >
> > > Sumit Garg (6):
> > >   tee: optee: allow kernel pages to register as shm
> > >   tee: enable support to register kernel memory
> > >   tee: add private login method for kernel clients
> > >   KEYS: trusted: Introduce TEE based Trusted Keys
> > >   doc: keys: Document usage of TEE based Trusted Keys
> > >   MAINTAINERS: Add entry for TEE based Trusted Keys
> > >
> > >  Documentation/security/keys/index.rst       |   1 +
> > >  Documentation/security/keys/tee-trusted.rst |  93 +++++++++
> > >  MAINTAINERS                                 |   9 +
> > >  drivers/tee/optee/call.c                    |   7 +
> > >  drivers/tee/tee_core.c                      |   6 +
> > >  drivers/tee/tee_shm.c                       |  16 +-
> > >  include/keys/trusted-type.h                 |   3 +
> > >  include/keys/trusted_tee.h                  |  66 +++++++
> > >  include/linux/tee_drv.h                     |   1 +
> > >  include/uapi/linux/tee.h                    |   8 +
> > >  security/keys/Kconfig                       |   3 +
> > >  security/keys/trusted-keys/Makefile         |   3 +-
> > >  security/keys/trusted-keys/trusted-tee.c    | 282 ++++++++++++++++++++++++++++
> > >  security/keys/trusted-keys/trusted.c        |   3 +
> > >  14 files changed, 498 insertions(+), 3 deletions(-)
> > >  create mode 100644 Documentation/security/keys/tee-trusted.rst
> > >  create mode 100644 include/keys/trusted_tee.h
> > >  create mode 100644 security/keys/trusted-keys/trusted-tee.c
> > >
> > > --
> > > 2.7.4
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
