Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09A697648
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Ice7DTBif7Q+2dApGDSATbRAcmhl66qLp8GS7NxT3U=; b=WEx3xFl/gJgHH5
	IRLh3lAkppDijkMtA2rrH6BxBVT8F+Tzvgcd/DaXaNhEXfgRaY0mJ/FYdaAv7Y9bPdc3p9btp5m+W
	HA2+Q3hD+ghym7k9akRSntYLGcckFjePzMIdqe/Av4h5s9FumzxTJ+7vgepXwc8qvxXIjG45BZfNy
	YlKnWxBi43bB/5LUxXSVIcPMLlnHxxMl4w+6OgGFrk/nLThil0xlDrOdZtNHMwyl8XmwlyqEgamYP
	6REPqLJ76zdFSQb4Nt5j3RqxrXeAjxSSCDO6JWv+ZOA4hxb8T3eyZv8SHisNjAKjBr6+EXzt1OZAg
	6DDrL83nGL28qP7IXT2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0N2w-0003vt-4c; Wed, 21 Aug 2019 09:36:50 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0N28-0003vC-KM
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:36:02 +0000
Received: by mail-ed1-f65.google.com with SMTP id m44so2150266edd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 02:35:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LfU8K2+XLYidqJ3RYJr0NsqUHW7a3b14hBOppxr6+tU=;
 b=CD5T6NeptaEFsURHYFi2TFQoEWqWxh1W2nSjhgdYLCvFMG9EukAE78oHgIhIax+qdQ
 QXNOvSPjq6cCjO4FDI9fROojwv+TW0l/LZcgJ38/Zp0nydalm0nja9Ves4DJhzRvYWbl
 WHh7hjxhrQM/NlBXLlCulW3Qt56RCNIuuKFiVHt8ZM3dZ06AGjzZG6JO0QPX6fpxrjaR
 Hv9wV/XksWdBT2a+flAFi7o4ULC2vt7uCN5WCnX/cAwVhni1TrQDyz9y/vtu+xTOW01Q
 q60oZidgPaB0Ymbpvh0kR/ZN1gTUtMAAjcVPsLkNVNKNCjQf3C4tYdbecIBXWxTJH35U
 js7Q==
X-Gm-Message-State: APjAAAXQH1hYCB0Gmg43qqd/+ZabDxOhK4XLrtLC7bzCf30OQ5hci+05
 ONZHotVBiLoVUORst0wL61TTNjOelyw=
X-Google-Smtp-Source: APXvYqwjoRmQorj1xusflYhCl0NTt9yw8rrM+5O74VfIk7XQaYgciIRZbtIuaHy8ZH0VqaxDqeGLjw==
X-Received: by 2002:a50:b875:: with SMTP id k50mr35648969ede.232.1566380157801; 
 Wed, 21 Aug 2019 02:35:57 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id u26sm4010014eda.22.2019.08.21.02.35.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Aug 2019 02:35:56 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id e8so4358408wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 02:35:56 -0700 (PDT)
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr4849166wml.25.1566380156278;
 Wed, 21 Aug 2019 02:35:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-10-codekipper@gmail.com>
 <CAEKpxB=9NNoZgZoY_GpcEuDYoMUGzb+ATgZOSM64qy9tirC_MQ@mail.gmail.com>
In-Reply-To: <CAEKpxB=9NNoZgZoY_GpcEuDYoMUGzb+ATgZOSM64qy9tirC_MQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 21 Aug 2019 17:35:43 +0800
X-Gmail-Original-Message-ID: <CAGb2v67JfquPoLbUVARSzX3ua22N_3Vg5Ys1JXht4ew_PXto5Q@mail.gmail.com>
Message-ID: <CAGb2v67JfquPoLbUVARSzX3ua22N_3Vg5Ys1JXht4ew_PXto5Q@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v5 09/15] clk: sunxi-ng: h6: Allow I2S
 to change parent rate
To: Code Kipper <codekipper@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_023600_679956_2A2E023C 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 5:19 PM Code Kipper <codekipper@gmail.com> wrote:
>
> On Wed, 14 Aug 2019 at 08:09, <codekipper@gmail.com> wrote:
> >
> > From: Jernej Skrabec <jernej.skrabec@siol.net>
> >
> > I2S doesn't work if parent rate couldn't be change. Difference between
> > wanted and actual rate is too big.
> >
> > Fix this by adding CLK_SET_RATE_PARENT flag to I2S clocks.
> >
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

Applied for 5.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
