Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442D4CE239
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWeZjsqkJxEXPrVyn/QggtiUEmwVhCi554SX09xbSMM=; b=ufEW7OtfFgwvt4
	BQrEYuc1sblj7gEDsGVObssMrh1RcDPyzG50d3FQ0HFgCVnUAgcUg/jL6Xwg4CP0qi6y43A6n1z6r
	oHZNx4Pw83yJqPeab2Ccr7SdYVvwjIvZJhBojgI8+j41xR/iNepOr56xhWiGoPca8tSgLFfhwxTUQ
	gRZj982O3qOL6W5UsnTAsCAuOSbh0NPmHDHPizvzmh7nQ3ylfBnatZlURYqyg7inL9AwhGfDAUlTl
	PTQkN+aqKt1itvA8Ylv3nHrf1ZYoNMgGQGNMkbdhYvuZ7A9hdgevvWMXasQTWqAy3XJ2Dn+w9w//V
	8B2tw5lOTDIF8flyDSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSUb-0007gl-Ny; Mon, 07 Oct 2019 12:52:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSUU-0007fm-0H
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:51:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id 7so13507489ljw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 05:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q/stoexCazI9iuKLi8P8TUDyz6V2X8FtpeQI0qpKw/o=;
 b=YpSrJL93JFq5m0zDCpcoJisSR/M6+Dtbd66ZPS0jlGnfOQLbedc0qAN9KDvsv4nBWH
 PsaKYEvHVmUbtuPQBW1goArE0sfGTp3GnQE9mU9ogLtejBB65ln4iB7+p7kGUxN90hPD
 niKyPC/99OQjEgts3idB1sIcd6G1HC7PIyPi4FlFpFFpoSbc5pdiywNlB2P5LF6rp+WN
 LWoXrFqDn+HUtmyMPivBGRg4p8FiJ7WoPetvmzZvVO52gFAdiKTxuoKyB6GEqI+mWSME
 IrphxicraJ03ahzIx/21w2VJhBIdd/VK6VbvO7ahsCdTyt2zs6vZW38Gng5cFS5JHsLe
 DHFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q/stoexCazI9iuKLi8P8TUDyz6V2X8FtpeQI0qpKw/o=;
 b=TxI8KgzV2446WfMQhN2qHkjwLaZwLAX9ZgbhCYB6kj84n2+9o0X+CMX+a1mjvqQOfL
 LKX0/CdvBVG7tP9NLrITlWXDQgxlQnGX7rPupPUL/WXiHfr6GYgL4wofgPQU7DBbmCCO
 jIw5GeODtPhjWM4W4E67OBtrTu6cnCl1LOJ1dMa98JOpQ+RtYbJwWKJ34Hacc3iZVj9R
 gxjOz5q+rM2/Hfl263CPSV1LPD8dO+gL9i3FBtz4mpXaro/mXuKeAvGfLuay8al1M9yx
 fMG242qk+dPJSIl2XrekQbAXtBaUO66vYjxJPyjeQ7U8jmj41/fIbWpRVm6JGtH7glLL
 dF9g==
X-Gm-Message-State: APjAAAUVG2u17Ro1KCUpla8KIMTDxsM6L6gvZfxKiIzfDf4d4Oa03vhm
 LwOlcnPaSZwF/tz5ozSEN+WSPcJEKKr9XHQau+Q=
X-Google-Smtp-Source: APXvYqzbIbzkdfmu0ZUuar7rTOgEP3mq4mYriuqCQEIx8rPeiuTn1IxwDyPOAxs6IhW57nHwifO8yPd/MQDSRrWaX3Y=
X-Received: by 2002:a2e:6a0f:: with SMTP id f15mr7917754ljc.17.1570452708750; 
 Mon, 07 Oct 2019 05:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191007124607.20618-1-igor.opaniuk@gmail.com>
 <20191007124607.20618-3-igor.opaniuk@gmail.com>
In-Reply-To: <20191007124607.20618-3-igor.opaniuk@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 7 Oct 2019 09:52:14 -0300
Message-ID: <CAOMZO5B-XWxiu3iqc85UZT0c5WTHBx9on8x1Za_dS7Gj7h1K2w@mail.gmail.com>
Subject: Re: [RFC PATCH v1 3/3] usb: phy: mxs: optimize disconnect line
 condition
To: Igor Opaniuk <igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_055154_068717_BC9364DD 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, USB list <linux-usb@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor,

On Mon, Oct 7, 2019 at 9:47 AM Igor Opaniuk <igor.opaniuk@gmail.com> wrote:
>
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
>
> We only have below cases to disconnect line when suspend:
> 1. Device mode without connection to any host/charger(no vbus).
> 2. Device mode connect to a charger, usb suspend when
> system is entering suspend.
>
> This patch can fix cases, when usb phy wrongly does disconnect
> line in case usb host enters suspend but vbus is off.
>
> Signed-off-by: Li Jun <jun.li@nxp.com>
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Who is the original author of this patch, is it you or Li Jun?

If it is Li Jun, then his name should appear in the From field.

Also, it seems a Fixes tag is needed here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
