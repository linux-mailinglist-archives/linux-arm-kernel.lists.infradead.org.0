Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B67AAD7F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4R5GCLlSK3gJTdS9VJ0pW1sOdtBeNFNUXrLAWinGu4=; b=HgAWjKX2vqQ8Mh
	u6EjKj5+Bi5NW9v8Ncpt87Rmzu7DX46RigB3oBAje3JbRKKWfJavHoTaea5b/HnMqtf+BJ+DoxMkj
	6gIPzixsmPctXdNmYda365w/NThBfIJ4H3DritM+MzByGWrw9PwRcJzYMrc7QOkWzPsDbVEkheTXJ
	2Pa7u607wOQn6vGVtsItFAb4k1kMFmsrj8d2SPgv2h4oTVByQ/nh5/iCyTVQlXXNBOtRtnCwQD1yZ
	Tnf/mUahaku2gsk11FB4/ujvigdJWgcKX14hYHjbll+DbW5qsFP3glI8zn2RdSL7wHw7rj2yVKhsj
	8eSFAG18e1t+jecMszrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Hv8-0006xs-Hj; Mon, 09 Sep 2019 11:33:22 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Hv2-0006xU-KG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:33:17 +0000
Received: by mail-io1-xd43.google.com with SMTP id h144so27746472iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 04:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lIwVXF9pE1FT7bnrzezd7oAZ7WJ0Y3NJXiACUekNGI4=;
 b=JJxbLyn4OvBhNZjZQXQWA0R9ozhoS2LPM/TA45dfZi43evnpOTEvxDJOPW8wtXHfIf
 ADU8Jn2yshA3gc/3rcqqDfuCl3CIVDLCislKrNeX2hGCXBBum5I4iSnj2J5w/o64CpT0
 IcGaX1/mHmTTx3MGWE+q9pSqKwvhniiu/XkuYhe45ASuOc7Y55bSQDf82+5/XQ+MGpdJ
 laZJ6PuByKG15TKEBs6CbTYCRuX0qHiUXH9xZsRXaBjQXYRHEWzGvVrcbue6G0lz1Zn3
 rEQpou6U4lDfnjWYhMy5TCZTi3U1SkHtyvAnTjGhIvt8fotKkzxRJQq4u/F13WY4f1kp
 vaFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lIwVXF9pE1FT7bnrzezd7oAZ7WJ0Y3NJXiACUekNGI4=;
 b=myJnLUeLDsjbU3T6nWKBTtk1AZPZ1FI54fqStm2P4d9LEDpp0/BXmP6tBaqZCWacNu
 yLf2VZt6LnwPFpUYhJ6G0+J8f5lAfeNeCH4uLZtfEApxO/N45u2zQ+06OE/N0hKXXkOd
 m0qTEyB1eTt6xtqJyS2D2Th5x9H4HtabgovBOUDVabbRG0/ictcBYhsYjUTGNUXQhFIE
 1IgwVvm4h4fcdpTmxlHSjqrnrqx7l1f7kNvFop5ai8FvmXgeqO2XNyQMcZO/1oZINP/f
 IpFze5yRryeqTFOj1THMxIgxovDX/2ybnX8TbKehLuJc1lRXY1WQxiRffMUEt++f2DkI
 RBZQ==
X-Gm-Message-State: APjAAAULO05gjRZ8Jaf1rYw0eQU7IrqFCiR46xIxrbrVDBEVF/xEbHbJ
 KPi+r9x7Unj5A54/7ZVMv7jKPPNrK+CIG5ncnDE=
X-Google-Smtp-Source: APXvYqzznKrlCoXkzTu0gbF0faeVH29biPOBKSaOYFRVWyrA+6EFFF+BOrMD2Sex/ORaTXzi0JFJ7i3p1tgUMU777G4=
X-Received: by 2002:a6b:ee17:: with SMTP id i23mr3732157ioh.168.1568028795550; 
 Mon, 09 Sep 2019 04:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-9-git-send-email-aisheng.dong@nxp.com>
 <20190906171323.8847820640@mail.kernel.org>
In-Reply-To: <20190906171323.8847820640@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 9 Sep 2019 19:23:14 +0800
Message-ID: <CAA+hA=QJwfHsRA+G2oT2awLxx659qXLPsiECV6VYcJ181c6D8w@mail.gmail.com>
Subject: Re: [PATCH V4 08/11] clk: imx: imx8qxp-lpcg: add parsing clocks from
 device tree
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_043316_692086_A3AA94AB 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

]On Sat, Sep 7, 2019 at 5:35 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dong Aisheng (2019-08-20 04:13:22)
> > Add parsing clocks from device tree.
>
> Please describe some more here.

Will improve.

> > +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +       base = devm_ioremap_resource(&pdev->dev, res);
> > +       if (IS_ERR(base))
> > +               return PTR_ERR(base);
> > +
> > +       count = of_property_count_u32_elems(np, "clock-indices");
> > +       if (count < 0) {
> > +               dev_err(&pdev->dev, "failed to count clocks\n");
> > +               return -EINVAL;
> > +       }
>
> Is 'count' expected to be equal to IMX_LPCG_MAX_CLKS? Because later on
> in this function we set the num of clks to the MAX instead of the count
> from clock-indices.
>

No. Here is a tricky to ease the clk getting.
For example, one LPCG supports up to 8 clock outputs which each of them
is fixed to 4 bits. Then we can easily use the bit-offset/clk-indices
parsed from DT
to fetch the corresponding clock by hws[clkspec->args[0] / 4].
And the cost is very limited with only a few pointers.

> > +
> > +       clk_data = devm_kzalloc(&pdev->dev, struct_size(clk_data, hws, IMX_LPCG_MAX_CLKS),
>
> This line is too long.
>

Will improve.

> > +                               GFP_KERNEL);
> > +       if (!clk_data)
> > +               return -ENOMEM;
> > +
> > +       clk_data->num = IMX_LPCG_MAX_CLKS;
> > +       clk_hws = clk_data->hws;
> > +
> > +       ret = of_property_read_u32_array(np, "clock-indices", bit_offset,
> > +                                        count);
> > +       if (ret < 0) {
> > +               dev_err(&pdev->dev, "failed to read clocks bit-offset\n");
>
> This isn't called bit-offset anymore.
>

Will improve.

> > +               return -EINVAL;
> > +       }
> > +
> > +       ret = of_clk_parent_fill(np, parent_names, count);
> > +       if (ret != count) {
> > +               dev_err(&pdev->dev, "failed to get clock parent names\n");
> > +               return -EINVAL;
>
> return count?
>

Okay

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
