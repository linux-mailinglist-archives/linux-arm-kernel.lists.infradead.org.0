Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACDBFF960
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhYcQwGWlI7FEEzrOSAGAZugJyupwsFTPP64lthkWSk=; b=beFZ9QtWetC9Mu
	ieN8wf7BVj6oMmF0cn4+6Mo/AgQbjbgHnJeJ9SGxTJTlgevVZDx2a37ht6DX0H2eBFzsp17qK5OQ0
	U4T2oUBslYCGMVoTRkPoFmClQr8puT5RPVHXMxHgNOXGSqygdjp93hnrSX4TW4M9397nChlkgPp1o
	o3gER5ovmdUltkYndrqKjHgSZoSPTdAVvio03MjkUDeCZdx1JRAmKCZUlyBp5Ad3wsAt3DImc6Eac
	iXNLtWHUG032D93L3SKMhR+HrlnVpAgOocVTkGDFx5sKaJX7XPfO+u7OddP3/6UnX+c3p+r/K49RO
	sHxIS+QEgbkC6qN3khOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJWj-0003wh-AQ; Sun, 17 Nov 2019 12:19:37 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJWY-0003w8-Pb
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:19:28 +0000
Received: by mail-il1-x141.google.com with SMTP id i6so3985633ilr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 04:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=famP/2hJ9uAvuRMVp168RFH84x0OwGqk3aUiNnJd1SM=;
 b=nHzbIHhqDl8yTZsGSphEaEA+LB4yRqbWmFfO/T0wfs0rpPo5JRdEuDu6aIOzLq5j5M
 5aTAA444SsBU71RprHfmqnI821VI1kcvoZIVUq3vWHk+s2Y5AjMuHI7Re42XcMteTJrF
 VcrdwypoR69pAKuX8vWY1KeXn2pBUPjQuqum33eyoM2dLjNSWJQK+x8D993BmfveMjFn
 o47bRc+U31pd1kx9pnik4pw3sFswTuxz09J8keWJzOgW0Yr9XyZlr9C1EK6ZNLMMKgQn
 QSSkh4ZCpJOEGaolIc1pNtnubuZ/TQnMnBECuURh2GvL+3bin0cM0j9JJtbIllcngPQm
 Wbsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=famP/2hJ9uAvuRMVp168RFH84x0OwGqk3aUiNnJd1SM=;
 b=Sc/AtnYOpIznZZiPe1DjYFMjUx2nsn/RjCA7sDNr8ssqRi8llCyFbnneij3quqp2Lo
 BXPxoOH6sOp0tnqyVPTafyb+5Z7CpArtlB0uOYU+kJ+TnuWCcDRs0bXqoQL6ctHFpCPO
 a5r30f4FNWt9jx2rz9szYHFBxIAyZgRMQvgUap7AlKKZCQywPuM8x4aoDiX++uxUiXnF
 HhXRY6VvzbzRImuZcFgy/zXZ0GjGSJKwkJk1ytxhVgzDlxpUIwfBMzpdKrw0e7cO8dKG
 3i+Q9oIlhhjHpNzOBvt6tOCm7XDN1UWvpEq7MJx7np23ipiHoBRjt/VGEEnPw6FIXMIq
 Y9gw==
X-Gm-Message-State: APjAAAWabjdHZizN2SWrE+29ZguQkOtlF5lem+97+o+0yDmYfN/gpH0J
 8MxOFT/n7Pu/uoFBjEjK5tlZjJ07i1D6XEX/4e4jDw==
X-Google-Smtp-Source: APXvYqxLm1u0aSA6zD2wVwO+dZwpC6iGKkqETTFeK2Nl5gSCjEZuFkUpQfLDv0+1Ms3fYIONFbGZqestzDAgfwyTSX4=
X-Received: by 2002:a92:c8c9:: with SMTP id c9mr11184068ilq.197.1573993166254; 
 Sun, 17 Nov 2019 04:19:26 -0800 (PST)
MIME-Version: 1.0
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-9-git-send-email-aisheng.dong@nxp.com>
 <20190906171323.8847820640@mail.kernel.org>
 <CAA+hA=QJwfHsRA+G2oT2awLxx659qXLPsiECV6VYcJ181c6D8w@mail.gmail.com>
 <20190916184505.256CB20665@mail.kernel.org>
In-Reply-To: <20190916184505.256CB20665@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Sun, 17 Nov 2019 20:08:25 +0800
Message-ID: <CAA+hA=Rrscs8gSXa8QhbXkf85KkGCP5iB9qPq=RL+nGu5_UAew@mail.gmail.com>
Subject: Re: [PATCH V4 08/11] clk: imx: imx8qxp-lpcg: add parsing clocks from
 device tree
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_041926_859581_01CD7B01 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 2:45 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dong Aisheng (2019-09-09 04:23:14)
> > ]On Sat, Sep 7, 2019 at 5:35 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Dong Aisheng (2019-08-20 04:13:22)
> > > > Add parsing clocks from device tree.
> > >
> > > Please describe some more here.
> >
> > Will improve.
> >
> > > > +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > > +       base = devm_ioremap_resource(&pdev->dev, res);
> > > > +       if (IS_ERR(base))
> > > > +               return PTR_ERR(base);
> > > > +
> > > > +       count = of_property_count_u32_elems(np, "clock-indices");
> > > > +       if (count < 0) {
> > > > +               dev_err(&pdev->dev, "failed to count clocks\n");
> > > > +               return -EINVAL;
> > > > +       }
> > >
> > > Is 'count' expected to be equal to IMX_LPCG_MAX_CLKS? Because later on
> > > in this function we set the num of clks to the MAX instead of the count
> > > from clock-indices.
> > >
> >
> > No. Here is a tricky to ease the clk getting.
> > For example, one LPCG supports up to 8 clock outputs which each of them
> > is fixed to 4 bits. Then we can easily use the bit-offset/clk-indices
> > parsed from DT
> > to fetch the corresponding clock by hws[clkspec->args[0] / 4].
> > And the cost is very limited with only a few pointers.
>
> Ok. Can you add a comment into the code to explain this?
>

Yes, added.
Thanks for the good suggestion.

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
