Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673451053F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBWtlymi0JTzYha6kpB0EZZDcjnmwnPmD9IrHGIISew=; b=E1cb68PkSDQvcz
	n1gRc6uh0H/zEpIHg6zQQwYbf1PeH41HebuUJlxJMNVJ+CaCFhomD9b03Km2P6t6oQj1JrU5qCApP
	kPvg5JNzPcalNOfui7Dx//T8pdRlg5mtNc+lkP2T2nP2dGd6IKeGwX42Swil99QsZnXr+Vjv6EsKO
	YcR9rtoExaptf4B1f4ObJCTfLNz7F+xsMy3smpV9w07wUwfs68PnpA2/sy6GuAEkaAa62Wk/v0YKN
	yJwdIQraSYI2366rcmHk6qry4QsYIpYSuvJ3Mz4Z1s5q3tLKBirfmtOmVQ7Z7to8EG2c9y0yfyqqU
	jH8BEEMiLhiORse0hoQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXn7A-0006qh-MV; Thu, 21 Nov 2019 14:07:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXn73-0006qE-Gy
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:07:14 +0000
Received: by mail-lf1-x143.google.com with SMTP id y19so2732139lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 06:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yR25p077sY7XsyzIresfvdGtP0NxdR3Phye7bNz8IVg=;
 b=CZiWmy0lOMSUMBEQdMx/dvvcTVUjQGVBpXZnRc5cLrC8Lf17LWwPQF5Ue+KBC2ZTlc
 lvcS6VGR90NTZiSpEGqtGHSWTCLg3HmrBLdf9GnUJFMj0TqHaMmchIbXjE1Q5E433UoV
 6rb2NkCG8Tlfy7Yt3mK9qzGuvUCeouGYHj+GNiA1pg2ex7KkaonvntMMb9fb9CRb9izC
 YrNQ3xr4hXKDmMmtH90fs84Vayv6fmfCJ+//aDIo/Pc+dqwm16pW7arYu5hPHASTWnGl
 vDChdWc9A5DqBuR067SuXgY0OIgK4mwwq3R80N4EBorhGyOguLd5G7Km3cuykdCNwlO3
 RG0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yR25p077sY7XsyzIresfvdGtP0NxdR3Phye7bNz8IVg=;
 b=lUVOssPGGxE50L6gBsJA/NX89oipje4w4vboB4RVSALyOOiYrT5fmtqBoktzJklLdU
 IMzH7lrIdgf10jg1Yajvi3smbDevvPMqJ7pEzSwE8JKeVy3FdJk1YUE8kh6Zt6KVF44c
 z4gCsfl42hu6SqbnNy3ItqwrhD0rsih4rU+hNxOIqxxdhburdtGEK34E/gqreJIlO/TL
 rK8K8CiQoxOpwiOFvZB2rrM96C7KygEquAYXm8k4qm+50OJANZ9RMKlzABLoTHLIp1h6
 8ub1lb0flUHOcZ3mYG3Wpco7OOM0pKDDB5XOx5biMW2SiNjkGHb5YGRg8/eBSeFk4AeO
 BBAw==
X-Gm-Message-State: APjAAAVBMYGynlkRz0Y+aclvUQPN789dFEQbmkShPJP7ipn9HsHL8dNb
 UkZbrIKD6TR3aifZmnJchh6Z2lRxgvOI/Kunmk/vdg==
X-Google-Smtp-Source: APXvYqx7y+O12Uu5ojAu8QNAvcacX/eJU7YDlJdyJO7nQwQjAJB69Xsu//F9QRhLjLh47IajvAAakFeD7WqmHGemTs4=
X-Received: by 2002:a19:7d02:: with SMTP id y2mr7406713lfc.86.1574345231034;
 Thu, 21 Nov 2019 06:07:11 -0800 (PST)
MIME-Version: 1.0
References: <1574306382-32516-1-git-send-email-krzk@kernel.org>
In-Reply-To: <1574306382-32516-1-git-send-email-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Nov 2019 15:06:58 +0100
Message-ID: <CACRpkdaQCsSdZQrBkTQ_B-kz2jngkFoEgdYHW3uoPRwo=GcR7A@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: Fix Kconfig indentation
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_060713_580881_33039358 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, Fabio Estevam <festevam@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 MSM <linux-arm-msm@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 4:19 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
>         $ sed -e 's/^        /\t/' -i */Kconfig
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v1:
> 1. Fix also 7-space and tab+1 space indentation issues.

Patch applied, why not.

If it causes severe merge conflicts with other trees (I don't
know at this point) then I might have to take it out again,
so keep fingers crossed.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
