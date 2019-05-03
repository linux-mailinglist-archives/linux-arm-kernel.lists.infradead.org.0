Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EA1131F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0oBM/9lKORjhcATb3Y71qeQT6SDDk6qo5iLjzVfOGk=; b=keDwP2M6u6wTKU
	pCU0NSu83fxv7ZAbKHBg9rj8td3QR8xPO7xAnhRzmjfPR5lyiWfD1lAOfLcqdmb0AGcWwbjPECRsI
	UHWlN5ciz1ELB8V9YSC35mPlYgHvTIZgmxq3ftViPLfkBIIhQlx4vwaurI8hwe4zsqyfkYFKW1fDi
	qM1TIlCOAYKG4/+SvwOrdqqgHv5jTCB/mHViSHdum3o9KN7n1EXHQuJqy2QAXr82+pDT5NBxijrvl
	IeUKWTnxQ7OsFVVK3z6IjaI+BWyCo9sBzdtP0rhRVz6iDvZQKw22YFGHufi2cR6juM/InjosGtgd+
	6J2k39hle6axr8w+ap5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMary-0006we-U0; Fri, 03 May 2019 16:17:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMars-0006wB-TW
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:17:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id e18so5709804lja.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z7GYjh2tyXN9uKd0zZpckSjoSwR4JKq679+SCFT8pMQ=;
 b=ND+GQR91chcdgS/QDtKYRsO0HNX9NqEP8IUypHqRQT6Z/Z6Q1zsrns/JeGlVV5sxj9
 GGHbA5Dc0QX7qMH6wYlAvPF/BPxsIxvWO86UjLGWWNycp5JvoG+agBqNXpMamx2cZV7p
 9NmKdoBXIMMxBt45l72HdJFeJwsxLkOjmyPvYfZZRAlZNxIZ4XRZvgwjT9DbRW95cyUx
 zNsRTk1B7sicfz7xLsp7Ju//PeKElWTrrexaBXBI+/ofn4dQO+Rm1qaEzxXsedodkhYM
 Z51p4Li7KUR1uu7YVMzTqxv/gsOXtP3Rq3z9JE1NjhbGkrXXe3NZPYBCVFvP1elKlXG5
 gsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z7GYjh2tyXN9uKd0zZpckSjoSwR4JKq679+SCFT8pMQ=;
 b=fLRnS7WGExCfX2sY6yHfpZVnKhexklyVEytY5DCiEj54qwqJSzFlJh21Ha+sWpqJY7
 5L2SxewgcQuduHjsEOaDiGr/F63EtSRQb81WZ4iRg+6D19wTXST8FaXUfbdQwGKwujHk
 dyn2heV5ZcYpUFU2jfKR1Z53gCfC0SFYh1odjJduhyjDBV2G+wk32i1+UAfDAeSH1b2I
 gWUVzupewIgbhHEnwiKqvfUpClBVJAC2Sm54kWy+/ZWdoYQB+K5YfZxXs/K9SNlkGv2U
 TJqxPHzpcyWsHYy+S59jeYstz2iw8cyYZgvHeIe5pBRxbElScoe78gtDPP6SKBQWWpDD
 CsMQ==
X-Gm-Message-State: APjAAAVXyOr9EH9A24DFoRy5+ggpwQcQOyzu9RER0jtDqDMZGLxWsMWU
 szhJRA4EKl6c6fxI3CUbnz8pJ5S6PTOL91eDqthMzXsVVhc=
X-Google-Smtp-Source: APXvYqxXHTS19Gw4sE6Wdf1PkqowL15StIpiAnMivXNhgXN0mh1aa1hcXYw1OYltP+I/0gnM3wNcxm3+R87LUscFZf4=
X-Received: by 2002:a2e:9188:: with SMTP id f8mr2825703ljg.100.1556900217718; 
 Fri, 03 May 2019 09:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190503155235.6414-1-marex@denx.de>
 <20190503155235.6414-2-marex@denx.de>
In-Reply-To: <20190503155235.6414-2-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 3 May 2019 13:16:56 -0300
Message-ID: <CAOMZO5CSMba5kj_xVg=oFBEpFOAktgPJECYxqDK_ggNfercJcw@mail.gmail.com>
Subject: Re: [PATCH 2/8] ARM: dts: imx53: Update USB configuration on M53Menlo
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_091700_977710_E5056286 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Fri, May 3, 2019 at 12:52 PM Marek Vasut <marex@denx.de> wrote:

> diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
> index 62bc6a95a477..46f990759660 100644
> --- a/arch/arm/boot/dts/imx53-m53menlo.dts
> +++ b/arch/arm/boot/dts/imx53-m53menlo.dts
> @@ -50,7 +50,7 @@
>                 regulator-name = "vbus";
>                 regulator-min-microvolt = <5000000>;
>                 regulator-max-microvolt = <5000000>;
> -               gpio = <&gpio1 2 GPIO_ACTIVE_LOW>;
> +               gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;

If this GPIO controlled regulator is changed to active high, then it
needs the 'enable-active-high' property.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
