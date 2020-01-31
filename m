Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CB114E7A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 04:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvCZK1E4HSrQ/0BYqCT/n2Hhh8qnS5EU97rVbu/VZyE=; b=bPUx4x2ZIdwCBb
	Q2StGgxM8QhBPublSyiMYCi8QAwOBJQUnGNdFr2k65S8dHtWGWVy8GJ9e5MKnuPxK2aOfbRnMt9WT
	RrL7iEQB1QzwDxBaIAESh95yLHyWgOEFyLrh1SZ/xJAIsj0U7QBkXCVbR1whaROsGci2QRnqMinI2
	vX3G0bpIDdBh/wzVNeKjFE3xGNWHm11QwkayJ2T37CimLiBg53IfMMi7xbpTaq8LvpJGhi6azCppd
	Use9Chsl4wpofoHIF+eeVf5SxbiYu3CUiXeqi9TFQVZ/dldmhVleze+zdF6LqVLFqKyk96CysoQwy
	J9D4AeMbuEelpwVPXLIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixNEO-0006H7-Ba; Fri, 31 Jan 2020 03:44:32 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixNED-0006GX-KP; Fri, 31 Jan 2020 03:44:23 +0000
Received: by mail-qk1-x744.google.com with SMTP id s187so5256926qke.8;
 Thu, 30 Jan 2020 19:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gnZ43qN7S1q4zZHme5V7oQ52yf1PnubAtyieKw4/fVY=;
 b=Jf3jwIJN6NmDEE5rHTH3bi4JBCItLuv4Z8GzrYcknpWQQ5kCZURSEcOUtxHYCcQ5eK
 rCg0uTFwevnnkGt785cjEtT+QPDAOFP1a5TzYfTETRSjUDZskAM/97VoZYjWatRYnYQz
 c7f6jh9skAy62+AXe7jyQE/Y6J/IYqqaExXZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gnZ43qN7S1q4zZHme5V7oQ52yf1PnubAtyieKw4/fVY=;
 b=ibV0X05j3ZchR2qNywuD63ivRY6nPXZZHM8eozLhRtLjkjSYbh29bIMAs52I8f30St
 n4G5Y73UyomTIsX/EmiLesfMJ+E6GFHSJPt7wg2LyZZ8qt2h574OzuDYRDdaE43YZo90
 q6U7gnOs5Egyndca3Iv/skXAE7WC6YrtI9tMllrdAxmSNOfScb++bAnO6zWxUo+nbe17
 QeWPlBf51IAHAarPI/mMpkQ8v/KcTOGfliTVAfPQiLpRLLtvObfny/WJi6SBSToyx2uq
 dsB8g39ZvP1kT0NiDjJnJodnXRLxKHuHNtqd1016jfjO2WS2KlZrWnoJ3xNU6atxTe1G
 hE9g==
X-Gm-Message-State: APjAAAV4LJtTj0J1BM+/L3RTO48TdksAZuycICOrBRdZ9A6cPzLnzuKU
 +oDczoWQAY5bPcvt5MGrDZNq5XiFz51PChzUYTI=
X-Google-Smtp-Source: APXvYqwD62nlQsAFr4t2VRsUvR/xF3QgSUs3f8+MA8JJi/UqziVen3riJEm4PChAbEVcrDuYZozUpVA7fDtvclfVkKg=
X-Received: by 2002:a37:d14:: with SMTP id 20mr8922868qkn.330.1580442248103;
 Thu, 30 Jan 2020 19:44:08 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-8-brendanhiggins@google.com>
 <CACPK8XctCb9Q2RaFVHEDuWxKDXpCWMWs-+vnKZ=SeTa3xRnT_g@mail.gmail.com>
 <CAFd5g45MFYMK-eZWPC5fhm2OkynUXKfArUVhbanYVH+qKRUwPg@mail.gmail.com>
 <CAFd5g454tX9zxRAq5T_pDGzcWt7u5r119wjo-BCGVq+=Ej4bGQ@mail.gmail.com>
In-Reply-To: <CAFd5g454tX9zxRAq5T_pDGzcWt7u5r119wjo-BCGVq+=Ej4bGQ@mail.gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 31 Jan 2020 03:43:56 +0000
Message-ID: <CACPK8XddCV6QnvRSS7WcyoN7W3yuUSbyT67on=EMhV7jWDExUg@mail.gmail.com>
Subject: Re: [PATCH v1 7/7] fsi: aspeed: add unspecified HAS_IOMEM dependency
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_194421_670985_541AAAE0 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, Eddie James <eajames@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Jeremy Kerr <jk@ozlabs.org>,
 David Gow <davidgow@google.com>, Alistar Popple <alistair@popple.id.au>,
 linux-fsi@lists.ozlabs.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Jan 2020 at 09:46, Brendan Higgins <brendanhiggins@google.com> wrote:

> > > Do you want to get this in a fix for 5.5?
> >
> > Preferably, yes.
> >
> > > Acked-by: Joel Stanley <joel@jms.id.au>
>
> Hey, I know I owe you a reply about debugging your kunitconfig (I'll
> try to get to that this week); nevertheless, it looks like this patch
> didn't make it into 5.5. Can you make sure it gets into 5.6? It
> shouldn't depend on anything else.

Sure, thanks for the reminder.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
