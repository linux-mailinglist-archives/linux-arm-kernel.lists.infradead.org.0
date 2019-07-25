Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447AB750A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u+eCx3BZuLEJcQ3OgAEgpjCYFuBX44YkAag+6xfm98=; b=JxSgjQKJD16yB1
	/PHH0kG8zCQdA1CjTCG+nRb3Q7hwLtWOT+T2uTZCuiAG6jV/aqlIX31Bogf29HUhXmKET3QQU5vW2
	tjNT5mIA676d/AMeEO7KRu/1bvOCSQST9zUGnga73vX+BUkFPK2Y0fr1DVV/hD/2hjuS3Mpv4gERG
	+zsR0LBNF1DDHV9aZH9kwkhca3t1KXfY/HW8esRoKAoz6O8QjyHlwl1hN0EGuNiHBhhz0LNpc6eti
	vkVH0OrB7f3DUl/RnN69fiUwLSPgQ27wOIVNx+2p6de0y2J5lcTe9b0EIvQQX2suUN8BaMoLt8r55
	XbkumuEiSDVeiarReJbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeSu-0003zF-Vl; Thu, 25 Jul 2019 14:11:29 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeSj-0003v8-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:11:19 +0000
Received: by mail-lj1-x242.google.com with SMTP id t28so48145592lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jrNLPp3bYzLEDpFwB8WgHdHYREWfUZXv7BJCALM4nMs=;
 b=e+/2hx5NHVl51pt1NoaAoxtOSPUgJyMBrXs5dukRJ1aHbWbr/J+zpahxrXK3AgWKqf
 SWfpzTsD1VTIIL/Qay3uuk5XlDjRcihMMzNXo6umEyByVYASmGDPvndRWcis7ufx4och
 tu/PHfw2z1mk7WqODC9xEAeEY47OnalZSUBE9HEG8BR+Bq7Vuvra7Aa4FeOW3LweYqkZ
 /ie7cwtrsfgLO9UEYPqp9zk5WxuMh8X28QhSGeEP+L7jW5qMdvrZZuCy7XG07gdmn4lj
 wY6olIf2XlYDqFyJrpcLxCyHWe5oyMc/YrSsmY57AKlKb7H6SxFaVl2Pkbd11PH+5BLv
 xixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jrNLPp3bYzLEDpFwB8WgHdHYREWfUZXv7BJCALM4nMs=;
 b=AyIKhvin5x/GSMMQy6UNmPARes5ydlXNFXb/GaCA4coMnL0Ikne4ftvo4BLm4TtY93
 JhQwC10LOeZY63o5AGTaZpN7MqjXSap/t/tqIWWY/74f1OgGON3piaPCLsOV9B13z0Ys
 m9FV4h+Dy7lgcN39+OJpynAs1nPVdLvkICFY1ElaoqWWGmhHl/Rr2ZWhHACVMc6DZjff
 izfKvulOl/PxS8wu8tLzdzP7VPucuzYBmJqzD0NebZokKpeXSwJndIrTSx9n2nrAhuYV
 xAcxWtx0PWsx+nu9gHi+sTjTYu06aY4MGRcxwhpuLIi29zEKbd2yek1X3FDp0q2/sObf
 daIw==
X-Gm-Message-State: APjAAAVNdaTNbXCytH/8IpUgM3QmbyYew/Nb5wtqs9vZE+/e03IG6cB7
 J0hb6O9HrPK0Cq6XO1s4AKcwmKm5dZEZR/WcmIA=
X-Google-Smtp-Source: APXvYqyZ2xU3Q3DBuDrKPPtRFmzwXjv7b2fsezBfSsrDgdvw3PESauQBwgujk6jS3/yZmnECnwmNvlSxES79Qhh42rw=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr9166631ljs.44.1564063876251;
 Thu, 25 Jul 2019 07:11:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190725121452.16607-1-dafna.hirschfeld@collabora.com>
 <20190725121452.16607-2-dafna.hirschfeld@collabora.com>
In-Reply-To: <20190725121452.16607-2-dafna.hirschfeld@collabora.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 25 Jul 2019 11:11:17 -0300
Message-ID: <CAOMZO5BWarNdbCc5eVW7TTO9ahkG5wMwX_3XXKkngzKcjk+mpg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: imx: add imx8mq nitrogen support
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_071118_015267_5C2228A4 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 Gary Bisson <gary.bisson@boundarydevices.com>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 kernel@collabora.com, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dafna,

On Thu, Jul 25, 2019 at 10:56 AM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> From: Gary Bisson <gary.bisson@boundarydevices.com>
>
> i.MX 8Quad is a quad (4x) Cortex-A53 processor with powerful
> graphic and multimedia features.
> This patch adds Nitrogen8M board support.
>
> Signed-off-by: Gary Bisson <gary.bisson@boundarydevices.com>
> Signed-off-by: Troy Kisky <troy.kisky@boundarydevices.com>
> [Dafna: porting vendor's code to mainline]
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 7294ac36f4c0..728c41ef83bb 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -227,6 +227,12 @@ properties:
>                - fsl,imx8qxp-mek           # i.MX8QXP MEK Board
>            - const: fsl,imx8qxp
>
> +      - description: i.MX8MQ based Boards

This line is already present in latest code as we already have some
i.MX8MQ boards listed.

Please rebase it against linux-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
