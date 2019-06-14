Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424B645308
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBnU6WAwSyaXJTlOgNmJDCNS3yrd4bVb4APoUhYDhb4=; b=gMgxEK1sj/uOpM
	v+eYVIoCNmKY1UMiCznDm5tfu5HDLwQiLwhCWy37LSp8SSwh9wddWf8xLX2gLTDCAAwuqoN9F0mKj
	6m4jeHyRsPT397qYOL4DaBWmyg5YiU/zV7bsEvB4gbZz67uAFfmlF44E340avXbl9vngDKXjNuOO2
	pkLbZh1YtA+wxaSTj+C4lo95HWPZevnu8ITsEeMfE6f7cmaTSy0Sm5f7acqrnwZukgoccwDgG3fVz
	qKCPcCiPZHlLOYp5fsPOBjCtNqOiHBXeL+89dB5Ja9IeXJENEBsf7JOqy9sO2Jo7TKu9PX74+Ezx4
	xu6Prk87hUtwieyCyG5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbczq-0007rZ-64; Fri, 14 Jun 2019 03:35:22 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbczg-0007qr-5h
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:35:13 +0000
Received: by mail-ed1-f65.google.com with SMTP id i11so1404194edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h5X0bylW7cnZXlc8waXhJ/q/kNkLK/1K8QN94+coOFM=;
 b=PS+vTccTt26NOBL1WSMWRQ6U5ZPp96+IVHfX4qlEZZP/IWEgVc+9hkFXuGO3DDYqeh
 75L0Vsx7Qza+yjdgNk6FmQMItF3Iz0wZWCUXjpTNfJZKpc4yC6WnoWBA2WMUZGBYE3tt
 CRV4sfmlMpp6feZ64Jlm9wEc29DuE5VsGG4Tsabb11WVYVMaKJvejIagtPtVwOtTddGf
 NclD7Yh7BnsaiUJDB8F0ZtKLvIknNZE8a4e4kNXB7WrnsyuFb4o9Vn2RvBhDzoicrbiA
 LeUWWgU58tYm6MuFKMSRdE+7jDvvqb7yYqY/wOKknEG+rcSWw0sUF6lvxuBReiBTqsV+
 UYLQ==
X-Gm-Message-State: APjAAAXMnUXgg/t1LHWox3tqmPwttqvU3AKOj0OZ1IoKhfe+U4n2GvU+
 Kqd6Ci2aq8jBGP50wXO5726EXWt8oa4=
X-Google-Smtp-Source: APXvYqy74seyQnoRCXpGLNJcuf7gZ6Gk+jKTST8H9zIj8LWsY7LTHrSjogspxr8UeCtcpkme9je+HA==
X-Received: by 2002:a50:900d:: with SMTP id b13mr65959655eda.289.1560483310267; 
 Thu, 13 Jun 2019 20:35:10 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id x30sm482114edc.53.2019.06.13.20.35.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:35:10 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id k11so921552wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:35:09 -0700 (PDT)
X-Received: by 2002:adf:fc85:: with SMTP id g5mr62068736wrr.324.1560483309487; 
 Thu, 13 Jun 2019 20:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-3-jagan@amarulasolutions.com>
 <CAGb2v65xuXc4C1jOyM1GbEFVDam5P-6NN0ZhtzwzA7qU5F3nJQ@mail.gmail.com>
In-Reply-To: <CAGb2v65xuXc4C1jOyM1GbEFVDam5P-6NN0ZhtzwzA7qU5F3nJQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 14 Jun 2019 11:34:57 +0800
X-Gmail-Original-Message-ID: <CAGb2v67DY534hXrx2H4jnZXA7jJS7sq2UwYCqw1iAgyLKdNzgA@mail.gmail.com>
Message-ID: <CAGb2v67DY534hXrx2H4jnZXA7jJS7sq2UwYCqw1iAgyLKdNzgA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/9] drm/sun4i: tcon: Add TCON LCD support
 for R40
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_203512_222218_E9D3D2CB 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 11:19 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Fri, Jun 14, 2019 at 2:53 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > LCD interfaces like RGB, LVDS and DSI.
> >
> > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > tcon top.
> >
> > Add support for it, in tcon driver.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>

I take that back.

The TCON output muxing (which selects whether TCON LCD or TCON TV
outputs to the GPIO pins)
is not supported yet. Please at least add TODO notes, or ideally,
block RGB output from
being used.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
