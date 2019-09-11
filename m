Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4E4AFDFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 15:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQzSbepzIVzoSDCWtH3auor9dc2nKctLtgg4X9o4rqc=; b=IsVL+1jIHFMyEk
	AK1n0QQVXT07KmPAsXtLJJoQkL/9guUoPYL1wZoMwlxHtacchIZMZFHBaHuMfszpEqaStn3KakRLj
	vW1rO2je6MD59HyPT5L2R/OsxK8uo949eB7lSOMdD8wwHCrcv2O8UDeLqUX4iFUB405EMEAEzN89e
	PAjSXyKQzUcsd1PEnDucDJQombDPjh29TFQm1eO0boehgAnLpo5njnTAUkXqxCs8vDJXsKKzprmTU
	FoWfqKRiWCG6GJGZKHCbuJifV57yd+7lagKRHU/WBfP/Nd232tj9OzZnAzSXdZrB8TA2bUYd9JOHA
	AoIBDY7EojydGA+kPjEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82xU-0000Tk-Ub; Wed, 11 Sep 2019 13:46:57 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82xD-0000Sw-Qg
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 13:46:41 +0000
Received: by mail-lf1-x142.google.com with SMTP id t8so16475978lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 06:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4sB+wuvpg6HOuULqW0CTyLMZAayjlo9Avh7ZcIfH02I=;
 b=f7WAc4eVUllG0HyD3MOg19lLppTzVl6OteOiVGlOanE6XyIj3qnlmvqoBN987zeZrw
 S0IAcgva40wvfsDFvM3iBU+YJHXlQJ3lZG51L+Mi5m2SR+hu8e0jyXEHnLLybleugw05
 ZF0/LzCcyey2fwAHdDqpbTR0gDZ/J9BymPONwPVtMrKQxHhsT/t4Lriy+q4xMRdFPeW0
 OLC2m/IW0I59dAFAHxL2YvisRwdW6sCDWuapamoz7H6mHjZ6Qv6bBFOfo99aJWCAyWTc
 m9m9WN45I21+hrEqrAa7ziveIW9c5R1rDsjJVUPr93xOMiM0odNzmnjfiB49EaR7aUTq
 q6tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4sB+wuvpg6HOuULqW0CTyLMZAayjlo9Avh7ZcIfH02I=;
 b=gLx3eotkG6wU5bumRbin7He4/EUBHl75VtCN+RYiRe5JWGGyp3CldoA5Ly8/nMWvLf
 6GFR2z7LeoJ67VtlE62WQp+y3b0rgVZ6+QCvwPTcXPN6joormB59SMsIQvWtlba5Zl6H
 zhoYgafNOwIMG9h5WXVdjkn3Np5sJ3NoYUBlfkekre3weY7lyr9N3zYfvto5TM60fomr
 h/u52zfbHB+XClKbtt/OAY6T89an/ie9QlX6kdrKBzy6Si5sTJ+E4smRyu9O7+iPzhe8
 obOU9+fPp4yJuyY9Cb4ap00Uj12D/tfB3eRIRcu9Rh50voySLahubVUHqndWJ6XSP3DF
 eHRQ==
X-Gm-Message-State: APjAAAUaNVndGSTX+Dwtet+4xqAyFrEekp9NZToktbXSetTRzwQhSfJN
 6AGgSxHSpkY3kGsvD2/mmLIBo//DkUoqkzKo9qrDEw==
X-Google-Smtp-Source: APXvYqyF6iui8XzJs63N8SI1PpU/RSrw6A/JpJKJvAWmEDeGqssvUwnipJOZ4/itbd3e1Uyp9EoF+YH4+XRnfLSl9JE=
X-Received: by 2002:a19:117:: with SMTP id 23mr24532313lfb.115.1568209598170; 
 Wed, 11 Sep 2019 06:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be>
 <20190906084539.21838-3-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-3-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 14:46:26 +0100
Message-ID: <CACRpkdaOu2mVGS13MpQQ-OJ71W0qR4oTvE9T4+=BKch4+Vdf1A@mail.gmail.com>
Subject: Re: [PATCH 2/4] gpio: of: Make of_gpio_simple_xlate() private
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_064639_869682_17A6CB18 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 9:45 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Since commit 9a95e8d25a140ba9 ("gpio: remove etraxfs driver"), there are
> no more users of of_gpio_simple_xlate() outside gpiolib-of.c.
> All GPIO drivers that need it now rely on of_gpiochip_add() setting it
> up as the default translate function.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
