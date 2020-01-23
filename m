Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069A1146BB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbZI8u1JUGlixwaCiN/qRcp4jgS6DNf/n9Qa6J/5RCQ=; b=BQ+xQt7+35Kv3Q
	B3dNhMHuvX2yhyHywgbguTx+sa314hExHIBYDib4wwDuc/6slpoZnen9KsHDBNjwERkBdtjAsB74u
	814FJxq1nTc/AwCyJFMrB33Zo1TMw87YMUeWo4SeI71An6RMwVmQh6NwV3bvu5XbTFBS+HgK5kxdk
	NYFQVv7keHkcFc0YMYTrqLpPlfjZQ3ZTM5v0BxpGMDcX74WbIeZ1TwnmfISFc87JwRSlTEn9Z1ktG
	xj9YlzWDwBAkPRi9+b5wNjTZcUDhQYF8zIRelLHbl6SFJf8I9tyD1/pYJkQ1CW0kOm81Wbe5dpBL7
	s2cMAUszfHF3JzA/GpVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudnR-00085A-SH; Thu, 23 Jan 2020 14:49:25 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudnC-00084f-7t
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:49:11 +0000
Received: by mail-lf1-x141.google.com with SMTP id f24so2503372lfh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 06:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BPPW9IU+ruAV1uOimTrGBs92WdNG36xmqhTz53FGFdY=;
 b=mrGCJles1c7f58DkPrSG6gSnjtp08QKxaeou5MDQFp9ZwRSjQ2cb36mHC/aMna475B
 a5JV6HMjF9u/6McqYd2t4tJqDpogKUq4BEwcERUaDcCQISLlkwKBK80W/XNvST7IK/mV
 bsYZJLqBEQVGDCva4J5hT3OYJqSkEJsTeqvGrja/0WYmmQ4z2spTq3/SdOc0wJtA761p
 UB+pYRTSmONEJoMt1rCoPqindyXeSYUUIhG6l8yvhvVK5oD7h4fF7RUXiMyJn6AS7D3p
 DNxkQthVpAqnV3SfxeQiT3Zl5r6NoTSyoyLdic80YG0GOOTUUiOv6Cp+b5CBp0SoUqTA
 bK0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BPPW9IU+ruAV1uOimTrGBs92WdNG36xmqhTz53FGFdY=;
 b=jG9JhUwPNXUG+1uAOcT93Y3ES/fsOO7Oap3eq8Pi7lZBDo4wmYH8UoPEadynZJ4qaI
 iSSwY1Om86GH6QoZotPB9iZAEThgs+GqYztj/d8+mJSEbI/RY2CJAJTIc1EqBxQoWwXn
 GehbXFe4KBbzHK4FPB/zqRLKPdZIia4ndMm4nmYsvnFb6nziNrsfvk++NZbdfi4J/fUO
 7+5YWXDSyZy4ytj+mmlSZTuHoK/5DaWozoNYVE6GjgVjqPD+Jiw/srkEJTgPisg2QnES
 qoAZkxjEhg3h5IMrgURNZmYym/3sydNw6G2n7I8X0gATA6UghizcjrbbQh8Zw7fEZt91
 OYeQ==
X-Gm-Message-State: APjAAAUNG/dUUDB4gmSx/fPAYRuEnvj9cAb26U1MHsQEa5U/VO+fyrMo
 uxuG2J5LgvT1OxRGUIHccryWsa0Kxd+LGQnILiZZgnDqCiM=
X-Google-Smtp-Source: APXvYqwviesfBDZBeKob892qIy6qBAac09CjXqBfPvQ19xi38mTIEOFcWe9pDLJSINtpV6mS8x6bctvvmZYw+cMcqCs=
X-Received: by 2002:ac2:4909:: with SMTP id n9mr4796395lfi.21.1579790948052;
 Thu, 23 Jan 2020 06:49:08 -0800 (PST)
MIME-Version: 1.0
References: <1579052348-32167-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1579052348-32167-1-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 Jan 2020 15:48:57 +0100
Message-ID: <CACRpkdaX9amSA88=L7VSF9VDKxD_ed1gN4whJ3FriUwW1EB7jw@mail.gmail.com>
Subject: Re: [PATCH V9 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MP
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_064910_322716_404D5EE6 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, maxime@cerno.tech,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 2:43 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> Add binding doc for i.MX8MP pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes since V8:
>         - the lisence should be GPL-2.0

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
