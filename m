Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E60A7822F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 00:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7ocTavatdE0rOICvFBucn4LSb/dq6Zm4/pGt9WeT6U=; b=XSFstfa05AQTwh
	yq/arCF6LHyWvTjWogjNL/vFOW063vZal3Qq96Fk1cDtkmhgwVzr3sciMEeQrnYE9MphNkA/KwrIF
	lv6NkYRh8ukIDejVHlpn2/bPUQhkpvCDwjEqlrRRrnpddw+88cMs6G5+gjlGuE+XQ8/pvDlcit4zp
	3lMIxIcG3X6GI/1ftcQRBKpkmjr4++ZCaohE6dPmIkA4oTbiOBSD89+IDguCNKlMkrjlZohGoXLCA
	3D/YzNN6JeIlniskhCVetBXUray142oZ9TuwolwPmdPg4wKG73wLI4ys4/Tf5bmx9/WToHBzlwc5+
	/h3rYzVrGmhaMAbb8Lzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrs3r-0008KL-0T; Sun, 28 Jul 2019 22:54:39 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrs3B-00088X-V1
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 22:53:59 +0000
Received: by mail-lf1-x141.google.com with SMTP id q26so40728917lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 15:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=293HgNYyed41RovpEOe3GRTdf8e582HYxtgx4LeaxX8=;
 b=tAZwniCR0CPqi/ult8quwOe+LiEPOnK1pWoH/p5x/mp3iQzLmMmSrUg7fMjQ7j3abc
 PeCYmgFFjQhbJMuMRIF6KWG3Y5GWnVCaGcercOYI//Rkt4MMZ9VP4wUURUMSWFoHyJCW
 IEKUirZ1GtcscdHq8zp422EJAcMe87w4vkWfQ+iuFLk6UZOGinDfdBSQAoh7WUSQUmNI
 Sl9dm4D/tOBaEA2nSHG2wOllxE7ohK2FMv/LTTseUeesqYxiNAZafvWIZWQPpO0zRRJ9
 isxZ/0baSUzg1L4ny3bXBnp1AsnU1eOHnMvU/MTgGsUhO5t/DwyLtcMBqVE6td/QHqT7
 yyng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=293HgNYyed41RovpEOe3GRTdf8e582HYxtgx4LeaxX8=;
 b=XUwA3PVmw8Z85EVgG0qoi0+Z0L4bxuC7AWWiFpG0mv2YYVsWXtu7mJ4hKsHGqztAkN
 V8WHU9Rpsg0p7nPKRDRRg9SHI2ZbAz3yuTQKYy8/0E/myEelR/vsqHuvV/sz+8EbyDIw
 Moh10vjZq/EwECcQBP505s0c9U08cWQiExsb4HrCMhmSXj1sdDTIp5htT73uu1j2H+sR
 OgEumEsANE0RDXkvDpjKOS2ECPS6Q+1G9j1+Wa47aKGYX+kJw5vsRRwRcRDXNk/XPotk
 Dib3OyVe513zJ8+DPQq0INGieIJ+isxPgrf1tkrbeM3SRa3yl3Whe86XbuionoCv78IX
 4YKg==
X-Gm-Message-State: APjAAAVH1rX20sIE3tyBxVMC5NMa662hODiO22zE1SHsOQFeYX3Qj5UA
 yAWzKxLd+8A8+jtWW6G2elTScBjAGNTO90LoPNNeblB/
X-Google-Smtp-Source: APXvYqyRtXjryP5sP5m8Z9yg9JFeb+N25+DCvbf/LanaCCkR4NFm7RX6WHaYn71J41in1OzN5ZtYeqLAwNo3WAGVnD0=
X-Received: by 2002:a19:7616:: with SMTP id c22mr51039500lff.115.1564354436188; 
 Sun, 28 Jul 2019 15:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190724080155.12209-1-andrew@aj.id.au>
In-Reply-To: <20190724080155.12209-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 00:53:45 +0200
Message-ID: <CACRpkdaJTB-=DODtj-u6bOkmy7bQ8eXoYyTqv4xK9L+cV4T11Q@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: aspeed-g5: Delay acquisition of regmaps
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_155358_024624_376ECE13 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:02 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> While sorting out some devicetree issues I found that the pinctrl driver
> was failing to acquire its GFX regmap even though the phandle was
> present in the devicetree:
>
>     [    0.124190] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: No GFX phandle found, some mux configurations may fail
>
> Without access to the GFX regmap we fail to configure the mux for the
> VPO function:
>
>     [    1.548866] pinctrl core: add 1 pinctrl maps
>     [    1.549826] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: found group selector 164 for VPO
>     [    1.550638] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: request pin 144 (V20) for 1e6e6000.display
>     [    1.551346] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: request pin 145 (U19) for 1e6e6000.display
>     ...
>     [    1.562057] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: request pin 218 (T22) for 1e6e6000.display
>     [    1.562541] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: request pin 219 (R20) for 1e6e6000.display
>     [    1.563113] Muxing pin 144 for VPO
>     [    1.563456] Want SCU8C[0x00000001]=0x1, got 0x0 from 0x00000000
>     [    1.564624] aspeed_gfx 1e6e6000.display: Error applying setting, reverse things back
>
> This turned out to be a simple problem of timing: The ASPEED pinctrl
> driver is probed during arch_initcall(), while GFX is processed much
> later. As such the GFX syscon is not yet registered during the pinctrl
> probe() and we get an -EPROBE_DEFER when we try to look it up, however
> we must not defer probing the pinctrl driver for the inability to mux
> some GFX-related functions.
>
> Switch to lazily grabbing the regmaps when they're first required by the
> mux configuration. This generates a bit of noise in the patch as we have
> to drop the `const` qualifier on arguments for several function
> prototypes, but has the benefit of working.
>
> I've smoke tested this for the ast2500-evb under qemu with a dummy
> graphics device. We now succeed in our attempts to configure the SoC's
> VPO pinmux function.
>
> Fixes: 7d29ed88acbb ("pinctrl: aspeed: Read and write bits in LPC and GFX controllers")
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied for fixes. Good rootcausing!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
