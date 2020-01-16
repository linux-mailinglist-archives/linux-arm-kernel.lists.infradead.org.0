Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DADD13DB59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcvLcJAWxisXU//PJfkbJZG6mkg3SVaqBUpafJeXz4g=; b=rf2Vj+DTFMX69L
	IImqSbKP4e+jCR8TMm9UEWQQQSU7x0zW81Ze4mRDERy+yHNLJVUL4xkYj6XCXzQK0lTunwTojz9yB
	rRvd5KHe4dkhAyzLm6lxur8FBc8zNi+zdEfNJSZ7pd7bADjEL1PRmyiP5a9PmecKMOIJ1HX0jvhQo
	weqk0V/zJd5VyJpwPDEDCwxlohk2+MUjxI27sGj7JTrmrAwC3kil9pIDgaxOPKfpj3OvMARXRY4cD
	JRKN5RAdPPVI6tWFtBNyXdEqxQg8NE0b8P4CKK1EFwsnr50PRZTaxI5fOZgvhwkhy1X6Myrfg3T3b
	0AonyrQcOjVLFA6tU8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is55Q-00056i-Vw; Thu, 16 Jan 2020 13:21:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is55E-00055N-Lf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:21:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so19122382wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tbAt5pOcctelyMI0Pw/2Boj48DssPhA/WaoryvyZ5m0=;
 b=Y1tnjYY9zApO2OQtTlDt04IWqpItEAIZ5N7I1UyRyrMF0VujSdOWoWeW23YpRJREit
 Ye7auccjOUK5vicYqb5Kybo0WeIT3zvCnpw2YhunRBvypG34tKCGQO+Am7f7xzTZmKzG
 O/CU2sLyQOWI0vysFxCMbgNRbAFQK7aw6ke/dLrtXqmXBOxY7x1mSWOtn8uIb/A5+bcO
 VSayKSZztrGF42u+FDH0K6DMs3+GPpUFxslOKs//lWPYKSNF+Vc+xUua0Top/zxAdZhO
 rQEOPlOwktWilbCv0LX37iTT08dPftP+a5KI+ymcN1qZpKbzkkhaYj8DmKqhEKoWAlck
 x1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tbAt5pOcctelyMI0Pw/2Boj48DssPhA/WaoryvyZ5m0=;
 b=ES2UPlgeMNzwzWYIiGxdGhDlVmf5LQMPw2Kg6G7+2iyjOWSz9Cl6kBQoRkV2hAmMDQ
 th+ygNyZ/87ycqgXTvKPMm46VsEpRZOa7tK5XkBOk/JNT/8FQ7t5xc8TLIg35orUtK4V
 dlTtEAV0yj1Di7qV1tUVmZAIfl/RnTHk8xH3R8REPoJnmfROW3G35D63sKAt9pU5cUuv
 cQecq3F73mJSktMN+9fn0obR3egI2bLhUx+Bmi4PkdaQQlaOdzv3WaJIz/XwQgxYEdWB
 B+nK8oZaS8X8bvAL8p10K9/Q8vrrWi6BjlwmqkIIEfqfBtwSj4DrEDlofTy5jKQypKV0
 u4AA==
X-Gm-Message-State: APjAAAULexE1ILJIAoGEw3VhbXEPsuqQZag8In5XLwzmjkXi4SvYq5nN
 J54JxRZlqaloWL9LGhVOYZM=
X-Google-Smtp-Source: APXvYqw01+GqfkH35JYXyBsSnjwvr0X4uh+5I3kzup5rww9ZVJeL67W4XhmH/pce4L5zuqrTSc5t4g==
X-Received: by 2002:a05:6000:1187:: with SMTP id
 g7mr3415042wrx.109.1579180870884; 
 Thu, 16 Jan 2020 05:21:10 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id o15sm29681752wra.83.2020.01.16.05.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:21:09 -0800 (PST)
Date: Thu, 16 Jan 2020 14:21:07 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Iuliana Prodan <iuliana.prodan@nxp.com>
Subject: Re: [PATCH RFC 06/10] crypto: engine: introduce ct
Message-ID: <20200116132107.GB26487@Red>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
 <20200114135936.32422-7-clabbe.montjoie@gmail.com>
 <VI1PR04MB44455F7F7830159B6ED336648C360@VI1PR04MB4445.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB44455F7F7830159B6ED336648C360@VI1PR04MB4445.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_052112_743690_F3993AEF 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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
Cc: Aymen Sghaier <aymen.sghaier@nxp.com>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 Horia Geanta <horia.geanta@nxp.com>,
 "linux-sunxi@googlegroups.com" <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "wens@csie.org" <wens@csie.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 11:34:19AM +0000, Iuliana Prodan wrote:
> On 1/14/2020 4:00 PM, Corentin Labbe wrote:
> > We will store the number of request in a batch in engine->ct.
> > This patch adds all loop to unprepare all requests of a batch.
> > 
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >   crypto/crypto_engine.c  | 30 ++++++++++++++++++------------
> >   include/crypto/engine.h |  2 ++
> >   2 files changed, 20 insertions(+), 12 deletions(-)
> > 
> > diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
> > index b72873550587..591dea5ddeec 100644
> > --- a/crypto/crypto_engine.c
> > +++ b/crypto/crypto_engine.c
> > @@ -28,6 +28,7 @@ static void crypto_finalize_request(struct crypto_engine *engine,
> >   	bool finalize_cur_req = false;
> >   	int ret;
> >   	struct crypto_engine_ctx *enginectx;
> > +	int i = 0;
> >   
> >   	spin_lock_irqsave(&engine->queue_lock, flags);
> >   	if (engine->cur_reqs[0].req == req)
> You're checking here just the first request, but do the completion for 
> all? Why? Shouldn't we check for each request if it was done by hw or not?

The first request is a sort of key for the whole batch.
> 
> I've also seen that the do_one_request is called only on the first 
> request, from the batch.

Since the request are linked, this is not a problem.
But I miss this explanaition in the code.

> 
> In your driver you do the prepare/unprepare for the whole batch at once, 
> but not all drivers, who uses crypto-engine, are doing this (see virtio, 
> amlogic, stm32). And I don't know if they can...

prepare is optionnal, and unprepare is optional even if prepare is done.
Furthermore, doing prepare/unprepare is optional per request.
I have tested this serie on sun8i-ss and amlogic which dont use prepare/unprepare.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
