Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57980C8D84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9BjKW2bNV/gTN+Jy6k9CCQ9LV00VkcqieXhIQyicDU=; b=P5FFn5TCtUJinf
	kKWUrecryEcsHAo7bgP5mb7/NTTnWMKq9U6zuFlpZQOLW/KOx692aDBCKD03tLprGhxSSV1Vt4Bb9
	jHSHDK2o+vEvhuZYMMO5RboHUo00zwhB5qo2SDduLvUNDJ8BITBoRtYlBNRdnqv+e6lKTVD4KUltH
	G9o9MnXdNNEBvuU8U7FDoWeulhtZyCrEyfItlLmbJhq4OZW+qGkoAIOoFVu/nzdbShMjIPpo4j9a/
	oxG1p2EJuSK2pRlq4um1E583DeOgB+yE3fWYvLtR8ljzA6djbKggK1HT6sGqZdSgVwpSSTUXC9FMJ
	HU+UFy9njWwOgwNfwDoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFh2i-0005rK-5T; Wed, 02 Oct 2019 15:59:56 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFh2X-0005qq-6Y
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:59:47 +0000
Received: by mail-wr1-f65.google.com with SMTP id a11so20329839wrx.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:59:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HowoqpTxX+tooJzzTk62IKsKTseVshqzxoAQBtxdT6A=;
 b=QApym47XWt+7e761I5SmfOetHsYpG/mmllPpjpySc97luuUqxJ4mmO7IiK0OBvGZ6G
 rn35JN20Md0asYhfRGu29eVyA10ETWQeK930AIoEgQb8rg+vKx4Z47wvXlfHQQt7BFfW
 dKfq9TZ5FO7E6CNq/ikISrjTE7OKyYE08RxyzVM8bFw+R4dTNuiDC1Ae6lO7ufSui3nS
 X4V8qSypgu442yNz0SfoRqEE6AvXiofd7ybdCn2oYSL9ntMkz7BjsIxzNTPTM5RCA6Qj
 Lu9t1Ea6rYfdna23aTDzxmdiudGaFrfzSIEJemSqfyFnE3DC0tP36i96aA0bx7cpp7M4
 1DEQ==
X-Gm-Message-State: APjAAAUZ/Vi/keLPSWN9YKUrlwtKTtOrbxQHP0sXZR7irJFBha7XYAm5
 PoO/hkl4efmPOioDh5U4jMzHJIxbKcY=
X-Google-Smtp-Source: APXvYqw+EuT/kFsVrBo2DafLzOqNTI2lNlStE5tvXMZ2SbznqaldLFDUBG6OK3gH+1TalVUU7oR36Q==
X-Received: by 2002:adf:afed:: with SMTP id y45mr3280619wrd.347.1570031983294; 
 Wed, 02 Oct 2019 08:59:43 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id h17sm11629617wme.6.2019.10.02.08.59.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 08:59:42 -0700 (PDT)
Date: Wed, 2 Oct 2019 17:59:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH RESEND] ARM: dts: arndale: Add audio support (WM1811
 CODEC boards)
Message-ID: <20191002155940.GA10341@kozik-lap>
References: <CGME20191002152842eucas1p281f3fb4b7efffaf74fa89ffaa4108b3f@eucas1p2.samsung.com>
 <20191002152831.18509-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002152831.18509-1-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_085945_239328_64FC665B 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 05:28:31PM +0200, Sylwester Nawrocki wrote:
> Add sound node and the clock configurations for the I2S controller
> for audio support on the Exynos5250 SoC Arndale boards with
> WM1811 based audio daughter board.
> 
> We need to increase drive strength of the I2S bus, otherwise
> the audio CODEC doesn't work. Likely the CODEC's master clock
> is the main issue here.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v2:
>  - none.
> Changes since v1:
>  - moved &clock, &clock_audss parts to preserve alphabetical order
> ---
>  arch/arm/boot/dts/exynos5250-arndale.dts | 27 +++++++++++++++++++++++-

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
