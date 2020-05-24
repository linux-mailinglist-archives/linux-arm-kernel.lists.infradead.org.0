Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5C51DFDAB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 10:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umxwnqxcFMUaMVfbsT0dFeDZUs4DCT7R36Mj0/KDuOw=; b=hVT+xLA1FpxrDd
	Ib7U9sY0321/Un3dyAINcnmqx8oF2RB6g+LMOKx8iINQszH2jyO9Gux22NiAVdscnNVNPDBb/T/Xr
	JXxm9gckb5nC3GqC8Tuslw0gZsYirfsKZI+EG80focBAuRGU5Zi3xeo9rkrAN0SxOE+sfEx9/Xma0
	0hmBa0LSezL2rlymeaPOjZMM7DskBlYEmSnmB32EfKTPd4AxZrUra4t3azKQkCTTdfP21rfmdAivO
	FXU3gZiK8BE04+sSZ0IieQmmHSNqaufjsK2N2QQUEHFZHuyNOQ6w48r6Xk4SuqoArQK5BlWqCQJEn
	8hO2zF/xvqudzgwdbrNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcm5K-00027j-7a; Sun, 24 May 2020 08:34:18 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcm58-00026n-Oy
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 08:34:08 +0000
Received: by mail-lj1-x241.google.com with SMTP id q2so17528383ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 01:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ym2/jmTuyZ+LCBHY8uUjF46ZmpdYuv1HzG4ugP1Ee4c=;
 b=a2OK68h4qAK4dqg2rQRo8Rc37ilbBu7fedOc1eeY8wPG5npT+PP5fRrec8wXKowX96
 AYouvBDwSKKubCp3bgbXwrqmZeMdpQgvlBCEjsMvsO33DNIzkdlFQLL3N7DSF1NBSc4G
 XcLqHaiig+Cc00/JXzXObmM6xAPryWfXk9R1I/l3Wf1ic2V8QLdRAPjhVzB16InUNBgQ
 Dmumf6k5hUiUhkqRlUEYCt8vOa1E6A7O+Yn6GBL/s1gTCj0GI1GAlh/kAnoKxWTnoxgO
 eHCvEP52/Y8oahSavx4GfwLfLI/orzXNuYHUv22DwIH10YMzeTdOWssMWHJBtIChR+jc
 iRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ym2/jmTuyZ+LCBHY8uUjF46ZmpdYuv1HzG4ugP1Ee4c=;
 b=k/8IkIPUSZwZ/pgMN/AfQaG5X/yYK8NSGQMTsXeRZ9nZlH+iONh3Wj09Mmg9jsHPnt
 G2xGmiCubFoX93ZQGujlfhtoZX9wesVYd6ZR8MlNSiMzqnv6WQRXTAPfWw9VvPn/96cC
 7HqywYcIGNrjfYpDP1st7/YRa5JwCpxHNtPTyVPyUBcHBAx1RGB3o99n4+nyzNpBTGxP
 Cd40p0ipHLw8lQQBAb6wBUuRYmbt/J6MW29Ch3WRVLkgiJa/kCF7NW5/SCTlZSJcqLoJ
 h3DXpiNMCbJdPAmgkK5mVuREk/BASjWfGXIQpCkbPxKAqb4NWhvzsg/slOyutsapnPV3
 FKaw==
X-Gm-Message-State: AOAM530SvfxF5k1suK7B3TPiNGDAAyDg54Rm0p1J0U68a/4Bq9HzxSa1
 BENIXHcHfQRdoqZavxZ/eEiL3kyF0RkAxyUqEpU=
X-Google-Smtp-Source: ABdhPJyBeDmLEIA6+69iUoeLVOe0EjmnE3EcoRmeGkobz8HZ7gPzhnIXQ9hDlQd64+9msfF5i7BtMZDVtdHZlpC2mTA=
X-Received: by 2002:a2e:898d:: with SMTP id c13mr9696182lji.108.1590309239942; 
 Sun, 24 May 2020 01:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200522113312.181413-1-tali.perry1@gmail.com>
 <20200522113312.181413-2-tali.perry1@gmail.com>
 <20200522224217.GA847856@bogus>
 <CAL_JsqLKaWkSs8vMB4+kBL+AzAU6A4KCVJRNFtvmYfATKR1H=w@mail.gmail.com>
In-Reply-To: <CAL_JsqLKaWkSs8vMB4+kBL+AzAU6A4KCVJRNFtvmYfATKR1H=w@mail.gmail.com>
From: Tali Perry <tali.perry1@gmail.com>
Date: Sun, 24 May 2020 11:35:20 +0300
Message-ID: <CAHb3i=ummYNiqqS4QNi1n1XAzg6bbGXyNPgmFeU_a0T+JP7xqQ@mail.gmail.com>
Subject: Re: [PATCH v13 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_013406_810728_F1CEC448 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tali.perry1[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tali.perry1[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>, kfting@nuvoton.com,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Wolfram Sang <wsa@the-dreams.de>,
 Brendan Higgins <brendanhiggins@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ofer Yehielli <ofery@google.com>, Nancy Yuen <yuenn@google.com>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Sat, May 23, 2020 at 1:47 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, May 22, 2020 at 4:42 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Fri, 22 May 2020 14:33:10 +0300, Tali Perry wrote:
> > > Added device tree binding documentation for Nuvoton BMC
> > > NPCM I2C controller.
> > >
> > > Signed-off-by: Tali Perry <tali.perry1@gmail.com>
> > > ---
> > >  .../bindings/i2c/nuvoton,npcm7xx-i2c.yaml     | 60 +++++++++++++++++++
> > >  1 file changed, 60 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
> > >
> >
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
> >
> > Error: Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dts:22.28-29 syntax error
> > FATAL ERROR: Unable to parse input tree
> > scripts/Makefile.lib:312: recipe for target 'Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dt.yaml' failed
> > make[1]: *** [Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dt.yaml] Error 1
> > make[1]: *** Waiting for unfinished jobs....
> > Makefile:1300: recipe for target 'dt_binding_check' failed
> > make: *** [dt_binding_check] Error 2
> >
> > See https://patchwork.ozlabs.org/patch/1296162
> >
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure dt-schema is up to date:
> >
> > pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> >
> > Please check and re-submit.
>
> Why do you keep sending new versions with the same problem? It won't
> get reviewed until this is fixed. This isn't a free automated service
> to throw things at to see if they work. I have to review the failures.
>
> Rob

Definitely not trying to use the Bot to check my yaml. On the first
version the dt-check was not updated on my side.
On the previous version I updated according to the bot explanations.
Found an error and fixed it. Now I don't see any errors. with latest
dt-check.
I did:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master
--upgrade
make dt_binding_check

And got a clean log, no warnings or errors. Was I suppose to check
anything else?

Thanks,
Tali

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
