Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3366F8257C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 21:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HIPLAwzMpeuGT2+DfU48p/wfi08tfUchXCgVNpPe1o=; b=VCOX0eREKpsCbB
	EcGiIRUSZfz4BWRsYbZQ0IZTPKJ/tumls1h1uX90bSHoqws00td9Zoqt530++/RjCs/yH5G4z7RQl
	bLs9pjYCag9O0lMNX3+7axAJpe2dK8i+VUcbRg5HoGHRmi22NgIWFsd34NxEmeqOtZOIRVe8k28s0
	GBrU8JEFfhllKSnsnV7dPILuXNcpTK9w73HYEVe8O2Z+rZ08k4r1C9jG+XtRbB/HlSiKair3lV0EG
	5KfygQdxF3yGaDAJcex8dr74xNm66ZPx+KviPXRWY9QmplPE4Y94cqrTEWty1xrL+qbPl7aZTsFdP
	yFTTbkj+P0eXZ06Lq5TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiXF-0003sm-SW; Mon, 05 Aug 2019 19:20:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiX5-0003sK-LN
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 19:20:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id y4so85512427wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 12:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2TegqMOUww6ucAQOrDSmZWCD2zW1ZeQiYP4aaG1iBTk=;
 b=FkfMXok2gYOMBtgt4OD6EuQ0jE+LIt2r4qz2TX0fHBv5s7AytSW7HkI1NubsCzzdrq
 A7y2defmKDPD7FKTEEiYsNT6qIW0eYODGnnDuVtD5GAOoadvV3+3klUU54PLKK3vvGEm
 tdUGsmTAdQsqbF6lY+pC95nJhTBfffLyA2hN+RnDgyEu9UPV0WA6prW6MZGr65YXMIYy
 uAE8Mbxl8yOXU7cNesKbEemjRcBwMB+XrvDtlb89fw1AaGM87p9V0ecppUJlLV80Te2S
 rXutmSnPp3B2xY+kIBNG0I7+THQLLwyidmUFJLyCL3P4Ok2HR2lDa40SMdIQPFcUSv5A
 8G6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2TegqMOUww6ucAQOrDSmZWCD2zW1ZeQiYP4aaG1iBTk=;
 b=X9ac6/uy4t/anB9Nhfnl20cVY5A0Bbobb1eeaXrFzn9jhMnGlCwcxRPkRC9Vd9+XBq
 /1+9KOphDYCDsUaHm65X5DYWAXt944OypQAXkeC5IVtfTq1+5rGIzmEgKwXEgtYWcItY
 rSfYUiK2gvD6fBa/onvCrKA29PWLRDjln1L1RG+vZYewEwf1jjnM0/l/GkT2sFZRHMLz
 8EQILrzzNIUSBLjYWnv+XUyuGRvieAj0ZTk4DCylh2niDrslByWb+FlvhAtbci9yIvhL
 YIyItedIuKYAlNiiqFz57YDP5H63kchlzftOFgwCGVb9+VoG5ZPD0q20sHrd9tNRNLSi
 JJUw==
X-Gm-Message-State: APjAAAWEF7BsPNUk9+EuzWqeSUUVhKKEyrHdzAzyGnV94eYe5a1Jnv9h
 92LDtUJW52tDcttnf2n9XmyNLLEesL92AybkiMg=
X-Google-Smtp-Source: APXvYqwHXAfZFSv8+QZRn6k4uc291rKaB8dWSZ586h51aozoyd21jnfCOwffY0fPZxy79fpFQmcZFA4ZDe9XNkNDTwQ=
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr27385276wrs.93.1565032833619; 
 Mon, 05 Aug 2019 12:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <1564980742-19124-1-git-send-email-hongxing.zhu@nxp.com>
 <1564980742-19124-4-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1564980742-19124-4-git-send-email-hongxing.zhu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 5 Aug 2019 22:20:21 +0300
Message-ID: <CAEnQRZBHBzXGCAihRVpAT4LoUzrXbUWh53zzwM_7pNCesx55+g@mail.gmail.com>
Subject: Re: [RESEND PATCH v5 3/4] dt-bindings: mailbox: imx-mu: add imx7ulp
 MU support
To: Richard Zhu <hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_122035_787337_BF88B068 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>, jassisinghbrar@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Rob

On Mon, Aug 5, 2019 at 8:18 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu" compatible
> to support it.
>
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> index f3cf77e..9c43357 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> @@ -21,6 +21,8 @@ Required properties:
>                 imx6sx, imx7s, imx8qxp, imx8qm.
>                 The "fsl,imx6sx-mu" compatible is seen as generic and should
>                 be included together with SoC specific compatible.
> +               There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
> +               compatible to support it.
>  - reg :                Should contain the registers location and length
>  - interrupts : Interrupt number. The interrupt specifier format depends
>                 on the interrupt controller parent.
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
