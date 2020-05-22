Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB9A1DF294
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 00:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4P2ZzFCPWTCh+a7pqAwGoop7q03Y2Zgc3WAG+5Dy5Gs=; b=t1Fkvqy/SEf4IB
	h77uVO4DIS4ay9npA4R3giGljz87Zv0m9CvFZpFyQFUmhPvhtL3QbUIFI4ERbwEH7/QTKUQ8m0R20
	O801SVEZCBOTuCpVWIxZ1fde22f38GWG4nrG4JYm8D3xu9zo+qd4CeNp4LUdjTF0JKejpFg+IVcHk
	oPQV5XNr7P2EhLbOnjOsQ+FM+95BqeUxhfGTs1hYNnrxz6SGVJsCWxSTaf/qmEaR1hBSL+2QDwRiq
	ybJ7RaMda7F2jti4yjHSvza3c6U93JJUWOQmAS7492qy5h6XGm0YmNMb6r/hkP0zwecbICmOIxis4
	rZOXw6fDhhkuY8y6pfLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGZZ-000207-4F; Fri, 22 May 2020 22:55:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGRy-0001eb-UZ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 22:47:36 +0000
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com
 [209.85.161.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61982206B6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590187653;
 bh=5hfFawpXKpCIutTjpG9U4GCILvuIjBPoHRWtulw0l8c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JuwbAV7rthezSwZ6bubdRj8+FUWIO64x4TTlohWp7xFl/QLYqMtzV6y+BqfagCib8
 4pbFX2FRyQsWb8qmmtUEgdsAmiWs7cOJkvOrt02J+a9viVUk/kQ7QAvXJKWO74muv8
 N3ENYsEw/WqnBRjs1DK91rQaiAN+qPgPxbia76FM=
Received: by mail-oo1-f54.google.com with SMTP id s139so2499024oos.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 15:47:33 -0700 (PDT)
X-Gm-Message-State: AOAM532aSzAgf7w8GGNvPqqx5kDFUtdSbtN97DO/tqV5/7tlle6MFDw4
 aU69KsluHvNUBDMxxsEuCXdKGktgwrgsijEpUQ==
X-Google-Smtp-Source: ABdhPJxaHHJNI0SXO4KjlnRK9YfXoFEB9IMHVZp7IAtsCVAsNspsWHvXuCKHPqC0HjG6YargWTUGM/jccxuGbhpguqs=
X-Received: by 2002:a4a:3790:: with SMTP id r138mr4741311oor.81.1590187652677; 
 Fri, 22 May 2020 15:47:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200522113312.181413-1-tali.perry1@gmail.com>
 <20200522113312.181413-2-tali.perry1@gmail.com>
 <20200522224217.GA847856@bogus>
In-Reply-To: <20200522224217.GA847856@bogus>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 22 May 2020 16:47:21 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLKaWkSs8vMB4+kBL+AzAU6A4KCVJRNFtvmYfATKR1H=w@mail.gmail.com>
Message-ID: <CAL_JsqLKaWkSs8vMB4+kBL+AzAU6A4KCVJRNFtvmYfATKR1H=w@mail.gmail.com>
Subject: Re: [PATCH v13 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
To: Tali Perry <tali.perry1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_154735_068686_BE766645 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Benjamin Fair <benjaminfair@google.com>,
 kfting@nuvoton.com, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>,
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

On Fri, May 22, 2020 at 4:42 PM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, 22 May 2020 14:33:10 +0300, Tali Perry wrote:
> > Added device tree binding documentation for Nuvoton BMC
> > NPCM I2C controller.
> >
> > Signed-off-by: Tali Perry <tali.perry1@gmail.com>
> > ---
> >  .../bindings/i2c/nuvoton,npcm7xx-i2c.yaml     | 60 +++++++++++++++++++
> >  1 file changed, 60 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
> >
>
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> Error: Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dts:22.28-29 syntax error
> FATAL ERROR: Unable to parse input tree
> scripts/Makefile.lib:312: recipe for target 'Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dt.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> Makefile:1300: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
>
> See https://patchwork.ozlabs.org/patch/1296162
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
>
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
>
> Please check and re-submit.

Why do you keep sending new versions with the same problem? It won't
get reviewed until this is fixed. This isn't a free automated service
to throw things at to see if they work. I have to review the failures.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
