Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCD511DB04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:16:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tgMDJmevySx0BVf1LOhPDPS6vJlGS6KoiC+P0yDYnI=; b=sYveTdV8JlKwjM
	ZC26cJcW4G9KdRq8JK8Ftzmtn7ztfp4frwBAmZ4r4IW1E8rMP3HztY5fQ6tY+anEnVR5WxIc0rGSV
	fGTHUQQ9M5OGfzpjZJ9Ow+3uufXjIVsoBPMTodoPuqH3oWRYqFVzN59uru4QXP9iO+0U8el8ewjUE
	jydZFK3f5IlgXWD3WUyUTpSWtQO71Ji6tivN3vHzMchqOSzWdXflalLRDmg1Jj3jrQFCBA9Q0dSSg
	CvAJK+4oG9EMN52JMmEawj8FpRP3TbIw9MsmopEScjVeBU9rZ4ixWS1NsUzD3qmCW3G5tEoUSeaMx
	yzwTh/Vc+eMDgRy+7LNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYdQ-0001WP-0o; Fri, 13 Dec 2019 00:16:44 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYdF-0001Vx-GM
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:16:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id b19so417165pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Rz7Ap8NSB2+QwfjX22YVS15g9RA3g1APMaXnf9JhgX4=;
 b=fupIWZnf7eC60SsffWCDQxq7sVQjLX+ADuUuuTBkjb4ABWmcvAP2GHPLRqVZ0+F8Iv
 uWw+yx8PmsgmYRt+vtwN1Q6mUCVOu7e9cr4zSUYWKlYB8pZDh5b7zOesGEYijm/rs6x/
 OlTapLIoOeZjI3ggnXYKUUGg9/cpyLJT6Y5c17WWbTnJYc0pB6E1eKeQ2hVUXqAKmFFF
 9YaH6qa+4dI8Nag0NJCvLJ5oH28ZtFzBvHW32RVplML1GZyU6Licl6RwNH82jTXK7DIU
 8TDwao8t/HM20lrTlgmc5DU+oWmXvIn0Y2lBdtMz4ehXmY+uwugJyLhgUmlNstyuvoJY
 Ostg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Rz7Ap8NSB2+QwfjX22YVS15g9RA3g1APMaXnf9JhgX4=;
 b=E9bsl5xaA4WkqsYrgeisH+QlCViv4bgQSEgSst5rcDN+ToA0O7g2XaJIzDya/b9H5S
 CHfTirVUF1+gYTIg7SME/dB3yj2t2oLehWGq6dbpyLATMVF8Y/xJeoDpV8J36rskg3KD
 vI2VRmx1P8j1nFy/pmnXQPs5eU06WxcsW8pMmtjmW5bQAFeS8vwWTbx3YS+tvyUi1uO7
 TirYERC+pVgEkqbDttqZbYYJAfRlDuWtHr+A4CTVDhK5Fmm31TYKXNuKk9r79lwTGz2x
 ivN0R0V8emeLtBAe2y6IbTN3Zg3sThtAbomkQjieB4PoTs62evIyj7hZobF1m6ey6cmZ
 Qo7A==
X-Gm-Message-State: APjAAAV+/3f2k2zDkwgHKanFEwOh3r7G8ZUgzJqX2VGlkdTj5zIU2tgf
 0HGMkFN7KB+XCToE+vFKSx0=
X-Google-Smtp-Source: APXvYqzdi9TTVeyNm4GDapF0tocbS/2DKfHDlMK1xI+DX6Yv8E32E2ylfND+lyJY/Mep/9YSafcUWA==
X-Received: by 2002:a62:ed0b:: with SMTP id u11mr12700624pfh.46.1576196191905; 
 Thu, 12 Dec 2019 16:16:31 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id c8sm8711705pfo.163.2019.12.12.16.16.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:16:31 -0800 (PST)
Date: Thu, 12 Dec 2019 16:16:28 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
Message-ID: <20191213001628.GF101194@dtor-ws>
References: <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
 <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
 <cf5b3dee-061e-a476-7219-aa08c2977488@arm.com>
 <6a647c20-c2fa-f14c-256d-6516d0ad03b0@free.fr>
 <6ce49a67-8065-277b-5f80-ed47011e50d6@arm.com>
 <20191212191002.GA101194@dtor-ws>
 <3ce51e0b-f4eb-707d-c55d-0eaf4ac72c5a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ce51e0b-f4eb-707d-c55d-0eaf4ac72c5a@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_161633_546103_6E08E892 
