Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED3C8C3A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wime3P9A+ssdBnwZpqMzhLNrkhQ4WeOoiMl3XniFyEo=; b=TXrdNccn8NddxI
	kECjzU6q1hoefgaS/4SbYYqwpVLS3rl0CP4azt4aZ+gUSi6946UId7dtaibbZMqT149GiEwjcrWXl
	K1nv35iOlZY0t0aNlM0EJEFhCNAqhncitXzsDmezliLVe20FTVZsKpHwXL/iIUD4PofLJ8PuOeimq
	PQc6JCIcZZD8k7oSWV0pGORbi/S8kOx0JNWroP3Thg22YZH33U6wVeevimZhVEtoOFQwJkTM9hdwr
	W1OqM2OXDUuX8c+vChOn4FFF/ReC9YffVIB/1JBaAQV/O0RVTUNHGaNOZ9/rSuAO1xkDb+iVu5Kbf
	dL0pg6EvECzeJUz2psRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeJ7-00072m-6h; Tue, 13 Aug 2019 21:26:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeIx-00072J-I2
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:26:08 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1ADCA20665
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565731567;
 bh=GM23DGhyg+mtBCE8YlRJbCakPF/+Hq09zu3D+TE+XK4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VxkNvHzW5zFD9wl7s36dXRTvfAss97andtV1hadpeobFxj5vhBypMZHkF24mLp/1H
 rWBgnA98YgmnYDGLxMU91+UCVUqy2r+pIhrusWyKwIlM6WRraIuKtRs0ILti79Befk
 d4dP2GbwhwL3JXhQK1P1FV5Fjhqq82IW+MmiARak=
Received: by mail-qk1-f171.google.com with SMTP id m2so7083727qki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:26:07 -0700 (PDT)
X-Gm-Message-State: APjAAAWjxn5xRGjOonfP/Un6gYhljJa6L28m5IuF6eIjiKDaR9eBh+0g
 5QSCaig7sNsPNCq5mQc0mmHJCVzWMluS69gpPw==
X-Google-Smtp-Source: APXvYqww0rswwh3lSXwVgzazVtv7axCmSc4uhEaJfwxBqHXdcPCfjRZvDPnHTIKk86sXYyVlAWoAz/lP9mYw9zUw0OU=
X-Received: by 2002:a37:a010:: with SMTP id j16mr35848216qke.152.1565731566318; 
 Tue, 13 Aug 2019 14:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190813124513.31413-1-mripard@kernel.org>
 <20190813124513.31413-2-mripard@kernel.org>
In-Reply-To: <20190813124513.31413-2-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 15:25:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJKw=UaZPzXZu7jCvzeVO7zNcb4mCC-eVmn8DMxsm5cXA@mail.gmail.com>
Message-ID: <CAL_JsqJKw=UaZPzXZu7jCvzeVO7zNcb4mCC-eVmn8DMxsm5cXA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: media: Convert Allwinner A10 IR to a
 schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_142607_619243_FBB4FB7B 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sean Young <sean@mess.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 6:45 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The older Allwinner SoCs have a IR receiver supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../media/allwinner,sun4i-a10-ir.yaml         | 80 +++++++++++++++++++
>  .../devicetree/bindings/media/sunxi-ir.txt    | 35 --------
>  2 files changed, 80 insertions(+), 35 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
>  delete mode 100644 Documentation/devicetree/bindings/media/sunxi-ir.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
