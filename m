Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2E21741D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:13:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GmiyzfmmCCNWXBRPYJEgrbecet0Gy/Z5Q53umjkO98=; b=UM666OU01VnpV8
	Jkk+dmD6+9887QCKQgTP/4O5kBvrsRdYlGTsBKpTLShO4x8Sgph1QbqCtr+rVEJPGjfIHV6RlMwD0
	iQT35DFlpGtNlGDdahCwJczJODWGFDTYgRjmoVpvPt8V/0PylkceeU+4jgswfGAysh6ZZKV4tzarh
	JM7PuT9mn6DaLBdpV/IbUTzF1P2kBAE55BCZu8FIfwDo2v8Fxkyihvn04Hb6cEM86olo/+ZCk73mJ
	bidabhm66tIL147+0MLK6cv7qJByUBib5FH+r0ZGp2TCzBqYH/Tvna0T/t0X4aIPxloBxsr9CuPl1
	rfFPpUfM5gczcv74i9lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7nsr-0001gn-D2; Fri, 28 Feb 2020 22:13:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7nsi-0001gF-5F
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:13:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id b15so3245471lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ns84jhjwh80AF+NgTsU5G8wYY3x4+c5K/NhAZhbbc6Q=;
 b=UGTTPcGEoBQyMt2ffSmRLLgjAyPIUt+r0iIa8o1P49YLGdoYVKEbB6QakZAN00mAhm
 zy9v/0hSmLVI9UU5NBqAMSlsMEbwzjXJUYrFOUUGuxdKU48PBR44wBrg3ACsxrb/zaWM
 Or4tdMTMz2yn0WZyUSohIWbPxmV6UCTiz32JYGddmb92FTjXa/6SjWPkUvU+rdOtCmfO
 xQ2M/T2sSSDc2DNlZwW4KMcPv9JPGtOTigyxCycxvrdmkRaiIjVU8c1ZwVNZ6OvQgbcv
 EhDIU4HLC/IeZT9Q78lwgZ26eC8OIKVeUBXJL6rcX9IfF0d5WMo1ny5So2z7fU+ebfXj
 wg5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ns84jhjwh80AF+NgTsU5G8wYY3x4+c5K/NhAZhbbc6Q=;
 b=Y4V+ys3Wa8FathhcPswKTv/4SOXpD6iTNMMnsAySN14RsdbM9sBQfwW1V2CT4keWzH
 Ut2omS4iCCs1GEmIwWfNgxSGa9BYqQ5siUi7ADJYuvNfb0wOtBkSjMUXw2fHkszOXviW
 VwfeIs5Oh/1f6V1CCQOu1GaTSJ7pucPzvab9XIKyt5ZImULMvdOS2beyA2uHPgrf7Bdt
 R3MML5ZfDqbDfzjf4xCnkmIx2DFJSatYxci0JiQukHzxKb2/vlQ3Jjg1TP4hdUPoqVCz
 ceZEr+U61eZMU8RDGsY99n5vPcl9M7x2qUOFYRveZbQRKzQEdhGtx4lxHVHiL0zwfBx4
 +YUg==
X-Gm-Message-State: ANhLgQ1NEkadvgYvYwWkTWuovkQlQKYB+aeW1JOsVSy/1sD6188ufUaU
 HXlIARsqM+iIjpQvBTZ4+YFq7tCaACWcUdkcBB3uhA==
X-Google-Smtp-Source: ADFU+vscaxQrz5bVMwzo9WHGRN+dd76KhhzlssRfrguQv31+o1oklXkSerfl7hQ6ykL3RwS+CWHsiJVG6jWWAoyAsOA=
X-Received: by 2002:ac2:44a5:: with SMTP id c5mr3541720lfm.4.1582927994221;
 Fri, 28 Feb 2020 14:13:14 -0800 (PST)
MIME-Version: 1.0
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
 <20200221021002.18795-3-yamada.masahiro@socionext.com>
In-Reply-To: <20200221021002.18795-3-yamada.masahiro@socionext.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Feb 2020 23:13:03 +0100
Message-ID: <CACRpkdbrowXC-Awy_N1gq+LxuEMhgLNf81cCZ=bwZwFdJXLWDA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bingings: pinctrl: Convert UniPhier pin controller
 to json-schema
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_141316_259287_4ACFC5BC 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 3:10 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:

> Convert the UniPhier pin controller binding to DT schema format.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Nice!

> In the original .txt file, there is a description:
> The UniPhier pinctrl should be a subnode of a "syscon" compatible node
>
> I did not figure out how to represent (or check) it in dt-schema.
> I just moved it to a comment line in 'examples'.
> If there is a better way, please let me know.

There is no way to do that AFAICT, we are checking nodes from
one node and downwards, never upwards. The syscon needs to
have its own binding file: if it has another specific compatible
such as compatible = "foo", "syscon"; then for the DT bindings
for foo, make sure to add this subnode as optional/compulsory
if you want to tie up the whole thing.

> -Required properties:
> -- compatible: should be one of the following:
> -    "socionext,uniphier-ld4-pinctrl"  - for LD4 SoC
> -    "socionext,uniphier-pro4-pinctrl" - for Pro4 SoC
> -    "socionext,uniphier-sld8-pinctrl" - for sLD8 SoC
> -    "socionext,uniphier-pro5-pinctrl" - for Pro5 SoC
> -    "socionext,uniphier-pxs2-pinctrl" - for PXs2 SoC
> -    "socionext,uniphier-ld6b-pinctrl" - for LD6b SoC
> -    "socionext,uniphier-ld11-pinctrl" - for LD11 SoC
> -    "socionext,uniphier-ld20-pinctrl" - for LD20 SoC
> -    "socionext,uniphier-pxs3-pinctrl" - for PXs3 SoC

But:

> +    soc-glue@5f800000 {
> +        compatible = "socionext,uniphier-pro4-soc-glue", "simple-mfd", "syscon";
> +        reg = <0x5f800000 0x2000>;
> +
> +        pinctrl: pinctrl {
> +            compatible = "socionext,uniphier-pro4-pinctrl";
> +        };
> +    };

It looks like you want to check also for "simple-mfd" and "syscon"
following after the enum (two consts)

It seems you want to check that reg is there.

It seems the subnode pinctrl is also compulsory.

All of this have examples in example-schema.yaml IIRC.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
