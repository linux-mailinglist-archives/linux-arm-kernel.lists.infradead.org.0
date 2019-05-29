Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AB42D733
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xidrB62NTLdLjv8gEQCxAcNbe9GtZd6UmIKbPp8aPiA=; b=RnQ3eIgvY+M2Uo
	SY55wa6QL/XdgGyiK++kh2X3nBl7Mt79FGvQAWgQBz1zru/F4F+U1Y4mQeRBOILKVqh4u+udltbpa
	MEdA127FiRYDzrCQDpj+azQj8cjQ0EnVE4A6cteVT/43OoXKWWBx2H24AofTPSt7meXe9I4QE71Us
	huyLrAoHeRaLhVgUZSN0QLSM1U6QsHz7RME8VpMhyoi1Zvl226Ucvf0qfFgoC6BFjaUD3TK5sA+0G
	2U7SHWh8bl7S6PKD8Selo2A9csoP91C3mvEbXymR77D0w15LhgrZr9GniPu1fqOYpurP2KeGpcX3I
	ba8gnUp5N0HfhdbDN2QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtXJ-0007sx-FG; Wed, 29 May 2019 08:02:13 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtXA-0007rC-C0
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:02:05 +0000
Received: by mail-it1-x142.google.com with SMTP id t184so2202143itf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 01:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cNs/DjgSkhhFm41DuwpPA/uTnvP0iIX8DGGy2jep3vs=;
 b=iAr10vNL8vVbcFz5e/0feLbnzig1ZJRkH/UI2N3ULbh+IM1tfloN9izTztmcEXmqZ3
 enReLIKCSXVRr0lz/V8j2GGj4eXDcdtmHWcUYAQAa15SGM3HyDsXI0FDYiVaxBpp224v
 CnQMfj1BRWPeLLig7KSGXj8EvB2V3PFCfJsdFK5CQy8mRZXUSskt3Kw5aZ09Pw/OAlry
 R4UYssHcp3eYRM4IeHSE4di1x8mVm5uyttSAPOcwgCmNExG7CJI8h4fK1QeV71sgZnb0
 3yWGuHIYwj77ycNMx91lFQql3rB6jNPMbVPMASi57/5MNSPlugzSRd/rJK2K0WH3F62C
 mImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cNs/DjgSkhhFm41DuwpPA/uTnvP0iIX8DGGy2jep3vs=;
 b=Xrf+rIiuyqp/gnRg+zeI8lbUJ3Zkr4lVZId/I+W/iRhlLII/ROCTyGQV6rUaEeLzWe
 Oe+50I1jgR3Cb01L5s0OOiBGpdRVRk+yW6mAgf8Wp54YE2a3r+B2QfGHXeNvsCx+dvgs
 0Q5EzqkEQzHcS6w3aXNk+n1TYbFt00kB6M0alnp6NXPt2QKJBWI+nqA6vpMMZyO5wAxu
 wxoydJoVUim6s966KReZtHAjElYmnntw8/Szr+LxWzs7xIPAEEWC3COaGCeCzJrl0ci3
 hZemDc/tLG6t9VTY4nvW1VFLuHP+XksZW7nkKstQA08EC5uFvIYKGLHZsd1FDt+SLugh
 9mHA==
X-Gm-Message-State: APjAAAUHx5kNgxmYBUPbYmybizXprp5Jq1YxQSnjGn3+WQGO4Bvnrl1s
 U1N6FV4Aqfe3M+sK2ocSMMtJbyU6nS3gzB9gAhGVtg==
X-Google-Smtp-Source: APXvYqwvFd41OFIbocvUXGP2j7aAAJZCHWUTEAAnUQhiZs6NcfAOpnpbPn3BvlRNusg/hlvVCetJWfwvuEZhJvkEJj0=
X-Received: by 2002:a24:4dd4:: with SMTP id l203mr6122816itb.118.1559116923334; 
 Wed, 29 May 2019 01:02:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190529065948.5492-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190529065948.5492-1-andrew.smirnov@gmail.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Wed, 29 May 2019 16:01:51 +0800
Message-ID: <CAL411-qcHLFL6ATCqHw_jCZDiHvsF32WZM5dJGCC4C0vyiGvwQ@mail.gmail.com>
Subject: Re: [PATCH] usb: phy: mxs: Disable external charger detect in
 mxs_phy_hw_init()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_010204_454540_3C3927C5 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hzpeterchen[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, Felipe Balbi <balbi@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-usb@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 3:01 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Since this driver already handles changer detction state, copy the
> workaround code currently residing in arch/arm/mach-imx/anatop.c into
> this drier to consolidate the places modifying it.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Felipe Balbi <balbi@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-usb@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>
> The intent of this patch is to consolidate all of the code maipulating
> charge detection state to a signle place and if this patch is agreed
> upon I plan to follow it up with this change:
>
> https://github.com/ndreys/linux/commit/7248f2b85b4706760fd33d2ff970e2ea12d3bea7
>
> Thanks,
> Andrey Smirnov
>
>  drivers/usb/phy/phy-mxs-usb.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index 1b1bb0ad40c3..6fa16ab31e2e 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -63,6 +63,7 @@
>
>  #define ANADIG_USB1_CHRG_DETECT_SET            0x1b4
>  #define ANADIG_USB1_CHRG_DETECT_CLR            0x1b8
> +#define ANADIG_USB2_CHRG_DETECT_SET            0x214
>  #define ANADIG_USB1_CHRG_DETECT_EN_B           BIT(20)
>  #define ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B     BIT(19)
>  #define ANADIG_USB1_CHRG_DETECT_CHK_CONTACT    BIT(18)
> @@ -250,6 +251,19 @@ static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
>         if (mxs_phy->data->flags & MXS_PHY_NEED_IP_FIX)
>                 writel(BM_USBPHY_IP_FIX, base + HW_USBPHY_IP_SET);
>
> +       if (mxs_phy->regmap_anatop) {
> +               unsigned int reg = mxs_phy->port_id ?
> +                       ANADIG_USB1_CHRG_DETECT_SET :
> +                       ANADIG_USB2_CHRG_DETECT_SET;
> +               /*
> +                * The external charger detector needs to be disabled,
> +                * or the signal at DP will be poor
> +                */
> +               regmap_write(mxs_phy->regmap_anatop, reg,
> +                            ANADIG_USB1_CHRG_DETECT_EN_B |
> +                            ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B);
> +       }
> +
>         mxs_phy_tx_init(mxs_phy);
>
>         return 0;
> --
> 2.21.0
>

Reviewed-by: Peter Chen <peter.chen@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
