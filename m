Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3029ED9A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q++3yjGP+FiAp7Ue6uM9yq3QuGrNbUwVgVPMKeUpH50=; b=lipFe1kQ/4IbE7
	KOsz0bBsHDFvYuGeJzhRe8p+2b9mba3AeEdAdPoK4BLlB3Plk5QSJA7WAPnibmjXUbF9DPvfWkB4x
	m+2ej9Ot6z9pAS5FnaUzjw63dW7KksSBS3pYTQLBUlUNdgcvV1nzxyd7bPK5rM6T/1al0pM49+2kF
	ocie3SgVEP+CFhweWj5fhzDTOT37bTFMzqYkd6cFmm/Cn4ZEKjMOl/oLLYnzVvz25ZsphpKnGyxS2
	iKVUXDrRUtniVrXoPM24kBEX4l9rKg/l3lQDzfkP/wZuFSER5HfHt/DbxSqR46wHzHg4qHqXsnQJ/
	+y/FNBF4yEDGTFWTDYvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWMg-0002DJ-MI; Mon, 04 Nov 2019 07:01:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWKM-0007fD-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 06:59:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id r7so7618105ljg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 22:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ef40HtgLagkWmNMc93ySVU+8+raGbvhremm/3vIkPJs=;
 b=vvdCJc1RINMcL5JoJz312DaAniIDfMzCcnwAI/nzlhioj8GGGYgW5khIKfb5WKPoih
 qMp+vCbDbemdWq8i0Mf58v3uh/mu8EhKBMgRhulZLShXtK+MNVeAUm7PQ2aQiAtYd/+j
 Jg6nmlI9XTaqFYG/d/qIJDVf1ikfm6/i0iK1k912esWDVF1151DSFoBkdr1dAOlWvfmC
 jsn+40LPewRJA3SIUnwPlyony4u564JLgwa29HfMy3fBdaUY2d1amOC0D3N4Y4FXSyEs
 uXfrP9qkdne00KhZwEYKvXolsJ2gV5a0/Mi5PvdRJEwJ90Nr/tnHijeE3ql/YqVMQM1K
 AvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ef40HtgLagkWmNMc93ySVU+8+raGbvhremm/3vIkPJs=;
 b=aSkOwqx49G9aIXTEbyNYP1ULFJgletc5eu9SkyP+ZK1/jlOlt3lthpW4FwNtz7e/ix
 kdDX0CshGqEdzZMCRD4RQmx+Z3Q9OBd/inn+5gakAmbck/I5ccj4wOCs5vBy3oSI0xR5
 2q6stwVr60OHp48FBRX6FrgvuRCt8stq9JY/AsACjAyrdiRI5I3J9RN66W2XIqxN8P4B
 RAWngytFzERfaHKlaKCWwXh0yWrKatlkqTG4bLcXbkPtO9L8O6FGf2WDxAK2xtGwUpj9
 dLFq84nErj0m92Wca67XfnvALsv/lORKQrevQRvp00CX2waGqKktXhdcx89OM8ObcswU
 n+Ag==
X-Gm-Message-State: APjAAAUFe9yGnMnaltZlSHfwu6ULAn8NII7/kOCVIGC/d49HvqgliiIl
 aMNTa8pqapPVkBd3tTBf4AuQFk6nvhTO8dODjEZakg==
X-Google-Smtp-Source: APXvYqwDEcaV1wOC5X14ad1vPw2VW4B5zXbZYrai12akzfGxkCIeR+UrJYYWYChUz2q1aw4cIzuU9bUsn4PO7ZkCq3g=
X-Received: by 2002:a2e:9a12:: with SMTP id o18mr9966567lji.191.1572850738786; 
 Sun, 03 Nov 2019 22:58:58 -0800 (PST)
MIME-Version: 1.0
References: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
 <1572530323-14802-7-git-send-email-sumit.garg@linaro.org>
 <20191031214745.GG10507@linux.intel.com>
 <CAFA6WYMkE928v-v76gGtWmsS0PwRp-OHUtkS0+Ts4V6x0AKBqQ@mail.gmail.com>
 <20191101201957.GA8369@linux.intel.com>
In-Reply-To: <20191101201957.GA8369@linux.intel.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 4 Nov 2019 12:28:47 +0530
Message-ID: <CAFA6WYNwSSaZv5OM=q+LCyn0mEdpg7K+W_v2_NBHhtktg1BFXw@mail.gmail.com>
Subject: Re: [Patch v3 6/7] doc: keys: Document usage of TEE based Trusted Keys
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_225902_366467_C1B799BE 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Daniel Thompson <daniel.thompson@linaro.org>,
 Janne Karhunen <janne.karhunen@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 jejb@linux.ibm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org,
 "open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>,
 Stuart Yoder <stuart.yoder@arm.com>, Casey Schaufler <casey@schaufler-ca.com>,
 linux-integrity@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2 Nov 2019 at 01:50, Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> On Fri, Nov 01, 2019 at 03:04:18PM +0530, Sumit Garg wrote:
>
> > Isn't this statement contradicting with your earlier statement
> > regarding the right order would be to complete TEE patches review
> > first and then come up with documentation here [2]?
> >
> > [1] https://lore.kernel.org/linux-integrity/1568025601.4614.253.camel@linux.ibm.com/
> > [2] https://lore.kernel.org/linux-integrity/20190909163643.qxmzpcggi567hmhv@linux.intel.com/
>
> With the intersecting issues, namely key generation and conflicting
> keyctl parameters, that was not a well considered statement.

Okay, let me work on documentation first, but I think resending whole
patch-set just for documentation review and rework would be an
overkill. Would minor revisions of this patch only like v3.1, v3.2
etc. work for you? And later I could send next version of this
patch-set once we agree on documentation.

-Sumit

>
> /Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
