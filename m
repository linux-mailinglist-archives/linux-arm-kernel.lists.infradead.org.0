Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA09CBB934
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGPNklpkj7NS2NMoR9dn6Ebft2DGzDLJFcK9Vg3H7bQ=; b=Os3VnK8ZCOKtcS
	RqbgOmb/S09BkWJ+2lvdvL5IAgbLM5Ui9AEPnNpysxgpB2elUcqPE27eJpE439ClDQ0+eXAjgbMyx
	seFK65Bqiwij8BpgUsx7SK79u9fUqybKG6gydgoVveotJVaUheP8c2ztSd7cEckszvWYZebrd9MLq
	AlfVc631Oep47GL5HyX5QeePRIdgVB3XB6NamDqHCIIZKge+nULMcjl4K4k32xlvBSltMrMreCZhe
	M6mcFVBBSwvmeSZFSrcYknmOJJ5Aw1SQzG9rhYAeczamKZF/OnkGajcZJ7LCMMwKFspKt3fQ0uXDZ
	kNaK99pAWG0EPp2x08Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQxK-0002jn-P8; Mon, 23 Sep 2019 16:12:55 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQx8-0002j0-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:12:43 +0000
Received: by mail-lf1-x141.google.com with SMTP id w6so10576488lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 09:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1hzRvLmUM+ysGZky33iPZSKotjWOEXjXtFvGtAqUHW0=;
 b=KFwU3oIIuCsBoUbTlON6Ye3xOEX1qg4RElY+lAR4eAhlleuHeZRzS418f9YNW5ONPD
 ICDQZc7C6ZDCWoQST5RUU5CWJYkqY39FRY87a7jpH/4vITDuzLQ4VW9AmgKqpcZ2Ps5X
 ZFjiabeek2WH8HUJ9SJy8rBMDxgWNpp19ZRPDcGQg9HPSnjdCDoss6o9O7cCq/MdDPGd
 CC5fjnwswE7vGvevXiqD17ZZrFi3nzMnbCQRruaS40lnGxzLz63kGlBtKyxhrLbtOexp
 JYigpZQtzRw85JGhV+QoAdNI6EBtKLYOfH4do+MqOtTyTH1g1aezJa4lfwc5n570ba3l
 MOWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1hzRvLmUM+ysGZky33iPZSKotjWOEXjXtFvGtAqUHW0=;
 b=ff7dGr6EuMSk4VYG/HF8lr8m0LlKZFNdbubtReBjVpGVV/n021G8JFwyZBz1p7tcoh
 Kd+rq1RgFZ2sSCop3mV/pnuDg1HPRLbevxXOCRgWNAZLXN0dbZXmI6dfDXTsmbrlNjNb
 VU7s+oVYG+t+tzgY/s3stJ54YEt5QsL+959o+ilcLsHgBw6+G6M/LbCTnnGmkCfAZJ4e
 2hPnjFG5NWW7uNkmSbSZo8Qj4z6nHtRgLpjtDZTZvaw+bjmd199RSvHjM0kXWC2yoENw
 vdlIup9iFce72M5ATbYx5Krb20XSNV7coyhLB3h59oFyq9FBG8LsFyzTa5+cv3VUeGzb
 Gbhg==
X-Gm-Message-State: APjAAAXhFsrj9DsPeUuRmJCb5EDvXDIdRzNaMqTkSyMYEu8aw75scMxL
 AU9oIX2s3CPp19sfpE2P0CfQ3QE8l/ct4Ztag68=
X-Google-Smtp-Source: APXvYqxCaLtqla4IXcVqTac5HqTY/oD5Unli/bJZAhH0Tw01CYJFkAE93ed3DzQbUW3I7SVs6tFeBPdykxbJX2qVK/c=
X-Received: by 2002:ac2:47e3:: with SMTP id b3mr236808lfp.80.1569255159037;
 Mon, 23 Sep 2019 09:12:39 -0700 (PDT)
MIME-Version: 1.0
References: <1569248002-2485-1-git-send-email-laurentiu.palcu@nxp.com>
 <1569248002-2485-6-git-send-email-laurentiu.palcu@nxp.com>
In-Reply-To: <1569248002-2485-6-git-send-email-laurentiu.palcu@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 23 Sep 2019 13:12:42 -0300
Message-ID: <CAOMZO5AOVfBpz2Azh65iT_W3CBZUxf9KnqA=kdow7XWd4j--Qg@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: imx8mq: add DCSS node
To: Laurentiu Palcu <laurentiu.palcu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_091242_192840_393A4441 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurentiu,

On Mon, Sep 23, 2019 at 11:14 AM Laurentiu Palcu
<laurentiu.palcu@nxp.com> wrote:

> +
> +                       dcss: dcss@0x32e00000 {

Node names should be generic, so:

dcss: display-controller@32e00000

> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +                               compatible = "nxp,imx8mq-dcss";
> +                               reg = <0x32e00000 0x2D000>, <0x32e2f000 0x1000>;

0x2d000 for consistency.

> +                               interrupts = <6>, <8>, <9>;

The interrupts are passed in the <GIC_SPI xxx IRQ_TYPE_LEVEL_HIGH> format.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
