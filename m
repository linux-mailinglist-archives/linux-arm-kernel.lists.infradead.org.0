Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 211C011AABB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 13:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdRBbK2FGbEvIAPm6TsFuXqbeEfuMT58s6UDyvi3zME=; b=qTmM5eYi6hwdm/
	yozCqttKCNe53Q/zhATh4/xacXyrctI0vHjjYo9FDfCNSzDPun/nAMWruBMHDlUQKH4iEeGpYzoR0
	YYnyA2B5LLfZbdJoFQ79nBoxor+DuVjl5sfurfYNV/oBomwHuQjekXx4z/f5D5XKeuMWn//kb9uRI
	Gzvh6ZB63skNmOR+F4lcSngqELj91+C1Z80qmtNzZTgvL/6MuxegLO/Q8WFjtn8sYnbzntPi4+ON1
	T89/eIsicJWrTDyuIVwM42ZFi7B7RVv0pFOZMuW4emg7y4VYORNrUpTwLWtmS6MJj6GRNkWUSjNxB
	svS0a4xgheYeNRINcOCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if13M-0006Hx-LE; Wed, 11 Dec 2019 12:25:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if12z-0006G0-Ch
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 12:24:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so23790744wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 04:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Az3TiV2Am0UisjHJXlRHoB/xjd19Eg9IwUroSCnx4J8=;
 b=BvPuT7mGXzVeZ7tNJ+z2C2T2ynOQAAMzrDSosd5xBcYGqW06p3wVu6tllPLCD1UPNm
 IRX4ab4fTaP/Q+/LVPv5TauZxdJN7Dm41+UPx53YiU6jIjKCgMCHkULmKG9hDM6dMQF8
 6HLJ5Jc5+FsDkm0u+1WcwmwDUepw+tf0BfH6PL7pBCtEqPFPzVfFGYuBF0Ha/wkVTO0k
 o4u371W3EfQ5e8LsuAKSSLums/5xfKSJQuG4FLTgFuM+BNLMxDtdDHFN+KhlsiKG/DL5
 trpZzmXw4jQFWBFfvYOo5pwKpLRLhJ7zYdySl4eGYWcIyvWs+ONJTUsUWGVmVxlL9GOi
 8b4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Az3TiV2Am0UisjHJXlRHoB/xjd19Eg9IwUroSCnx4J8=;
 b=I/GvLy3PeIzVDiFE75zlPyd5wYzkWGUthgytsd+uRSs5vpgE9dQifBeSU/iwcyhBBU
 0C6ISpgdi2lBPnJvmisdaj/PJzrSgxtxZG2FjsgWuqS8maF8Z/TZRC9//Rxifr0DJpKU
 KxD7yK5WY6cEivQqwdeo2gb4gaSou7AMQXT2sQGIomzbjaBSYFEZ0wm6J3g57Kuv3hPy
 VVmxX0EqFJvJtm7o1UHgpg3N6U1WwIA4o0QR+cVZIi6K+Sk3KlI22Es7LnrwQ7SSM0na
 t+vp0dbP+VqX5qpQqXuW4ySxHTA+rRbNfl3GFHvTdGQf+h3rT1896cPAAkS+ggpfFskV
 waHA==
X-Gm-Message-State: APjAAAWhBSeGB9ymUgNfrINolBd1YhExZ64ILrLauSTh7DR3T+T8f7T4
 MCHznnIlv3toEucc961yKNw2pY3fxby9A9YGlAOUIg==
X-Google-Smtp-Source: APXvYqwXACaS0DhK1ABqntPIwFrbXMhq/Bcei2NIk+wS9lyAjQ/SOfKe0qMWrRR9AUNw9FAwusTZ/2a6Ty3v+VlY6S8=
X-Received: by 2002:a5d:46c1:: with SMTP id g1mr3485989wrs.200.1576067088547; 
 Wed, 11 Dec 2019 04:24:48 -0800 (PST)
MIME-Version: 1.0
References: <20191211084112.971-1-linux.amoon@gmail.com>
 <a4610efc-844a-2d43-5db1-cf813102e701@baylibre.com>
 <CANAwSgQOTA0mSvFW5otaCzFPHidhY7VFcrXZHjCD-1XkQpcx3w@mail.gmail.com>
 <20191211095043.3kngq7wh77xvadge@gondor.apana.org.au>
 <CANAwSgR-fT21uBSP747MVkXf2GYqm_6kcne059pX-OegftLSZA@mail.gmail.com>
In-Reply-To: <CANAwSgR-fT21uBSP747MVkXf2GYqm_6kcne059pX-OegftLSZA@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 11 Dec 2019 12:24:44 +0000
Message-ID: <CAKv+Gu8HQ7RY9WSYZrLUR7tNjuybF5sp7xe94VLQpJrDSRg4NA@mail.gmail.com>
Subject: Re: [PATCHv1 0/3] Enable crypto module on Amlogic GXBB SoC platform
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_042453_438898_0668ED6D 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
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

