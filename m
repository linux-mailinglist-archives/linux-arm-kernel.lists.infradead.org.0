Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C059A0C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htT4IPE6cEc/jfuVPzVHvCPYjv5Wp4HNTzFC6mUbT54=; b=QrKfyjOFEvhAOj
	W1wIp791IrngvBkSfLZ9aZE3dGNkSeyqoYod8OW7Oljr5uBhjUOvgA24KUVc+yPjUq6Bff+iG430Y
	UzHUc+GKG/N50Bpxyg8SU4q1UVd6rpVyhNkQ0Ex63PkRiKEHjLAPBWRzgwJZt5oLBh2rbkIeqntmk
	9c7fkF7CUyKwMIaNVXRXtV5yC89aKVgNX7/CXVGnmEULB2DivMF33ygU0WFE/pOQCNorPoGWtcO5J
	yfY7ppae1TH1d9X7JcY5ucaNCw8T896MXC/SBcVu3lxT2bS3xFNz89kiMDoRU3s1YfBV5ztSa0ITK
	R7Z9AlpVopne04UpQ2Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tLr-0003mj-W8; Thu, 22 Aug 2019 20:06:32 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tLe-0003m2-Ke
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:06:19 +0000
Received: by mail-io1-xd43.google.com with SMTP id j4so6293530iog.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 13:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hsSpn9hGEc+4R8e8fM9phFi1Gxa64aABU+4CIuIySwQ=;
 b=e3YefOAIAkPen79sC/z3FeJcEtTSDDxtGIpTx0MKzfxYpWbHAU6YT0jAsEXUNJ9n9K
 zV/02U83jNhXCwxe0cJVWD0qZ2fXSVzjnRNmwU9YaswhphX/c7MT82J+0wB4oYOAfIdf
 o3t/Bqgk97YtBogPYkk+Z6m2DSrKvtLTfjFovUJFPYPZsWR2WlF38PbpsHZuauwRMHck
 km1KO2U9UdcyghSHMH942MHDeSS3GxhiDi1pI/rvWaBejPOT2w5lN+J1nfkROn3k98me
 k3KvTcyKKKYXV72i+mLnPzHu5qCM+l1w8QTs8fro0vJ41lrqh03Y60Y3DadG+GUUGroJ
 GbnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hsSpn9hGEc+4R8e8fM9phFi1Gxa64aABU+4CIuIySwQ=;
 b=g8gys2921VXYSohqZ0btWJZne5H6gwEIPwCUKvuijxiO+zo7YeSHPc2xyL/Uus6jRe
 yGKFrWH7CBB5Ty7JqytQbiVoTwVJlIh2OAjIaTh1ap9Xzip4nRrjzCsYjtcjnS0yvXIx
 H4zytmr0bMsXXNDsug2qZCPa/56yVJM8w4ms00iUKKpfBZh5zn1dA+P8uAIvXvkuUgJf
 s6tLWThygY7jlbhoCF2haRa1Y2oSCsYYNm+k35KaKzmEgf8E8T923/jmZUD6uc+L3g/+
 MY4drTIUf+JvCQWQlHfFoFz8gpIZVhcNenwHBkGjY8xuH+nwDVVCIXg+4EzZ8wI+7E1/
 qB1A==
X-Gm-Message-State: APjAAAX0MxaCp4mRO0wcEPPPGaOI7tUXQJkfc/bVFv6KIlZenbYQNi3b
 K/0Jpp2wiEWQJdT3+caDbCx2O6OsAnBw8hIns4E=
X-Google-Smtp-Source: APXvYqwJwJfQRekS8pIphZHiktR5Z63xT/ocdJ4BcGIsoRN24AEWfNDp/0UbySpNcl8VOzLJtdf2clOAKG5G16UAk1c=
X-Received: by 2002:a02:bb13:: with SMTP id y19mr1425878jan.86.1566504376856; 
 Thu, 22 Aug 2019 13:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190731180131.8597-1-andrew.smirnov@gmail.com>
 <VI1PR04MB7023AE3910B261877892EEABEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023AE3910B261877892EEABEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 22 Aug 2019 13:06:05 -0700
Message-ID: <CAHQ1cqHBzFi80ZCa+jgs0Qy=dMP4yP7am1x-hMTxzb-8Zpok0w@mail.gmail.com>
Subject: Re: [PATCH] ARM: imx: Drop imx_anatop_init()
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_130618_698802_C6C68FC0 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peter Chen <peter.chen@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 10:33 AM Leonard Crestez
<leonard.crestez@nxp.com> wrote:
>
> On 31.07.2019 21:01, Andrey Smirnov wrote:
> > With commit b5bbe2235361 ("usb: phy: mxs: Disable external charger
> > detect in mxs_phy_hw_init()") in tree all of the necessary charger
> > setup is done by the USB PHY driver which covers all of the affected
> > i.MX6 SoCs.
> >
> > NOTE: Imx_anatop_init() was also called for i.MX7D, but looking at its
> > datasheet it appears to have a different USB PHY IP block, so
> > executing i.MX6 charger disable configuration seems unnecessary.
> >
> > -void __init imx_anatop_init(void)
> > -{
> > -     anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
> > -     if (IS_ERR(anatop)) {
> > -             pr_err("%s: failed to find imx6q-anatop regmap!\n", __func__);
> > -             return;
> > -     }
>
> This patch breaks suspend on imx6 in linux-next because the "anatop"
> regmap is no longer initialized. This was found via bisect but
> no_console_suspend prints a helpful stack anyway:
>
> (regmap_read) from [<c01226e4>] (imx_anatop_enable_weak2p5+0x28/0x70)
> (imx_anatop_enable_weak2p5) from [<c0122744>]
> (imx_anatop_pre_suspend+0x18/0x64)
> (imx_anatop_pre_suspend) from [<c0124434>] (imx6q_pm_enter+0x60/0x16c)
> (imx6q_pm_enter) from [<c018c8a4>] (suspend_devices_and_enter+0x7d4/0xcbc)
> (suspend_devices_and_enter) from [<c018d544>] (pm_suspend+0x7b8/0x904)
> (pm_suspend) from [<c018b1b4>] (state_store+0x68/0xc8)
>

My bad, completely missed that fact that anatop was a global variable
in  imx_anatop_init(). Sorry about that.

> Minimal fix looks like this:
>
> --- arch/arm/mach-imx/anatop.c
> +++ arch/arm/mach-imx/anatop.c
> @@ -111,6 +111,12 @@ void __init imx_init_revision_from_anatop(void)
>           digprog = readl_relaxed(anatop_base + offset);
>           iounmap(anatop_base);
>
> +       anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
> +       if (IS_ERR(anatop)) {
> +               pr_err("failed to find imx6q-anatop regmap!\n");
> +               return;
> +       }
>
> Since all SOCs that called imx_anatop_init also call
> imx_init_revision_from_anatop this might be an acceptable solution,
> unless there is some limitation preventing early regmap lookup.
>

Would making every function that uses anatop explicitly request it via
syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop") be too much of
a code duplication? This way we won't need to worry if
imx_init_revision_from_anatop() was called before any of them are
used.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
