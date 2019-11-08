Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CF7F3E15
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 03:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMSvxPl5l47VMgczT1CeIeOWC9VJZTsqnqNtfOZ9j+U=; b=N7zlk6YokSDsP4
	QOzdRfYyptrzrUeMe7XS4EDDu1xweV9xnUQCBshi4wJy+5oiqHiY5Zp/rYfgrtndQ3RWPVqOUKuGI
	g1FSKe8QsDvYxa1bcg5k3RUcSrTU3pwPEHHjzke3fSFyxlm+Xz/YL+DENf3xgSS//MoxQT7YljyOb
	jEzcKVnKGiJrWvkelOprgE5izfja5Mq1T3GlE3gC32v5BiC7vnc9A25i/ufa0SrWIBGcPvQ4FIu9g
	cwplK6kF4sW4DcsHTOZOsq6TI/oMLoKVjkdkTiFR3zJoDwrt3PhMTHShVUW2yOLaFyHLxojz9oYWi
	4wtYr8ITyZq2aQDeASkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSu0V-0007gQ-Ba; Fri, 08 Nov 2019 02:28:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSu0L-0007fX-Ir
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 02:28:06 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E9542084D;
 Fri,  8 Nov 2019 02:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573180081;
 bh=EmadM+X2aXhTG5ipw+1vGj1uDpsQx+J0azDRdE/N1n8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u6eJJ8FpsQt7K8Hxqi9SRqDIST9r/gmbGjyImf5IHFmdYMfbjw+YhhgJRmd7iVvh3
 0JFyIvzd6fiP4D7fESS93YrE4M2DFe5j0n1En7xFqhCjB/fp8YlbSJGGNbYLSrBPLV
 7t71NOkw6f+iXej4O35JBOPS3GfXZaAq1mUfhlCk=
Date: Thu, 7 Nov 2019 18:27:59 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Gilad Ben-Yossef <gilad@benyossef.com>
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
Message-ID: <20191108022759.GB1140@sol.localdomain>
Mail-Followup-To: Gilad Ben-Yossef <gilad@benyossef.com>,
 Tero Kristo <t-kristo@ti.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 David Miller <davem@davemloft.net>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-omap@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
 <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
 <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
 <CAOtvUMc7pbtPAPUbEmz_MTHmB9LboQVdgG-t9tHCr=biEbFuUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOtvUMc7pbtPAPUbEmz_MTHmB9LboQVdgG-t9tHCr=biEbFuUQ@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_182805_661766_671975B9 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Tero Kristo <t-kristo@ti.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-omap@vger.kernel.org, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 09:33:20AM +0200, Gilad Ben-Yossef wrote:
> On Wed, Nov 6, 2019 at 9:25 AM Tero Kristo <t-kristo@ti.com> wrote:
> >
> > On 06/11/2019 08:39, Gilad Ben-Yossef wrote:
> > > Hi,
> > >
> > >
> > > On Thu, Oct 17, 2019 at 3:26 PM Tero Kristo <t-kristo@ti.com> wrote:
> > >>
> > >> Currently crypto_wait_req waits indefinitely for an async crypto request
> > >> to complete. This is bad as it can cause for example the crypto test
> > >> manager to hang without any notification as to why it has happened.
> > >> Instead of waiting indefinitely, add a 1 second timeout to the call,
> > >> and provide a warning print if a timeout happens.
> > >
> > > While the incentive is clear and positive, this suggested solution
> > > creates problems of its own.
> > > In many (most?) cases where we are waiting here, we are waiting for a
> > > DMA operation to finish from hardware.
> > > Exiting while this pending DMA operation is not finished, even with a
> > > proper error return value, is dangerous because
> > > unless the calling code takes great care to not release the memory the
> > > DMA is being done from/to, this can have disastrous effects.
> > >
> > > As Eric has already mentioned, one second might seem like a long time,
> > > but we don't really know if it is enough.
> > >
> > > How about adding a second API (ig. crypto_wait_req_timeout) which
> > > supports a calee specified timeout where
> > > the calle knows how to correctly deal with timeout and port the
> > > relevant call sites to use this?
> >
> > Yeah, that would work for me. I guess we could just swap the testmgr to
> > use this timeout API, as it is quite clear it should timeout rather than
> > wait indefinitely, and afaics, the data buffers it uses are limited
> > size. It doesn't really matter for it whether the timeout is 1 second or
> > 10 seconds, as long as it eventually times out.
> 
> 
> As long as you avoid releasing the memory used on timeout, that should
> work well, I think.
> 

The memory is always going to be freed eventually, though.  Although the crypto
tests currently reuse the input/output buffers and the request structure from
one test to the next, they're freed at the end of the tests.  Also, it's unsafe
for one request structure to be used for multiple requests concurrently anyway.

I think crypto_wait_req_timeout() would just be fundamentally unsafe.

Couldn't you just use CONFIG_DETECT_HUNG_TASK=y instead?  It should report if
any thread is blocked for too long.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
