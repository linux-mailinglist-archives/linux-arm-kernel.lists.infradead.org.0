Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A4811C5ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 07:23:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuzdARPVdOVaBJiVZObxSF9tWTCfmsQkhpqAkhiyCqs=; b=kAKdMyaJNvG8Xz
	w6BslwQBT5fsdBLT0Ipa11l221y+MpzhIqAT50442rw0AtN92TtmR4l+aMC9mhhn4VFKqf/OxKSA+
	Gl2O+7P3l1hJBNBecH9cXd7Cxj89xlu5EDV8ytXVP5BU/098Bl14mIcTmQ/kZ3DYlbp7rz1M3PcDt
	vZHVgNqd8VOPQU6eZNxareWE/B0PRQaz+CoIi+Bd6HMYCX5XYH+WRN77Eq3215dQUFTgLwo6Xsjf1
	1aOh5xkNjISceOiKmkKV321ZKIjAG8p5uRgWUvLjQY7W1e+M9zQgD7JAns0aq87zIAundXYTlw9wM
	CvFR6bXJiAHBpEq8hesg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifHsw-0001tq-2Y; Thu, 12 Dec 2019 06:23:38 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifHsj-0001sZ-BZ; Thu, 12 Dec 2019 06:23:27 +0000
Received: by mail-io1-xd32.google.com with SMTP id b10so702527iof.11;
 Wed, 11 Dec 2019 22:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v6NmxBZ8vV201dlBtVW07bjKFin+mwj/uirkjZ9u0AY=;
 b=j5SWiyDVBNqZT1PcE6iXH6kE4RXdm62NrmqGIGv09+lSo4LTU5s7rWwFFmSGdpfUNi
 sukpKFsgP7aFXfbDSo7gsCtzYOPCJbv4q4vWY41dBTOabdpeSYTXBy/5+BMQEItJ15Sy
 y09om1CxA57hk3TMln3XC75K+AYNnnV77NfqUChNDt1uXAAZ8M3dDrpgwaDVin3vILWY
 5RhPY8iXSQ6NpUwvysBTC2YAUy5KsFKZcjVT/rzBCfpILNNiqZf0DlCEupx7Mc3WCoUP
 QkifWL5/1ME7tcmUiqm0xDlRvNYzSVtT/CW4k6muK0LK6CZCnxvYuOVBQdpJXln2+9kU
 bFWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v6NmxBZ8vV201dlBtVW07bjKFin+mwj/uirkjZ9u0AY=;
 b=q524Mn5tyy+/XZg8sp4YeMrm1/KmZ6WfCIuqewM2mWRXSYQtaTOtdY+HlkcF0Bpu8+
 HNg92pJJvs8IYGX7c56OSFImS24bF0lYCgMf3qVstTw1Wd3rD8QivpUTatm1WtgVYKFm
 mWLbjuGvcv1Q58nc2TghU9DLns5Tz/GICM37QtN0bOJZuT5ZePiK+1ne5tyeuKXnPXhk
 iWuddAuqEJCPIDXutjyCLvJTEbDPzk02GFzCdi5mtov1P/0lTTHGZG+SQ4N2l0XSUgp4
 Z9ontWbZUiyL1Ldp53yUUn/OlqwwBUvyIEcEvFGxf99O6y3l9xDqPgoiPtMnDPvdMGv9
 W+pQ==
X-Gm-Message-State: APjAAAUE0i1Haghd29QJbIPrFg110RMEBIzqS0g3EWNWH0T3B7v1Yzzi
 LK4YdR06zk/BmIGCreBLDoKOzBvpOV8KMSafNTw=
X-Google-Smtp-Source: APXvYqwX8wJ8S7PF+1+fB9M3X5vS3O9OPKaGmpvdWd2oR7M6q2o4l+sGHZnsLdxEECGes2O5N5+2Naz6XZS/VC/A84o=
X-Received: by 2002:a6b:4401:: with SMTP id r1mr1649395ioa.243.1576131803998; 
 Wed, 11 Dec 2019 22:23:23 -0800 (PST)
