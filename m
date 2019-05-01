Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A0C10D7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 21:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3tE/4b4hgTR1pWXuJF91EVBH9sVvYpMwbqRp93n6cw=; b=TLLFjCXgnvBEEY
	2rpLzKCDd6AJpm98/TeWyxiJP5aXcdTC4S/DEc9GOEretUsIIZDbS66ivJ/xJo5tn+Mhyc6GJAFYV
	d446tRV+k9s08oBSkTJH7sDX6etGdDmD/ngRFbyqEUPV/BDl0U0hWse/1Ucjnf85F4kD9UxJtYbrE
	O6Hswv42i6uMNKT40Qnj4lUlgbNxirl312cwG7t+SS1nckQSt/QV0vwpX+o0iTeg35AO1owBLHBko
	wLMTKyql3NO4PhXwLALhT3JAcIU5K7ze6ic49CNr21kaU3Vs2rWERWLOxYX8BARSifYXbyffeUKrT
	/IMu+6NrCUY57W2CG/FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvFM-0005AN-EZ; Wed, 01 May 2019 19:50:28 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvFG-00059e-3j
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 19:50:23 +0000
Received: by mail-ot1-f67.google.com with SMTP id e108so14523ote.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 12:50:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4aS2uE1D91mkrl/gYeWQtzT+PKkraqjyORTXhMdPTWc=;
 b=IjzvxqDqokz3c0LOiA+qIPR4Lc6cNKMetl10xuHUhpIXtu27m18i6m3wiEYTQ0d8Aq
 dp1kyv0mSNLK0biIfEQi2ls87zcL0AcSu3ekUK9njw87NiK1sryBhSWKKmPlZywzFX/n
 ouQvLP8hc+IX9b/Cg2Lo7Swsh1S1ZDJVhwm2SsEOJcKcnoagF2ZvjCRNOB2svJyAkrrK
 EilLthbA2ehT4SHvjdizq4ft2XJTgO/WMcg7g6ld/rAt5gh2e3EZ8usCS1rid8Jl3zgw
 uwtHVHrsQHWxlPPqXx3iB+5aC0ji5cYndxucswIpwzgaehZN2jXS8ziMid6xmte0JqAf
 V1Dg==
X-Gm-Message-State: APjAAAWCSggpi7LbTX5al8Mxts7YUWBhrqrf3ZbueJMTE1iXpibhYHkg
 JxS6WsMZ6OUYIXhBH+Be0A==
X-Google-Smtp-Source: APXvYqwGNT8oOeMnhcZ+vSGs9Gi6hU6lT2YIKllylFBKjcxVlXfqb2L6uc1z343lFHswKPCjvxaXXA==
X-Received: by 2002:a9d:6344:: with SMTP id y4mr20118098otk.11.1556740221087; 
 Wed, 01 May 2019 12:50:21 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m124sm16994766oia.3.2019.05.01.12.50.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 12:50:20 -0700 (PDT)
Date: Wed, 1 May 2019 14:50:19 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: sound: sun4i-spdif: Add Allwinner H6
 compatible
Message-ID: <20190501195019.GA13211@bogus>
References: <20190419191730.9437-1-peron.clem@gmail.com>
 <20190419191730.9437-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190419191730.9437-2-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_125022_154026_200803AA 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 19 Apr 2019 21:17:26 +0200, =3D?UTF-8?q?Cl=3DC3=3DA9ment=3D20P=3DC3=
=3DA9ron?=3D wrote:
> Allwinner H6 has a SPDIF controller with an increase of the fifo
> size and a sligher difference in memory mapping compare which
> make it not compatible with the previous generation H3/A64.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
