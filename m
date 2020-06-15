Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85141F942C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxBGae9LRo1hrFwOTzSj7sHPVOSZ+3a2PlB3STWUAjU=; b=dXP7PEJzRd3yF8
	mcXs7J2sc7GL5f1rIWfSLYaBtVl+2x4gFncMYfxTUmBSSVlgjAjikOiYuzbOafaWi3EL9s3PKer9+
	BMiay0VpbPaKBHTN46XHbH+OosNBNNLcOUxnspcc+/+dFB/gedoJ7QX9uCH32+NGhUw86JGLsTN6i
	/FnbyMCpTSV5LBhqZfgxpDi+e3Ajqcxqf2o8cFoGZpNMriLC7wJExp4gHP/Tby9H/CKW2KV/ZaFG1
	NfGAEScopXeDrcLY9l9Q3tNsBuYEwsV5NyP5DEWy0ep46V2SfpEVoZdpinP1KqbzBsXifu2n5Dn9k
	CjU6t0+z5wqR0TwfLasg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklvy-00033b-7l; Mon, 15 Jun 2020 10:01:42 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklvo-00033B-1a
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:01:33 +0000
Received: by mail-pj1-x102d.google.com with SMTP id k2so6589894pjs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 03:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SM4junO6RsxYtsNidTq+rujDE8gOtQN9q2DY15B+ppc=;
 b=X0NhFHpHPSiSyhPZWUuIZqarNW63bMJRXZj0lVecPsoxNwkxJHx8isErxhHHG+Yutg
 f98JMoCY9GOqNahjTK94Ws1EUOtbKzFKSZMPCQdJKUzVzXzAqKrWgWY4VjA9f3iuZfqA
 2rt+EXe7fhnDXajvkrjr7SE4s+RbacQtfX431IZg9pr7qvA3HuJaHDYOuLouFFMj/JPi
 aSSyukV87RPp1PWptJNdbC17BvMuxTKdlmCu4wCokxPpKKbMASmKz3jbeiUvJa+l1JLD
 W3ASv60AtidpudKLFtis7EyqZcvyLts8tlfiXxeV0/nbrX1a8xmh+oo8JNgKk7tw0XtL
 hqqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SM4junO6RsxYtsNidTq+rujDE8gOtQN9q2DY15B+ppc=;
 b=SlGaGukSyoJM399Q/Zou0WKcdjuzTP6pPoCY4Wp7+VPSorJP+GUVGzHGKsfalrzJsJ
 uqhv+Zyf2D6XwNI+UY2gqk34RHtOrW5dMDeMo9nRQXw6DAPaVqWLpcRykSNlmDDiEnn1
 2l7VkjpQMryTRYk3dKSohw7Zwyjpvw1SNNjSHn79evnqSU6q5xXdhcqQ7OD2IIkCrbeI
 WB/MmPyZjwGz3yPtaEw35xGF5dGHD6GOHWu3X6wkuL2qns0/3an49QAFf+S0hGrzSqGU
 7b3LVBG894CeKqEh0f1C/Yzm0NLz/irLWZlFghMLNDDUmeTHN4KGNGkHbXn8rLnd62q/
 UBuQ==
X-Gm-Message-State: AOAM5330+2HoNfVcDk1B0VfM2b3z5Xa4W10oTFcw5Toef8nAyBQYHQwv
 gvbmWiIJ/cmzIBAkscNLTh0=
X-Google-Smtp-Source: ABdhPJxNTo8OpibLA7vYR59eJ4apzhhKEEDyKcdjlb0z+L4e7GXG6HnQEzJeOMPvfO3eKziIynTe/g==
X-Received: by 2002:a17:902:7c16:: with SMTP id
 x22mr5570064pll.66.1592215291236; 
 Mon, 15 Jun 2020 03:01:31 -0700 (PDT)
Received: from localhost ([49.207.193.84])
 by smtp.gmail.com with ESMTPSA id w6sm11991849pjy.15.2020.06.15.03.01.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Jun 2020 03:01:30 -0700 (PDT)
Date: Mon, 15 Jun 2020 15:31:29 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: ARM: vmsplit 4g/4g
Message-ID: <20200615100129.GB5921@afzalpc>
References: <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
 <20200607161116.GN1551@shell.armlinux.org.uk>
 <20200608110902.GA5736@afzalpc>
 <CACRpkdboPBGBdHaRtZ=OAFvikYZVh=BVu192uyiB8T=yeHHEbA@mail.gmail.com>
 <20200612102551.GA5377@afzalpc>
 <CACRpkdZB5usrY1HkunoceFtz8-QhtTAojJftD=-n0s6fBB2j1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZB5usrY1HkunoceFtz8-QhtTAojJftD=-n0s6fBB2j1g@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_030132_101616_3C961EAF 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Mon, Jun 15, 2020 at 11:11:04AM +0200, Linus Walleij wrote:

> OK I would be very happy to look at it so I can learn a bit about the
> hands-on and general approach here. Just send it to this address
> directly and I will look!

Have sent it

> > For the next 3 weeks, right now, i cannot say whether i would be able
> > to spend time on it, perhaps might be possible, but only during that
> > time i will know.
> 
> I'm going for vacation the next 2 weeks or so, but then it'd be great if
> we can start looking at this in-depth!

Yes for me too

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