On Wed, 11 Dec 2019 at 13:16, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Herbert / Neil,
>
> On Wed, 11 Dec 2019 at 15:20, Herbert Xu <herbert@gondor.apana.org.au> wrote:
> >
> > On Wed, Dec 11, 2019 at 03:07:53PM +0530, Anand Moon wrote:
> > >
> > > name         : ecb(aes)
> > > driver       : ecb-aes-gxl
> > > module       : kernel
> > > priority     : 400
> > > refcnt       : 1
> > > selftest     : passed
> > > internal     : no
> > > type         : skcipher
> > > async        : yes
> > > blocksize    : 16
> > > min keysize  : 16
> > > max keysize  : 32
> > > ivsize       : 0
> > > chunksize    : 16
> > > walksize     : 16
> > >
> > > name         : cbc(aes)
> > > driver       : cbc-aes-gxl
> > > module       : kernel
> > > priority     : 400
> > > refcnt       : 1
> > > selftest     : passed
> > > internal     : no
> > > type         : skcipher
> > > async        : yes
> > > blocksize    : 16
> > > min keysize  : 16
> > > max keysize  : 32
> > > ivsize       : 16
> > > chunksize    : 16
> > > walksize     : 16
> >
> > Oh so you did actually get them loaded.  You need to run tcrypt with
> > mode=500 instead of 200 to test the async ciphers.  Does that work?
> >
> > Thanks,
> > --
> > Email: Herbert Xu <herbert@gondor.apana.org.au>
> > Home Page: http://gondor.apana.org.au/~herbert/
> > PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
>
> Looks like I go this to move ahead after modified the dts crypto nodes.
> Here is the output is this good enough results are their some more testcase.
>
> [alarm@alarm ~]$ sudo modprobe tcrypt sec=1 mode=500
> [sudo] password for alarm:
> [   24.370009] tcrypt:
> [   24.370009] testing speed of async ecb(aes) (ecb-aes-neonbs) encryption

This is using software encryption again. This line will read

  testing speed of async ecb(aes) (ecb-aes-gxl) encryption

when it is testing your driver.

Given that you register these at priority 400, they either did not
load at all or failed to register.




