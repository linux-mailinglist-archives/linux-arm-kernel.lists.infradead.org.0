Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438D22413E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4fKLtpGQQbNflzOLBx0ZWL4J0kFoBZkkCmnBaXfvi0=; b=nV1ISGBj9K6OVV
	0skhswi8CkborcS5yFiMPJHEtyd4uvb7TDor0LIjmCZGs/iq7umoJ0Zpk8FRnFgU4qB0HFXEfIWYw
	ckXNdU+K/ukmZTXt8tLVcZpiKdS0zisA8mSPe4Um1iwZR9Dtgq7ie0npuegIFmclWhxXj3co6Skzr
	DPr79oJzORTwFcP6XvgOsa+qtc3H8pbK6HfNDlZT6bzuilKjdv/EcouDHq5yJ3JVD6gdIiNMGf3Zu
	3Ry9st/7Et+sMGVYaSLR4havqxC2xFeOBLaGdtRfFIe0GkI7MbakhyaH3UIfaidvtWOZ6SKCmM83B
	frn0Du9KNvnzXgqYlP7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSo1M-0005I7-I2; Mon, 20 May 2019 19:32:28 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSo1F-0005Hg-GE
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 19:32:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id r76so13546413lja.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 12:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5CJy2dAeiox6uSZJUrT6ntHN0iGf8wFFMkB5gRGvXDA=;
 b=P7jgFUeHCs7+AjBG2AuXEKKQm5HcQoiMOoF6dgnHtTQWgFTGB3HAfSrc5U2ov3Em/L
 b79q/0mf/FFYJypHSacZs8WRGrSlp9cgw+zcrCpOR1ntwuDY9EATpN8iT/YRz8P1qNqe
 KIEARqWbHtJzyNCTJ+khfi+ZXKBl2rHzEAuxO4BXV22mIkN7ySEi+NjY9qUeAja/cVA/
 IDIm81sG289xyiGnqBYD47UafLoPCgUfglPwxPv6xusBU9eeho31r7FzUMJXfJzGZ4v/
 eCQRo9ES5JkNExo4UiGGqj6LyOtYicz7ScHR6Ntt86Si15X7J2ciD+kGPYXxIm8l7ZyI
 A3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5CJy2dAeiox6uSZJUrT6ntHN0iGf8wFFMkB5gRGvXDA=;
 b=gg9qxmaB153NF5h2nWFCRUcpr9l/N3N5l5rPRzT0rATTHuwOAPHz83Htv3/hTiU5wo
 DXegAZBiBhhfYP/eVYcjfeomRacfmC9AWwYBGa7IRhh14FFJdJKplJwh+ax2/vlCXV+L
 UcY471Le33fUZoh0bJJh9x5RPST4XgCY8JgEwpW4cbIxYksCIvhtfyiLtgpY31kVa0Mf
 nMng5kcCg4n7J2cKZpKh27hbpgtJecMtuzGoVS8+Jj24veDB2Ici7xYOw177ffwolTfF
 +aninupHB9kztHUHSJ6RZLJRGRnVFuGK5zLG578j74I5kdFp5f3FKVufT6rl3J0l1CGk
 pQmw==
X-Gm-Message-State: APjAAAUfxcU4LjRIu12InpLhmimV7uM7ECZK6TIPzoYyVKORKgcDJGu3
 I6S6JWm7DO+c00JNcYkEqD/w+TCQhP4e5k/OGO4=
X-Google-Smtp-Source: APXvYqway49cEPUGdvZjJ+hP18SCMMVwpRB8TXHDrRQznMNpDxg0nRMzVHOAdVngIuP5ja63eqiL/FnRQg2ZgigufaQ=
X-Received: by 2002:a2e:1f02:: with SMTP id f2mr37741905ljf.86.1558380739291; 
 Mon, 20 May 2019 12:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190515144210.25596-1-daniel.baluta@nxp.com>
 <20190515144210.25596-3-daniel.baluta@nxp.com>
 <CAOMZO5A6Gv5k3up0AtKrhQPyMLMe_8SXift68KEP2J+j8D_cJg@mail.gmail.com>
In-Reply-To: <CAOMZO5A6Gv5k3up0AtKrhQPyMLMe_8SXift68KEP2J+j8D_cJg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 20 May 2019 16:32:14 -0300
Message-ID: <CAOMZO5BTqwnun6d7G1vcHUu_Rs+xfvgxTzamWnBPy76W7eeF_A@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: imx8mm-evk: Enable audio codec wm8524
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_123221_545608_22D9E253 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 3:35 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Wed, May 15, 2019 at 11:42 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
>
> > +               simple-audio-card,codec {
> > +                       sound-dai = <&wm8524>;
> > +                       clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
>
> IMX8MM_CLK_SAI3_ROOT is the internal clock that drives the SAI3
> interface, not an external clock that feeds the codec.
>
> It seems you should remove this 'clocks' entry.

Just checked the schematics and the SAI3_MCLK pin clocks the codec, so
the representation is correct:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
