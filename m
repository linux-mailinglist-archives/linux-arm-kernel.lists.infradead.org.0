Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98D1C9404
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 00:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQRyhBBjBYZ8YgfjH6ax8OgLwtKTLbTBAM6s2PvKs08=; b=gTIoWUDKhu315S
	l4dhfgvJ8NPprfejr0K0GLkzG0S5SWMx5rJj/5f8V4FYy+7MCv6Y0v2ASaBIypJai3DCF5lhU4ks1
	wQHmjTqQCZLQ8V+/votMOyxDen5YdariDCUIGZeWUls6HLv1Fkhn8BILOjA2SpWmT6QRy0bnMwgiV
	AxeL4yBKMrGVgnHk+TkWnMZnMs5I50DQX368flE8GH0vV+UTLpi422s0bPkndlSCBhVreRRfZjb8R
	Z9aVkWl/3T/4Ww8cOdeTUsBe6mFAjMek0sd1H5ofvEL2UGncgqNkKO1nTeTFOecWRwqrnHYq/2zaD
	WUCY8DaGYPswKmlIRLAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFmkr-0008NF-Hi; Wed, 02 Oct 2019 22:05:53 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFmkk-0008MP-6Z
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 22:05:47 +0000
Received: by mail-qk1-x743.google.com with SMTP id y189so336510qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 15:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1s738KR7peDPdk0egrEOotdFH/XvdoPuk8qM2dZV4+M=;
 b=RsaX3chVgIapb461BDRuC0sDD0I5xgnK4SHyqIX74Teg/PoXx45jz4Bn1w1j0x915o
 0cld1gKH27FzDLsKxsCxX2fDACDVYXV2Kl7DbbVqnNr2YV5auxIbgJ3ZClu9UATlO1cd
 phlso1RkSrEk+wzqJ5HPqDerQZGThL/aqS8nI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1s738KR7peDPdk0egrEOotdFH/XvdoPuk8qM2dZV4+M=;
 b=ilzeAgS3o/dyt267hAEZgawxFGR9BEZCZC8bdmsEW8vDpklIdSA3a9NFPJIIyR8Z+l
 866YlfXgm/ik6rVQqVckxnyyxTREH5ODm146ramZR2PbMhwEjSTl3Qm7wQa07P/g0nuz
 hJBedl7H/K+Elqm2Hr2qy6J6ltwQ+6sRCTDaDqRngepxOktYOwPIQHdsW6OVLFTY1jFn
 p/7DG8Tw3x4X1U6YoTYj3sPVaUPfzP50MqqPdLVI97jaFtkkumJmhsoR0RsLoOTzbxBV
 BPQWnPze1agsKFFerBj7Nzv81COds0Mxv+mdRJJu2KyqbzPzrVnsBbVwlkRprsODHkyL
 65rg==
X-Gm-Message-State: APjAAAV/EsPcAdaYpsZ9SzK53ZGPOmHtnboGtdEOG94/kbLo8E00cX4R
 Zlqa0/CNsvPgsCCIdgpieAG9PpjdVGq7S2CHlGA=
X-Google-Smtp-Source: APXvYqzCQ+ctGU7OQGZqx/nxtHTMHw9WlHbGNxcjNnj4Cgg7Cq7pSYMp4k90/LRI+zGC5+lRhoD79BWDyiWYxBW8A0g=
X-Received: by 2002:a37:4f4c:: with SMTP id d73mr1165671qkb.171.1570053944314; 
 Wed, 02 Oct 2019 15:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
 <70044749-785b-6ff3-7a28-fb049dcfec54@linux.intel.com>
In-Reply-To: <70044749-785b-6ff3-7a28-fb049dcfec54@linux.intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 2 Oct 2019 22:05:32 +0000
Message-ID: <CACPK8XfBxC+4PHHCkMoXr+twjfWaovcJ5c=hfCmHRJ6LpGNeFg@mail.gmail.com>
Subject: Re: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_150546_452554_4017C1A8 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2 Oct 2019 at 18:11, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>
> Hi Chia-Wei,
>
> On 10/1/2019 11:11 PM, Chia-Wei, Wang wrote:
> > Update the Aspeed PECI driver with the AST2600 compatible string.
> > A new comptabile string is needed for the extended HW feature of
> > AST2600.
> >
> > Chia-Wei, Wang (2):
> >    peci: aspeed: Add AST2600 compatible string
> >    dt-bindings: peci: aspeed: Add AST2600 compatible
> >
> >   Documentation/devicetree/bindings/peci/peci-aspeed.txt | 1 +
> >   drivers/peci/peci-aspeed.c                             | 1 +
> >   2 files changed, 2 insertions(+)
> >
>
> PECI subsystem isn't in linux upstream yet so you should submit it into
> OpenBMC dev-5.3 tree only.

OpenBMC has been carrying the out of tree patches for some time now. I
haven't seen a new version posted for a while. Do you have a timeline
for when you plan to submit it upstream?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