MIME-Version: 1.0
References: <20191211084112.971-1-linux.amoon@gmail.com>
 <a4610efc-844a-2d43-5db1-cf813102e701@baylibre.com>
 <CANAwSgQOTA0mSvFW5otaCzFPHidhY7VFcrXZHjCD-1XkQpcx3w@mail.gmail.com>
 <20191211095043.3kngq7wh77xvadge@gondor.apana.org.au>
 <CANAwSgR-fT21uBSP747MVkXf2GYqm_6kcne059pX-OegftLSZA@mail.gmail.com>
 <CAKv+Gu8HQ7RY9WSYZrLUR7tNjuybF5sp7xe94VLQpJrDSRg4NA@mail.gmail.com>
 <1229236701.11947072.1576070229564@mail.yahoo.com>
 <CAFBinCAxq-uW+gsmb-8wqxHGXt2W+4w9iD++2fL=FQ7S-RsAkw@mail.gmail.com>
In-Reply-To: <CAFBinCAxq-uW+gsmb-8wqxHGXt2W+4w9iD++2fL=FQ7S-RsAkw@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 12 Dec 2019 11:53:12 +0530
Message-ID: <CANAwSgR0nrVJKGxO3_Tv6g=1dKgnSJN3VJ0WxAdxGhzhWx1jkg@mail.gmail.com>
Subject: Re: [PATCHv1 0/3] Enable crypto module on Amlogic GXBB SoC platform
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_222325_422926_BB77C42E 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Thu, 12 Dec 2019 at 05:00, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Anand,
>
> On Wed, Dec 11, 2019 at 2:17 PM Anand Moon <moon.linux@yahoo.com> wrote:
> [...]
> > Sorry once again I send my logs too early.
> > I still having some issue with the Hardware glx cryto module.
> I'm surprised to see that you managed to get the GXL crypto driver to
> load at all on GXBB
> as far as I know GXBB uses an older crypto IP block (BLKMV) than GXL
> (and newer SoCs, called "DMA"): [0]
>
> so my understanding is that a new crypto driver is needed for GXBB
> (BLKMV registers) support.
> the 32-bit SoCs use the same BLKMV IP block as far as I can tell, so
> these would also benefit from this other driver.
> (I don't know if anyone is working on a BLKMV crypto driver - all I
> can tell is that I'm not working on one)
>
>
> Martin
>
>
> [0] https://github.com/khadas/linux/blob/195ea69f96d9bddc1386737e89769ff350762aea/drivers/amlogic/crypto/Kconfig

*You are absolutely correct. current crypto GLX driver might not work for GXBB*
Yes new crypto driver is needed for this board. I will try to study on
this feature.

But both S805 and S905 share the same crypto IP block for.sure see below link.
[0]  https://github.com/khadas/linux/blob/195ea69f96d9bddc1386737e89769ff350762aea/Documentation/devicetree/bindings/crypto/aml-crypto.txt#L1-L61

It's not working see the debug logs.
[alarm@alarm ~]$ sudo modprobe tcrypt sec=1 mode=500
[sudo] password for alarm:
[   39.567302] tcrypt:
[   39.567302] testing speed of async ecb(aes) (ecb-aes-gxl) encryption
[   39.570171] tcrypt: test 0 (128 bit key, 16 byte blocks):
[   39.570229] gxl-crypto c8832000.crypto: meson_cipher ecb(aes) 16 1
IV(0) key=16 flow=1
[   41.598687] gxl-crypto c8832000.crypto: DMA timeout for flow 1
[   41.598900] tcrypt: encryption() failed flags=0
[   41.603383] tcrypt: test 0 (192 bit key, 16 byte blocks):
[   41.603424] gxl-crypto c8832000.crypto: meson_cipher ecb(aes) 16 1
IV(0) key=24 flow=0
[   43.646686] gxl-crypto c8832000.crypto: DMA timeout for flow 0
[   43.646900] tcrypt: encryption() failed flags=0
[   43.651378] tcrypt: test 0 (256 bit key, 16 byte blocks):
[   43.651419] gxl-crypto c8832000.crypto: meson_cipher ecb(aes) 16 1
IV(0) key=32 flow=1
[   45.694691] gxl-crypto c8832000.crypto: DMA timeout for flow 1
[   45.694902] tcrypt: encryption() failed flags=0
[   45.699419] tcrypt:
[   45.699419] testing speed of async ecb(aes) (ecb-aes-gxl) decryption
[   45.707838] tcrypt: test 0 (128 bit key, 16 byte blocks):
[   45.707872] gxl-crypto c8832000.crypto: meson_cipher ecb(aes) 16 0
IV(0) key=16 flow=0
[   47.742677] gxl-crypto c8832000.crypto: DMA timeout for flow 0
[   47.742879] tcrypt: decryption() failed flags=0
[   47.747366] tcrypt: test 0 (192 bit key, 16 byte blocks):
[   47.747402] gxl-crypto c8832000.crypto: meson_cipher ecb(aes) 16 0
IV(0) key=24 flow=1
[   49.790684] gxl-crypto c8832000.crypto: DMA timeout for flow 1
[   49.790898] tcrypt: decryption() failed flags=0
[   49.795380] tcrypt: test 0 (256 bit key, 16 byte blocks):
[   49.795420] gxl-crypto c8832000.crypto: meson_cipher ecb(aes) 16 0
IV(0) key=32 flow=0
[   51.838680] gxl-crypto c8832000.crypto: DMA timeout for flow 0
[   51.838894] tcrypt: decryption() failed flags=0
[   51.852005] tcrypt:
[   51.852005] testing speed of async cbc(aes) (cbc-aes-gxl) encryption
[   51.854903] tcrypt: test 0 (128 bit key, 16 byte blocks):
[   51.854941] gxl-crypto c8832000.crypto: meson_cipher cbc(aes) 16 1
IV(16) key=16 flow=1
[   53.886678] gxl-crypto c8832000.crypto: DMA timeout for flow 1
[   53.886882] tcrypt: encryption() failed flags=0
[   53.891385] tcrypt: test 0 (192 bit key, 16 byte blocks):
[   53.891428] gxl-crypto c8832000.crypto: meson_cipher cbc(aes) 16 1
IV(16) key=24 flow=0
[   55.934686] gxl-crypto c8832000.crypto: DMA timeout for flow 0
[   55.934901] tcrypt: encryption() failed flags=0
[   55.939410] tcrypt: test 0 (256 bit key, 16 byte blocks):
[   55.939447] gxl-crypto c8832000.crypto: meson_cipher cbc(aes) 16 1
IV(16) key=32 flow=1
[   57.982684] gxl-crypto c8832000.crypto: DMA timeout for flow 1
[   57.982899] tcrypt: encryption() failed flags=0
[   57.987429] tcrypt:
[   57.987429] testing speed of async cbc(aes) (cbc-aes-gxl) decryption
[   57.995832] tcrypt: test 0 (128 bit key, 16 byte blocks):
[   57.995864] gxl-crypto c8832000.crypto: meson_cipher cbc(aes) 16 0
IV(16) key=16 flow=0
[   60.030680] gxl-crypto c8832000.crypto: DMA timeout for flow 0
[   60.030880] tcrypt: decryption() failed flags=0
[   60.035369] tcrypt: test 0 (192 bit key, 16 byte blocks):
[   60.035406] gxl-crypto c8832000.crypto: meson_cipher cbc(aes) 16 0
IV(16) key=24 flow=1
[   62.078678] gxl-crypto c8832000.crypto: DMA timeout for flow 1
[   62.078888] tcrypt: decryption() failed flags=0
[   62.083377] tcrypt: test 0 (256 bit key, 16 byte blocks):
[   62.083416] gxl-crypto c8832000.crypto: meson_cipher cbc(aes) 16 0
IV(16) key=32 flow=0
[   64.126684] gxl-crypto c8832000.crypto: DMA timeout for flow 0
[   64.126899] tcrypt: decryption() failed flags=0
[   64.143285] tcrypt: failed to load transform for lrw(aes): -2
[   64.155243] tcrypt: failed to load transform for lrw(aes): -2
[   64.167318] tcrypt:

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
