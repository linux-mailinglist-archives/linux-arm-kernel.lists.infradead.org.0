Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AABD1F9E1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 00:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShBb8887OEYWMHVtU/ZNNb9YIImvKHe2xXRF7llCatI=; b=AbDiEEvTvcZHGu
	hU3OjrjQgllQrjGekAmKLbjO9PGLYnR1eHh0czD4hNAYAJVlkOohsAzBPNhSx4WQd1ky0v750N2HE
	aNp+Qg3LInOiNnExS9DR2YW4tXAvk4uKiqtKi0+wLa0idmimfZ+/UJ4PhNirxnWkuAo7wL3FaVGtQ
	2l7HEuMqcvgcx2G8q8kjHSfvBbo2zA7KhjOe9VzxgLchHw9+eAPZVzJ3H0II5NOrYE09r47edIUUH
	5dGRbSA1qBG9hwtAoSAWhBqHdXFYPx/IUg/RlMPVXpmP30bF/O1FSTdOBS/iRNSwokyMF3w2JqU3n
	bK1cAWVeXIytH+cZWwkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUfSI-0003ku-7W; Tue, 12 Nov 2019 23:20:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUfS1-0003kb-Br
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 23:19:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id p18so352010ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 15:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GMjwveH3CUuLmsxzUrrc19s3Wz8y9XDlrlIq+OXDB/o=;
 b=mAXOhi/zUV3TiTyp9nCQ+06pCmLgs3jTZA914CYgYmfDQFhlj0lvAEkMt7LUkjk8c7
 yiRAjDtkLchtZfvJxM7yir7R/ceWA3qiLdyUA9Wd9ntw3qY1oRo87fn3SVSXmJyITUkj
 tS3JrOvImdDr07jeeW7n/dETixbXrsusRgAaQallO4JrOTa8QBhF86KpHnBT6VRoJyp1
 p4NRaskU7mOtgoV5F19pWcSdP0UqbIZYcpTFZ9fGjofPOk1sAA2YC4MsjBPrfi6/E5XS
 9SAKtDCOkWHh0LFOZTb2/jNTOWDf92AEFBeqrkaLLlrfs4uRnrY0uS4sVPjC+YgfptZn
 gQ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GMjwveH3CUuLmsxzUrrc19s3Wz8y9XDlrlIq+OXDB/o=;
 b=FND/Dop7zim5HEuqlTuMwx22WtmgOMxm1za7HLEsH0ISISVlYQfan+XHSGQUqY7/ql
 hC1njTgkVTo9MDNXwQEZffmCrw0nhs0ERoLJqlw1HmXbg/liJZ8GnG6a/hFthLnD3Ajq
 DyVtFGBvaC19L5DBT7CmIIqT+76jCr8oLLs0fMegXsFK8Od3akqiemLhaAdc6Dtolt2+
 TzA+y1N1US5E8jwt3JNXLATOGh2S+o7LSqpQxgQcwk4QLF/DfMv48mpDa33GrXrNnw5W
 hygDZghfFPOj/WT/ywM/BZxzdrNSnQ/0oim9tN+BxzOaP8fvsHfhq/AhuJ5t+RyoZAH+
 iqQg==
X-Gm-Message-State: APjAAAXxwkBnD4a9ULrg9obtZyVC9mmWdrtB48v7RbfDmDk+z++ChVlG
 PS8aLWbubdWBPMzg5JO00fP9kbqcmeoqsZGCD3I=
X-Google-Smtp-Source: APXvYqwVXiqCC0PuqZq7mcUeN3z5CHKrDqFe9eCwZIGLh5LdIV2o9g66iNddxCo3PGbxNDaeVk/V9lLsVlH9ntASnLs=
X-Received: by 2002:a05:651c:387:: with SMTP id e7mr220451ljp.0.1573600795494; 
 Tue, 12 Nov 2019 15:19:55 -0800 (PST)
MIME-Version: 1.0
References: <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
 <1573593892-25693-1-git-send-email-oliver.graute@gmail.com>
In-Reply-To: <1573593892-25693-1-git-send-email-oliver.graute@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 12 Nov 2019 20:19:44 -0300
Message-ID: <CAOMZO5DYssbnVsemV+U24wbVoYM3LM3ZZtFwWHonXLHKF0Y+kg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: arm: fsl: Add Variscite i.MX6UL
 compatibles
To: Oliver Graute <oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_151957_405359_CB10D699 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 6:25 PM Oliver Graute <oliver.graute@gmail.com> wrote:
>
> Add the compatibles for Variscite i.MX6UL compatibles
>
> Signed-off-by: Oliver Graute <oliver.graute@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index f79683a..d0c7e60 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -182,6 +182,7 @@ properties:
>                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
>                - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
>                - kontron,imx6ul-n6311-som  # Kontron N6311 SOM
> +              - variscite,6ulcustomboard" # i.MX UltraLite Carrier-board

I guess what you mean is:

variscite,imx6ul-var-6ulcustomboard # i.MX6 UltraLite Carrier-board

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
