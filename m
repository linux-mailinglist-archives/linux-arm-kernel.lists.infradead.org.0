Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4197C1E7EF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3xBHQBs8DLlWDsCvl0NLJgBzt2dDdisXT56XgRqfUI=; b=oDIZuhUwP6PCKj
	6oizS76ZLcSQw+HW+5PnMYFI+Vc9ovZYfYZTxnZNy4SvpSZj9np4+SXJt/QJf9sKi3h07gFNQjnAG
	eKSYKiYbKU+CNB9ugA3xd4uNdq4yy2DZAOG4gdkaQSitsJR9r3x12XxitVvOupsIicbSOiyBs6+TU
	SSKb8L6iUpj2xLR8LmeG5aKo3/CqWe4rGA3TqMvpfuELehEXP5kReWz3nhRmCAbTlUqedJPMTXcCt
	TQgfOyzCYsvG/sP2Pn0tvl008G/e8A6vI2cjNmqbi5lypuSoduIQDSeC94jNQ3H7hP79DMdsY+/8r
	eky3TGoRGQFdCTAIS6pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jefGK-0002pq-Vu; Fri, 29 May 2020 13:41:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jefGD-0002pX-Lc
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 13:41:22 +0000
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F2212145D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 13:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590759680;
 bh=Ln5kLaZwQP3i6SW2waQXcocCo7X59Pe9/XFzkY7bwTo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1oV93xO6cYenguhKBfKOw174zOww8pOWs7kdrQrhnTB9mGsYF4fvzDMuQGLpK5LbO
 8D/ezKKn39+o+2bQvC/HeTVJF2XHbjKUoWzqZxRPsplEitIrT7AcJv56dCI6YZ/HKg
 lieygh0K6Z99cQXmDZchfGo316aLafg0Fa3m8xOU=
Received: by mail-io1-f47.google.com with SMTP id h10so2320035iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 06:41:20 -0700 (PDT)
X-Gm-Message-State: AOAM530MeVXfaPsfp7E67nMO8PkUVVnAyR7DJzZU3xc9a4PMS1akrznp
 vNaf+azSwHzdZN1KjlD9suBpgRTJd9gObWlrYRU=
X-Google-Smtp-Source: ABdhPJytmZNZRBpeLqlnt0MG7D1quaUYLw+a+QTe2AgAN7bNoNqPJ68v+NZ3B7czgCOpSypV0FSP9h4gmAPhA4fopxY=
X-Received: by 2002:a05:6638:5b9:: with SMTP id
 b25mr4811366jar.68.1590759679500; 
 Fri, 29 May 2020 06:41:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <20200528073349.GA32566@gondor.apana.org.au>
 <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
 <20200529080508.GA2880@gondor.apana.org.au>
 <CAMj1kXE43VvEXyYQF=s5HybhF6Wq23wDTrvTfNV9d4fUVZZ8aw@mail.gmail.com>
 <20200529115126.GA3573@gondor.apana.org.au>
 <CAMj1kXFFPKWwwSpLnPmNa_Up1syMb7T5STG7Tw8mRuRqSzc9vw@mail.gmail.com>
 <20200529120216.GA3752@gondor.apana.org.au>
 <CAMj1kXF2-jJ6yGh9m759V2858_c45txoUBgKirvR-4z4GOHUfQ@mail.gmail.com>
 <20200529131953.GA9187@gondor.apana.org.au>
In-Reply-To: <20200529131953.GA9187@gondor.apana.org.au>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 29 May 2020 15:41:08 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHnQhLWUC_dPeuscEutOZPGzW4ZGaqphT2mSExmfChtsg@mail.gmail.com>
Message-ID: <CAMj1kXHnQhLWUC_dPeuscEutOZPGzW4ZGaqphT2mSExmfChtsg@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_064121_727719_C38122AB 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Biggers <ebiggers@kernel.org>, Stephan Mueller <smueller@chronox.de>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 at 15:19, Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Fri, May 29, 2020 at 03:10:43PM +0200, Ard Biesheuvel wrote:
> >
> > OK, so the undocumented assumption is that algif_skcipher requests are
> > delineated by ALG_SET_IV commands, and that anything that gets sent to
> > the socket in between should be treated as a single request, right? I
>
> Correct.
>

So what about the final request? At which point do you decide to
return the final chunk of data that you have been holding back in
order to ensure that you can perform the final processing correctly if
it is not being followed by a ALG_SET_IV command?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
