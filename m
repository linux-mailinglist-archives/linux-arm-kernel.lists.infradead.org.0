Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EFB526E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVB1LDVKnYamDxE5fFIImQnrLALLQ4mIGXu5kG9tC/Q=; b=RjmqnwKhV6UlW5
	sAZBMMYxn0USS0n5R1b0CNld1WzJKF+xuK3kWjh0xOD2hfvoTpurlqW4Wp8KjyJEzAWGoJCk1lmOo
	9imBlX8zgIIBlRD0HScEOa/t0/UyA5Uf4chucC+eCTiNa9FG6PYkQTs3viCH0N9dqUPAqeyGo/LNA
	4jNN9DncCAr5chRBt7IpoDymWS3/i1nkauv97rSSYMNLKe7ptLj++rmOkg6f9nCvNkWMqf0eKA15X
	mVPltnImBW9X16LmPjSSeuOr2RS4HVWUh/usk1y8TqNEJSwxZEBGXZFv0oF8v3wMHXVROrLT4j4QP
	u+7LZGup7QqRyf2jtJOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfh0y-0002g2-Tg; Tue, 25 Jun 2019 08:41:20 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfh0g-0002fE-7B
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:41:03 +0000
Received: by mail-lf1-x142.google.com with SMTP id y198so12038107lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 01:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F+Ki1qmJ5eAYa7yLUWjWU9Nv/mbLfvJhA0V0d9PA+8E=;
 b=rAWNyHEHEaCNvRsh5wPaYUtzUB3cAGDkLwRIzl40TysW8RkU/swQ8kySGKpi4sOKQs
 fIeen3XxnFkLEPa9x5VOmp8OwFyw83x+UbkI8uu3851gKMJ1VO7vqI3QsJWqQGycq/fV
 nEpHLD++m1/6YY/q9kM/lHDlrC1JPUN8y6O5ZApXnQR/nxJ43G03XHOIWCQuPs/qQoy3
 /xEWHx4f8xym92jqMChrXqmRXm4eYeCWUwhgAX/ou/HFqAUzfU89mErWSzTCvgZVW0tE
 Ri/gd8Al0RGUTtJvMCVx9TeC8T/9Dq6vEI82wVBarh95pdf0g/VRS9yUBmUr6VhKn2ZF
 OUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F+Ki1qmJ5eAYa7yLUWjWU9Nv/mbLfvJhA0V0d9PA+8E=;
 b=gSECqZJcMLFv7dUJICijWEChifk32pVsOIs8yHUFu8CWr/LvxIhnOMwrrs1QNSiWGk
 XNDJ0nPmXojRTy4JeCDUaoSid31E6ofLm+0nqgtf4PcEINpCd48pKfQF6Akb0jKyY3Qm
 2B7+Aae27eBxiyHx+0ZZVzvj9OdxC4RfX85i5WHNmYSaKT2oDM6DqE6KjPsmIaZSmRVX
 u63FDKdUn6061rqGC4LlJgTHJOSIH2SyEX+C7QvN+MR+rD0YEyo2IT3cvURh5fn+1FQ/
 Gr9UYMH5r557NGsVn4GEgMnoeSLBQypLurJMPRAhk/yKefTFxp6MOyonC8DpCKVXAeY9
 gwfA==
X-Gm-Message-State: APjAAAX0ly9XAucOt5XbYxa8eAy+5eTELPoCeGyj+a/WMC6cvp3swCeG
 GbN424pLuK9XI6uJTDlSOKzR63BR/X98QrAlEl4+kw==
X-Google-Smtp-Source: APXvYqz77Z3Mlo0zQC0urLqRnamltUCd0egBwhvs7M18tlhawrJdORa2pZ6fQz9y4Utqsjds40jeglQU0O0j2VJGOwo=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr51472630lfg.152.1561452060873; 
 Tue, 25 Jun 2019 01:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190611122535.23583-1-Anson.Huang@nxp.com>
 <20190611122535.23583-2-Anson.Huang@nxp.com>
In-Reply-To: <20190611122535.23583-2-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 10:40:49 +0200
Message-ID: <CACRpkdZhaAxP1rYdXx88zd=13Z_OZU8Ze_+zQegywkTp7N+QtA@mail.gmail.com>
Subject: Re: [PATCH V2 2/3] pinctrl: freescale: Add i.MX8MN pinctrl driver
 support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_014102_261954_1ABA02FA 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Stefan Agner <stefan@agner.ch>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Olof Johansson <olof@lixom.net>, Jagan Teki <jagan@amarulasolutions.com>,
 NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms+renesas@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 2:24 PM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add the pinctrl driver support for i.MX8MN.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> Changes since V1:
>         - Fix some nitpicks like sorting the change in alphabet order
>           and improve the headfile included.

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
