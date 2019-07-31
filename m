Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23347BE4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 12:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/SqyexLmFSjeMxEhypjkGznltP46nGsGMJd62XW6ps=; b=Cqv8cJMnpWOn3u
	EsNG0hytyCvuaMNiv3yjBJNTzyBSTtCPcKA1XSaqafqM53+WSdkp+5EAF+QKMyRZZnIjb17vZdTmo
	q1H+LolbihSqDF1VHnvIdKZmU2QxXdvVeRiCc0LQM+KCwEXYj8WZ8NJciweva8meMM8L+4X8yslpF
	N7ii5TlJzEPQu0MMjW5m7TTuykrjT4uD83yxFFFxVH58sApN4CMOrCmZBLDcnlNMtraefdfoqRAFM
	rXPrYVNF40W6QnkbS+gyOfR91KGY1kNXX2Uy+CfPwrPtKihM7geuvPeqkRvZPPSZ1/6RgvSUNry0y
	oigOwoxtMqshQTobruCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hslkG-0000af-9M; Wed, 31 Jul 2019 10:22:08 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hslk3-0000YA-33
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 10:21:56 +0000
Received: by mail-lj1-x243.google.com with SMTP id z28so10808811ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 03:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WTjYYJ5w8JGFiCV+fisqsMFDW4bJ2CE5EvIC9ToOEts=;
 b=kQgLwbxGzgHNMyuTAkxNFzi2aRlyhVO9V24U6HoPMgsf73FeO4NNRkfbI9sA1/VeCi
 L+vRPE0C3z1l0UJxCQYGpmkdJfvC3jC+J18p407ueMt6c80hF66r4PMCidNSlV2pZVYh
 hJj99MZl7trjLsU28smtLW55AiDdl4TlXelTS2YuejV4BUW5JhJjShGEm9mKW27TPeLa
 QRy6yGgoBgplQLbP/GvoGKhajbKfSwsOTs1uvbYFnYX4n44Oji+j0MrTdbv21yJP43Hk
 wtu9Mqomps2+RbIuua4UWVObpyjn07ZnC5xX0mzc18psE6MD0ZT5nvbZ4EMRfD/pR7+n
 JDZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WTjYYJ5w8JGFiCV+fisqsMFDW4bJ2CE5EvIC9ToOEts=;
 b=Vmj73UCY2DzSbO9S65m8oyf0f4iXeAV2QZ9ywd1v5/B4WSDsJcmrhjYf9FCdjJNRqz
 J/vp5ZglF7P1Nv7Yips3CD6s7L0tZR7E2jN4clLwdgwZDbBCQLCg0g/mKrsyhZ+y1YNC
 FfBnEcGKuQWs6cqE//JXq/JCE830l6o/QT9DnpwXxdhh5PzK56CnqJtqRLKXPhfDupaf
 6aQTVk3eElngjP00R8cFMxOCzIVj1KOZ+YavI3T1S2iMo69+fCJeUlYKViqBNP1dPtd+
 QZ16rzotUZ7NUp3pR/jIaZS1Zx9fnwzJ5ETNO4FRqhuHC7ShENzYWbT6wfie3sPD1s5g
 NQSg==
X-Gm-Message-State: APjAAAUECeKvhb83LKpwL76B2LPh85H/aow4ueNv+8wHpszTC+sAMt/Q
 O7bAvVwMNUyHaOlB8yaLi9iKQFrzRWdQYadTuGk=
X-Google-Smtp-Source: APXvYqx/9SP/mdIA/VveogDuSBQVAooZmV3FTt0pb7Z8M4ZHoddgQssQP7MNd2vdOvgkZ7HmpBbZgYsmAHs3KDhjdKE=
X-Received: by 2002:a2e:9857:: with SMTP id e23mr62898681ljj.217.1564568513273; 
 Wed, 31 Jul 2019 03:21:53 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
In-Reply-To: <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Wed, 31 Jul 2019 13:21:41 +0300
Message-ID: <CAE=NcrY7b8eTTovOszBhGhVbjfJAXoAYehiUJyPENGfwWoVcPw@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_032155_157893_09BF8B1D 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (janne.karhunen[at]gmail.com)
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org, corbet@lwn.net,
 jejb@linux.ibm.com, ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org,
 James Morris <jmorris@namei.org>, jarkko.sakkinen@linux.intel.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Mimi Zohar <zohar@linux.ibm.com>, Casey Schaufler <casey@schaufler-ca.com>,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

