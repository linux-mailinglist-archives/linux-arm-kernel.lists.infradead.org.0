Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CE0306D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgA3vL5QxL6NyDkafSaTvk3omaaxIK17FJj09vP4axk=; b=J56d97seysg7u4
	AJ+rLtBuaeCyasUu0+JimzTM1emqVVBYjHB+5uO8EeGWgUaSLGNMycqdijhq+vBvKl0aCSNG+Jwid
	CEKKj6wri97TM+4d7tOzEQQGvNgPGewJFM0x1zpxr6IBhFAYQr9Q0CCz7rRjdE1xdQ0OHb/GmG6wQ
	+KtVMkrtO0cpa35Wa6HJallX64jFY5B2XwxTCB8Fk94oGgr/dYR5A+bWAK+W0jtYsxuNu+quUEc41
	WqIreW0u/li7t0PBXXVS6xD0A1VlKLCU7EQbxar1a7NThK93G6pvuUE8j2KwGrpuRmV2fl/pTrzEH
	gPKdcE4HsiGt8jxze1vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWXpp-00045j-7b; Fri, 31 May 2019 03:04:01 +0000
Received: from mail-it1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWXph-00045I-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:03:55 +0000
Received: by mail-it1-f193.google.com with SMTP id a186so13469769itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:03:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lXjk4EabF/9GMSniDWqhkev/Ug2c+H2S6xMvNNJvkwQ=;
 b=dAx7HX3zNeCpgjxnYQm+q73GU8D+o3KbBzc8AmDXOCGpqbYCPBtQuUZaLsTE8Wc6Sy
 D68Z4XCgZ13vESIu1HBIUjx1p8568dLgZdP3V69c4r1HlGX9/s2vQb7KWq7lVrraK5Gi
 2eo9JjETCrNLybfHwBHJyw8UyzjAhHSNdskpPSJAUnO4UFbnMSu+aPpIFfulzfmQOpqM
 Le2OwWslXsnJRILZ3aJiyEqUXXhtyxE9aJCkHSla6avWr1v3HROwqiPIP55U3K3N7lDo
 cbVGFU+HzMln/SivInL9AhEg5b4UHxdJTviYJK9A1+7OoX+LDdpUKSs64GmpmgZcnhw8
 U0/w==
X-Gm-Message-State: APjAAAVT9ZS9J3PcsHo4e9l+20zAHqvlVLT/CHrFGw68aLZOghhspRRM
 Bm/u3ubNNaNLaDpwYSWgbTTc89qpgRE=
X-Google-Smtp-Source: APXvYqxJ/wg+/Sy0umVkuxhpsLYoFhp7zoSaXGwC/ilKWT120G1i0DtVUGrwFOFZ4b/CGlAFHow06Q==
X-Received: by 2002:a24:edce:: with SMTP id r197mr5402393ith.147.1559271832102; 
 Thu, 30 May 2019 20:03:52 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id s24sm715286ioe.63.2019.05.30.20.03.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:03:51 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id r185so6957275iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:03:51 -0700 (PDT)
X-Received: by 2002:a5e:8505:: with SMTP id i5mr5159405ioj.101.1559271830934; 
 Thu, 30 May 2019 20:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190527120910.18964-1-maxime.ripard@bootlin.com>
 <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
 <20190530185347.aql4znrk5msk2q6o@flea>
In-Reply-To: <20190530185347.aql4znrk5msk2q6o@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 31 May 2019 11:03:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v66apz30Jy1BjU==s1a5Vwcr6GJsaswNqORSZc8fFKmzWQ@mail.gmail.com>
Message-ID: <CAGb2v66apz30Jy1BjU==s1a5Vwcr6GJsaswNqORSZc8fFKmzWQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: Convert Allwinner DSI to a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_200353_837224_5352B0EC 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sean Paul <seanpaul@chromium.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 2:54 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> On Thu, May 30, 2019 at 09:48:02PM +0800, Chen-Yu Tsai wrote:
> > On Mon, May 27, 2019 at 8:09 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > The Allwinner SoCs have a MIPI-DSI and MIPI-D-PHY controllers supported in
> > > Linux, with a matching Device Tree binding.
> > >
> > > Now that we have the DT validation in place, let's convert the device tree
> > > bindings for that controller over to a YAML schemas.
> > >
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > Looks good to me. However not sure why you replaced the clock index macros
> > with raw numbers.
>
> The examples are compiled now, and unfortunately we can't use the
> defines at this point.

That was what I suspected. Thanks.
My Reviewed-by still stands.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
