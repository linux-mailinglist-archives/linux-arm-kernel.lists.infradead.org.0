Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514861ECB11
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 10:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q84oi+lnX24QUdpccQLPQv9l7D9rDtAefhAYrqrf5lg=; b=l1Dbqo8UYBVyfb
	vbghLWNoNzqpfaG2oQLd8szDog0fzlwysOg/1Ij3yFZC0IX07oz4Cp5w+gXU8eEkLjmWrE/L9ePxb
	YA5wW5FkFPA98D6K2+zmmiBCV57tZg35p+YwgUnHQU6xYHquLpLwKzAM/Vzvgo7/CB/6AhizNStE3
	xv49p63BSw5AIJ9ejXhih9lqxiSB+/p1D53V94cHKg7V115DUPg8X+ou608npaB8cti7Bnd4Xphbj
	M7ZDaf/9Cv2fqyvOkUAKDXYczxkzwunmzPGl40QsuUbFwmGOrWqXd7RtD+LABU4uQF9wlld1u8srb
	K/xp0voOILGDG57CPOdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgORZ-0003cM-PY; Wed, 03 Jun 2020 08:08:13 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgORK-0003ZH-9C
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 08:08:00 +0000
Received: by mail-lj1-x244.google.com with SMTP id m18so1547967ljo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 01:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qm1Fufz0OVB6tfCS+0Zsp1jGFDeHl0Qe2Wk3cNVFIjE=;
 b=em6VoVH3kTta5GgGnR4yxb0C9pC1Go/C30Wl2dHtASemgL3MKbw20qcTF6Xp/bqged
 RqOiCSv36QuACxRruwObvBTcwUk07Vmv1pRD7jpaD80GjeML6wGVdnohnXhDpk4O6+vj
 CYcJiJHrTqBZ0vrJitGDSVZcpdMJoTTeyYXQ6IKOQcGDkoR5aMwVFg1dMeW+q79MUbvm
 UM03uTMHvxOc+IDw/fvKIk3IgDSfh7K96pi/PSu+HgDag/sDDXiL0MFQeFJsr7+wOAHd
 jiR0M0thaeIfsT1hu5gedkVkCI75yMeGExpSo9+ia+XoHXJRolqp+4yzG5CkerIzUioR
 nkaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qm1Fufz0OVB6tfCS+0Zsp1jGFDeHl0Qe2Wk3cNVFIjE=;
 b=ccjVDKbvNB2VMbwJaYwaBldkh3+FiC3LL1NB0DLWz8qywthaUmOgjpRRFGkNASeGBV
 n6D0GwuNlAWGo3WybjaJQaCrhk3YK1UYjQbTl6IgGisDcGwi+ZIl3wZlO5QWYJyheZmJ
 8cbQoRr23CHN4Y7UXPWVoUZogmGmZelbYdXyfyElc3elfKP/u8EsjS5fNwykHzc6lRre
 GvMLQ/aEk+XS3owWaS1J3vp4ZdFHzTMaZgsu6/U2U5sP1two/VBYgCFctF64Pa+k3VGT
 myOiEUl5MlMzK5bI+BHg34eqF8Jiwj3/Zv1gGhqSS9OOQryS4EJVXjxv+jSGVQ7t9xsX
 KLTA==
X-Gm-Message-State: AOAM53274/5dlXMJiByS+sn4DW9i6+0YHkPlcLuo7x3O1EIlKZhKOvjh
 NxJqESNRuKNOzp7IHno3l5R3wUQR16mf6WU2oxEkZQ==
X-Google-Smtp-Source: ABdhPJxcPvpE6Kivg7poyIQDKjTdaR1zLLkk4Fmt5UIvp5/hGBWWhPNMg87+/+CuxmPgVa3FetzyOOjx5sQTccuyCM0=
X-Received: by 2002:a05:651c:1103:: with SMTP id
 d3mr1553238ljo.110.1591171676264; 
 Wed, 03 Jun 2020 01:07:56 -0700 (PDT)
MIME-Version: 1.0
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
 <1591108981.4253.17.camel@linux.ibm.com>
In-Reply-To: <1591108981.4253.17.camel@linux.ibm.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 3 Jun 2020 13:37:44 +0530
Message-ID: <CAFA6WYOoMdLJ2g3gocZBZWdu-7Nfw7LKHnzX8S8FKeC7cuNwYg@mail.gmail.com>
Subject: Re: [PATCH v5 0/4] Introduce TEE based Trusted Keys support
To: James Bottomley <jejb@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_010758_356948_C3FD20F4 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Jonathan Corbet <corbet@lwn.net>, Janne Karhunen <janne.karhunen@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org,
 "open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Markus Wamser <Markus.Wamser@mixed-mode.de>,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2 Jun 2020 at 20:14, James Bottomley <jejb@linux.ibm.com> wrote:
>
> On Tue, 2020-06-02 at 19:48 +0530, Sumit Garg wrote:
> > Add support for TEE based trusted keys where TEE provides the
> > functionality to seal and unseal trusted keys using hardware unique
> > key. Also, this is an alternative in case platform doesn't possess a
> > TPM device.
>
> So here's a meta problem: in the case when the platform possesses both
> TEE and TPM  what should it do?

IMO, trust source (either a TPM or a TEE) should be unique and
carefully chosen as per platform security policy corresponding to a
particular threat model.

And moreover TEEs have been mostly used in the embedded world where
having a hardware TPM is cumbersome given constraints regarding BoM
cost and hardware resources.

>  Things like this:
>
> > --- a/security/keys/trusted-keys/trusted_core.c
> > +++ b/security/keys/trusted-keys/trusted_core.c
> > @@ -25,6 +25,8 @@
> >
> >  #if defined(CONFIG_TRUSTED_TPM)
> >  static struct trusted_key_ops *trusted_key_ops =
> > &tpm_trusted_key_ops;
> > +#elif defined(CONFIG_TRUSTED_TEE)
> > +static struct trusted_key_ops *trusted_key_ops =
> > &tee_trusted_key_ops;
> >  #else
>
> Say it's either/or at a Kconfig level: so if you select both TEE and
> TPM based trusted keys at compile time, we intall the TPM ops and
> ignore the TEE ops, is that right?  Surely this should be runtime
> selectable based on what the platform has ...

This dynamic selection was already part of v4 patch-set but after
objection from Jarrko here [1], I switched to compile time mode
instead.

[1] https://lkml.org/lkml/2020/6/2/139

> perhaps it should even be
> selectable per key?
>
> Once it is runtime selectable, what should be selected in the both
> case?  Or should we allow the user to decide, if so, how?
>
> when you pipe a trusted key, I think the subtype (TEE or TPM) should be
> part of the piped information, so it loads again seamlessly.  This
> would actually be fixed by something like the ASN.1 scheme I'm trying
> to upstream, at least for TPM keys, but do TEE keys have a recognized
> ASN.1 format?
>

I guess this is something which we can refine later if there are real
platforms that have a particular security requirement to support both
TPM and a TEE.

-Sumit

> James
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
