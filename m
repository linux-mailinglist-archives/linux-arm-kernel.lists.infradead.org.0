Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882C91ECECF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VljfxA5L8HUiSv8Nahmn3twUwsKL9d9u51IiO8e2mM=; b=NSXPrCoBDb0X46
	NlOk1rGjt1OrpQrWfWyMLOSROQPsKSs2PeyhjfqTDnOld1CdJF/v+kZUd/Miw3kBAstBGebVIWYtM
	29daHht/chBq2F3m8PFAkIHM2SRRBSmMsXWEszfLCgJuFNuJx7zvIQ2grvPkmJGWaTD1Z3r/7HMGb
	ae+1bGVSq+r5dpFHc+Bfx/ZNr69wZgOVUDwlhn+6KA0I6T6OaLLYlNrDXr3senZP0owHgBef4NkI5
	GLGk3EYum0iKFh2RWV91NXlLXNe5ww8F/RBCrcq7+3Z/FF4YSSmHvbfXcMcw2g/TxDBEzgCNvUi2J
	/olhlnh5oiwWwYVtbznQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRq2-00012i-9N; Wed, 03 Jun 2020 11:45:42 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRpu-00012C-Cp
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:45:36 +0000
Received: by mail-lf1-x144.google.com with SMTP id d7so1096651lfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 04:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R6lEVGZYGJxxHN7lE3eo9NqLzCsnQCicun988jWmqf0=;
 b=CcT9D9lZNg/SMdu0oTdh0D/2xb8iHgHFyH7fmH90WYrNn/U+znPsNUWsM5AsKxoBUC
 vVFKe4LUjup9xTgkizKTwyQ0mp3tl+y8Welh9N/GllG4VLXKlxXHjSr9F6k+N7aS+Mdu
 brRhX1nAh2aZFrsppZeJGN+BzJyK3Lq86tRW/+cuA0RgpK9vhrG7icHwQdZTE/6WgEzE
 i9QfGI97QzeIy4v9j5Ft+ogMFQd85zLlT19K8GDYCEQMP+XrX3bHBWhIxegbA2Ze1qk9
 Tp4ZMNmBt1B0C5WbcpAKgxOqrlvbotQ7CtwkSesdW9/OtKZup/VpnJtb/cWiuTEdTFjl
 3sow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R6lEVGZYGJxxHN7lE3eo9NqLzCsnQCicun988jWmqf0=;
 b=XtyeEupVnZDCfxeWhiDlEeVvtAC3JDtjN4wpp2/uKJ1YbjxOG7paxqLrvQ9/zMZsDd
 gmvXfwlVvaxtWwx/10PzuI3HC535RObueFVAYqFxMECYYZpPAnhx5GVnvrW0qzL7mbZI
 brEShFxYLzuRBzoeD3glMCeFWcZToXmIJwKOqciH3CWLguw9VjoMqBjJWfCB424Ej+CY
 vdtvYjDQYji+dJCvEhZzOD5akeVfJHSlUzux/vp0A0zQ0MOFL7unQBWJBHvLL9ssF+4v
 vOrt4YBSeG/5WTteW49mNTa4tmgOT9qfMgLTcsHwCsmetu27VnZQywBR9ZmLUooRje8n
 m4PQ==
X-Gm-Message-State: AOAM533t1g/jP7SZIcD77umPegMNmlcqmjFtXWa7eRdIw2gQprsH+Syr
 k0uqLIaNLcmwp2O0AFI4JY9gOqP0BVHv/d2DUrLLPkql
X-Google-Smtp-Source: ABdhPJxrRq5dz8jR0pX7TOEXl5+O6MeJ4s3D9zLb2o4VMf6+9QwUKNjv2xRDI0+UrWAaW8w3feNHDUNL6jPLIkqDsJg=
X-Received: by 2002:ac2:44bb:: with SMTP id c27mr2301161lfm.59.1591184732251; 
 Wed, 03 Jun 2020 04:45:32 -0700 (PDT)
MIME-Version: 1.0
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
 <1591108981.4253.17.camel@linux.ibm.com>
 <CAFA6WYOoMdLJ2g3gocZBZWdu-7Nfw7LKHnzX8S8FKeC7cuNwYg@mail.gmail.com>
 <CAKrSGQSLKpb8T=H9zUoPP1B6EFrgMTMP3ZX1pEv99JtdPq7H0w@mail.gmail.com>
