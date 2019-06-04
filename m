Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5943407A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBzhD+UQGW/KYrQGZuKWYqQUTxYGeFhyB4C81hAMQMQ=; b=d4YoL+gyC+kUAD
	hkrwftc8wLh7qS0QdDZJdUpbNIwpt8rXVUcctYYdvF+ph8CKuHixQqipKvbM4IPPyPgdkmHJOJdS4
	R7VDLMXlbE7DXFUKbdASmJHMGeAHjcPp40YdFwidOtsTNyQQCy26IoJ3mzi6fxL2HlW8AHEkVKoLZ
	GqpRJkM7cRBsRFHM8ivc04FaE8bTbVxnVDT+GmOZeOdV2V1dizefVvj1WUq0VHuox/Gbtk45abuyO
	TiH/cLkf9rkXn9CS37S/FArfpMj3fV8QSe+cSAOaeCLI+EmhdQIutrRcMecfGQKppGMP+im8pAfdq
	YOCkTre84EhJYaIu58Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY42O-0006yR-SE; Tue, 04 Jun 2019 07:39:16 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY42G-0006x2-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:39:10 +0000
Received: by mail-ed1-f68.google.com with SMTP id h10so15164550edi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:39:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CYZmXX0Qajsd2CJ4M9QVAkg8+0uFy5kGttoDqJVnpRg=;
 b=fPyvrdGv+Rl8h6QDAyb6OD80w8Wh1LXRSnEc2v6Ajw860kYOjMbq8Ie20niwVYeYk2
 UDwQ9etUosHnFZW8WMoM99+PuI/50uyW962KrCLhl8ziMsXEgaeQ0YYCfb+04V8LqjZn
 axTWhrw5FRu5BJ6JiNw8jjkjNdjJaw8tnOLDtlMkKf0/oOprcPrF8om3onlfmQfxwXcp
 aaYU8Irchlj4rVUWEN2ZNiYgIKMQJh2jDTAzTt1T8VHMv9H15nynDrqsO/6K8dcW461E
 HdWAdebTuZBhHec1ceetS6x8ork4uU4zXCpMQ8Tz9hICCstow1VhCtMcc4AZRF/XYQX1
 Rg8Q==
X-Gm-Message-State: APjAAAWewzXv7h/W430Acb9jkXjk7vPRPR1R40zvP/Sfepono1m98+kl
 8J0m0rEcy0dcDzlDsML2M0W4VhYpJN4=
X-Google-Smtp-Source: APXvYqzjkWUQ51flw5L8MnIVfER7PXGkZ5EFc7LMZPcU1lgaCoStWBIxorMCJqv9vyVrsQTWCyth/A==
X-Received: by 2002:a17:906:16c8:: with SMTP id
 t8mr17161929ejd.78.1559633945992; 
 Tue, 04 Jun 2019 00:39:05 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id s22sm3385483edm.78.2019.06.04.00.39.04
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 00:39:04 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id v19so1618541wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:39:04 -0700 (PDT)
X-Received: by 2002:a7b:c344:: with SMTP id l4mr16737404wmj.25.1559633944348; 
 Tue, 04 Jun 2019 00:39:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-2-codekipper@gmail.com>
 <20190604073443.cnnqd7ucbaehxdvj@flea>
In-Reply-To: <20190604073443.cnnqd7ucbaehxdvj@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 4 Jun 2019 15:38:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v64T5MypDD9A5FNfyikB9vFJZf9+TiQaXi_o2K53QmfaQg@mail.gmail.com>
Message-ID: <CAGb2v64T5MypDD9A5FNfyikB9vFJZf9+TiQaXi_o2K53QmfaQg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v4 1/9] ASoC: sun4i-i2s: Fix sun8i tx
 channel offset mask
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Code Kipper <codekipper@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_003908_489722_DF1524FE 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
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
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 3:34 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Mon, Jun 03, 2019 at 07:47:27PM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > Although not causing any noticeable issues, the mask for the
> > channel offset is covering too many bits.
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