X-CRM114-Status: GOOD (  33.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, x86 <x86@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 09:08:04PM +0000, Robin Murphy wrote:
> On 2019-12-12 7:10 pm, Dmitry Torokhov wrote:
> > On Thu, Dec 12, 2019 at 06:15:16PM +0000, Robin Murphy wrote:
> > > On 12/12/2019 4:59 pm, Marc Gonzalez wrote:
> > > > On 12/12/2019 15:47, Robin Murphy wrote:
> > > > 
> > > > > On 12/12/2019 1:53 pm, Marc Gonzalez wrote:
> > > > > 
> > > > > > On 11/12/2019 23:28, Dmitry Torokhov wrote:
> > > > > > 
> > > > > > > On Wed, Dec 11, 2019 at 05:17:28PM +0100, Marc Gonzalez wrote:
> > > > > > > 
> > > > > > > > What is the rationale for the devm_add_action API?
> > > > > > > 
> > > > > > > For one-off and maybe complex unwind actions in drivers that wish to use
> > > > > > > devm API (as mixing devm and manual release is verboten). Also is often
> > > > > > > used when some core subsystem does not provide enough devm APIs.
> > > > > > 
> > > > > > Thanks for the insight, Dmitry. Thanks to Robin too.
> > > > > > 
> > > > > > This is what I understand so far:
> > > > > > 
> > > > > > devm_add_action() is nice because it hides/factorizes the complexity
> > > > > > of the devres API, but it incurs a small storage overhead of one
> > > > > > pointer per call, which makes it unfit for frequently used actions,
> > > > > > such as clk_get.
> > > > > > 
> > > > > > Is that correct?
> > > > > > 
> > > > > > My question is: why not design the API without the small overhead?
> > > > > 
> > > > > Probably because on most architectures, ARCH_KMALLOC_MINALIGN is at
> > > > > least as big as two pointers anyway, so this "overhead" should mostly be
> > > > > free in practice. Plus the devres API is almost entirely about being
> > > > > able to write simple robust code, rather than absolute efficiency - I
> > > > > mean, struct devres itself is already 5 pointers large at the absolute
> > > > > minimum ;)
> > > > 
> > > > (3 pointers: 1 list_head + 1 function pointer)
> > > 
> > > Ah yes, I failed to mentally preprocess the debug config :)
> > > 
> > > > I'm confused. The first patch was criticized for potentially adding
> > > > an extra pointer for every devm_clk_get (e.g. 800 bytes on a 64-bit
> > > > platform with 100 clocks).
> > > 
> > > I'm not sure it was a criticism so much as an observation of an aspect that
> > > deserved consideration (certainly it was on my part, and I read Dmitry's "It
> > > might still, ..." as implying the same). I'd say by this point it has been
> > > thoroughly considered, and personally I'm now happy with the conclusion that
> > > the kind of embedded platforms that will have many dozens of clocks are also
> > > the kind that will tend to have enough padding to make it moot, and thus the
> > > code simplification probably is worthwhile overall.
> > 
> > I wonder if we could actually avoid allocating the data with
> > ARCH_KMALLOC_MINALIGN in all the cases. It is definitely needed for the
> > devm_k*alloc() group of functions as they are direct replacement for
> > k*alloc() APIs that give users aligned memory, but for other data
> > structures (clocks, regulators, etc, etc) it is not required.
> 
> That's a very good point - perhaps something like this (only done properly)?

Yes, but it has to be done carefully.

> 
> Robin.
> 
> diff --git a/drivers/base/devres.c b/drivers/base/devres.c
> index 0bbb328bd17f..2382f963abbe 100644
> --- a/drivers/base/devres.c
> +++ b/drivers/base/devres.c
> @@ -26,14 +26,7 @@ struct devres_node {
> 
>  struct devres {
>         struct devres_node              node;
> -       /*
> -        * Some archs want to perform DMA into kmalloc caches
> -        * and need a guaranteed alignment larger than
> -        * the alignment of a 64-bit integer.
> -        * Thus we use ARCH_KMALLOC_MINALIGN here and get exactly the same
> -        * buffer alignment as if it was allocated by plain kmalloc().
> -        */
> -       u8 __aligned(ARCH_KMALLOC_MINALIGN) data[];
> +       u8                              data[];
>  };
> 
>  struct devres_group {
> @@ -810,6 +803,17 @@ static int devm_kmalloc_match(struct device *dev, void
> *res, void *data)
>  void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
>  {
>         struct devres *dr;
> +       size_t align;
> +
> +       /*
> +        * Some archs want to perform DMA into kmalloc caches
> +        * and need a guaranteed alignment larger than
> +        * the alignment of a 64-bit integer.
> +        * Thus we use ARCH_KMALLOC_MINALIGN here and get exactly the same
> +        * buffer alignment as if it was allocated by plain kmalloc().
> +        */
> +       align = (ARCH_KMALLOC_MINALIGN - sizeof(*dr)) %
> ARCH_KMALLOC_MINALIGN;
> +       size += align;
> 
>         /* use raw alloc_dr for kmalloc caller tracing */
>         dr = alloc_dr(devm_kmalloc_release, size, gfp, dev_to_node(dev));
> @@ -822,7 +826,7 @@ void * devm_kmalloc(struct device *dev, size_t size,
> gfp_t gfp)
>          */
>         set_node_dbginfo(&dr->node, "devm_kzalloc_release", size);
>         devres_add(dev, dr->data);

I think it has to be "devres_add(dev, dr->data + align);" here, as match
function checks the pointer passed to devm_kfree() with one stored in
devres structure.

> -       return dr->data;
> +       return dr->data + align;
>  }
>  EXPORT_SYMBOL_GPL(devm_kmalloc);

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
