Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCF91ABE93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 12:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=StrogcQ4mhNuLvW+qABKNWhA8Mazlf+Kip/MvXwVvFU=; b=TjnI5QkNnd8sCc
	mFbfm3V1RIskJaV/dz7+jbktB2HENNgs2SUvUWrSWDxEEJ4LN3bkXHVEOxR6P3r3FbK0ESwwHbtI3
	ezBjSyaGNvv0jFYAH9GL8LDIsB4NXHbMHXvzTbSxl3Rp4CqmIF/shqLt02xY9XZzmzLLIaKB5LGTQ
	VyeRV2QrQUmu532AmCdQGTVWq0W2TVGBRsGrpzt51bHg31jk8MY4xjLmhL+zqXAl9EO8F7krJewl+
	qsVefLT9ICgdbygjSrN75hix207rrlN7R0MEeRYFzKpCYLTuibHyr0szPhaSrP4gq5MtEapP/yvZb
	xI55MltuCg8txTOyjN+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2DR-0007aq-Ak; Thu, 16 Apr 2020 10:57:53 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2DH-0007aR-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 10:57:45 +0000
Received: by mail-lj1-x242.google.com with SMTP id r24so7341962ljd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 03:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hFUPXxI7jgn/ktPgVbzarMZTHyOx1Nmg/5SBKx4pX4g=;
 b=GG/A2srh1ACSKZdgHLplfZ/jUi+xHfqSi5dZn0vX/6LIw14wKAv/iShVBee6mNV5+s
 h/hhCCKNTZ8wtmb9f1Jt173dqX4oF1+DkWJ4ACKhY9XBPC+ndcyHKHhegZ2z25zLjqdM
 Ehvs/TadXFAZKCdBTBOGRjR6Via/IMCITluuyqfnu9qgdMAWwwr94JMRJ9PXzHSHwoKG
 slfZgsRKpMg6Si96q2oW1y8x5M9cUVH+dIgZOVHSUa6+BYV9cJG+7SHeLLyODLsXz/eJ
 SW7YYs6U9T6bf5huPX/Aij1ZcFiQbMPt4YrItZjEd+w3gVbfCsBZyy0qZEzTaFACpgdW
 5xUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFUPXxI7jgn/ktPgVbzarMZTHyOx1Nmg/5SBKx4pX4g=;
 b=E+4allEgZfqdk4WzrpykdFBUKW7GDsSiy0Y0uJe/47j6kq0YIrp4JafW9TWiNFdQcI
 3qUCGwBGFTWxaHGYngn9EGZ88hnPRxYBsjgvk0wdyWS36hTyh5NZp7JoJflxOfmzA7MT
 0o9rIbIS4fTHWiFJz4c6U5ysKWhBRnnzmTCTZZcrg1P7+fh8ku98DiZtoONjULVDXUn8
 ZnzwtU3qqLIax5YteOH944+rSnXgke6BA/yGXXrlY54mBQsYyMJ6zgToUEMfXt2ipt99
 6JIWyOTfWKB5oYIIVuqUK8sHE98E+MzTCzvbjMAIUgNBcamRUWovztcKTDNbGJZCSmkH
 N6bQ==
X-Gm-Message-State: AGi0PubnDbipjY/ud3ADWv28cD1DWN6BrJ6nQl0tzIm9UDSNlawgpk0s
 t5Ha3dhi2IAJBv9szEiIa2/P5ZWu8uFn5Ou3BOAG9A==
X-Google-Smtp-Source: APiQypIW5KNqgRNJ9hqsEXxDLzCkOX0q/HE89bJBbc8uzjThgdcyvk1104plBxo1ff06jPElEWcriKNEBaC2qQTgiy0=
X-Received: by 2002:a2e:5048:: with SMTP id v8mr5610475ljd.99.1587034660887;
 Thu, 16 Apr 2020 03:57:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200409043851.31217-1-paweldembicki@gmail.com>
In-Reply-To: <20200409043851.31217-1-paweldembicki@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 12:57:29 +0200
Message-ID: <CACRpkdYKB0CHgOQ0DEhYoy16n3tSZ=DZ0WvL-GhAVCq0Jk8s2w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: vendor-prefixes: Add Check Point
To: Pawel Dembicki <paweldembicki@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_035743_151320_5EAFBDD4 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Stephan Gerhold <stephan@gerhold.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pawel,

On Thu, Apr 9, 2020 at 6:39 AM Pawel Dembicki <paweldembicki@gmail.com> wrote:

>    "^ceva,.*":
>      description: Ceva, Inc.
>    "^chipidea,.*":
> +    description: Check Point Software Technologies Ltd.
> +  "^checkpoint,.*":
>      description: Chipidea, Inc
>    "^chipone,.*":
>      description: ChipOne

This is wrong, you inserted your new vendor between the regexp
and description for chipidea and flipped the two lines in your
match.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
