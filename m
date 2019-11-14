Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBB3FC6A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhwmCvowuBWQHEYSde/EmozZgp4lvEeKqVmlZ30V7/Y=; b=gIXcUvUx9yMKVb
	DoI05xOa7SRTqSHoH1AKi7/N8cVz36I2aZN+cIzY0tmyETGCZsmK/l7xwUFEDnNsrUq0JpnMpOPRt
	jKjRHP7BeYQOffHQsbdS3+/+zAeWZMoGxQ5/p9BNy8gRv5YXZBflLYyTwjIu0ukx/Zvc80VVPLcpl
	gvMcvEjvWdVprJIiGTyjwz59GPlN0MgiSQh6qZVc9MRymg76rWdhjwyIAGXur9I8QYfW0Jdm1QQCJ
	yA5fpgYTWCB6weAM/46XuHir9RkCMqSsJALuNiwlwtHq57HyBqy5tODRuucq0zjgknV4WYVXB8Ng6
	6VDDr6YRcdtJseqHps8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVEdX-0001qn-My; Thu, 14 Nov 2019 12:54:11 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEdN-0001pq-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:54:03 +0000
Received: by mail-vk1-xa43.google.com with SMTP id b64so963012vkg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 04:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j7kaYv+E/e8ORn2Gy+9BvMNe/wGdZZ8Ltu87P0bR2PM=;
 b=jmdHDXBhhLyio2z3d9cvr0uOQLVHLSVGA2z0qYJ0zIbiAo2MFl8MKHWVLkO6Q1QBjI
 nEgVba6NRuH2arLCk89WtqyD60ns5PQ/ABDOj29hb9Ldw3HqqjxABeeBov79x0lCy3A3
 1dKSzwQ+rrK15q38Y4AZJkv1wJeEQQE/wyh055dPZMKFzbRoQEQqjSOOXd4jR6kS1ZVb
 WrwOQFRQDHK1xcO6unINH3oMoi8ffSUFg4rvPzydLnGNliXQw3cUglJv22pXKzItg+hp
 KhRV8uCAZVvYZNpVo6wgwcLJ8QMOvFZ967e8VrI1A7x3UCYcCbA9hboWp+nvxDWRF4UR
 FnKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j7kaYv+E/e8ORn2Gy+9BvMNe/wGdZZ8Ltu87P0bR2PM=;
 b=quWPea0bufZohGtGZZIk5tmm5X4U8HyMTI8FKVfojCZNv8R0IqR0uOsvhImBVKQnQU
 F0xjxRUKWgnYLcqnO7ubHwLRmnIPNBrZJy3y3o7wdsxXaQl8Qzawe7SaztQose6gA5rX
 YS4vkKU2bRYgHPY92hImTA5xTlkLO7mQOFbc7Ff+ebr/04lor2OFTaXPMnUEHx2JDLrN
 bwZ1yqOz3HIEmpGOlfYeu1ur90F5/3Hnizv0WlSm2clLQS81YT17JXUgO4bFGl57YcFY
 en93Quw+/AJ0mlVOOTny8texReIpGPa65YxTzfamubcHiVf/OudgLUWTxI7bWorFHyhy
 OUtw==
X-Gm-Message-State: APjAAAWNTFoU51VfersDFFpkdMahL5D+5W+vf7avsQvs8z2SDk8OiD3s
 HXlV5Ahb7dy0ZZmjlj3kBTkhRFiGcSKeHmfwhaCpTw==
X-Google-Smtp-Source: APXvYqyqmcQFAkEm9m1Jnd6vFouVrLC+OhhaXGWaFFzu1LdB9oTyBPhsXXff0IBdvNsBO1U1ZdQHtW10o/YdvuxHcPw=
X-Received: by 2002:a1f:ee0f:: with SMTP id m15mr5092437vkh.43.1573736039900; 
 Thu, 14 Nov 2019 04:53:59 -0800 (PST)
MIME-Version: 1.0
References: <1572949321-8193-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572949321-8193-1-git-send-email-peng.fan@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Nov 2019 13:53:23 +0100
Message-ID: <CAPDyKFoL7oJ+2hvi77N9=1hBKFgCXRUppcte1u=eF4z+Fz8TQw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: add imx8m compatible
 string
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_045401_764729_86A96275 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 Nov 2019 at 11:23, Peng Fan <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Add imx8mq/m/n compatible string
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> V1:
>  imx8mq/m/n.dtsi already use this compatible string,
>  but not listed in binding doc, so add it.
>
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
> index f707b8bee304..2fb466ca2a9d 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
> @@ -18,6 +18,9 @@ Required properties:
>                "fsl,imx6ull-usdhc"
>                "fsl,imx7d-usdhc"
>                "fsl,imx7ulp-usdhc"
> +              "fsl,imx8mq-usdhc"
> +              "fsl,imx8mm-usdhc"
> +              "fsl,imx8mn-usdhc"
>                "fsl,imx8qxp-usdhc"
>
>  Optional properties:
> --
> 2.16.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
