Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859F04835F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UN/XC7dRFMnLyNADK1Se/ELePTKYtzDGNIDvNs82LKQ=; b=CZocbqbDt5Ngmz
	qRJQaL5dG0/V7F8xwEHxMRTJabQXevJr7iMRZieP5Kgs9H9Ln7TJCyENbOJt/vQqaMaX0F8x3iUpS
	/sDqsVeXL5izFr51dhY1gzWdNUVpK1Jb3mNiQ2KXdSyhr4V9ymdEH35GXhd6cQ4lteATp8GLB/HnK
	PWOmb5K25dZc2N2upfhDJGjIFSwFHQmG9Hh3uf10SkUAR+vT7N6pLrifr/P3PLzzj2Ie4Xl35r85y
	9RXlo6rl14txwt/jk8FT4TTRmrqqOuBwUT+hZHKq4s18MCl6Snyyf+O/fKgS5NOQ03vkXL1LIf5Bv
	DQKW6Cl4LLK0AAUSJNBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrGq-0001wn-C6; Mon, 17 Jun 2019 13:02:00 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrGf-0001w3-7Y
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:01:50 +0000
Received: by mail-ed1-f68.google.com with SMTP id i11so16101787edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:01:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T87ic57rQt3UfwYy1X9DryRi6OUhzyqVbWtm9GM976Y=;
 b=qFZ3Iyoiqzm2LRWLU7m77PIXINf66rnaisvQGWNS8SOpCP4ZsKR25ZXwbDo5FrtBJb
 aidv9B9CBDOQcs0mfQtwjPvpkfmg8XyKUbN3erd8JWVRf6HRJAhHrff0NykePak9LoIO
 2LN+vnCu3kFj2vVkYpLK08T+SOAPe/WY3YeBh2jv7Nu39WuroHynhb1q4JCUX6e+mrjW
 TYxnRVBtiHUDL+0EhLTk1gyPac4if2MXgDKE3t0tn2+jOideFcyQM4oyy+yNsKR+OyBI
 UBymooQKcG2dJJDu+VrcEFXVunuYmKhxJjWQr2ATgvJRaqeim26hEW1HoWziUhsyNRLI
 lquw==
X-Gm-Message-State: APjAAAWP/URpQ48pJumjpHDAXohdAc8+4jy/oGoN9O/mSOsrkTV8JM59
 XO+zkVEKsmWgdoQbphsak2ohzkJwovg=
X-Google-Smtp-Source: APXvYqzcXpj691c7w1hVzij0H5fet4aOo8fDY8nwIj44gC6A1Yx+eX5rew0DmdunJ8S0TAWOs456WA==
X-Received: by 2002:a50:f4d8:: with SMTP id v24mr18296774edm.166.1560776506910; 
 Mon, 17 Jun 2019 06:01:46 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id z3sm3746293edd.72.2019.06.17.06.01.46
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 06:01:46 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id v19so9006124wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:01:46 -0700 (PDT)
X-Received: by 2002:a1c:c545:: with SMTP id v66mr19389774wmf.51.1560776506243; 
 Mon, 17 Jun 2019 06:01:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <20190617114503.pclqsf6bo3ih47nt@flea>
In-Reply-To: <20190617114503.pclqsf6bo3ih47nt@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Jun 2019 21:01:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v66RU=m0iA9VoBiYbake+mDoiiGcd5gGGXvNCBjhY2n+Dw@mail.gmail.com>
Message-ID: <CAGb2v66RU=m0iA9VoBiYbake+mDoiiGcd5gGGXvNCBjhY2n+Dw@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2 5/9] drm/sun4i: tcon_top: Register
 clock gates in probe
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060149_326539_D8218F76 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 7:45 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Fri, Jun 14, 2019 at 10:13:20PM +0530, Jagan Teki wrote:
> > TCON TOP have clock gates for TV0, TV1, dsi and right
> > now these are register during bind call.
> >
> > Of which, dsi clock gate would required during DPHY probe
> > but same can miss to get since tcon top is not bound at
> > that time.
> >
> > To solve, this circular dependency move the clock gate
> > registration from bind to probe so-that DPHY can get the
> > dsi gate clock on time.
>
> It's not really clear to me what the circular dependency is?
>
> if you have a chain that is:
>
> tcon-top +-> DSI
>          +-> D-PHY
>
> There's no loop, right?

Looking at how the DTSI patch structures things (without going into
whether it is correct or accurate):

The D-PHY is not part of the component graph. However it requests
the DSI gate clock from the TCON-TOP.

The TCON-TOP driver, in its current form, only registers the clocks
it provides at component bind time. Thus the D-PHY can't successfully
probe until the TCON-TOP has been bound.

The DSI interface requires the D-PHY to bind. It will return -EPROBE_DEFER
if it cannot request it. This in turn goes into the error path of
component_bind_all, which unbinds all previous components.

So it's actually

    D-PHY -> TCON-TOP -> DSI
      ^                   |
      |--------------------

I've not checked, but I suspect there's no possibility of having other
drivers probe (to deal with deferred probing) within component_bind_all.
Otherwise we shouldn't run into this weird circular dependency issue.

So the question for Jagan is that is this indeed the case? Does this
patch solve it, or at least work around it.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
