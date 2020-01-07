Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AA01335D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 23:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyMQGOhM3eHl8xwjSD7DnsJTW0XvChwK1EhFuhWggC8=; b=duF48iabXewkob
	qBB8mUT2cqe9dgdxhSYwQOIeZHi2jJPfE/SHzScJc3q32LpuFuVBoIRw8lljKOyYL7ELGbS5gQJ47
	wKzHx3I+XItZ8ew5tg7oA51PpYz32FwKGkcLnZboZUeZakVrVHoV6Pn/UeHxtxTzABFhTReXAWU10
	ewTrwFMuaasRIjJeahz2dGcflUk8JOZacp3jGDFbFk6wwnEyGSRe3GzbY/3cjk5clPt4cQDiODIRr
	YWdPD5++gZTSgQkSt5IE7lDXG/CmA1sIxR4guiGbsG68WJUyU4URKrR78T/mnmJjN3oE2JQvzUQSz
	QtmKiLm4S2bEyan9wOcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioxSG-0001fI-RF; Tue, 07 Jan 2020 22:36:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioxS9-0001eQ-R2
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 22:35:59 +0000
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0ED7920848
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 22:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578436555;
 bh=BgA8C4OTAz+hxCasEQP7pvCyh/DwxtbAh1GUts8nezA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yWOcJ4bv5iW4TRnYRgZGZ/BJs0qsGOFzjb8o7RBKqqrNguvml8lzupE1xJuIKaMfB
 iErWnLpwyYpb6/w875DR52n37uZOZ50MpkkmU6b1oda4BfsL9V9X4B05cj4e6y0NeY
 cbcUjXUTWOvd7AhemGfOZySLN4qSG1W1W5qGbZCY=
Received: by mail-qv1-f52.google.com with SMTP id n8so586262qvg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 14:35:55 -0800 (PST)
X-Gm-Message-State: APjAAAVOLvpc3pUSwpny1N0hgx9iw1qH/vdOmVqI8O3E6hT3zP3rvLBQ
 B4AmeeRgPnT1En7PJ/lN8mZ3qEYqogwFrieA9w==
X-Google-Smtp-Source: APXvYqzopuxiPCMInWh5xVv9RadZ1sApQkhglDfFUgmBFrCNOFhOQ9CLkzQ4agTXHKEgEAENe2y53m3p+ZuzT2OQ6J0=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr1502340qvn.79.1578436554153; 
 Tue, 07 Jan 2020 14:35:54 -0800 (PST)
MIME-Version: 1.0
References: <20200107185753.28308-1-rjones@gateworks.com>
 <20200107185753.28308-2-rjones@gateworks.com>
In-Reply-To: <20200107185753.28308-2-rjones@gateworks.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 7 Jan 2020 16:35:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKYvJPJNdnEoADMQm_7zFUtF2vSZA90t4Us0tp899iV5A@mail.gmail.com>
Message-ID: <CAL_JsqKYvJPJNdnEoADMQm_7zFUtF2vSZA90t4Us0tp899iV5A@mail.gmail.com>
Subject: Re: [PATCH v6 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana
 i.MX6DL/Q compatibles
To: Robert Jones <rjones@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_143557_914413_5AD71E7F 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 12:58 PM Robert Jones <rjones@gateworks.com> wrote:
>
> Add the compatible enum entries for Gateworks Ventana boards.
>
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 37 ++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index f79683a..9f73bef 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -154,6 +154,43 @@ properties:
>                - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
>            - const: fsl,imx6dl
>
> +      - description: i.MX6DL or i.MX6Q Gateworks Ventana Boards
> +        items:
> +          - enum:
> +              - gw,imx6dl-gw51xx
> +              - gw,imx6dl-gw52xx
> +              - gw,imx6dl-gw53xx
> +              - gw,imx6dl-gw54xx
> +              - gw,imx6dl-gw551x
> +              - gw,imx6dl-gw552x
> +              - gw,imx6dl-gw553x
> +              - gw,imx6dl-gw560x
> +              - gw,imx6dl-gw5903
> +              - gw,imx6dl-gw5904
> +              - gw,imx6dl-gw5907
> +              - gw,imx6dl-gw5910
> +              - gw,imx6dl-gw5912
> +              - gw,imx6dl-gw5913
> +              - gw,imx6q-gw51xx
> +              - gw,imx6q-gw52xx
> +              - gw,imx6q-gw53xx
> +              - gw,imx6q-gw5400-a
> +              - gw,imx6q-gw54xx
> +              - gw,imx6q-gw551x
> +              - gw,imx6q-gw552x
> +              - gw,imx6q-gw553x
> +              - gw,imx6q-gw560x
> +              - gw,imx6q-gw5903
> +              - gw,imx6q-gw5904
> +              - gw,imx6q-gw5907
> +              - gw,imx6q-gw5910
> +              - gw,imx6q-gw5912
> +              - gw,imx6q-gw5913

I missed that there's 2 sets of compatibles here for imx6dl and imx6q
variants. No point in combining these, so you should have 2 separate
entries for 6Q and 6DL boards.

> +          - const: gw,ventana
> +          - enum:
> +            - fsl,imx6dl
> +            - fsl,imx6q
> +
>        - description: i.MX6SL based Boards
>          items:
>            - enum:
> --
> 2.9.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
