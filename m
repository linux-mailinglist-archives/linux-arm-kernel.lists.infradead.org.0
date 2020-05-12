Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0D01CF174
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PT+f+7qJGP0YejqAefqAQeUeRh+tkQ7ppDFo+v3/QM=; b=tKUXn+g4Vn8o/O
	qKkdv/jV1gDHMh2W+FHM0lhA8wXjZD+8FySj+iBXYvQ1k8gcuzI9yG94aAaO+6326T1qgSoY5xahr
	FDhoAWgTAyMLIstYLvmyUQCMDhqB6p8aU/I9eT30qCbdDyqZYtfEZ/SDfavyY241/W8LSwwSNkHmw
	4V0HaAIzi85Aqwn2qMNT5BUIx4u9IrK8wL9yyXRtzbT26cCgofn0sABYZgMO3rXoEr7VwwO5oUQAM
	xaoSVrM8XdHO8MOH2URI30QwqxJpp6OjASYkntLpZzlXLUTMB0Aq5XLFpH32+DU2KIsoKMAYzAXJJ
	3u6D76M+5gBvuu51DfxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR6A-0007ij-RJ; Tue, 12 May 2020 09:21:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYR5s-0007gJ-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:20:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id j3so12760752ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 02:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hNH+m8omjPnk476jGLpu8Vt8kPOpg3agkUbWl32XtLw=;
 b=RTRXN6UpK2F7NEYSZFbq/6CmZAZUEetFV4/nF5JiSYvyNI5g4nTSNhLFkFoHjZwByP
 Zlg/5cua8es2+gXO0jg7lEsyOvayqu+1Hiy9tJXNKfbH9AVH8hYCjEcmgZTtRBulz2Nv
 j6Mr9nFwWAwPdaQvT4mLPIwg+38zt89Y0MZnSr1WSC3bzYdVCOHwU9KexFMQP8ObqJiA
 nBLhku7TpS+EYOBoPcY4ND81ZhxYJsgVdGS/XnsbZtHryPTOr7O9aoNvFmt04d5nNqBj
 9UF8fA1bnUgTKmVgdIIWE7HfRRJy9I5vVOQGLLjoyfo8I+eVeGK3r5ReIXgumar2WDhx
 uWLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hNH+m8omjPnk476jGLpu8Vt8kPOpg3agkUbWl32XtLw=;
 b=kDjbX0Euac+mdx2IZ5plYbjpvVJURPct4am+SPgmBQTmfrZSUqHolzewgI5rBw9cYn
 1uxiWTqJz5QOi8nLIruFt1BQPSiLxARd6kzvjSBm6UAJobpTr+SMC26j7xxBWn7WLAhb
 NAYAUzC+TJ6uOQMIY1DSRkbDKgBFKhvbtRsb8+DObxdD/99KjwG6K1PjS2sLva/DyUTh
 XB+fg60jp67SCdC/nagm1Z3CPZU23713D9ofTPGsKYM2UWC0FMJlT0fVJrL3HHDNNt4Y
 MidG3xZq1mGMlAt4Jqf4zkZe15T8gWLAzzaWx/0U5L9rfoq4LE4Bha4yQ3utGCFavhlP
 Lbmw==
X-Gm-Message-State: AOAM530rTEk/aFhcZt2+BUlywv45KJLgiTHydVBw423yj4r6rUFdYmud
 mr4CfcocDtwEwGZf8/z+htm+JC8pks4uRIpZmjH4Tw==
X-Google-Smtp-Source: ABdhPJxY70vedCXTAc/sVhR66GczTIpt7w0KW9ze1vEeSXLFO3Eq/mp5nh3QrQuPhD0UQIwMuEug7EhXdEzryApWOnc=
X-Received: by 2002:a05:651c:1b9:: with SMTP id
 c25mr9138973ljn.285.1589275253855; 
 Tue, 12 May 2020 02:20:53 -0700 (PDT)
MIME-Version: 1.0
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
In-Reply-To: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 12 May 2020 14:50:42 +0530
Message-ID: <CAFA6WYNgBQDBY+670fG38Yrg8tMg6U74TW12WON=9dVvsT0t6w@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] Introduce TEE based Trusted Keys support
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Mimi Zohar <zohar@linux.ibm.com>, James Bottomley <jejb@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_022056_708610_9BDC1DDB 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Daniel Thompson <daniel.thompson@linaro.org>, op-tee@lists.trustedfirmware.org,
 Jonathan Corbet <corbet@lwn.net>, Janne Karhunen <janne.karhunen@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org,
 "open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>,
 Markus Wamser <Markus.Wamser@mixed-mode.de>,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 at 15:10, Sumit Garg <sumit.garg@linaro.org> wrote:
>
> Add support for TEE based trusted keys where TEE provides the functionality
> to seal and unseal trusted keys using hardware unique key. Also, this is
> an alternative in case platform doesn't possess a TPM device.
>
> This patch-set has been tested with OP-TEE based early TA which can be
> found here [1].
>
> [1] https://github.com/OP-TEE/optee_os/pull/3838

Fyi, this PR has been merged in OP-TEE OS as commit [1]. Looking
forward to any further comments/feedback on this patch-set.

[1] https://github.com/OP-TEE/optee_os/commit/f86ab8e7e0de869dfa25ca05a37ee070d7e5b86b

-Sumit

>
> Changes in v4:
> 1. Pushed independent TEE features separately:
>   - Part of recent TEE PR: https://lkml.org/lkml/2020/5/4/1062
> 2. Updated trusted-encrypted doc with TEE as a new trust source.
> 3. Rebased onto latest tpmdd/master.
>
> Changes in v3:
> 1. Update patch #2 to support registration of multiple kernel pages.
> 2. Incoporate dependency patch #4 in this patch-set:
>    https://patchwork.kernel.org/patch/11091435/
>
> Changes in v2:
> 1. Add reviewed-by tags for patch #1 and #2.
> 2. Incorporate comments from Jens for patch #3.
> 3. Switch to use generic trusted keys framework.
>
> Sumit Garg (4):
>   KEYS: trusted: Add generic trusted keys framework
>   KEYS: trusted: Introduce TEE based Trusted Keys
>   doc: trusted-encrypted: updates with TEE as a new trust source
>   MAINTAINERS: Add entry for TEE based Trusted Keys
>
>  Documentation/security/keys/trusted-encrypted.rst | 203 ++++++++++---
>  MAINTAINERS                                       |   8 +
>  include/keys/trusted-type.h                       |  48 ++++
>  include/keys/trusted_tee.h                        |  66 +++++
>  include/keys/trusted_tpm.h                        |  15 -
>  security/keys/Kconfig                             |   3 +
>  security/keys/trusted-keys/Makefile               |   2 +
>  security/keys/trusted-keys/trusted_common.c       | 336 ++++++++++++++++++++++
>  security/keys/trusted-keys/trusted_tee.c          | 282 ++++++++++++++++++
>  security/keys/trusted-keys/trusted_tpm1.c         | 335 ++++-----------------
>  10 files changed, 974 insertions(+), 324 deletions(-)
>  create mode 100644 include/keys/trusted_tee.h
>  create mode 100644 security/keys/trusted-keys/trusted_common.c
>  create mode 100644 security/keys/trusted-keys/trusted_tee.c
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
