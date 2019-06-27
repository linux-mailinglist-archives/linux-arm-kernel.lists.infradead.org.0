Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DC557B52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMKne3UnmFXtIZF5rBPefCiOOdkC6c3zCb2B7xFiqOQ=; b=Vdo+1V4oDRsc4L
	Y8RS4Ocaq6fHVhR8qkhemPzuBF7B7a7Z5AMlK0moyTeIXsP1kboi0lrgwkkxECi7Bi3WgP6JK836v
	gZ+RHte/diu1eLqjHMTVBQdgDO0OGk7WBMhEByA/nD5MKaGKlzG6bVzxkkmWFA8qmiFwYCriCJ6Ut
	FeSo5GuIFq00FNsgFoBsu3AGqKIVyZ5n1jN1o8twk1xVN3kxxg+LuoV9dmo3uqmQoJVWCNe7/3w+P
	IJjDFtxH7KTSSr+LfbPfwtCjWrvLdigCS61DrrBZzzhVpuwOJ3koXGEVIb2499jhdO7r3cmODL6Hs
	fQY3xZ2QOWZCW7DCt23A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMvQ-0006Mf-An; Thu, 27 Jun 2019 05:26:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMpX-0006ep-Cw
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AZTXmvXr0MWnVP8mYRp82nMN6DVuJ1dopWZlM0gQIj8=; b=Ql6U88iQ63Zqd0NEfuLKbwRyA
 T1l1VTLYuh5MJLKOrffLxqqAiWy/SWjOKIXGdLgFHO8YfaJ+LTEnjUbfrXeIshapGuE3gUOw+3oB5
 FSZiGIro64t5PrXqf0BPKbtc1CqBij3/EefKT3WDulhCMZ06DJm7BzwvpgSjfWD7CTEgd1VlE6qCu
 ql5+QIzXzyuSNynhm2wt4KNgVQ1HW7fsYqvk1qRNAQIF89697tbmIEjg5sF5IdNduMbIjYrwhGF94
 A3HbOIVXz21388+ePQfwFrRd7FhIjFWHjdBnEYT07w8IflflwoVpPx6vsXaYyz0BiF9pabMIYi89T
 xGI0ADq6A==;
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKGJ-0003d9-L5
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:35:49 +0000
Received: by mail-lf1-x143.google.com with SMTP id p24so461938lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AZTXmvXr0MWnVP8mYRp82nMN6DVuJ1dopWZlM0gQIj8=;
 b=ESM1J+uCB2a403PXxrQVk7yXkv0gynrduWQJCZbsZKcJF7c0JhLjjsg0t90wiP7PBj
 dEJYGoGMZFoPepm0Be5TrMXHd3A3g1bf0XOjjIQBThrMpyvhTfGXP81fzk0rsEaB23nh
 Wp7ecpJ6ewdma0DXD3n8TClsj8Xchwcf+zYIFUCrLSGA8JpCwqmdNwEaz7nhwuWPbF/F
 IETlzC6i/BK9ha1P/roGicqnajHFitzQ+zvCPqES5XvoHsysVxkuUYsxCFAGrdZhdTJv
 CRNin+Ey8QeTIYTFQZOetxlpq6q06uXNEJqLMCiknYw7R6qA8oDduq8qj2QrhFfQ1TR7
 Fu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AZTXmvXr0MWnVP8mYRp82nMN6DVuJ1dopWZlM0gQIj8=;
 b=R6lstCJcRQKpamfU2zsa3/78PC+Afanl2Y7j+wYLnCpTh3npU3azxRLit7YpZ+qiCM
 zEHOZXYhT/vwXPc3K7Cjmp4/tLcQ+Rh6zWi4fdSGq63WTw38/Q5u2IU9NXz8FC7YTCZF
 iSMYO3QzH7Ma/exsKT9V3X3j6bMUdCxg4QbVrdBuvYLNjTsk9grmRu+Ye5REyySBY1oI
 ZaDLkFlOiQywV33WB+SA0Vxb0+qxX0Rya/JKnh1RPdDPpQI+YJJB+aYqVHDlIc20ACTk
 xP/1e/aV2Xg+waTGK1Y1bn5cOWYZfHD1cPElTbd6RZAFivJqwK7gAg5s3/b6QuArvMi9
 DoZg==
X-Gm-Message-State: APjAAAWpNC0SszmhhZvJAFud57Yxwd7V6y3hByoF8fe6lTnQ5wIhWTn0
 FCBuodQY99hsXNZo+czNjplf/w==
X-Google-Smtp-Source: APXvYqyMnKJm3WFO7Y7nqNNd4BOZBLnGjntyaizVhMTRPh3lYD0ZAjplTZ06cxg4KCYrMVfj9O+fpA==
X-Received: by 2002:a19:6602:: with SMTP id a2mr629644lfc.25.1561602822023;
 Wed, 26 Jun 2019 19:33:42 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n3sm109277lfh.3.2019.06.26.19.33.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:40 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:18:08 -0700
From: Olof Johansson <olof@lixom.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [GIT PULL] ARM: aspeed: defconfig changes for 5.3
Message-ID: <20190627021808.47q4n4bhrj75hxzw@localhost>
References: <CACPK8XfL-U-BeynGQNBp5rPiv1gzD=7DVzyvrgtoL3njU1Kr_A@mail.gmail.com>
 <CAOesGMjTBazjfMYEKww_dGuFAZYa7f6JBZDoyyCNaWKvKdpbQw@mail.gmail.com>
 <CACPK8Xf=vb4To_fxpJiaT-is3BBGg1SUsAc1qtFrBd-FwmPXRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8Xf=vb4To_fxpJiaT-is3BBGg1SUsAc1qtFrBd-FwmPXRA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_033547_704904_D16F95AD 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Jeffery <andrew@aj.id.au>, arm <arm@kernel.org>,
 linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 02:03:45AM +0000, Joel Stanley wrote:
> On Tue, 25 Jun 2019 at 13:18, Olof Johansson <olof@lixom.net> wrote:
> >
> > Hi,
> >
> > Looks like the multi_v5_defconfig changes aren't producing the results
> > you're probably expecting -- unless the drivers are pending in
> > linux-next?
> >
> > arch/arm/configs/multi_v5_defconfig:257:warning: override: reassigning
> > to symbol ASPEED_LPC_CTRL
> > arch/arm/configs/multi_v5_defconfig:258:warning: override: reassigning
> > to symbol ASPEED_LPC_SNOOP
> 
> Oops, sorry. I made a mistake when preparing the change and missed the
> warning when testing. We now have two copies of each of these options
> in the defconfig (they moved around due to misc -> soc movement).

No worries!

> I've sent a follow up patch for you to apply directly. Let me know if
> that's okay, otherwise I can do a new tag.

Patch was fine, applied.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