To clarify a bit further - my thought was to support any type of trust
source. Remote, local or both. Just having one particular type of
locally bound 'TEE' sounded very limited, especially when nothing from
the TEE execution side is really needed for supporting the kernel
crypto. What you really need is the seal/unseal transaction going
somewhere and where that somewhere is does not matter much. With the
user mode helper in between anyone can easily add their own thing in
there.


--
Janne

On Wed, Jul 31, 2019 at 10:11 AM Janne Karhunen
<janne.karhunen@gmail.com> wrote:
>
> Hi,
>
> Interesting, I wrote something similar and posted it to the lists a while back:
> https://github.com/jkrh/linux/commit/d77ea03afedcb5fd42234cd834da8f8a0809f6a6
>
> Since there are no generic 'TEEs' available, I implemented the same
> thing as a generic protocol translator. The shared memory binding for
> instance already assumes fair amount about the TEE and how that is
> physically present in the system. Besides, the help from usage of shm
> is pretty limited due to the size of the keydata.
>
>
> --
> Janne
>
>
>
>
> On Tue, Jul 30, 2019 at 3:26 PM Sumit Garg <sumit.garg@linaro.org> wrote:
> >
> > Add support for TEE based trusted keys where TEE provides the functionality
> > to seal and unseal trusted keys using hardware unique key. Also, this is
> > an alternative in case platform doesn't possess a TPM device.
> >
> > This series also adds some TEE features like:
> >
> > Patch #1, #2 enables support for registered kernel shared memory with TEE.
> >
> > Patch #3 enables support for private kernel login method required for
> > cases like trusted keys where we don't wan't user-space to directly access
> > TEE service to retrieve trusted key contents.
> >
> > Rest of the patches from #4 to #6 adds support for TEE based trusted keys.
> >
> > This patch-set has been tested with OP-TEE based pseudo TA which can be
> > found here [1].
> >
> > Also, this patch-set is dependent on generic Trusted Keys framework
> > patch-set [2].
> >
> > [1] https://github.com/OP-TEE/optee_os/pull/3082
> > [2] https://lkml.org/lkml/2019/7/18/284
> >
> > Changes in v2:
> > 1. Add reviewed-by tags for patch #1 and #2.
> > 2. Incorporate comments from Jens for patch #3.
> > 3. Switch to use generic trusted keys framework.
> >
> > Sumit Garg (6):
> >   tee: optee: allow kernel pages to register as shm
> >   tee: enable support to register kernel memory
> >   tee: add private login method for kernel clients
> >   KEYS: trusted: Introduce TEE based Trusted Keys
> >   doc: keys: Document usage of TEE based Trusted Keys
> >   MAINTAINERS: Add entry for TEE based Trusted Keys
> >
> >  Documentation/security/keys/index.rst       |   1 +
> >  Documentation/security/keys/tee-trusted.rst |  93 +++++++++
> >  MAINTAINERS                                 |   9 +
> >  drivers/tee/optee/call.c                    |   7 +
> >  drivers/tee/tee_core.c                      |   6 +
> >  drivers/tee/tee_shm.c                       |  16 +-
> >  include/keys/trusted-type.h                 |   3 +
> >  include/keys/trusted_tee.h                  |  66 +++++++
> >  include/linux/tee_drv.h                     |   1 +
> >  include/uapi/linux/tee.h                    |   8 +
> >  security/keys/Kconfig                       |   3 +
> >  security/keys/trusted-keys/Makefile         |   3 +-
> >  security/keys/trusted-keys/trusted-tee.c    | 282 ++++++++++++++++++++++++++++
> >  security/keys/trusted-keys/trusted.c        |   3 +
> >  14 files changed, 498 insertions(+), 3 deletions(-)
> >  create mode 100644 Documentation/security/keys/tee-trusted.rst
> >  create mode 100644 include/keys/trusted_tee.h
> >  create mode 100644 security/keys/trusted-keys/trusted-tee.c
> >
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
