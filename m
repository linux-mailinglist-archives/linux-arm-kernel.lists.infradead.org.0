Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E9C5E4BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAtpaKiYhB7tq2aQnTlvi3TMpMcM1Q6mcd9rYFN31/I=; b=Z4thUNYCuuW5OJ
	BNAsUp/bK9pLVg83yS+z+W+YRqJEjJIJvA9sFKNDzcCQjvyviNrMDu04ne7NbZ8hgyDxtsqcCesRV
	JNrzYCKCmtZAMMaBfQuOFKkYIfNd76l9vcQcjiUKG4W9lYj61uRjHZ7gYt+LcPZSh2nLt+Hwin9kh
	RPr5vwE+EBFQHAPZd+h5lYhmn0SDd+0uXquNEdEMRJPkk+WQo7pUmtgxlxenvyxYZsrLECXo7/FAx
	rCS6Qi7UCpUUFPe8wnj40kSA1iZ5VDuexjs6Zqb2VuFrHsvlUwCRZXLT17fWFR9n9NQs1EHJIscV4
	S4noZ+zHywP5yzhIjBMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hietL-0006sU-3u; Wed, 03 Jul 2019 13:01:43 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiepF-0003jt-AA; Wed, 03 Jul 2019 12:57:32 +0000
Received: by mail-ot1-x344.google.com with SMTP id l15so2207964otn.9;
 Wed, 03 Jul 2019 05:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+Almj/mPu2GGnzdAauKcQzrTaJcvUxIHQhCGQ8lryKk=;
 b=YKHtBzDUjhxaZ28aPgECznKWhEmMjsPYoA0rjIqlStH4xfxBMJSjkrVCLzE29wBoUh
 /3YCQocdYjHDiFtyb0w0cxPatipE8ciQqO1uaVhuS4DJzbDM5O587UYoL0MLqkZgymGe
 PRzf5+n0/5bVCBmQtEe2aaDVCej3UAoKuuar8f3MebbwiyOdjUwJFHWiE/B9hWPfY7B7
 DTC7cbppK7jJTCYbCERDMBHTvJfgoV7/wHcTn8LP44lhNbwd4+kOgG2E+omW5B3hh0ic
 e/tGwhZYLB0qP9Z7ZROtzzv8SXriY+sbCoBiObrpeBU0bJXIB4dbA2IJk+rfSFwgNH8x
 wrlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+Almj/mPu2GGnzdAauKcQzrTaJcvUxIHQhCGQ8lryKk=;
 b=XjWSBEJ+HFMAO8l9z093n1S7j57Q4KzSk9Kj8rcjtnexpuks+jhq/10KKEBseRFGnF
 eKCsjxEJacKlpvHkGQ7C2FOCIzNmiWUVwdC0GxLT8cCEV6yvS2Jv3eIiHefhbakSEvBO
 kLMuqQsrHBSAKQvD93M3RfL511dlOhY+ngCFEbgADDMNg5JrOH3KRQ23fi7CTiF+bdVZ
 VkIFLTr03VuPmxGiC0LVBuZ0TvmEjAhOrnWNNiok/RzJkm97NresMn6+LX5HniH3mwXc
 a2ZVyqzM/44H5c5JUh8GXD7ltOcR7YTKIsW1ufwuuIwKvE75TraHP6BMOdyJOgLHWiAi
 LuDQ==
X-Gm-Message-State: APjAAAUafCkHRCHANek3xHHZmNl23z3fqf6KEaXEFR8MU1KuvCW9C1tM
 cBApdpoPSxpJN7tQQJppePmh1dNEsIKujUyOncI=
X-Google-Smtp-Source: APXvYqwx8FO+d2S1YP0ZeOa6b/jwOvDRoFFG8LiT5wh9lheOLPk0uLlsHBYrkyTFF84DqkcEiFFiIuupCEIeurWzIqw=
X-Received: by 2002:a9d:226c:: with SMTP id o99mr27944279ota.42.1562158647652; 
 Wed, 03 Jul 2019 05:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-5-narmstrong@baylibre.com>
 <CAFBinCA1gUUbEj=++1rGcFQ1RdyxSheofAo=TKw3-UaenFAcug@mail.gmail.com>
 <301695b6-52ba-92b1-ca1a-d4d587b33eeb@baylibre.com>
 <1jo92b70ko.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jo92b70ko.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 14:57:16 +0200
Message-ID: <CAFBinCA5RrTM8Ws_0goDqipi90KbhaXhwKGPVXj+dCoi7P-OFA@mail.gmail.com>
Subject: Re: [RFC/RFT v3 04/14] clk: meson: eeclk: add setup callback
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_055731_074325_C62A985A 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 amergnat@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 2:40 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
> On Wed 03 Jul 2019 at 13:45, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> > On 03/07/2019 01:16, Martin Blumenstingl wrote:
> >> +Cc Alexandre Mergnat
> >>
> >> On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>>
> >>> Add a setup() callback in the eeclk structure, to call an optional
> >>> call() function at end of eeclk probe to setup clocks.
> >>>
> >>> It's used for the G12A clock controller to setup the CPU clock notifiers.
> >>>
> >>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> >> this will probably work fine, but I want do double check first
> >>
> >> are we planning to get rid of meson-eeclk (mid-term)?
> >
> > AFAIK no, but maybe I'm not aware of it !
> >
> > Neil
> >
> >> Alex has some patches to get rid of all these IN_PREFIX logic.
>
> The prefix logic will go away with Alex's rework, so are the input clock
> But meson-eeclk, which is just a common probe function do avoid
> repeating the same things over and over, will stay
OK, thank you for clarifying this

> >> I'm asking because if we want to get rid of meson-eeclk it may be the
>
> May I ask why ?
I only remember that Stephen asked us to get rid of something in our clock code
I was under the impression that it was meson-eeclk, but I cannot find
it anymore (that means I'm mixing it up with some other topic)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
