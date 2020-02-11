Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73423158CEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:50:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlX5hgOl5N4SBii94SyZbrQDH8RkONM+S4iehcnlLAE=; b=Fu6/EImG4OC36l
	ERyZHgRAq8h05EmWU0zVdpTa4m/LKxlJJK5BxG4YZBipq377dy71k84ft61GPQMI1Gpza8CMcO0nj
	s2IfFU80H3lPnVmmLEnM9cGjlQZNoj9eMjYwOZ8Sc9IrqxyUC6sGvelgIM4Y2tlA2Muy4wqgRxKc3
	coNvspTPUTIeVzLzqBzt7vsZYfhOnGsXFcyL2D0cU9k49ByZQ7+NrvTxFGCedwWh6YmKWBdiUaw6D
	9zpnuz+XDaY8iL/0HWFHcNlKPbVKcAk4GSmDjShPzbn4tfd+IqPr26c3GBLJoeyLLZUQuQB3ls+Sa
	WFoFNc1oRA6fPe243QPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1T7E-0005Uj-GU; Tue, 11 Feb 2020 10:50:04 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1T72-0005Tr-QS
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:49:55 +0000
Received: by mail-il1-x143.google.com with SMTP id v13so3040895iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 02:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eHqxkFhOftXeIrIg8vUiaV+dk3ty7YkSnlLZYLlo5Ko=;
 b=qCcZP1t+3ytI3YacltBjs5aKyI9mSEFglR48Tb8Mrub6EIG2JXT27BMmeSwlJsMmE5
 nD3++mwLzkcVxY5Sdec9Mubfc/z4ZWB5alqUoO8Sn6YnKKM/R3iQtfo+iXt6ALg/ukhj
 urQg/71GNxQoYQeiUcku2HlWH5uhLitfmxayfbJbMfkPReSc9D0lvKNilG/HXLcI3TMZ
 U6yHFwNBJociSPqISHUoLEssn8rQ5Z5YHScHZKxEjflOdHHWll4yHLuD+NNMjUWQ1wC+
 KODO6dsc8Z7WswM0+DXXxwwRQ4iqg2N6q1tj3zBW31JmM/W0BSZQhcOuJ5SCenFgRdfO
 HELA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eHqxkFhOftXeIrIg8vUiaV+dk3ty7YkSnlLZYLlo5Ko=;
 b=On+thaOJm2S+XLJhNBopVHb1MRGAvPwKppYyxwHiyo30fCS/6Cer7DBaLGHAku2QEX
 iKpvdFZuFfMMou7CERzEoblw4WcAg+no5sFxcSuZvWLt1xkvw/DgtEKrxMc0LgLPAXbp
 AXo8IaCkFvlj/x7mafuGJv10YCuAZkOH2z1JVQHqdZhkQrA9A2jncE6tnDBSdqID6CDx
 JbUfNr3w/tuOdeup9BvPCeGaoZMniJDPMT9kSm1BIdBqXQA4U9EBaa+foJ5wXwTtdvaE
 HjECsCOG0SkZvnD0l+oWU7VIohJM92RlGChWPGJtBncHCYuavohswU8Y7SOYEMd1IDpd
 CDzQ==
X-Gm-Message-State: APjAAAWOX6Ne5Y1zye6XNrnPM62CD4tsUnOttGXsfGHIyOvUI4DmkbJS
 YsJNOxfxvdcTaGilvFInUEJDnwsvtPMK1Y5Hrn0=
X-Google-Smtp-Source: APXvYqyV+gu2TZnHhPamDm/mFEOi79lFtDv1oEvHa0mxrqSPfvikSLJ/I2MVcG7LFj84tE+XHcvU+qhf4aKcVcfBz3k=
X-Received: by 2002:a92:350d:: with SMTP id c13mr6001818ila.205.1581418191475; 
 Tue, 11 Feb 2020 02:49:51 -0800 (PST)
MIME-Version: 1.0
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-4-aford173@gmail.com>
 <20200206184030.GA11381@bogus>
In-Reply-To: <20200206184030.GA11381@bogus>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 11 Feb 2020 04:49:39 -0600
Message-ID: <CAHCN7x+uCwyJ60ZG_0m5SgNmqUAyEwxqXVTL7nQzJLXxXrh+Tw@mail.gmail.com>
Subject: Re: [PATCH V2 4/5] dt-bindings: spi: spi-nxp-fspi: Add support for
 imx8mm, imx8qxp
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_024952_887302_A4146FD8 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 linux-spi <linux-spi@vger.kernel.org>, Yogesh Gaur <yogeshgaur.83@gmail.com>,
 Mark Brown <broonie@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 6, 2020 at 2:46 PM Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Feb 02, 2020 at 06:59:49AM -0600, Adam Ford wrote:
> > Add support for nxp,imx8qxp-fspi and nxp,imx8mm-fspi do the bindings
>
> s/do/to/

Oops.  Thanks for catching that.

>
> > document.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > ---
> > V2: No change
> >
> > diff --git a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> > index 2cd67eb727d4..7ac60d9fe357 100644
> > --- a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> > +++ b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> > @@ -2,6 +2,9 @@
> >
> >  Required properties:
> >    - compatible : Should be "nxp,lx2160a-fspi"
> > +                         "nxp,imx8qxp-fspi"
> > +                         "nxp,imx8mm-fspi"
>
> All 3 are different and no compatibility?

This was all based on a series from NXP's repo where they have some
data tables all associated to the various compatible entries, and they
created a place holder for quirks.  Based on an older NXP repo, it
seems like there might be some quirks associated to the different
families, but the newer repo where I got this patch series didn't
implement them, however, it's possible the quirks may enhance
functionality later. If that's true, I think this is the best solution
for future enhancements without having to change the compatibility
names down the road.  Maybe someone from NXP can comment?  I am just
trying to help push things upstream so we can support QSPI flash.  I
would prefer to keep them separate for now, because we might have
these improvements later. However, I'll do what you request.  Do you
want me to drop the additional compatible flags and just use the
original, or create a new one that's a bit more generic?

adam


adam
>
> > +
> >    - reg :        First contains the register location and length,
> >                   Second contains the memory mapping address and length
> >    - reg-names :  Should contain the resource reg names:
> > --
> > 2.24.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