> [   24.373201] tcrypt: test 0 (128 bit key, 16 byte blocks): 558165
> operations in 1 seconds (8930640 bytes)
> [   25.374105] tcrypt: test 1 (128 bit key, 64 byte blocks): 553730
> operations in 1 seconds (35438720 bytes)
> [   26.374180] tcrypt: test 2 (128 bit key, 256 byte blocks): 304721
> operations in 1 seconds (78008576 bytes)
> [   27.374266] tcrypt: test 3 (128 bit key, 1024 byte blocks): 83420
> operations in 1 seconds (85422080 bytes)
> [   28.374276] tcrypt: test 4 (128 bit key, 1472 byte blocks): 56456
> operations in 1 seconds (83103232 bytes)
> [   29.378277] tcrypt: test 5 (128 bit key, 8192 byte blocks): 10601
> operations in 1 seconds (86843392 bytes)
> [   30.382329] tcrypt: test 6 (192 bit key, 16 byte blocks): 487160
> operations in 1 seconds (7794560 bytes)
> [   31.386099] tcrypt: test 7 (192 bit key, 64 byte blocks):
> [   31.774318] VCC3V3: disabling
> [   32.382287] 482103 operations in 1 seconds (30854592 bytes)
> [   32.382311] tcrypt: test 8 (192 bit key, 256 byte blocks): 262375
> operations in 1 seconds (67168000 bytes)
> [   33.386271] tcrypt: test 9 (192 bit key, 1024 byte blocks): 70597
> operations in 1 seconds (72291328 bytes)
> [   34.386290] tcrypt: test 10 (192 bit key, 1472 byte blocks): 47700
> operations in 1 seconds (70214400 bytes)
> [   35.390382] tcrypt: test 11 (192 bit key, 8192 byte blocks): 8950
> operations in 1 seconds (73318400 bytes)
> [   36.394332] tcrypt: test 12 (256 bit key, 16 byte blocks): 431367
> operations in 1 seconds (6901872 bytes)
> [   37.398181] tcrypt: test 13 (256 bit key, 64 byte blocks): 427335
> operations in 1 seconds (27349440 bytes)
> [   38.398266] tcrypt: test 14 (256 bit key, 256 byte blocks): 229875
> operations in 1 seconds (58848000 bytes)
> [   39.398369] tcrypt: test 15 (256 bit key, 1024 byte blocks): 61743
> operations in 1 seconds (63224832 bytes)
> [   40.402378] tcrypt: test 16 (256 bit key, 1472 byte blocks): 41497
> operations in 1 seconds (61083584 bytes)
> [   41.406389] tcrypt: test 17 (256 bit key, 8192 byte blocks): 7788
> operations in 1 seconds (63799296 bytes)
> [   42.410414] tcrypt:
> [   42.410414] testing speed of async ecb(aes) (ecb-aes-neonbs) decryption
> [   42.419098] tcrypt: test 0 (128 bit key, 16 byte blocks): 505838
> operations in 1 seconds (8093408 bytes)
> [   43.422184] tcrypt: test 1 (128 bit key, 64 byte blocks): 501537
> operations in 1 seconds (32098368 bytes)
> [   44.423580] tcrypt: test 2 (128 bit key, 256 byte blocks): 273125
> operations in 1 seconds (69920000 bytes)
> [   45.424907] tcrypt: test 3 (128 bit key, 1024 byte blocks): 74316
> operations in 1 seconds (76099584 bytes)
> [   46.430065] tcrypt: test 4 (128 bit key, 1472 byte blocks): 50025
> operations in 1 seconds (73636800 bytes)
> [   47.435145] tcrypt: test 5 (128 bit key, 8192 byte blocks): 9391
> operations in 1 seconds (76931072 bytes)
> [   48.440096] tcrypt: test 6 (192 bit key, 16 byte blocks): 436414
> operations in 1 seconds (6982624 bytes)
> [   49.440916] tcrypt: test 7 (192 bit key, 64 byte blocks): 433857
> operations in 1 seconds (27766848 bytes)
> [   50.441889] tcrypt: test 8 (192 bit key, 256 byte blocks): 233073
> operations in 1 seconds (59666688 bytes)
> [   51.442803] tcrypt: test 9 (192 bit key, 1024 byte blocks): 62394
> operations in 1 seconds (63891456 bytes)
> [   52.443606] tcrypt: test 10 (192 bit key, 1472 byte blocks): 42109
> operations in 1 seconds (61984448 bytes)
> [   53.448434] tcrypt: test 11 (192 bit key, 8192 byte blocks): 7900
> operations in 1 seconds (64716800 bytes)
> [   54.453133] tcrypt: test 12 (256 bit key, 16 byte blocks): 386032
> operations in 1 seconds (6176512 bytes)
> [   55.457568] tcrypt: test 13 (256 bit key, 64 byte blocks): 382669
> operations in 1 seconds (24490816 bytes)
> [   56.458258] tcrypt: test 14 (256 bit key, 256 byte blocks): 204926
> operations in 1 seconds (52461056 bytes)
> [   57.462922] tcrypt: test 15 (256 bit key, 1024 byte blocks): 54382
> operations in 1 seconds (55687168 bytes)
> [   58.467448] tcrypt: test 16 (256 bit key, 1472 byte blocks): 36513
> operations in 1 seconds (53747136 bytes)
> [   59.471968] tcrypt: test 17 (256 bit key, 8192 byte blocks): 6851
> operations in 1 seconds (56123392 bytes)
> [   60.488714] tcrypt:
> [   60.488714] testing speed of async cbc(aes) (cbc-aes-neonbs) encryption
> [   60.491836] tcrypt: test 0 (128 bit key, 16 byte blocks): 1570796
> operations in 1 seconds (25132736 bytes)
> [   61.492766] tcrypt: test 1 (128 bit key, 64 byte blocks): 728564
> operations in 1 seconds (46628096 bytes)
> [   62.497077] tcrypt: test 2 (128 bit key, 256 byte blocks): 230454
> operations in 1 seconds (58996224 bytes)
> [   63.497552] tcrypt: test 3 (128 bit key, 1024 byte blocks): 61803
> operations in 1 seconds (63286272 bytes)
> [   64.497913] tcrypt: test 4 (128 bit key, 1472 byte blocks): 43483
> operations in 1 seconds (64006976 bytes)
> [   65.502251] tcrypt: test 5 (128 bit key, 8192 byte blocks): 7890
> operations in 1 seconds (64634880 bytes)
> [   66.506530] tcrypt: test 6 (192 bit key, 16 byte blocks): 1458091
> operations in 1 seconds (23329456 bytes)
> [   67.506856] tcrypt: test 7 (192 bit key, 64 byte blocks): 636185
> operations in 1 seconds (40715840 bytes)
> [   68.507055] tcrypt: test 8 (192 bit key, 256 byte blocks): 194680
> operations in 1 seconds (49838080 bytes)
> [   69.507400] tcrypt: test 9 (192 bit key, 1024 byte blocks): 51911
> operations in 1 seconds (53156864 bytes)
> [   70.511658] tcrypt: test 10 (192 bit key, 1472 byte blocks): 36328
> operations in 1 seconds (53474816 bytes)
> [   71.515969] tcrypt: test 11 (192 bit key, 8192 byte blocks): 6542
> operations in 1 seconds (53592064 bytes)
> [   72.520232] tcrypt: test 12 (256 bit key, 16 byte blocks): 1368657
> operations in 1 seconds (21898512 bytes)
> [   73.524380] tcrypt: test 13 (256 bit key, 64 byte blocks): 568825
> operations in 1 seconds (36404800 bytes)
> [   74.528480] tcrypt: test 14 (256 bit key, 256 byte blocks): 170364
> operations in 1 seconds (43613184 bytes)
> [   75.532745] tcrypt: test 15 (256 bit key, 1024 byte blocks): 44820
> operations in 1 seconds (45895680 bytes)
> [   76.536921] tcrypt: test 16 (256 bit key, 1472 byte blocks): 31345
> operations in 1 seconds (46139840 bytes)
> [   77.541084] tcrypt: test 17 (256 bit key, 8192 byte blocks): 5674
> operations in 1 seconds (46481408 bytes)
> [   78.545207] tcrypt:
> [   78.545207] testing speed of async cbc(aes) (cbc-aes-neonbs) decryption
> [   78.553895] tcrypt: test 0 (128 bit key, 16 byte blocks): 507079
> operations in 1 seconds (8113264 bytes)
> [   79.557077] tcrypt: test 1 (128 bit key, 64 byte blocks): 502559
> operations in 1 seconds (32163776 bytes)
> [   80.557292] tcrypt: test 2 (128 bit key, 256 byte blocks): 272698
> operations in 1 seconds (69810688 bytes)
> [   81.557499] tcrypt: test 3 (128 bit key, 1024 byte blocks): 73650
> operations in 1 seconds (75417600 bytes)
> [   82.557611] tcrypt: test 4 (128 bit key, 1472 byte blocks): 49556
> operations in 1 seconds (72946432 bytes)
> [   83.557737] tcrypt: test 5 (128 bit key, 8192 byte blocks): 9336
> operations in 1 seconds (76480512 bytes)
> [   84.561741] tcrypt: test 6 (192 bit key, 16 byte blocks): 437081
> operations in 1 seconds (6993296 bytes)
> [   85.561733] tcrypt: test 7 (192 bit key, 64 byte blocks): 434321
> operations in 1 seconds (27796544 bytes)
> [   86.561906] tcrypt: test 8 (192 bit key, 256 byte blocks): 232778
> operations in 1 seconds (59591168 bytes)
> [   87.562077] tcrypt: test 9 (192 bit key, 1024 byte blocks): 62394
> operations in 1 seconds (63891456 bytes)
> [   88.566148] tcrypt: test 10 (192 bit key, 1472 byte blocks): 41756
> operations in 1 seconds (61464832 bytes)
> [   89.566319] tcrypt: test 11 (192 bit key, 8192 byte blocks): 7862
> operations in 1 seconds (64405504 bytes)
> [   90.570354] tcrypt: test 12 (256 bit key, 16 byte blocks): 386709
> operations in 1 seconds (6187344 bytes)
> [   91.574264] tcrypt: test 13 (256 bit key, 64 byte blocks): 383279
> operations in 1 seconds (24529856 bytes)
> [   92.574409] tcrypt: test 14 (256 bit key, 256 byte blocks): 203918
> operations in 1 seconds (52203008 bytes)
> [   93.574554] tcrypt: test 15 (256 bit key, 1024 byte blocks): 54203
> operations in 1 seconds (55503872 bytes)
> [   94.578607] tcrypt: test 16 (256 bit key, 1472 byte blocks): 36379
> operations in 1 seconds (53549888 bytes)
> [   95.582670] tcrypt: test 17 (256 bit key, 8192 byte blocks): 6825
> operations in 1 seconds (55910400 bytes)
> [   96.598834] tcrypt: failed to load transform for lrw(aes): -2
> [   96.611007] tcrypt: failed to load transform for lrw(aes): -2
> [   96.623026] tcrypt:
> [   96.623026] testing speed of async xts(aes) (xts-aes-neonbs) encryption
> [   96.626152] tcrypt: test 0 (256 bit key, 16 byte blocks): 1049916
> operations in 1 seconds (16798656 bytes)
> [   97.626651] tcrypt: test 1 (256 bit key, 64 byte blocks): 628670
> operations in 1 seconds (40234880 bytes)
> [   98.626607] tcrypt: test 2 (256 bit key, 256 byte blocks): 272202
> operations in 1 seconds (69683712 bytes)
> [   99.626727] tcrypt: test 3 (256 bit key, 1024 byte blocks): 79299
> operations in 1 seconds (81202176 bytes)
> [  100.626771] tcrypt: test 4 (256 bit key, 1472 byte blocks): 54137
> operations in 1 seconds (79689664 bytes)
> [  101.630823] tcrypt: test 5 (256 bit key, 8192 byte blocks): 10295
> operations in 1 seconds (84336640 bytes)
> [  102.634876] tcrypt: test 6 (512 bit key, 16 byte blocks): 875909
> operations in 1 seconds (14014544 bytes)
> [  103.638777] tcrypt: test 7 (512 bit key, 64 byte blocks): 490152
> operations in 1 seconds (31369728 bytes)
> [  104.638802] tcrypt: test 8 (512 bit key, 256 byte blocks): 206655
> operations in 1 seconds (52903680 bytes)
> [  105.638913] tcrypt: test 9 (512 bit key, 1024 byte blocks): 59127
> operations in 1 seconds (60546048 bytes)
> [  106.642968] tcrypt: test 10 (512 bit key, 1472 byte blocks): 40065
> operations in 1 seconds (58975680 bytes)
> [  107.646785] tcrypt: test 11 (512 bit key, 8192 byte blocks): 7612
> operations in 1 seconds (62357504 bytes)
> [  108.650058] tcrypt:
> [  108.650058] testing speed of async xts(aes) (xts-aes-neonbs) decryption
> [  108.658747] tcrypt: test 0 (256 bit key, 16 byte blocks): 988257
> operations in 1 seconds (15812112 bytes)
> [  109.661062] tcrypt: test 1 (256 bit key, 64 byte blocks): 563062
> operations in 1 seconds (36035968 bytes)
> [  110.660328] tcrypt: test 2 (256 bit key, 256 byte blocks): 246292
> operations in 1 seconds (63050752 bytes)
> [  111.659706] tcrypt: test 3 (256 bit key, 1024 byte blocks): 70928
> operations in 1 seconds (72630272 bytes)
> [  112.663032] tcrypt: test 4 (256 bit key, 1472 byte blocks): 48127
> operations in 1 seconds (70842944 bytes)
> [  113.666338] tcrypt: test 5 (256 bit key, 8192 byte blocks): 9138
> operations in 1 seconds (74858496 bytes)
> [  114.669650] tcrypt: test 6 (512 bit key, 16 byte blocks): 809679
> operations in 1 seconds (12954864 bytes)
> [  115.668960] tcrypt: test 7 (512 bit key, 64 byte blocks): 433846
> operations in 1 seconds (27766144 bytes)
> [  116.668338] tcrypt: test 8 (512 bit key, 256 byte blocks): 185424
> operations in 1 seconds (47468544 bytes)
> [  117.667842] tcrypt: test 9 (512 bit key, 1024 byte blocks): 52298
> operations in 1 seconds (53553152 bytes)
> [  118.671236] tcrypt: test 10 (512 bit key, 1472 byte blocks): 35382
> operations in 1 seconds (52082304 bytes)
> [  119.674752] tcrypt: test 11 (512 bit key, 8192 byte blocks): 6715
> operations in 1 seconds (55009280 bytes)
> [  120.690195] tcrypt:
> [  120.690195] testing speed of async cts(cbc(aes)) (cts-cbc-aes-neon)
> encryption
> [  120.693927] tcrypt: test 0 (128 bit key, 16 byte blocks): 1463922
> operations in 1 seconds (23422752 bytes)
> [  121.693576] tcrypt: test 1 (128 bit key, 64 byte blocks): 558509
> operations in 1 seconds (35744576 bytes)
> [  122.696941] tcrypt: test 2 (128 bit key, 256 byte blocks): 206901
> operations in 1 seconds (52966656 bytes)
> [  123.696534] tcrypt: test 3 (128 bit key, 1024 byte blocks): 59201
> operations in 1 seconds (60621824 bytes)
> [  124.700019] tcrypt: test 4 (128 bit key, 1472 byte blocks): 41776
> operations in 1 seconds (61494272 bytes)
> [  125.703545] tcrypt: test 5 (128 bit key, 8192 byte blocks): 7668
> operations in 1 seconds (62816256 bytes)
> [  126.707049] tcrypt: test 6 (192 bit key, 16 byte blocks): 1364595
> operations in 1 seconds (21833520 bytes)
> [  127.706592] tcrypt: test 7 (192 bit key, 64 byte blocks): 503147
> operations in 1 seconds (32201408 bytes)
> [  128.710059] tcrypt: test 8 (192 bit key, 256 byte blocks): 177555
> operations in 1 seconds (45454080 bytes)
> [  129.709723] tcrypt: test 9 (192 bit key, 1024 byte blocks): 49679
> operations in 1 seconds (50871296 bytes)
> [  130.713290] tcrypt: test 10 (192 bit key, 1472 byte blocks): 34970
> operations in 1 seconds (51475840 bytes)
> [  131.716973] tcrypt: test 11 (192 bit key, 8192 byte blocks): 6367
> operations in 1 seconds (52158464 bytes)
> [  132.720614] tcrypt: test 12 (256 bit key, 16 byte blocks): 1283895
> operations in 1 seconds (20542320 bytes)
> [  133.724150] tcrypt: test 13 (256 bit key, 64 byte blocks): 457627
> operations in 1 seconds (29288128 bytes)
> [  134.727676] tcrypt: test 14 (256 bit key, 256 byte blocks): 156458
> operations in 1 seconds (40053248 bytes)
> [  135.731388] tcrypt: test 15 (256 bit key, 1024 byte blocks): 43053
> operations in 1 seconds (44086272 bytes)
> [  136.735034] tcrypt: test 16 (256 bit key, 1472 byte blocks): 30275
> operations in 1 seconds (44564800 bytes)
> [  137.738663] tcrypt: test 17 (256 bit key, 8192 byte blocks): 5544
> operations in 1 seconds (45416448 bytes)
> [  138.742355] tcrypt:
> [  138.742355] testing speed of async cts(cbc(aes)) (cts-cbc-aes-neon)
> decryption
> [  138.751641] tcrypt: test 0 (128 bit key, 16 byte blocks): 1346320
> operations in 1 seconds (21541120 bytes)
> [  139.753869] tcrypt: test 1 (128 bit key, 64 byte blocks): 490910
> operations in 1 seconds (31418240 bytes)
> [  140.757441] tcrypt: test 2 (128 bit key, 256 byte blocks): 187922
> operations in 1 seconds (48108032 bytes)
> [  141.757206] tcrypt: test 3 (128 bit key, 1024 byte blocks): 54591
> operations in 1 seconds (55901184 bytes)
> [  142.760888] tcrypt: test 4 (128 bit key, 1472 byte blocks): 38584
> operations in 1 seconds (56795648 bytes)
> [  143.764589] tcrypt: test 5 (128 bit key, 8192 byte blocks): 7103
> operations in 1 seconds (58187776 bytes)
> [  144.768315] tcrypt: test 6 (192 bit key, 16 byte blocks): 1242700
> operations in 1 seconds (19883200 bytes)
> [  145.771971] tcrypt: test 7 (192 bit key, 64 byte blocks): 437461
> operations in 1 seconds (27997504 bytes)
> [  146.775577] tcrypt: test 8 (192 bit key, 256 byte blocks): 160197
> operations in 1 seconds (41010432 bytes)
> [  147.775393] tcrypt: test 9 (192 bit key, 1024 byte blocks): 45642
> operations in 1 seconds (46737408 bytes)
> [  148.779096] tcrypt: test 10 (192 bit key, 1472 byte blocks): 32063
> operations in 1 seconds (47196736 bytes)
> [  149.778946] tcrypt: test 11 (192 bit key, 8192 byte blocks): 5877
> operations in 1 seconds (48144384 bytes)
> [  150.782631] tcrypt: test 12 (256 bit key, 16 byte blocks): 1152081
> operations in 1 seconds (18433296 bytes)
> [  151.786402] tcrypt: test 13 (256 bit key, 64 byte blocks): 394347
> operations in 1 seconds (25238208 bytes)
> [  152.790040] tcrypt: test 14 (256 bit key, 256 byte blocks): 140441
> operations in 1 seconds (35952896 bytes)
> [  153.793884] tcrypt: test 15 (256 bit key, 1024 byte blocks): 39333
> operations in 1 seconds (40276992 bytes)
> [  154.797644] tcrypt: test 16 (256 bit key, 1472 byte blocks): 27695
> operations in 1 seconds (40767040 bytes)
> [  155.801405] tcrypt: test 17 (256 bit key, 8192 byte blocks): 5092
> operations in 1 seconds (41713664 bytes)
> [  156.817348] tcrypt:
> [  156.817348] testing speed of async ctr(aes) (ctr-aes-neonbs) encryption
> [  156.820477] tcrypt: test 0 (128 bit key, 16 byte blocks): 558004
> operations in 1 seconds (8928064 bytes)
> [  157.820655] tcrypt: test 1 (128 bit key, 64 byte blocks): 552378
> operations in 1 seconds (35352192 bytes)
> [  158.820516] tcrypt: test 2 (128 bit key, 256 byte blocks): 301788
> operations in 1 seconds (77257728 bytes)
> [  159.820378] tcrypt: test 3 (128 bit key, 1024 byte blocks): 82386
> operations in 1 seconds (84363264 bytes)
> [  160.820178] tcrypt: test 4 (128 bit key, 1472 byte blocks): 55748
> operations in 1 seconds (82061056 bytes)
> [  161.823966] tcrypt: test 5 (128 bit key, 8192 byte blocks): 10456
> operations in 1 seconds (85655552 bytes)
> [  162.827802] tcrypt: test 6 (192 bit key, 16 byte blocks): 487469
> operations in 1 seconds (7799504 bytes)
> [  163.831366] tcrypt: test 7 (192 bit key, 64 byte blocks): 481048
> operations in 1 seconds (30787072 bytes)
> [  164.831245] tcrypt: test 8 (192 bit key, 256 byte blocks): 259173
> operations in 1 seconds (66348288 bytes)
> [  165.831132] tcrypt: test 9 (192 bit key, 1024 byte blocks): 69847
> operations in 1 seconds (71523328 bytes)
> [  166.830942] tcrypt: test 10 (192 bit key, 1472 byte blocks): 47193
> operations in 1 seconds (69468096 bytes)
> [  167.834846] tcrypt: test 11 (192 bit key, 8192 byte blocks): 8846
> operations in 1 seconds (72466432 bytes)
> [  168.838559] tcrypt: test 12 (256 bit key, 16 byte blocks): 431442
> operations in 1 seconds (6903072 bytes)
> [  169.842284] tcrypt: test 13 (256 bit key, 64 byte blocks): 426738
> operations in 1 seconds (27311232 bytes)
> [  170.842187] tcrypt: test 14 (256 bit key, 256 byte blocks): 228219
> operations in 1 seconds (58424064 bytes)
> [  171.842107] tcrypt: test 15 (256 bit key, 1024 byte blocks): 61173
> operations in 1 seconds (62641152 bytes)
> [  172.845937] tcrypt: test 16 (256 bit key, 1472 byte blocks): 41113
> operations in 1 seconds (60518336 bytes)
> [  173.849750] tcrypt: test 17 (256 bit key, 8192 byte blocks): 7708
> operations in 1 seconds (63143936 bytes)
> [  174.853539] tcrypt:
> [  174.853539] testing speed of async ctr(aes) (ctr-aes-neonbs) decryption
> [  174.862225] tcrypt: test 0 (128 bit key, 16 byte blocks): 559705
> operations in 1 seconds (8955280 bytes)
> [  175.865147] tcrypt: test 1 (128 bit key, 64 byte blocks): 552547
> operations in 1 seconds (35363008 bytes)
> [  176.865060] tcrypt: test 2 (128 bit key, 256 byte blocks): 301757
> operations in 1 seconds (77249792 bytes)
> [  177.864991] tcrypt: test 3 (128 bit key, 1024 byte blocks): 82715
> operations in 1 seconds (84700160 bytes)
> [  178.868853] tcrypt: test 4 (128 bit key, 1472 byte blocks): 55752
> operations in 1 seconds (82066944 bytes)
> [  179.872675] tcrypt: test 5 (128 bit key, 8192 byte blocks): 10456
> operations in 1 seconds (85655552 bytes)
> [  180.876570] tcrypt: test 6 (192 bit key, 16 byte blocks): 487550
> operations in 1 seconds (7800800 bytes)
> [  181.880188] tcrypt: test 7 (192 bit key, 64 byte blocks): 481235
> operations in 1 seconds (30799040 bytes)
> [  182.880127] tcrypt: test 8 (192 bit key, 256 byte blocks): 259126
> operations in 1 seconds (66336256 bytes)
> [  183.880073] tcrypt: test 9 (192 bit key, 1024 byte blocks): 70129
> operations in 1 seconds (71812096 bytes)
> [  184.883927] tcrypt: test 10 (192 bit key, 1472 byte blocks): 47194
> operations in 1 seconds (69469568 bytes)
> [  185.887877] tcrypt: test 11 (192 bit key, 8192 byte blocks): 8844
> operations in 1 seconds (72450048 bytes)
> [  186.891622] tcrypt: test 12 (256 bit key, 16 byte blocks): 431432
> operations in 1 seconds (6902912 bytes)
> [  187.895391] tcrypt: test 13 (256 bit key, 64 byte blocks): 426730
> operations in 1 seconds (27310720 bytes)
> [  188.895339] tcrypt: test 14 (256 bit key, 256 byte blocks): 229104
> operations in 1 seconds (58650624 bytes)
> [  189.899295] tcrypt: test 15 (256 bit key, 1024 byte blocks): 61172
> operations in 1 seconds (62640128 bytes)
> [  190.903168] tcrypt: test 16 (256 bit key, 1472 byte blocks): 41112
> operations in 1 seconds (60516864 bytes)
> [  191.907041] tcrypt: test 17 (256 bit key, 8192 byte blocks): 7708
> operations in 1 seconds (63143936 bytes)
> [  192.922753] tcrypt: failed to load transform for cfb(aes): -2
> [  192.934617] tcrypt: failed to load transform for cfb(aes): -2
> [  192.946539] tcrypt: failed to load transform for ofb(aes): -2
> [  192.958443] tcrypt: failed to load transform for ofb(aes): -2
> [  192.988254] tcrypt:
> [  192.988254] testing speed of async rfc3686(ctr(aes))
> (rfc3686(ctr-aes-neonbs)) encryption
> [  192.992959] tcrypt: test 0 (160 bit key, 16 byte blocks): 530041
> operations in 1 seconds (8480656 bytes)
> [  193.994478] tcrypt: test 1 (160 bit key, 64 byte blocks): 522344
> operations in 1 seconds (33430016 bytes)
> [  194.994434] tcrypt: test 2 (160 bit key, 256 byte blocks): 287702
> operations in 1 seconds (73651712 bytes)
> [  195.994407] tcrypt: test 3 (160 bit key, 1024 byte blocks): 79702
> operations in 1 seconds (81614848 bytes)
> [  196.998278] tcrypt: test 4 (160 bit key, 1472 byte blocks): 53817
> operations in 1 seconds (79218624 bytes)
> [  198.002158] tcrypt: test 5 (160 bit key, 8192 byte blocks): 10108
> operations in 1 seconds (82804736 bytes)
> [  199.006049] tcrypt: test 6 (224 bit key, 16 byte blocks): 464064
> operations in 1 seconds (7425024 bytes)
> [  200.009707] tcrypt: test 7 (224 bit key, 64 byte blocks): 457134
> operations in 1 seconds (29256576 bytes)
> [  201.009682] tcrypt: test 8 (224 bit key, 256 byte blocks): 248692
> operations in 1 seconds (63665152 bytes)
> [  202.009639] tcrypt: test 9 (224 bit key, 1024 byte blocks): 67920
> operations in 1 seconds (69550080 bytes)
> [  203.013518] tcrypt: test 10 (224 bit key, 1472 byte blocks): 45775
> operations in 1 seconds (67380800 bytes)
> [  204.017482] tcrypt: test 11 (224 bit key, 8192 byte blocks): 8592
> operations in 1 seconds (70385664 bytes)
> [  205.021339] tcrypt: test 12 (288 bit key, 16 byte blocks): 411989
> operations in 1 seconds (6591824 bytes)
> [  206.025076] tcrypt: test 13 (288 bit key, 64 byte blocks): 406336
> operations in 1 seconds (26005504 bytes)
> [  207.025055] tcrypt: test 14 (288 bit key, 256 byte blocks): 219800
> operations in 1 seconds (56268800 bytes)
> [  208.029027] tcrypt: test 15 (288 bit key, 1024 byte blocks): 59172
> operations in 1 seconds (60592128 bytes)
> [  209.032912] tcrypt: test 16 (288 bit key, 1472 byte blocks): 39815
> operations in 1 seconds (58607680 bytes)
> [  210.036794] tcrypt: test 17 (288 bit key, 8192 byte blocks): 7473
> operations in 1 seconds (61218816 bytes)
> [  211.040655] tcrypt:
> [  211.040655] testing speed of async rfc3686(ctr(aes))
> (rfc3686(ctr-aes-neonbs)) decryption
> [  211.050885] tcrypt: test 0 (160 bit key, 16 byte blocks): 530361
> operations in 1 seconds (8485776 bytes)
> [  212.052309] tcrypt: test 1 (160 bit key, 64 byte blocks): 522226
> operations in 1 seconds (33422464 bytes)
> [  213.052282] tcrypt: test 2 (160 bit key, 256 byte blocks): 287970
> operations in 1 seconds (73720320 bytes)
> [  214.052242] tcrypt: test 3 (160 bit key, 1024 byte blocks): 79406
> operations in 1 seconds (81311744 bytes)
> [  215.052137] tcrypt: test 4 (160 bit key, 1472 byte blocks): 53819
> operations in 1 seconds (79221568 bytes)
> [  216.056044] tcrypt: test 5 (160 bit key, 8192 byte blocks): 10107
> operations in 1 seconds (82796544 bytes)
> [  217.060020] tcrypt: test 6 (224 bit key, 16 byte blocks): 464394
> operations in 1 seconds (7430304 bytes)
> [  218.063644] tcrypt: test 7 (224 bit key, 64 byte blocks): 457574
> operations in 1 seconds (29284736 bytes)
> [  219.063618] tcrypt: test 8 (224 bit key, 256 byte blocks): 248820
> operations in 1 seconds (63697920 bytes)
> [  220.063607] tcrypt: test 9 (224 bit key, 1024 byte blocks): 67826
> operations in 1 seconds (69453824 bytes)
> [  221.067506] tcrypt: test 10 (224 bit key, 1472 byte blocks): 45696
> operations in 1 seconds (67264512 bytes)
> [  222.071489] tcrypt: test 11 (224 bit key, 8192 byte blocks): 8577
> operations in 1 seconds (70262784 bytes)
> [  223.075372] tcrypt: test 12 (288 bit key, 16 byte blocks): 411815
> operations in 1 seconds (6589040 bytes)
> [  224.079104] tcrypt: test 13 (288 bit key, 64 byte blocks): 406618
> operations in 1 seconds (26023552 bytes)
> [  225.079084] tcrypt: test 14 (288 bit key, 256 byte blocks): 219788
> operations in 1 seconds (56265728 bytes)
> [  226.083072] tcrypt: test 15 (288 bit key, 1024 byte blocks): 59164
> operations in 1 seconds (60583936 bytes)
> [  227.086970] tcrypt: test 16 (288 bit key, 1472 byte blocks):
> [  227.429947] audit: type=1006 audit(1576066039.080:23): pid=384
> uid=0 old-auid=4294967295 auid=1000 tty=(none) old-ses=4294967295
> ses=3 res=1
> [  228.086797] 39701 operations in 1 seconds (58439872 bytes)
> [  228.086826] tcrypt: test 17 (288 bit key, 8192 byte blocks): 7470
> operations in 1 seconds (61194240 bytes)
> modprobe: ERROR: could not insert 'tcrypt': Resource temporarily unavailable
>
> -Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