In-Reply-To: <CAKrSGQSLKpb8T=H9zUoPP1B6EFrgMTMP3ZX1pEv99JtdPq7H0w@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 3 Jun 2020 17:15:20 +0530
Message-ID: <CAFA6WYOFO8YptYp2JrY7nQL0MeM02VLCHvtnxUCEDd5-fb-z+Q@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] Introduce TEE based Trusted Keys support
To: Luke Hinds <lhinds@redhat.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_044534_442144_709BF3CB 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jonathan Corbet <corbet@lwn.net>, James Bottomley <jejb@linux.ibm.com>,
 Janne Karhunen <janne.karhunen@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org,
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

On Wed, 3 Jun 2020 at 14:20, Luke Hinds <lhinds@redhat.com> wrote:
>
>
>
> On Wed, Jun 3, 2020 at 9:08 AM Sumit Garg <sumit.garg@linaro.org> wrote:
>>
>> On Tue, 2 Jun 2020 at 20:14, James Bottomley <jejb@linux.ibm.com> wrote:
>> >
>> > On Tue, 2020-06-02 at 19:48 +0530, Sumit Garg wrote:
>> > > Add support for TEE based trusted keys where TEE provides the
>> > > functionality to seal and unseal trusted keys using hardware unique
>> > > key. Also, this is an alternative in case platform doesn't possess a
>> > > TPM device.
>> >
>> > So here's a meta problem: in the case when the platform possesses both
>> > TEE and TPM  what should it do?
>>
>> IMO, trust source (either a TPM or a TEE) should be unique and
>> carefully chosen as per platform security policy corresponding to a
>> particular threat model.
>>
>> And moreover TEEs have been mostly used in the embedded world where
>> having a hardware TPM is cumbersome given constraints regarding BoM
>> cost and hardware resources.
>>
>> >  Things like this:
>> >
>> > > --- a/security/keys/trusted-keys/trusted_core.c
>> > > +++ b/security/keys/trusted-keys/trusted_core.c
>> > > @@ -25,6 +25,8 @@
>> > >
>> > >  #if defined(CONFIG_TRUSTED_TPM)
>> > >  static struct trusted_key_ops *trusted_key_ops =
>> > > &tpm_trusted_key_ops;
>> > > +#elif defined(CONFIG_TRUSTED_TEE)
>> > > +static struct trusted_key_ops *trusted_key_ops =
>> > > &tee_trusted_key_ops;
>> > >  #else
>> >
>> > Say it's either/or at a Kconfig level: so if you select both TEE and
>> > TPM based trusted keys at compile time, we intall the TPM ops and
>> > ignore the TEE ops, is that right?  Surely this should be runtime
>> > selectable based on what the platform has ...
>>
>> This dynamic selection was already part of v4 patch-set but after
>> objection from Jarrko here [1], I switched to compile time mode
>> instead.
>>
>> [1] https://lkml.org/lkml/2020/6/2/139
>
>
> Unless I have misunderstood, my concerns about compile time are that distributors will be cornered into releasing kernels with an opinionated selection of either TEE or TPM and any users needing the non default will need to compile their own kernel.
>

I echo with your concerns.

Jarrko,

If it's fine with you then I can switch back to dynamic approach again
in the next version.

-Sumit

>>
>>
>> > perhaps it should even be
>> > selectable per key?
>> >
>> > Once it is runtime selectable, what should be selected in the both
>> > case?  Or should we allow the user to decide, if so, how?
>> >
>> > when you pipe a trusted key, I think the subtype (TEE or TPM) should be
>> > part of the piped information, so it loads again seamlessly.  This
>> > would actually be fixed by something like the ASN.1 scheme I'm trying
>> > to upstream, at least for TPM keys, but do TEE keys have a recognized
>> > ASN.1 format?
>> >
>>
>> I guess this is something which we can refine later if there are real
>> platforms that have a particular security requirement to support both
>> TPM and a TEE.
>>
>> -Sumit
>>
>> > James
>> >
>>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
