Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE4C10751D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 16:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmNif7stEYvkA1wbEZxZ2N1UBE3yRt0mrEDZuH1C5fo=; b=otzQ96G9+UjKEe
	2CGwrhgHoeWcYy5nT99tT5u4yriYrMjPrE1UmZcr3QJFNGcrahoIHbNeYhtl2k1SLbffvSLTWXBg8
	u6HoEhbKcCaRikyDa6swSJ+cvr3aRF+RGnY8ZRBhtq68Nmjps0Z8P1qnLlHEOaPjPLJm+LeYEU0A3
	/NMgcI5VdQeSAETPO7BpkxerWcVJdm2FGjr0uSbECJcLqu9Xgb8U1jrsgfJIlcaaQN2vvzB941/Eu
	5t5fBw25LRuBCOgeSXzTkfjzJrwpMyFAHxnKAZcuLn/kS+Y+Qqpz1xI+lPzaiIzJG1wQtU413sVpM
	smDw4lL72H7MSP+17g3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYB5q-0007nX-Vb; Fri, 22 Nov 2019 15:43:34 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYB5i-0007mQ-6X
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 15:43:27 +0000
Received: by mail-lj1-x241.google.com with SMTP id e9so7845448ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 07:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GQzy1iQq7/UigF4z8t1UMdfHuT9DigedXPRNYTx8QBY=;
 b=XAGbQgf1cU8rD/kywGu8E//J0deKp6oSzrY4nW/7iQnOC7Z85qIiCXWxldnCOmfQM0
 5rD4pSqDLOxxYiQ22XtpA+ZQtIqNcfUSFvLURlIPtJQVgPu6ai8DLyrFL71pg9GiQ9pG
 J3lCWTccy2Ay+ptCBd2t+/YVxqaTPHmAVMWaO+1JJ8kbJonQBCsyOGxhUYGEl3GzmSzI
 ho5z7STf9Rfad2+G+J/cpfc9GQGp4z9GERHGxEaTUbyQm6+2MI6V46dhpZKOLPjpFlk3
 RbOEvF5G831FamUvktmD2bDhXniv+mEfiO+c9474NZJJF1jmAgNlIrUF58CkzGAeBa0J
 jdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GQzy1iQq7/UigF4z8t1UMdfHuT9DigedXPRNYTx8QBY=;
 b=nRjN4+t94/YO5KaFDQ/60EQyLMPsuCN+A/VjCbsbM5XZ5RoNfItb5nSmok4GeeiFxg
 olFB2fSdvj5H+0OY0RC/zJaZXZ3D9G4njQFb6ea76EcoP0LZ+jb7ooRTbk9gacd5GH6n
 qDmoz/5uhECNduzVPl/e59QvQspWBD79wjg53178hp1zDE+hDLBZFd3FC3EzBVvBRDuG
 PVSqSzaLtyfW0056imgqePca1ko+wHqgCf3iYRIpRGZ/2b5g+RcZVyz2aLrhsC+dIbX+
 c4G1tAUV5/mHxm0Z88eiFLOqo/b08zqvd8OUyQ3cjaL1YBUgZ1xU1lJwz4hP71uFlC0S
 XFVQ==
X-Gm-Message-State: APjAAAV2mbhkgJsBw1YI0yyylZ6Rqqsq6z+LYpnXOnQhtivoTg+1tmmq
 XpCgMjr4qjuvngydZcD8PteqPwPJvx5eIauc63zX8A==
X-Google-Smtp-Source: APXvYqwcugeW4edWhYbow6P3IthY8AWt+/SiEG9o6A9ekVZjqmWysrxtVlxvnwXZwUzSHLS/mgbF3SgO93jwQdxuQ3k=
X-Received: by 2002:a05:651c:1049:: with SMTP id
 x9mr536136ljm.233.1574437400356; 
 Fri, 22 Nov 2019 07:43:20 -0800 (PST)
MIME-Version: 1.0
References: <20191120181857.97174-1-stephan@gerhold.net>
 <20191120181857.97174-4-stephan@gerhold.net>
 <CACRpkda-rm=1hz_p2YCqBVgxsM9cmKYJVUg+T91MyBrgmtDP-w@mail.gmail.com>
 <20191122140944.GA2872@gerhold.net>
In-Reply-To: <20191122140944.GA2872@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Nov 2019 16:43:08 +0100
Message-ID: <CACRpkdYfUikKaB-9HO_heLZrGC346XZVKxvifMPJizeYSPjShg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: arm: Document compatibles for Ux500
 boards
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_074326_236682_3EF01FE1 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 3:10 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> On Wed, Nov 20, 2019 at 09:22:19PM +0100, Linus Walleij wrote:
> > On Wed, Nov 20, 2019 at 7:20 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> >
> > > The device-specific compatible values used by the Ux500 boards
> > > were not documented so far. Add a new simple schema to document them.
> > >
> > > Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> >
> > Nice, thanks!
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > I expect Rob to merge these patches as they are bindings-only,
> > alternatively I can take them in the Ux500 DTS pull request
> > for the next kernel cycle.
> >
>
> For this patch it would be easier if you take it through the Ux500 tree,
> as I have another patch series that adds a new board to it.

OK I applied it for v5.6 on my ux500-dts branch.

> The vendor-prefix patches are independent, so Rob can merge them if that
> is easier?

Let's see if Rob wants to take them, else I will merge them as well.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
