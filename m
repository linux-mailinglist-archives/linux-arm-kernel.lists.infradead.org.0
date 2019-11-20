Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496F71045C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 22:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3LFOi04SkEjy209B7APUS/z95ZCVc0oeRsknPTUQIQ=; b=Ic1EJMmvAn+eFB
	9rJV3Spi9nCI2vXzEXdkx5BV/7lL2yRPUSuaMeE72OKm02QJiEbyFJ2RfvLQwXVXLeXNX+iMqUGOP
	Dk3SJ4bNGASF8Zq7DJc79Cb8/guP+snWI7k3r6K9EnFH1g9zvJDV7OZlH/M0qqIBJG3DlcoRSIcHw
	VwPYzcuovJ6bvMUwGA8u9W4Dfo3u3MC4CkKj9V0YIuwHGCvZsew10AJSoJewQB7xvhJ8F8irQgXTt
	CC+DzrkknSPqGS1TeecDPcQGpGzZiux5skqCks4uNrc6+Yt1/IKrePJtwzDDdTYyjBsomjoRsEh5v
	Mdc5N5InLw3rEbv12Jpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXW1-0008QL-7q; Wed, 20 Nov 2019 21:27:57 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXVr-0008PH-U9
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 21:27:49 +0000
Received: by mail-lf1-x144.google.com with SMTP id f18so746273lfj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 13:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4qp3wqZnERgahc4/j3UaMttRmXNfWZ10Hcph0ci1u6c=;
 b=rRXRNY80I7ALa2kx4T0RfT2uUiBApG1viLOC7JlZkW+L2kbTqOZlkMLS/hXurbMo6v
 4Iq8ZjTZ3hdLRjgscqK51Kc2sfiXwxMCaFHYscC0W9hOTmMgFx/Hvly1Xfu1HzQ+KELz
 ahnkfzzy/wIF3SdKBefmsseYzwJSyqDtQQHd5mBVKXxdHu/ZMh/E1QAlP9LzBOo9DWYg
 LUd0mOTZoC2xyoypO/dOhPaMeDjGGy8jrYTETUbJA+LRu2RB/1k9g4GuF1LT2LOL0YbK
 eE5n4Jf9/0dw1/3QTwZ0JYmQf4dTdbF7MxzcQpCycB0hGfMVzpyNl5eLU5ORa0DpNs7i
 ZXuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4qp3wqZnERgahc4/j3UaMttRmXNfWZ10Hcph0ci1u6c=;
 b=eSNLjyNQRW7Fzq2auFh8pl6A5iiwBpufiFQJwndvgj6NnRCjWrs2QI14PumFzuNUz2
 7xbzNFQ6FE/2Oz8JCavedoTGovrZ5MoIeM7axNQXLJ/jPSgkCwLIyY2oZ3csrBk/6OnD
 3PIcQikznAvoR0O7xgLgL+VE8ay+5aJjKJDxY4KdyJTNXum1aOUBCsKbxS2oIrhTr7c7
 TZ64myWSBu1RtClSpkM2OLClZ6npKgKtyqQLYwj0HlPi5LBCfZeqrYe8ClePfFomKVbN
 91mtZzzYIicc0z6I2fnyBdBtHSXoUN8go0Cn/qvxUxDfOG3Af5UwM0gLAz+/GcZMswBZ
 1D5Q==
X-Gm-Message-State: APjAAAWcpBhifvc97bN8ANfub3QdpZsw5qz3QiCOSa3kzogLqnDwJF3b
 mU2qDIIJbStjlCrmqA8bN2PRi0cQaejeyb41W+Oveg==
X-Google-Smtp-Source: APXvYqw1Mw2ql/sLIwwEbm33HOuERPGZBkNXPALJtaLRCm7RMoBF0wq9ZUM/gNNZJvvK54NtyY9exRM/sabQ9R8NhaU=
X-Received: by 2002:a19:c143:: with SMTP id r64mr4656279lff.90.1574285265239; 
 Wed, 20 Nov 2019 13:27:45 -0800 (PST)
MIME-Version: 1.0
References: <20191120082955.3ovsoziurntmv7by@pengutronix.de>
 <20191120211334.5580-1-m.grzeschik@pengutronix.de>
 <20191120211334.5580-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20191120211334.5580-2-m.grzeschik@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 20 Nov 2019 18:27:45 -0300
Message-ID: <CAOMZO5A9dhEBF-uC39nbg6E2hcd5LukNXK2V7TmPrfAbWJOCCw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] ARM: dts: imx25: consolidate properties of
 usbhost1 in dtsi file
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_132747_972359_BD6F99CF 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 6:14 PM Michael Grzeschik
<m.grzeschik@pengutronix.de> wrote:
>
> The usb port represented by &usbhost1 uses an USB phy internal to the
> SoC. We add the phy_type to the base dtsi so the board dts only have to
> overwrite it if they use a different configuration. While at it we also
> pin the usbhost port to host mode.
>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
