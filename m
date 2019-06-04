Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E23834082
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqbO5RmHS8AME8oMPiEnaPDq+yP/fqfRjZcSSNXVIjQ=; b=uMoq3Ik9eDpmq0
	ClwY4eMwxsdPykLXZb4QfCpGeq74jRZa4Jryq4e6JNkA3iYmd/l3x6VxG2ACyzojTCfRPBlfmhJXK
	F1FkgpNve49XBY5+z31kox2GUhMDwhQnpxssKxjeGMFBDF5BzNR+fnjFK4vhTaopCWEEToCO3Wbam
	eOWORfO4VhOsabsst644Obkrm25dKzCNKiflgUVhOxo3h6KXF9C5xW+FL14iUph8xB1gddf0+FyK+
	WLMV/r8HBC3iyeuD+GLtsbd75/pxlg6CCl7oBb2qFOdArq2tv/LmZulyPnO7rOSnku3piNnTqpyhV
	AkJlLggTf12bwWUriViw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY43G-0007d1-F7; Tue, 04 Jun 2019 07:40:10 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY436-0007Fw-9J
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:40:01 +0000
Received: by mail-ed1-f66.google.com with SMTP id p26so30659406edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:39:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HPZoKEpxMdZA3Cy+DOvZz+UKiVos8Da/MXX9dJMPwts=;
 b=mc03pWpXQm9aoVAaqXqTxjajChJgYDkxRP9OV3uvDDah9g/AOOrHFy7SdLVhBeB9VQ
 yiQz3sKvSd6iaRMUieKCz/NgROeDolq1HN+mB7V/qCydsGXQ5KTJTwWdt6o0kbhq2n4j
 bIXiD6UssCnu+SEen/hSeMFbfo2N5EjmAfjmo67pBfsBisLtau2bKOvZsTEnR2mwsiEB
 UukK/q+7e7edWXC3fCaBWWWWAJxTutM1dWNgStbpyl9XzmDYRWZym+RxVgBbIjBGMgGA
 6fmG1yT09ZlMuw8SFcvriZesqxd8U7GkkRX+5afCZwL/LfPb1gRR3n3MfTVOetn/RQ1G
 619w==
X-Gm-Message-State: APjAAAW3H/H0EPU4Gr0StdvZ7SAO98wgeQ2z5TkXEUPzQ2OQITvmg2Y8
 gc69BDAcTZPlNIk551Ik/U00FAsHw8Y=
X-Google-Smtp-Source: APXvYqwtwrJtdrCKODm49x45HUERQ9oir3ZoLeJasLGuyGWofuwa5p3dHQNcWyV4la4Ttv96PXiaEg==
X-Received: by 2002:a50:a389:: with SMTP id s9mr34027490edb.113.1559633998023; 
 Tue, 04 Jun 2019 00:39:58 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id g11sm4598792eda.42.2019.06.04.00.39.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 00:39:57 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id n4so11621513wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:39:56 -0700 (PDT)
X-Received: by 2002:a5d:4311:: with SMTP id h17mr19701241wrq.9.1559633996367; 
 Tue, 04 Jun 2019 00:39:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-3-codekipper@gmail.com>
 <20190604073651.gst57ki7ohzxcrqz@flea>
In-Reply-To: <20190604073651.gst57ki7ohzxcrqz@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 4 Jun 2019 15:39:44 +0800
X-Gmail-Original-Message-ID: <CAGb2v67ch3F23q-SSxU01Mvkt-x8LL5HfwnZb4NdJcMMkN2H+w@mail.gmail.com>
Message-ID: <CAGb2v67ch3F23q-SSxU01Mvkt-x8LL5HfwnZb4NdJcMMkN2H+w@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v4 2/9] ASoC: sun4i-i2s: Add offset to
 RX channel select
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_004000_329489_57DFD14D 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Code Kipper <codekipper@gmail.com>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 3:37 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, Jun 03, 2019 at 07:47:28PM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > Whilst testing the capture functionality of the i2s on the newer
> > SoCs it was noticed that the recording was somewhat distorted.
> > This was due to the offset not being set correctly on the receiver
> > side.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Would be nice to have

Fixes: 7d2993811a1e ("ASoC: sun4i-i2s: Add support for H3")

But otherwise,

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
