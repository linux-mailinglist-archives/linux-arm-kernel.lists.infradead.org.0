Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93ED1D2E32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 13:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gBEVH4tjDq3cmy727lQR7eilzVM1bnZg1PNqkEhFKs=; b=uQHGQGQbCq2WPw
	+Tp9A55GIBGhNfllw29CmIWIrj25jCG6Y7GpbVS9YuuPfCC1kyDulc0SkU0z3lk3v2SFCh8vaeoei
	f8F+hbDeN4wmzU/TalSy3AfcuEydC/h+7RLhZadOkq67VBIh9jRwLDQerw98G90QhlL18lYbSIL0v
	QUv6oo8nd0X8LLo1ioT4WQaXlJK9QP9DOFkEyFKzmrgScp7HCah1+xf+S/3xYwDLmzD9bchSjyWhT
	X+zd+Stokj0AsBOeAI1dnu4D0juHiTWXKBvXgbZiziY7TZrtBqVrvh9hTD6iyC2p03JnFfWnW3kGt
	gk8lhB1nnDfW6dOfYxoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZBy2-00058O-Lw; Thu, 14 May 2020 11:23:58 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZBxu-00057p-EZ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 11:23:51 +0000
Received: by mail-lf1-x142.google.com with SMTP id 188so2276785lfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 04:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=52Rzrrj4E2al2tTGlHFyR6M/8l4BjJi9pTbsEHvkafw=;
 b=AQB8AjMyAZSGOL4e97UU90oVl9kAMguV5p4dTDDqcw0/yek+GT5FWuN2tscAVlKFEs
 EGzg8HjoW6dtHzhFbCevirz+96qH21ZW9fHpy2kzigcrKVJlygWbNXwPaiOUs6uFh063
 aPAdVZthuA7Y6Oqs1VLm4MDl2Ymqdb56dcWwjCBZ0og7DZpzl8xsqkqa05M1swjos7Gz
 BvCnthOJZ3OAhbZMPq0iz6CbKdHXINgpBnT6TT6KscyzM/JwxVG6ZXzKdHQmih4z9i43
 mHHs4GZHjvk6LTACjAngtXARfd2tJBCvG7KpSeW1akMKIkbng2rYc0JDaLTV5N6BoPB4
 oObw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=52Rzrrj4E2al2tTGlHFyR6M/8l4BjJi9pTbsEHvkafw=;
 b=Sd9ymeBpxL7knvGCAv9+XK7D88oGPWek4+TzCNdpBOV9t78wDwTx0Y0jbjaK/2EvNc
 1jUkohz5jA8ktIYdB2jAbXYyKOXNY4GZR9i9iBxN3S8SkmCSUJrA/bM8WERvAVlp5Vd1
 tWIZLNoVeI6GcP7djXep10zQvf2E4l75kj0t9Vq2aq6gfinVMhO9WZdt8j7zGEuc2Kio
 EQOnw4jZO9WzLWA/5GXCfuW0HcOk+FEenGbaahyY5fB76GlBULkdZb37vtdL5Gfe8H0i
 24D9B1Vp9IYtShHUVt/7UMLbR1cH/cpuA7jMGkOAUDe6Su3syMwaqb6fy15tzptcbHp8
 7jpw==
X-Gm-Message-State: AOAM531Z07rbvJqYIFTE5/j54IkSlvR7z2pFq1EuNHSpJE+vr7l72HKk
 97YBJ2zvMOBRJvwbd65VhljwbrqXPiwiDp12k5mqCw==
X-Google-Smtp-Source: ABdhPJyJHVIeFpsuP6hWyR4T3t3i5l95UvM1ck7qhqVExGI1lWc37GndFTYXCpQQGciey+GLFpqutzOT/FYhOL3syjg=
X-Received: by 2002:ac2:44bb:: with SMTP id c27mr3095483lfm.40.1589455425658; 
 Thu, 14 May 2020 04:23:45 -0700 (PDT)
MIME-Version: 1.0
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-2-git-send-email-sumit.garg@linaro.org>
 <07bb6080f8be9f6613f460e2d6e19f3d456e219c.camel@linux.intel.com>
In-Reply-To: <07bb6080f8be9f6613f460e2d6e19f3d456e219c.camel@linux.intel.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 14 May 2020 16:53:34 +0530
Message-ID: <CAFA6WYMciZ=qkG3N_9YWzt_DJr2dGwdAy9diMXCJSNjr2o5ONA@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] KEYS: trusted: Add generic trusted keys framework
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_042350_493423_72B9CB91 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, op-tee@lists.trustedfirmware.org,
 Jonathan Corbet <corbet@lwn.net>, James Bottomley <jejb@linux.ibm.com>,
 Janne Karhunen <janne.karhunen@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
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

On Thu, 14 May 2020 at 05:55, Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> On Wed, 2020-05-06 at 15:10 +0530, Sumit Garg wrote:
> > Current trusted keys framework is tightly coupled to use TPM device as
> > an underlying implementation which makes it difficult for implementations
> > like Trusted Execution Environment (TEE) etc. to provide trusked keys
> > support in case platform doesn't posses a TPM device.
> >
> > So this patch tries to add generic trusted keys framework where underlying
> > implemtations like TPM, TEE etc. could be easily plugged-in.
> >
> > Suggested-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
> > Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>
> I tend to agree how this is implemented and could merge it as such.
>
> I'm just thinking if we could refine this patch in a way that instead of
> copying TRUSTED_DEBUG macro we could just replace pr_info() statements
> with pr_debug()?

AFAIU, TRUSTED_DEBUG being a security sensitive operation is only
meant to be used in development environments and should be strictly
disabled in production environments. But it may not always be true
with pr_debug() with CONFIG_DYNAMIC_DEBUG=y which allows the debug
paths to be compiled into the kernel which can be enabled/disabled at
runtime.

IMO we should keep this TRUSTED_DEBUG macro, so that users are aware
of its security sensitive nature and need to explicitly enable it to
debug.

-Sumit

>
> /Jarkko
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
