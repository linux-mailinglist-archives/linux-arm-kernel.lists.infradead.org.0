Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080567BE5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 12:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+/x9xE9Z4DVJanGOzEJKOUdFTiF717SvXGj0VmqF0A=; b=FUJZm392GjJXOq
	mOf5pLjvduGz5EELrutMxH1AZYAuBuaV0iljTya20948dZiTtuSkbA1T1vmwA8IWuprQQavGcPyrM
	F4Rca2UEhiPFl/fjjSYPDKpxUi6btQdZjwCZMj9xnvHwt9bSlgBGmq09Y8C7k7IVHfH1NNyM4gMrK
	8XkQYONpUHnxKaNJwCxT/B2sN48B+ARfo5hTXZzQv/4/d0H3biYF8gEqEy6lw9FuHha7jtqIXEq4M
	4HxcALWqZBUoq9nJluO5kBzEKniXYq9dM8LeaxW6mMm/ZUqbbRwxeZ/sOM/TD7a0GzMLGNQk+FNGn
	VR1WbfZ4Um1xebRCF82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hslob-0002P5-Vi; Wed, 31 Jul 2019 10:26:38 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsloP-0002Oh-QS
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 10:26:27 +0000
Received: by mail-lj1-x244.google.com with SMTP id x25so65126776ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 03:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JUZSHlOC2NsvHH+oiYgXd/P9aGC7hBdS8UD65AtoMp4=;
 b=MQiLGOAWAeeOz7OvhR0Srak34dyDFzwv68hLoy3nUVLq1Ok4QKDOGspGoCLiCYmrsl
 X53gwv/rai5eej0QK73mKUVb9t737/JnqyNFTDy3ud2eorwscZF/qVEhn/BI0oZfsUMX
 NoICCfPOb5jeWu0aA1R5XdP93vlkhILcxoIL6Bf+Pme7yWed9VVKTeOxvaXLm3EViblG
 bGCBElPhzYPNZVjOgapbV1/DZKl2AMMCaspfmKtCBYkTr7liVQ4IXthOr4B74aJynBUX
 0mIzuX+PD1vORUscdCQ8kS1BDpsmqzR8d5B0vqB5KEyhGRuDcTR+C0CId8saWMKP4v4l
 0GOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JUZSHlOC2NsvHH+oiYgXd/P9aGC7hBdS8UD65AtoMp4=;
 b=aCzBW+tFCcEvKMS+Q9kpkgrhFEL+HLhdZdp+biOEq8Mkc6XZr67714lFCDj085xzZB
 FKSnDx9GKuzxpiIk9wxJwVKMoDhnvSaoM76Uix/Og0oIDAk44fC9G9IP3C+zabuJnIHr
 X6c6GNrvQAi3MezV+drY8JJ1Z7WlRRwtJwxGBQEyPBZbNKubushjPmdCjbVLB5Q5vTRx
 JF+1yRdzTJ1i8/qYd0k4RjvhA1PO21ojVxAopua9SFr3AWISouNnd2bIcCe5eR+xSi5m
 3BvEQKQOrJvPmEk5r/tYB5wqygLsfkz4yGRL1vnVbKHeL5c3gLU7xa9Ozw+btyTjUNXw
 IL+g==
X-Gm-Message-State: APjAAAW4S9jMDPo/hAfZJ0kpV+jl9HgsXxF8pIB+Q2B0x+OjrsuipX8S
 mZt9PliK1ca8ylvItm1rRBbSC1CPyBn7SLPWpCa+4Q==
X-Google-Smtp-Source: APXvYqzK9w7NfgMq23mlEeHWtRc1vd+SdbVRqgKv0YbwMlIYSzawLj8RuR4WbpJLpxKS9HshxfPzK8im8DJXEMjL6UY=
X-Received: by 2002:a2e:85d4:: with SMTP id h20mr6120835ljj.142.1564568783805; 
 Wed, 31 Jul 2019 03:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
In-Reply-To: <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 31 Jul 2019 15:56:12 +0530
Message-ID: <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Janne Karhunen <janne.karhunen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_032625_866842_6AF714A6 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

Hi Janne,

On Wed, 31 Jul 2019 at 12:41, Janne Karhunen <janne.karhunen@gmail.com> wrote:
>
> Hi,
>
> Interesting, I wrote something similar and posted it to the lists a while back:
> https://github.com/jkrh/linux/commit/d77ea03afedcb5fd42234cd834da8f8a0809f6a6
>
> Since there are no generic 'TEEs' available,

There is already a generic TEE interface driver available in kernel.
Have a look here: "Documentation/tee.txt".

> I implemented the same
> thing as a generic protocol translator. The shared memory binding for
> instance already assumes fair amount about the TEE and how that is
> physically present in the system. Besides, the help from usage of shm
> is pretty limited due to the size of the keydata.
>

If you look at patch #1 and #2, they add support to register kernel
memory buffer (keydata buffer in this case) with TEE to operate on. So
there isn't any limitation due to the size of the keydata.

-Sumit

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
