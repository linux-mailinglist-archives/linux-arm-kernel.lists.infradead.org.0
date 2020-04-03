Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C4419D6AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0T/RmlSXo6meI8wQvK9862/oW37tGdxjhsUYpdGhJs=; b=HGWYqcrf9rP/PB
	2+xOdfY/GsQuVImlyhprHv28gOehcC0VzQb/ooDL8TFFKCQjcRpevSR0Qk966Ye2AzvzFeDgYlfyw
	7MYE0CeQulU41zq7jE4UIcAVATFNaxFWSI2wvvz8rctjrT3+fhQCAMCvAHrMCe6pkTwQGBcIRCVwf
	QYTnlS3MxjiDPH6rWNTyX5nnluKdY3w/a/Ysr5yLNdpZG8xfKkDXRDld/+ohATaUm2i/qPS2i8Uj/
	JOS6ICTgQbNgXuC/kwAgXWz3vmogyUHnYVBxU1vqM5PU6O52vg3VUhmxNYZmShMoE8vBdNjyIrY0q
	JDgoNLTTcp0UsTv5SjpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLPl-0001bz-2W; Fri, 03 Apr 2020 12:27:13 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLPe-0001ao-72
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 12:27:07 +0000
Received: by mail-vs1-xe44.google.com with SMTP id w185so4759893vsw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 05:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wo2EZUNeB9SsWLhfGdO4NXUFfi3h/ZgSDOZGnGz/M8M=;
 b=AWTYy8y4zaClO/E3QrKZnMlUQae7ZWH/UnD3yozTj2BZivUYWSNVsWc8JkBuB+NIwf
 AcFYWWGWuvb5i0nj0fsftLGlbHooXGodA2QURbiI2wVxmFMdYgWV40LlgLU7RkFFbYH0
 BBfpXYmdxE1q8oIPu2qSSY2PCA4Hg8AC7+NjwcFXnZ+uzmT1GFk0+qJsuqaZ/VLfWvDP
 LtxO+i/cfEYCZJ0Dc291wQomb4Dr/uxJut004AZ4gePqeNQlV0MNbRWIlTi98WZwK0Nh
 S0XOkLvPsAPN0fdRxmYIW22+eTeJ2K4lq75U2VFpcDlB5KBDN9/cg/dvLyc7F52R4M7E
 sasg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wo2EZUNeB9SsWLhfGdO4NXUFfi3h/ZgSDOZGnGz/M8M=;
 b=jArmKyfbxTZJHzyUDx8yJYK2yyLOw05EPUiX6L19lDmTIgQr0PQbHqUORuaeFg3/cz
 TjdA5FCN2/MPoNpeIrM2iFaUen3bjYrAxy9sMZlW0jarvmBFfO2XOFWcewQcwLdPbzJb
 YTvR0Ij7BD0aosurTqAteUWlmg84mufai+ed0ZQbC8DlEEJUfhOfzwuDfI8dkcz3vkLy
 Tq1eymjEUrTgtc3pYGk67N0/G+dEJvXYWG0ocN+YGaSf7DYq5otk1A1H/uYos/JrL8St
 wNBDQSkjW8s1svk/jK8iwP4qN+AJyFq2B762aumWx1G3spzQzT+zoxK77jGvM+sCEfU/
 /N1g==
X-Gm-Message-State: AGi0PuY88YRs8v+T+NVJlFEPkZTzzGHUKw3n0Ty/urBsbT0JzlUmL1fD
 LYBDbY3s5g+HlKBBmCi13ZlBwIpEIkdWcO78IGc8vQ==
X-Google-Smtp-Source: APiQypK3zlebDaHIYf3xJ0SdPkARdWrQq4THbXVO5Hj6xfMPT8VmYGqXxqVDetDL0Cu8CSgCsMIkNhk2Qk2txrZ2Wlo=
X-Received: by 2002:a67:870f:: with SMTP id j15mr5889031vsd.95.1585916825114; 
 Fri, 03 Apr 2020 05:27:05 -0700 (PDT)
MIME-Version: 1.0
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 3 Apr 2020 17:56:53 +0530
Message-ID: <CAHLCerPVuZrNiSh45w4TF6jKmZ+aD5aBZCcCK87i4Txdfh_Z2g@mail.gmail.com>
Subject: Re: [PATCH V3 1/3] dt-bindings: thermal: imx8mm-thermal: Add support
 for i.MX8MP
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_052706_254863_44E2B537 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Horia Geanta <horia.geanta@nxp.com>, Linux PM list <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <Linux-imx@nxp.com>, kernel@pengutronix.de,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Mon, Mar 23, 2020 at 6:05 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Add thermal binding doc for Freescale's i.MX8MP Thermal Monitoring Unit.
>

I realise this got merged already, but please send a patch converting
this binding to yaml at some point.

Regards,
Amit

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> index d09ae82..3629d3c 100644
> --- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> @@ -1,10 +1,10 @@
>  * Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
>
>  Required properties:
> -- compatible : Must be "fsl,imx8mm-tmu".
> +- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
>  - reg : Address range of TMU registers.
>  - clocks : TMU's clock source.
> -- #thermal-sensor-cells : Should be 0. See ./thermal.txt for a description.
> +- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
>
>  Example:
>  tmu: tmu@30260000 {
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
