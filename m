Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258871EB78F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epXjDDyqavjtwHwDufiKn/76yYIj0zByCMGeGLKpOqI=; b=PtHMKR563+cUb9
	xy0hpEVHWT9iIQ2dG4Cwp70uS4It3JG9LCH8xtpNtz2KsGjY8jshtLqz3S+IS1qKVX4AYkKg5fIyQ
	4HMimRCoqPGgcBLxHq11qwb8yU8c9rcoi2F9dZQOttg31a072vQcgY0KKzTA0jjHfYqlSEbvDTw2g
	SlLJj0DWtTSmFU5N9nZ3/PwNWVgfpTpzwqufcPGFBx8DHmoxdc0CPEKEIkVJaONMPDcpa/b9FfxIs
	i/la6JQSEfSosQJTTk0eat+C+ddk+gUqpnhddWAtv8P9tlE9kGy2yvxrXUWN/5ffgbQry42K0cfM1
	JRh7vCBc1X/On1R1tbWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2Th-0000WA-Mu; Tue, 02 Jun 2020 08:40:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2Ta-0000Vk-KB
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:40:51 +0000
Received: by mail-lj1-x241.google.com with SMTP id e4so11568669ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 01:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ba7tS1EJd6J4rrFJlCgFQCMg5mXZk8lm0TUhKeqkFLg=;
 b=DaRRRUXPe+h4lT7HKYjlwOZPLtpKjj5wrJfc7A/FfABHr7pqA6sBVcDxFpYhyNGX2f
 mhQciVg9mJcl5lbwYvIUHYTLOz+H/JseFNTfhgEH1PUTCmGJfi2vmR2tmRbnXSyFTDE4
 w4eCcHJwLE+Jelj9ifdDTlnu0lIKZx10kGWKP+LOH+aLlwER7WRXA5g20mnYOxnaNwWm
 3M56FsBpyAAfxXgbKJti+9pbhLY8t86m4/VdbDv6kUVoyahF+iMYkTHJDo4u8M+83rUy
 MafhdMblZid34Foa6n+p2WuWVyEuwMjkPZdBGHlFOS0Ezjf8cSGe7D1etislzBDLC4++
 g6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ba7tS1EJd6J4rrFJlCgFQCMg5mXZk8lm0TUhKeqkFLg=;
 b=WpaInxyI4qHvBRA/AKoy5ESPDqRsusj5puyY0VHjHNI9Hbsj8G8IcHi+rHBwCErlvM
 1SWuKQz8iGv29dBVhi/luINAuBHDGyztsuJs7CwdBOIrHNywF6TdQa19jR2GCITDZ2T+
 qb6YPwCWQ5UJoBKue9j9VMuTBf8eEuAVS5X4Dfaw69QQzq4oI8ocgGHMqNiR0T0154Kw
 c0cznhQ6MKRQm/4cs+CXu6e5HF6VX2wpoOWH+RxCFAsUO//f4ijAKnWcAWu0cPQZCDpK
 l9L+EgeHA1j5Og0xPnRkVubrhmI3jS/wtaq9R/B9MdbXtzvcNRZ1s4rYkfY4UeFWB+R2
 tcxA==
X-Gm-Message-State: AOAM530T15H0QC21vkfYsh7WsQW7UjCrndSZHwB+ecB3YKQ15C+knjme
 7BnmqkFfxOgTNPas3AjPnP6zHScAYO/j7ttQxpUtKw==
X-Google-Smtp-Source: ABdhPJxsrkSYKmMolrGDzGBzVUCmpV4Czal5MWGq3rA63F0c5cGNbbd8XSdXd5KOBCD+j1AK6KQkyAzoPLSK90Osl+U=
X-Received: by 2002:a2e:81c5:: with SMTP id s5mr11803430ljg.372.1591087248899; 
 Tue, 02 Jun 2020 01:40:48 -0700 (PDT)
MIME-Version: 1.0
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-2-git-send-email-sumit.garg@linaro.org>
 <20200601021132.GA796225@linux.intel.com>
 <CAFA6WYP55W2xKtjHWWwu6Pbqy2TGY=eymwAoXxQh-5mF8deR6A@mail.gmail.com>
 <20200602071407.GB16602@linux.intel.com>
In-Reply-To: <20200602071407.GB16602@linux.intel.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 2 Jun 2020 14:10:37 +0530
Message-ID: <CAFA6WYOVho3sAO=ABaeO3CGw-DfWuGOE9H_D48pCwAq0+VX9Qw@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] KEYS: trusted: Add generic trusted keys framework
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_014050_664870_37D99112 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, 2 Jun 2020 at 12:44, Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> On Mon, Jun 01, 2020 at 02:41:55PM +0530, Sumit Garg wrote:
> > > This, I think is wrong. You should have a compile time flag for TPM e.g.
> > > CONFIG_TRUSTED_TPM, not this dynamic mess.
> > >
> >
> > The whole idea to have it dynamic was to have a common trusted keys
> > module which could support both TPM and TEE implementation depending
> > on hardware. I guess it may be useful in scenarios where a particular
> > hardware supports a TPM chip while other doesn't but both need to run
> > a common kernel image.
>
> For now it should only scale to what is needed. No problems refining
> it later when there is something to enable.
>

Fair enough, will switch to compile time mode then.

-Sumit

> /Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
