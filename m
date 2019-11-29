Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E146210D1DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 08:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+t7iC924LiwO9I/Y2/rWXggOij2ijVnm6T6UQMtz+w=; b=PRxa/6Qxakhsb3
	5wDOBrMqwAbVLe+wDI50SZpDTtmqXchzcgb82XNkODH3VlbT7H5LITfbUEzmY3b1RIPQZcTYM4eRG
	d4OG1dL0lZlmXzLYFgNIz2Sme8Q7x3FmIo85p5sUCdh8BEU5cX4wsAOzuLfdGDRIwtKAZRRggDicA
	pv0BejC40ZSYpp26a/n4fZifX+Kzwwq9iyKxsd3iiOur94GJKRoUoe2utF/0DTwKdbe7EKxtfQaoU
	j0Ng1WqOBzlKA56Q1Sopid4JvY7LFIl2r9r/83nUJKjpJGI2AY5Plznfoq4sV/fz3C7r2GQb2YW9i
	oe5dZiBYfX/3ToAn9DIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaanR-0001lu-Fg; Fri, 29 Nov 2019 07:34:33 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaanF-0001iF-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 07:34:23 +0000
Received: by mail-ed1-f68.google.com with SMTP id a24so24961037edt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 23:34:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GFt0Cmb0a1kRp5wwWCragfEc3sNuRvk3PTWifHDArig=;
 b=XosMbAdwrh7xCUXUbakjD4XiBi0j8lBp7y1woWK/74OLF0WN/hXjhhAX485Rcewo/T
 09X004vJ0GzrixtAIiZ6xN8Nnzi27f3Ox5GEdKV4R6TOFLJvzBUk3vJEnuoFsA5MEVsE
 +mN0PuCmVYv4of/4rfX1Ww4aMnsssqNn6YGzXnJFsZrprDdA+JPwGo382HR41bgetZAl
 g4mvzUXgZ+aX/ob8sZZ8tClNY58DAFWP7N31BWBuw98QQldngLWXBl63h7NFibcfVBxH
 +2acQl+zxCKesKpkgq1M/PK3FTERsYRGcdgB+rSLKie/7AvTflfwtkyCrKoArazVuhuM
 jCCA==
X-Gm-Message-State: APjAAAX77scOlq8Rgr05eMR/cJRfgYn5Hj+pPOnoU3qyLu28XNqkTY6g
 Koy4cirW3xzHWj3HLEhOlAzvkqXKXFE=
X-Google-Smtp-Source: APXvYqwiaYskxeYtKtcYiVxmHjstKCEgDV2OmXMC6Xexn7HeOORLBDwaEvYn25MvvpeItL8XiLngOg==
X-Received: by 2002:a50:f292:: with SMTP id f18mr17213949edm.169.1575012858868; 
 Thu, 28 Nov 2019 23:34:18 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id f1sm565761eji.57.2019.11.28.23.34.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Nov 2019 23:34:18 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id i12so33719599wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 23:34:17 -0800 (PST)
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr2401488wrx.178.1575012857752; 
 Thu, 28 Nov 2019 23:34:17 -0800 (PST)
MIME-Version: 1.0
References: <20191126110508.15264-1-stefan@olimex.com>
 <20191126162721.qi7scp3vadxn7k2i@gilmour.lan>
 <0c1d7377-7064-f509-ffc5-bd1e8f2fbaa8@olimex.com>
 <20191128103301.vjpkvjscy45ycgwg@gilmour.lan>
 <1e0509cc-4afc-d46f-84a9-5e54c60c9d7b@olimex.com>
In-Reply-To: <1e0509cc-4afc-d46f-84a9-5e54c60c9d7b@olimex.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 29 Nov 2019 15:34:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Dt1=2PMg6mgn5OUumrtgmvwnTFxFqrWjD-VcxWyVwRA@mail.gmail.com>
Message-ID: <CAGb2v67Dt1=2PMg6mgn5OUumrtgmvwnTFxFqrWjD-VcxWyVwRA@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: allwinner: a64: olinuxino: Add VCC-PG
 supply
To: Stefan Mavrodiev <stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_233421_926441_2A51B42F 
X-CRM114-Status: GOOD (  27.00  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 3:22 PM Stefan Mavrodiev <stefan@olimex.com> wrote:
>
>
> On 11/28/19 12:33 PM, Maxime Ripard wrote:
> Hi Maxime,
> > Hi Stefan,
> >
> > On Wed, Nov 27, 2019 at 09:07:40AM +0200, Stefan Mavrodiev wrote:
> >> On 11/26/19 6:27 PM, Maxime Ripard wrote:
> >>> Hi Stefan,
> >>>
> >>> On Tue, Nov 26, 2019 at 01:05:08PM +0200, Stefan Mavrodiev wrote:
> >>>> On A64-OLinuXino boards, PG9 is used for USB1 enable/disable. The
> >>>> port is supplied by DLDO4, which is disabled by default. The patch
> >>>> adds the regulator as vcc-pg, which is later used by the pinctrl.
> >>>>
> >>>> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> >>>> ---
> >>>>    arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts | 4 ++++
> >>>>    1 file changed, 4 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> >>>> index 01a9a52edae4..c9d8c9c4ef20 100644
> >>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> >>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> >>>> @@ -163,6 +163,10 @@
> >>>>            status = "okay";
> >>>>    };
> >>>>
> >>>> +&pio {
> >>>> +  vcc-pg-supply=<&reg_dldo4>;
> >>> The equal sign should have spaces around it.
> >>>
> >>> Also, can you please list all the bank supplies while you're at it?
> >> Sure. Should the supplies defined as regulators names be added also to the
> >> pio node?
> >> For example reg_aldo1 is named "vcc-pe".
> > As far as I can tell, the A64 has regulators for PC, PD, PE, PG and
> > PL, so you should list those (PL being under r_pio)
>
> After quick check I've found a bug (maybe?). It's not possible to specify
> vcc-pl-supply, because of this:
>
> https://elixir.bootlin.com/linux/latest/source/drivers/pinctrl/sunxi/pinctrl-sunxi.c#L778
>
> During the probe of the pmu, the pinctrl tries to get a regulator, that
> doesn't exist yet.
> Because of this the system doesn't start (as expected).

It's a circular dependency. The pinctrl driver requires a regulator, which
is provided by the PMIC, which requires the pinctrl driver to mux a pin
for the bus.

For now there's no way to fix it, other than breaking the dependency.

> I've tried to ignore -EPROBE_DEFER. This seems to work, but only because
> the regulator for
> PL is defined as "regulator-always-on". The problem is that the refcount
> is not incremented.
> So if you export one gpio and the unexport it, the regulator will be
> disabled. I'm not sure
> how this can be resolved.
>
> Should I skip vcc-pl-supply for now and list the other bank supplies?

Yes. That is the preferred and probably only way to deal with it.
Please leave a comment saying why vcc-pl was skipped.

ChenYu

> >> Also, since the commit message will be different for better representation
> >> of the changes, should I send the next
> >> patch as v2 or as a new one?
> > Either way works for me as long as the commit message matches the changes.
> >
> > Thanks!
> > Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
