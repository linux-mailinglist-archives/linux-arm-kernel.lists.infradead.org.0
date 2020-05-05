Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7843A1C62D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 23:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9UHCL5QwlrEtMBN6uQTNSmnq+hUrnpOqaY/lSzrBPE=; b=fNvikI1G7KrgwF
	3CE+8xx4yQfYlz31l0AjTAYWSlRUKxeFoUi+R0KaOnreHVSlM/fV8sqSGm5Z45N5zNDd776MidaHZ
	YM5pK/tRv30D47e/vTkCGpUGOfNblxIZ0LTqs7K27BiPiE0ImRpOAxg5pB2MT71UT6u8Oh1PtOvF7
	sky2w5vqbL1/s2Avit9e8J5VUHcb8sz0ML0SkyIGTxRK7hQcv3q4/xtyv9ZGdneWYf7Gp4V/snMq6
	lUpxxVaTUCcwKkvks2tdxnRIACi/Ka3ov58tWGuhyNYJH6IhAivY+zvgiUx0bYgVu7+oQeJmYRdTF
	uIU0uLH2JzmUKZu19rOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW4wb-0005YU-7h; Tue, 05 May 2020 21:17:37 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW4wV-0005Xc-9q
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 21:17:32 +0000
Received: by mail-io1-xd43.google.com with SMTP id 19so3548673ioz.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 14:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ObvnibH/bA7L+qUHQk3KzdXE6hU6sK12JK5IVLdHK8k=;
 b=Bc5EqmMGLylJiaUpxVrcIqbvJgQ80wtohLMo5qPOCf/qeuHWKdQdlI9l3yA66sKUZh
 GUT/GEyHNiKgftZOvBHqvEAl3kNfoPE+EWnAZZjhBCn+S9kqWwPPHXZEMbTM7aS1hRJl
 7bl1ySWpt1tr/aA5f03mB9hJRFL/irZAk8J9VgoSWpnBAE0MmlhkAb/ZuUI3EL0ahb2A
 fWNpu7BzEYGagww1iC/xlFc1W2k+/e81+MVRGwLbHZKh9StpaI80jl0XeHzTf+Ow2J0r
 f7a0T+Tw68OBuETkcKU6Oy0XCnDIXfBvZvpehkfYL0Xkw4SgZP5x3rzIrt+2eWlk3xFF
 6brQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ObvnibH/bA7L+qUHQk3KzdXE6hU6sK12JK5IVLdHK8k=;
 b=Yg/F6j80lSuhys8xIAyC8veGqZRC5lvEJ7ajBlirBghZ9zlia6vI2mJ13Bm+rTtKik
 7DLAAVPi80q4hFX123JqT8L3UNVIReXf4zoQxCignLWYT5G7sP6szZRl7tXAhyFXVnHo
 7YThevv/OuZtBgQJqiXPy6vA0QBVLulfcSP/RBjMHNbGHCS5ryS0oYyJyiCTfIznuLnS
 3TS21Q5UNqcKBVTiNPjo9u/Uhhkam2dhrYmH6ti55ilWDrWG5EGr+QLcEC71FE/qXpAf
 /X+Gpejx9ASsW+4s/250jKjc8w1xMYUCfXNwc3JSzRfmevu8NiF2lMmdWGH6LIvqaxKH
 jBXQ==
X-Gm-Message-State: AGi0PubfA9cG28J1xI1vxvywRt6+eqo2fwvV6zyk9JuQo7gdw2SA40Nt
 1fDSjvGAEXQQYqusb6bVDHfXSFfsixeps5/fudY=
X-Google-Smtp-Source: APiQypLQ75JK91aDvaW1893+YhytZDhE4HmtF1tn18BlEcLC9Zvi2aFGbd0/Iqk8RU8KgOFEGBQguZGcfBjiml1iWho=
X-Received: by 2002:a6b:dd16:: with SMTP id f22mr5398940ioc.178.1588713450141; 
 Tue, 05 May 2020 14:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230100.181926-1-aford173@gmail.com>
 <20200505184223.GR37466@atomide.com>
In-Reply-To: <20200505184223.GR37466@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 5 May 2020 16:17:19 -0500
Message-ID: <CAHCN7xJxg+uO4h2RcapyjormTMzXFwoMUOi7rh2hUsScJtK56Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: omap3: Migrate AES from hwmods to sysc-omap2
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_141731_343899_D079A232 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adam Ford-BE <aford@beaconembedded.com>, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 1:42 PM Tony Lindgren <tony@atomide.com> wrote:
>
> * Adam Ford <aford173@gmail.com> [200504 16:02]:
> > Various OMAP3 boards have two AES blocks, but only one is currently
> > available, because the hwmods are only configured for one.
> >
> > This patch migrates the hwmods for the AES engine to sysc-omap2
> > which allows the second AES crypto engine to become available.
> >
> >   omap-aes 480a6000.aes1: OMAP AES hw accel rev: 2.6
> >   omap-aes 480a6000.aes1: will run requests pump with realtime priority
> >   omap-aes 480c5000.aes2: OMAP AES hw accel rev: 2.6
> >   omap-aes 480c5000.aes2: will run requests pump with realtime priority
>
> Great :) Looks like I'm getting the following though:
>
> DTC     arch/arm/boot/dts/am3517-craneboard.dtb
> arch/arm/boot/dts/omap3.dtsi:160.39-184.5: ERROR (phandle_references):
> /ocp@68000000/target-module@480a6000:
> Reference to non-existent node or label "aes1_ick"
>
> Is this patch maybe missing a change for am3717 for the aes1_ick?

I am guessing it's the same issue that plagues the am3517 with a note
in the hwmods that stated noone seems to know which am3517's support
it and which don't.  The RNG was disabled on the 3517, so I am
guessing I'll do the same for AES.
I should have posted it as an RFC, because I don't have the proper IRQ
setup for the newly supported AES engine.  The interrupts that are
used for the original AES are listed as 'Resereved' in the AM3517 TRM.
I assume the second engine uses different interrupts.  I don't suppose
anyone know what it should be?

adam
>
> Regards,
>
> Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
