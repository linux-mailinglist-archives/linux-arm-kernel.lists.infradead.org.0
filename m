Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFD320E7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cghproEOQekP8y6jOJt51BtSKMHiBLsIp8t+1lFl8Ls=; b=OMO8gqjz+tfkxF
	imgoPLLav9rmnj9FGCPRE83s5Rz/7JmXrMhOTRYTyu9lOE0TgkFdAKk8God8m2qsWcpJgY2uBFMZq
	8u32E6ret9UD7tCl3ioOkUA05eA4qtgmbtDs9mBsMlH95+fXM5ZdusBxnqz78vVD0Xo4UpdGPN5nW
	TQGoa8PjJddp0xXtJbMA/Psq2hpEh+CJ3eCJp8DM5YN5b1fDVDCKQvKMxBehuGmphFVVli8XlSNGL
	gZtxDVtvUw5/fXn0Tc65H6xx8rXIzCQzZN3eSZXWZissHj5Tr5Cn0HmtvyqGyajBs8c+SHpce+0hG
	X+EsBApoWbTmBCo6itWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKtW-0005e5-0m; Thu, 16 May 2019 18:14:18 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKtP-0005dG-4E
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:14:12 +0000
Received: by mail-it1-x144.google.com with SMTP id m140so7852198itg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 11:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oYizfKO0iUCkCx87QTv9y+9/yguDDJWHGpNmrjjyMQE=;
 b=T1a1UQAWEN1zwXTAxJ0W6YsgQvMdJVGrZGrDTxkDkBdftsG7bFuxqMMuyRYIbwpp3N
 zpUtrb0fyJY34h5ZAqJ5AKxT5uAswqiB8LO5sX7EJZTZgfYEuGvfO/pb8QwJVTKmVOqr
 MpYvM0qdYL46t4TGTV4SiIP/n20fxoie6h4lu9vHtVeHW6WMLT7uWNa4D7JCmGJdqinU
 Pff5NHk3/urnJe9KHzJ6+b6680Gwf/AWHqMdWWb+a/6DEl/LFjfmKJv/qzjGlsL+oluN
 QFRErVrPnqIzZrVDXUDAYofBl17/UhgtMEOjPMZ4uAeyPqGuIKtX1oJjyRayHP/2d5U4
 lc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oYizfKO0iUCkCx87QTv9y+9/yguDDJWHGpNmrjjyMQE=;
 b=bly6mXwjNF8z3CBUquAFab01V81PR73FNP6IqNxBizMKrt0YE07z0BUTMKKGQyQAfa
 dT26mbp3pfETRiFGYeyPj5X/OROcYtjqCXbsbzzGlORV5F0ts79T5e2X1X2z0NPxnKtL
 Xpkr7bUiF7jwMpFq7fkD1f+iL/hpwvGipN8QDKTLztsTnRxLWqr+RQ4z21lK4MkH0c0Z
 32w4I3b+gYdnHwrV1VYjuMHicxzNf5hJHZtiuEai/ItBgCNOLMrizLQMpqBa/5gdRBCy
 sqV00ReLoCgnwY/LZM67hmjcd4Wc11yWv+ZpXF6CyS5fqdhEqlwlg0kDOXor0V55Jllx
 F70Q==
X-Gm-Message-State: APjAAAXbqOl4H26XQ/gw71SJCG0RAtFPV2EXbBr/Coqn8Vi2/G82OPuK
 aXtjwTUmVG8/6QW+Eyn4n/Rn9QToTU4ZIGAe6P8=
X-Google-Smtp-Source: APXvYqzg91EbMijFJyKzCeNsU32nhaqbI5CANe+33pKz919XCTOUPyqfIi2K6fq6NPt65fI6+i8jOiwXWRTfBrRl2y4=
X-Received: by 2002:a05:660c:105:: with SMTP id
 w5mr1049148itj.37.1558030450144; 
 Thu, 16 May 2019 11:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-4-tiny.windzz@gmail.com>
 <20190512134152.yrletgtiglxncyo4@flea>
In-Reply-To: <20190512134152.yrletgtiglxncyo4@flea>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Fri, 17 May 2019 02:13:58 +0800
Message-ID: <CAEExFWvkM86ajB4io8yopkKEOfRE3UObRpqoi=Sq0RtDnuaRWA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: thermal: add binding document for h6
 thermal controller
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_111411_172175_13AE6BDE 
X-CRM114-Status: GOOD (  25.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Linux PM <linux-pm@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 Eduardo Valentin <edubezval@gmail.com>, enric.balletbo@collabora.com,
 robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, olof@lixom.net,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 9:41 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> On Sun, May 12, 2019 at 04:26:14AM -0400, Yangtao Li wrote:
> > This patch adds binding document for allwinner h6 thermal controller.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  .../bindings/thermal/sun50i-thermal.txt       | 32 +++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
>
> We're starting to convert to YAML for binding descriptions that will
> allow to validate that all DT are properly using the binding. It would
> be great if you could use it as well.

What have been changed to this now?

>
> > diff --git a/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt b/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
> > new file mode 100644
> > index 000000000000..67eda7794262
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
> > @@ -0,0 +1,32 @@
> > +Binding for Thermal Sensor of Allwinner SOC.
> > +
> > +This describes the device tree binding for the Allwinner thermal controller
> > +which measures the on-SoC temperatures.
> > +
> > +Required properties:
> > +- compatible:
> > +  - "allwinner,sun50i-h6-ths" : For H6
> > +- reg: Address range of the thermal controller
> > +- clocks, clock-names: Clocks needed for the thermal controller.
> > +                    The required clocks for h6 are: "bus".
>
> If there's a single clock, then we don't need clock-names

Yeah, but, IIRC, H3 have two clk.
So I'd like to keep it.

>
> > +- resets, reset-names: Reference to the reset controller controlling
> > +                    the thermal controller.
>
> Ditto.

Done.

Thx,
Yangtao
>
> > +- nvmem-cells: A phandle to the calibration data provided by a nvmem device. If
> > +            unspecified default values shall be used.
> > +- nvmem-cell-names: Should be "calib"
>
> I thought you said that nvmem support was optional in the
> driver. Maybe we could make it optional in the DT too?
>
> Thanks!
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
