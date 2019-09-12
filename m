Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C111CB157F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yC9XyPUYIQQU3cZ8JTP7qxaxn7hjjPSn1z1RE+SJBWE=; b=dEcaptQDio68fN
	pWSNSqx/+r8hGzYGhJP0FesLw8/9YtCF9GRxOrdy+uQuG0I6GXfFIW10QjLcLmVz4lyLlNGrGJ7jq
	JeqJhuEvmuSFgdASKcNL8Lu2e2tB+geAolLHhqnCcSKVzotBSikFaAIbusBUT2TBAZT6GOVIiXvLi
	k25P3Nx0DaxzwKHVo/mfj6MoWxULhaJ2Fjk4c4E115wIaI7LWFZcS4s2AxOAJ1GzhrcrfUoZY+fPc
	HEDoWZlw9x6jHolaDFnC/dfJa/FmS0MoUH2+BeAKm/6TUFWmlEGw/PGyjk5cMHcOO4c+ECPYjEaEj
	7YcWglBDYaRE19aX4b6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Vs9-0003Jw-8I; Thu, 12 Sep 2019 20:39:21 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VqP-0003Hz-4Q
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:37:47 +0000
Received: by mail-ed1-f67.google.com with SMTP id p2so23925454edx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 13:37:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pbP4i7DzdLdyPu+ieiqhNKpjgH4J8e/evjCuf6/AIwk=;
 b=j9iB8sIHtQ947ePXf6ikwEcvjPeH9+/OpfHdHVnWwvw7XLNVy4OzX0Lg4UvCwlUIIN
 /ai2oCCuZntXK00UcjHewvQ1t46tdDdjBbJDmF1VmTXHAyYlG9DkWQp7YFkNiNwfUlCF
 j77TntN70OjGpyAjvVfacQukppI2hmaCrTF48n3VZ4+ZhUb4f8i2W6euibHSdqVd9WQt
 nkKsRCJv2BgVvdZrxK6jHfWh8uyDurK/IpPT4N2mIik6Ry+XBFCLSrFyBPiZEQhaZCnH
 h92yvtaGq57cKafk3vGkHeYQgkoj6xOYxf05d8ERT44kB9fhqLk5Fq06XPBszwwGL9be
 5n7Q==
X-Gm-Message-State: APjAAAULK0CVbv3oc9r4w9w9/WDZc+OGaONWbb37Kxvsm3veLS4k5WVN
 0Ti8vW95j+AC9SmGU+yYFMIMRyKFNXg=
X-Google-Smtp-Source: APXvYqwaBUaec0iA+90jBHSYurhe2kvfEaR5TIlGvHSWXb1lliCSSCUw5MUze59rUyh3b2gx2wA00w==
X-Received: by 2002:a17:906:e92:: with SMTP id
 p18mr639292ejf.308.1568320650809; 
 Thu, 12 Sep 2019 13:37:30 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id e44sm839013ede.34.2019.09.12.13.37.30
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2019 13:37:30 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id l3so7106763wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 13:37:30 -0700 (PDT)
X-Received: by 2002:adf:c613:: with SMTP id n19mr37053716wrg.109.1568320649865; 
 Thu, 12 Sep 2019 13:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-4-clabbe.montjoie@gmail.com>
 <20190907040116.lib532o2eqt4qnvv@flea> <20190911183158.GA8264@Red>
 <20190912093737.s6iu63sdncij2qib@localhost.localdomain>
 <CAGb2v678WGQm5PNy8GhOTpz+fYeLP3k0dnR0F00yyZpSRcA4yA@mail.gmail.com>
 <20190912203301.is4ubixhk64dl5t7@localhost.localdomain>
In-Reply-To: <20190912203301.is4ubixhk64dl5t7@localhost.localdomain>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 12 Sep 2019 21:37:17 +0100
X-Gmail-Original-Message-ID: <CAGb2v646YkM93BAo=hrpL+tgDU-JJ49-uMCMGECUbouoJrpg=w@mail.gmail.com>
Message-ID: <CAGb2v646YkM93BAo=hrpL+tgDU-JJ49-uMCMGECUbouoJrpg=w@mail.gmail.com>
Subject: Re: [PATCH 3/9] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_133738_310596_5DA582A5 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Russell King <linux@armlinux.org.uk>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 9:33 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Sep 12, 2019 at 09:26:27PM +0100, Chen-Yu Tsai wrote:
> > > >
> > > >   clock-names:
> > > >     items:
> > > >       - const: ahb
> > > >       - const: mod
> > > >       - const: mbus
> > >
> > > And here as well
> > >
> > > Something I missed earlier though was that we've tried to unify as
> > > much as possible the ahb / apb / axi clocks around the bus name, it
> > > would be great if you could do it.
> >
> > I think we also want to standardize "mbus" as "dram"?
>
> Do we? The only user so far seems to be sun9i-de, while mbus has more
> users. I don't really care though, both mbus and dram are pretty
> generic to me. What makes you prefer dram over mbus?

Argh... it's actually "ram" we use the most. Both "dram" and "mbus"
have only one instance each.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
