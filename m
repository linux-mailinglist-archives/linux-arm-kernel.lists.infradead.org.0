Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918BA101A6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 08:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rF/fPMRmvup/DSbRnx8uOm+HEgQGHmWA+nDqZ3ovIE=; b=D5K5xADOfw7Vx/
	REPubZqPKbWVEcTulHwF3+M097Q7PhgZWNYrIQztFnipHe5vMdhSaD5x8+BEo2vhly4nU62JbndJq
	hQ+LQqTKXVGXxDX6VBVo6vpmUSflV9u9l7t1e1MypN2F8qfTEbZIYmoiW1ylG6q+7IB8eSj/mkaVS
	jfrmHBC/TeYIAGLDOMkB6F2cPbN5tIpIhY1INuYuptcqql2PXkXRV57D/7LbR6E/xQqp4h01j8IUQ
	Z0g5DSGha9TvGVmOiJUvGcqQilwHUXHC9UAFwe0AbKIbwNzJNrFA+wXwuOfium7KtdC88hTXV6EHQ
	Obam+uQqT3p2Zq0JHjkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWy6s-0001Ce-NQ; Tue, 19 Nov 2019 07:39:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWy6i-0001CA-HK
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 07:39:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id f3so2224664wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 23:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hh4VbnNsZd0cQjCcxR1lcKBnthPXIf0SZTjvhg2Wu+o=;
 b=bEgICEq769u8g2rEZbD8dQT+znw/d/3WiyLyxRoRw2phf9OfSNgEj8y7rBFWslHOfR
 CiDX77/A2ElzxR1iC6wn+xj3FwhUSO1TYld/LPBHJisQ26P/zTwkIc2faQKEab7S9K5B
 HsH8dMCSHs/jsDlCzwdlZl8P42r0ysTzoTlKPEhcOd/U6WJ8NYaSCsSwPONBhtWibdVU
 SaHbl7L/aToxU7ObEv/bZMg9vy9ctB82/goQrJvUIEM+ALSx/ebIDGYx97nXEBsoQ5WG
 b3wj/0dg22lPqwiTsNcqSgc9D20S/yZXLdypRwgJ4EhsEqTuwdOdADXw1Nm8sCNBDoAQ
 ySOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hh4VbnNsZd0cQjCcxR1lcKBnthPXIf0SZTjvhg2Wu+o=;
 b=KG1UmwSAt3W9y4aEG4qEHmwwYGdoa1ElNHR6G62bg81J2TW43Oe35SpUlCFe3VPVYt
 QETPUMyRB21Zc0bpN9EEVBDAJa2oXac107X2B3izOPYgo9fWo0yqkGE41LwLY5HGw5hg
 WfMPPM9Ecos/VhQEJLWDQo/9nPiRr3jyjAVyFqCqhBsZgh6EoE65t8yqFhK7l+Adm/Bw
 VK05zUe7RxffIsv7d6iqYouNd1IjHq6MOPAXSS7fZRhrpB22gfYL5Ty4xwO7jRkszC9y
 ZZ6QF1ARSCXLH2iqr0ZiysbnP+7ED15qsW826tZD5ewWX5J5lovbaazidUZ0oTUwEuky
 d4aA==
X-Gm-Message-State: APjAAAXMvJBfxguydsN3BY4LHGjCa87IO3COp4E+puHB1+ne30LwEvrE
 aS663CpApD9OCNTw7//gz+g=
X-Google-Smtp-Source: APXvYqz0gH537B8rU2w00QiT/qNEHBVmoinFUpSwuRNgUqOSFjcLDQplIaEzENzq42pnIhByD4QFUw==
X-Received: by 2002:a05:600c:22c1:: with SMTP id
 1mr3946744wmg.142.1574149166955; 
 Mon, 18 Nov 2019 23:39:26 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id k125sm2206895wmf.2.2019.11.18.23.39.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 23:39:26 -0800 (PST)
Date: Tue, 19 Nov 2019 08:39:24 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 2/3] ARM: dts: sun8i: a33: add the new SecuritySystem
 compatible
Message-ID: <20191119073924.GA32060@Red>
References: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
 <20191114144812.22747-3-clabbe.montjoie@gmail.com>
 <20191118111143.GF4345@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118111143.GF4345@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_233928_597811_8FF75908 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 12:11:43PM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Thu, Nov 14, 2019 at 03:48:11PM +0100, Corentin Labbe wrote:
> > Add the new A33 SecuritySystem compatible to the crypto node.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  arch/arm/boot/dts/sun8i-a33.dtsi | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
> > index 1532a0e59af4..5680fa1de102 100644
> > --- a/arch/arm/boot/dts/sun8i-a33.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-a33.dtsi
> > @@ -215,7 +215,8 @@
> >  		};
> >
> >  		crypto: crypto-engine@1c15000 {
> > -			compatible = "allwinner,sun4i-a10-crypto";
> > +			compatible = "allwinner,sun8i-a33-crypto",
> > +				     "allwinner,sun4i-a10-crypto";
> 
> If some algorithms aren't working properly, we can't really fall back
> to it, we should just use the a33 compatible.
> 

Since crypto selftest detect the problem, the fallback could be used and SS will just be in degraded mode (no sha1).
But since nobody reported this problem since 4 years (when SS was added in a33 dts), the absence of sha1 is clearly not an issue.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
