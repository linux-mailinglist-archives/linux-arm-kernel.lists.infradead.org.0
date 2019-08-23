Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E249A908
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ahZmSHAmV/BHF6+HgqlSCEhuKwwWx6aQBC98kBYJcI=; b=kjDSbh6rGzIaey
	SBgWbEI/DlZvLHSC29qtWaT06ycgnd8UzIUHkPL+Vt1Gj4e0BjSLFJZMzFzQMRdVLS5qxu5W2FQOy
	rPMbb2wGCN0kK2zcQZDQ47KzlNzZMqFKTC4UWlNlDUxEeYQ7brZDVx/Paym17NZB+1DlqqlliEEk7
	bkwlyrcoJLENRLRDO4KClT4ywRPtahXqgH2XGAH8f7AfwHiRPPbPs1Rnfw/BhfuLFEn/Qdd0y3/QY
	Q/hjJGgvoCz49MNpYi5F27gZby1TOcYS4NilKnaQd1SyeKPQQ85Z/toiEmRrYG33z8yuSIiO8pT+Z
	KcBK68tehddsSa3G/m9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14A9-0006e3-Nd; Fri, 23 Aug 2019 07:39:10 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i149p-0006ca-K9
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:38:50 +0000
Received: by mail-lf1-x143.google.com with SMTP id c9so6447863lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lz2W/Er+vhSnNSGXtvI+raF02sxjt0QdGmNNXiXbeZ8=;
 b=xSbUP94itBW5D+EIP6J+VeADRYAq49B6u3tO5t95hiQ3LqFqEQ+LFuJEBkPwIvl6NJ
 rdHJD228PuvuWY4ayKaABZy0R7ZgUsv1KoJKe1+B4yBMntOltSIwBMnp0zedzqrv87zL
 FyQiEkp4NI1BU+dGZ0yLr0aX/BmREJwiUiVaQP7m7hDwK2klVCy6+CigyrmqkaynwxUX
 i9hJB5OCNPeM/9T9HUThretRY6cbh94rGzMPh3Hx8QHO9Re1SquQiiwQO2kbIgauukEr
 DUTZbK0uzXVvytwctPYRyQDuMKG6qUb+FWGnnGyZvGsYO7gI58znr1Ne4ZP01V0cDmVx
 f3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lz2W/Er+vhSnNSGXtvI+raF02sxjt0QdGmNNXiXbeZ8=;
 b=hg9/1oBEdmEzpA4WxP0HGVEI/mn75G71N78t7DU93x/UnMwZoyRTN7H6/w1JE/RfMZ
 QuFHB6mizRvbgCHbA06NjBb5N0YhjUBajHOJkCBDxUk+xWR/F+0AsnHlp6j9lVjT3Pih
 Y+P7O5hetKiWFF2LFHIYxwsaA/NU62Y5XQrZnM/XP2AtFGF5PFBcDjZJA8F6gANxt3j7
 sknw2hfPlwnSmt6KhN5pQyqfH9U3iUCaMNXSUKE7mJMBAW1Al/FxfnmiUZG06luMHB6p
 SnGNCHXqbEHa1Wc7+ZyCSqk+24Nkpsz6BOzWJtxIGHbJUa9YOoLmBzkNQpz645Upsjy8
 c3Og==
X-Gm-Message-State: APjAAAWPmEL5XBCQdQc45N90mqrf8DUi8kJCERO7zImtyrbet6LZp2Fv
 ctGhuqmFUlEE/aocGlmpIbPyAeu9X7Kfuc9fnVRuBQ==
X-Google-Smtp-Source: APXvYqwn8sOli89h3xpwI0gsI6dJyFeTKTHshx0YK3OmzA9sFUzjhWgRf+UO3GE1WNBwItHvNrorYCww02wff3Qgq/U=
X-Received: by 2002:a19:e006:: with SMTP id x6mr1813674lfg.165.1566545928179; 
 Fri, 23 Aug 2019 00:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190808101628.36782-1-hui.song_1@nxp.com>
 <20190808101628.36782-3-hui.song_1@nxp.com>
In-Reply-To: <20190808101628.36782-3-hui.song_1@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 09:38:37 +0200
Message-ID: <CACRpkdajLb3Spsq4SvRCEJVQcABK+QnNyZi5C3ciTvirjcHF-Q@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] gpio: mpc8xxx: add ls1088a platform special
 function
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_003849_669967_1597885E 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 12:26 PM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> ls1028a and ls1088a platform share common special function.
> The gpio hardware what they use is the same version.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
