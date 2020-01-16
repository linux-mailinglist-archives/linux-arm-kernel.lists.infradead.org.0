Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1536B13DEFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U319W2xQG8pUuq7dF7QV3rDSSOrnPcgeHkuE/xIBlpA=; b=EhfNQdVCI4gDfH
	Fu5kjiILXXtpue7uB7F9jjIjmWiuz3iP6u7ynXs0V8B40FWUAd4Moq53F42TtGEWvUgxdaxai6S0g
	FlLOeXmpoydeZN41XXb+3sYr819NOYbww+4Ud/m0psJPiQNn0+T9ST8P90rL5XM74qLE6TRQxQ57s
	Uw+8+t6mj9pMEBiMe6yvETrkJWo5xB+RsZcoEg4sytnlEHAxMtobgBN43BpYu6Vh1Qrgdv+dm1qB1
	A5+qUnlolFPKtNW6WatTJ3YCWdc77ABHPIGIl3sQ0hhOG8t6ZmeJL/IJIMrigFJp0E46K4GFdBBdw
	VIiAKj581vFUV3vVzEtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7Du-00014R-23; Thu, 16 Jan 2020 15:38:18 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7Df-00012L-Tb
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:38:07 +0000
Received: by mail-ua1-x944.google.com with SMTP id c14so7770849uaq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 07:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NzUD1zwU0rAYKh4GeaUEkzHO0hgVckdO3UlIrWCkJwk=;
 b=ckWYYhKcKb2dT7sxw5ofXkMuaW2T6G0oFm+4I1V6e8zX5MefXp/STLeCkdZBNxk9MI
 neLrSF/Zm+xkeIuUx/p6cIwda217LAvMkqRheBadA9nNimTzyZTSrfmaqOR/CMoqkegg
 CsFoks/mMk2fK8FTgIa5gL7BHICvFOGcuj+LkBtrD96/RZcjo1sqeEpKX/vgbz5R7ufx
 y09r1/bp77UukJ7tvo0ZDo19yuZ7IP4uvq8igqiZatyxQjyY5x9Vc5WRgOn1D7EqO6EU
 xIPvGJt7CgkVt3kAyfGVCrGwBQ1+yzgUzkdriZQppQLw8BZT/wupfBCRLzxV1Kd0utFa
 0qqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NzUD1zwU0rAYKh4GeaUEkzHO0hgVckdO3UlIrWCkJwk=;
 b=OzyIQZr2hDLHSlOLzcZTLKMTq++h6vRKJehI5S6W4zCFk0R4fnQukQKChZcG9rc83F
 bfXgqd0+dv1CEDvE88tkNPoBdMI36kDIV0wu3Gr7dhQQ00OoVud40GFmKkdH/bs3V7xW
 k4cFdrjO3RPw1VvqJprpp+hYTCaRDVqtLSIEsbEl1uu8jECTIfCYIYK2ceYBGRXykMZE
 KbCTjvyLR6+9TqpHLSQnHIe8pBtKNC3bhathl+Tiy2vD4SoMwpq6QsVPL+EAuJurw/F6
 p/VdvtSXgfd/SlJ6g+t3Ya7isXNNeP8aW9Or3tAVlKG5w3GjMZuK15jU1dZuKfiBlFKy
 mIDw==
X-Gm-Message-State: APjAAAVWFI9uZP2UmiXkUQOxQYRTmUQFjvjXBfmYaiOwCHNgfCG0oe/N
 G88G3P/9rzaOAUGaqz218x6A5HjarjMWIgTbVPeOfA==
X-Google-Smtp-Source: APXvYqxIHUm57SaE/1DYL+57dh4bMqtXOA4yP6vvoIGdM8To9YtT6rURJfc0cAe4IX6fBKyQ0iXse1GSG+37snCem2w=
X-Received: by 2002:ab0:5510:: with SMTP id t16mr19495257uaa.15.1579189079583; 
 Thu, 16 Jan 2020 07:37:59 -0800 (PST)
MIME-Version: 1.0
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
 <1578893602-14395-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1578893602-14395-2-git-send-email-Anson.Huang@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 16 Jan 2020 16:37:23 +0100
Message-ID: <CAPDyKFqbWrj5XruJW3ooQSzw51YAg2ukrjdBdkBx1szTU=5DJA@mail.gmail.com>
Subject: Re: [PATCH V2 2/7] dt-bindings: mmc: fsl-imx-esdhc: add i.MX8MP
 compatible string
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_073803_958888_BAFFCEB9 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, angus@akkea.ca,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 richard.hu@technexion.com, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Rabeeh Khoury <rabeeh@solid-run.com>, dl-linux-imx <Linux-imx@nxp.com>,
 DTML <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, rjones@gateworks.com,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Mark Brown <broonie@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 dmaengine@vger.kernel.org, jun.li@nxp.com, cosmin.stoica@nxp.com,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 at 06:37, Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Add compatible string for imx8mp
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> New patch
> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
> index 2fb466c..c93643f 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
> @@ -21,6 +21,7 @@ Required properties:
>                "fsl,imx8mq-usdhc"
>                "fsl,imx8mm-usdhc"
>                "fsl,imx8mn-usdhc"
> +              "fsl,imx8mp-usdhc"
>                "fsl,imx8qxp-usdhc"
>
>  Optional properties:
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
