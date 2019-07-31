Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6737BA37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 09:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UladvjOPYJZ6V7Z5VW5QKVjhazDG8EPId8BRuFV7OHQ=; b=GTdLRCZYRcIlRr
	gOURScRZC3ZhYcGziiWMbUac1JJLt2CqFBAZ9/NYI6NyfCav10GCVo18uTYgDJKErdDsw4meXsgJC
	i4ouyWBBuDAXU5e/2nyti23TtbbmAvhxp8sWXBZMAhnsEnap64TyOWnQ+RnHOFHrcz/uTxZuwQVTB
	u1w/GdIU5fo1TGckB/Ps6KLl6fEOWUm9dQvDhy0hrjSMMsCWg3QaNr6yF4awQNm871EIeEzcU5cWk
	LReJtTsYu6JruDpFxR1rT7Cqo7+xzV3dQT5Ih42yqBUGUO6bwTWQ/+yw87AjS/TlkP060K104CY2T
	wNmDYPjE+QR0l618hT6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsimP-0002gm-HX; Wed, 31 Jul 2019 07:12:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsimA-0002fu-2f
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 07:11:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id y17so39977769ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 00:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kqr8tEl+A/BsI/SRcfQuAdRPZm/jRaraQ1jAsd1n/gs=;
 b=XkPjlIKzJuoQMP5k1IsZh1gweTmAgYUgfi0sMTRiBPfg0kOUfGzkmc+xVQclJvr5nl
 sNmFNLUDHd/0OqC8c34zy5HLWPTpy7twxxUxBs/BOoQTYEnUVvKKtNJFCT9+3pBGHtpm
 wmj+cSHBY3A+8J6HQ++nKBN2YQZk5nG349PGsEeobfaj6kBDsgX2KYvHtDV53VBufFsP
 UGcqfUdntPuUlbk3T+JWTbGWMrD3jMsriHJbxp8JEH/0uaRzBF74ZNkW9CAb26vC13J/
 tHV+u9iDzM2uzApWhiA841UQA0+zmesrfzE4d6wIqQRVQHpwqWRNF8KBc5GekWu/QrCs
 K4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kqr8tEl+A/BsI/SRcfQuAdRPZm/jRaraQ1jAsd1n/gs=;
 b=hMZRX+z59P0e4xO24tc7k68PBNVsl07kfPapXfuuKEpdSqFiWVitP3ljs8HkHmXfro
 Bawk32CWxXAq0fdDgJZL7MuOgouXcWyxyaOb11EGkcgq43tif1hQK9aBuZ6hanq3qtwS
 A6SQXoVsnvdW2A0FsoDc0APinOsxFHrz0YHVYbEevtOGUK3h8OyIL8FWnGkWxsV4PUto
 VU1RLHweA+NpICeBaJc112hWrqgl8JAeCeAmwZotvUUHrG7nZwiryxXCkihnaPWdaJG1
 fiybrS8JkrOzUCAcq4M2UCdqFLwOkI5BPfT18EaCyv1xqPgp3lNYycc6eGK/VuBV4Clm
 B4xA==
X-Gm-Message-State: APjAAAW75FvazQnC4b07rlOgJVxbUikq7ehijUiPxI/CfL4ZGsqLGS/J
 3Dj+OTv8mYgf4VPJ6eJQ3oDVGSJnqIzULjmoeoc=
X-Google-Smtp-Source: APXvYqywjHZBwxsXA1068nZBZHE0Ulkn//um58llA3xod4Ipo+akfow/68WBjfdpXjVY2Sc+txo6D77ywYRO9CqXl7E=
X-Received: by 2002:a2e:b1c1:: with SMTP id e1mr28147758lja.228.1564557106084; 
 Wed, 31 Jul 2019 00:11:46 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
In-Reply-To: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Wed, 31 Jul 2019 10:11:34 +0300
Message-ID: <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_001154_655831_4EDF4EA3 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (janne.karhunen[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Interesting, I wrote something similar and posted it to the lists a while back:
https://github.com/jkrh/linux/commit/d77ea03afedcb5fd42234cd834da8f8a0809f6a6

Since there are no generic 'TEEs' available, I implemented the same
thing as a generic protocol translator. The shared memory binding for
instance already assumes fair amount about the TEE and how that is
physically present in the system. Besides, the help from usage of shm
is pretty limited due to the size of the keydata.


--
Janne




On Tue, Jul 30, 2019 at 3:26 PM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> Add support for TEE based trusted keys where TEE provides the functionality
> to seal and unseal trusted keys using hardware unique key. Also, this is
> an alternative in case platform doesn't possess a TPM device.
>
> This series also adds some TEE features like:
>
> Patch #1, #2 enables support for registered kernel shared memory with TEE.
>
> Patch #3 enables support for private kernel login method required for
> cases like trusted keys where we don't wan't user-space to directly access
> TEE service to retrieve trusted key contents.
>
> Rest of the patches from #4 to #6 adds support for TEE based trusted keys.
>
> This patch-set has been tested with OP-TEE based pseudo TA which can be
> found here [1].
>
> Also, this patch-set is dependent on generic Trusted Keys framework
> patch-set [2].
>
> [1] https://github.com/OP-TEE/optee_os/pull/3082
> [2] https://lkml.org/lkml/2019/7/18/284
>
> Changes in v2:
> 1. Add reviewed-by tags for patch #1 and #2.
> 2. Incorporate comments from Jens for patch #3.
> 3. Switch to use generic trusted keys framework.
>
> Sumit Garg (6):
>   tee: optee: allow kernel pages to register as shm
>   tee: enable support to register kernel memory
>   tee: add private login method for kernel clients
>   KEYS: trusted: Introduce TEE based Trusted Keys
>   doc: keys: Document usage of TEE based Trusted Keys
>   MAINTAINERS: Add entry for TEE based Trusted Keys
>
>  Documentation/security/keys/index.rst       |   1 +
>  Documentation/security/keys/tee-trusted.rst |  93 +++++++++
>  MAINTAINERS                                 |   9 +
>  drivers/tee/optee/call.c                    |   7 +
>  drivers/tee/tee_core.c                      |   6 +
>  drivers/tee/tee_shm.c                       |  16 +-
>  include/keys/trusted-type.h                 |   3 +
>  include/keys/trusted_tee.h                  |  66 +++++++
>  include/linux/tee_drv.h                     |   1 +
>  include/uapi/linux/tee.h                    |   8 +
>  security/keys/Kconfig                       |   3 +
>  security/keys/trusted-keys/Makefile         |   3 +-
>  security/keys/trusted-keys/trusted-tee.c    | 282 ++++++++++++++++++++++++++++
>  security/keys/trusted-keys/trusted.c        |   3 +
>  14 files changed, 498 insertions(+), 3 deletions(-)
>  create mode 100644 Documentation/security/keys/tee-trusted.rst
>  create mode 100644 include/keys/trusted_tee.h
>  create mode 100644 security/keys/trusted-keys/trusted-tee.c
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
