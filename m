Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97906550E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3AQBVoHmILQ/zRXcl2bQyKFC1g2zLFZ6BkeO8/rwic=; b=Nzt6cTZun8NJAM
	HKWsaQswd9TcnAgkXXfPqnaTcxdwfZVx/SXAhXelQG1I7PuZgQ178KRoO5ZMYpY1TfVIZxsK3Ri6e
	I+2FoyTDrwtpOTPp2ASZNlufFwIINV264Q3+cKPHP5Ye4WADf3eZQWJg4JCiaCaEzlTOhcOOdPyft
	mv0uA3hqtU6fv9mvmZTaLFc3Uh03dlYeqd4g5xwYuY8IwmStyBM5EHs6ibdhTe48oFGmGfbwoSEcf
	3hHG/RyZ6ys+rU0JD99RUzweEmDrKAgqlwA2ptyijp9PovaRy70Lx5LZTfNkTpcTHgMQ+47nRWemw
	D7wxfGSI/VQ8djhFg1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflut-0004PG-7I; Tue, 25 Jun 2019 13:55:23 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfluj-0004OO-Jc
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:55:14 +0000
Received: by mail-lf1-x141.google.com with SMTP id r15so12667574lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FMqlAp58Lm3MdFL1/oLfn8r6VrExYv+Qlr+51/E8+CI=;
 b=HBCIky80cw7b2VS9iWLL0Ww6oY2T4Czf/fAe41KlVer5eCS70N2T9N6i+HMJWbByYC
 s+fMTPIHVitU4jqxF2KA93qimnYLgc650UEYlCKuf1gfuyyQ33gDonObiXqXZe+gjs8O
 waAx5wLbgWDVZc3uKTHvWP6rM/o1xiWun8bYPuYn4HvHH+wq2MYhGCsRznPA1MyLWkA1
 /ZYctoRM+yOUBYmZXs29rpsTNWSfiQjdOe2MFcf487r4GU8KskEXpOGER/nADBI5ZvoK
 ABMpuOMCDGJwjkf6gnqacfGJeTxgqj9SsNuIcRnbDZ0aJsB+cfzaUGMtzb0UkeOYZUqV
 97DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FMqlAp58Lm3MdFL1/oLfn8r6VrExYv+Qlr+51/E8+CI=;
 b=sq1LoIka5jKwd5xqLEOZnJIKSHgQj0jTUeUx50QHeb5jTtAsHA7F69aM6vio1XVpJX
 4DwNptB0oAugZ2ndfuQAao/qPcKP7GJNDho/n1eCj9+8lKDY+nx4fBKoQImf4lsWrzdE
 sOUptIgZlOECJ1DQdNIE+RhC6dgxmOA7aNmMD37aQcbmpvTpd0MSXOBApI8FB3M9CkGG
 oJfyTTp9aoxtCMRzaPTqCe1/58X/hX0cA+xmur3R+D5XyxWIk9SqFIGByBrhe2ivayc8
 c5wpGDSHloOdNFxJtbtgjhDwXWNg2lwQPIsOVLSS8AAIWl6ICjB3mcl54a04WLcrN1wD
 Xtdg==
X-Gm-Message-State: APjAAAVQfCGWC+jVzTwHmgb3UvNHgplf4AuTJMkYadNLsteOclIi8nww
 wJ4NYsM3sLCjczViUve5P9Q/XZAqjh+dMKtDpvl57Q==
X-Google-Smtp-Source: APXvYqx4zfh4abumT8QCcMwPsQ4kGAi3uQZl6qg+f4xwtibi7ko9pWMCa9GCVANnvSnW7NG6HG7bW+OUwbld6KRMjBE=
X-Received: by 2002:ac2:598d:: with SMTP id w13mr250893lfn.165.1561470912218; 
 Tue, 25 Jun 2019 06:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-6-icenowy@aosc.io>
In-Reply-To: <20190623043801.14040-6-icenowy@aosc.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 15:55:00 +0200
Message-ID: <CACRpkdbbxgeGPh1oKfyKKOMhpXiz4sQWjZv23FbYaafCz6NyCQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/9] dt-bindings: vendor-prefixes: add SoChip
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_065513_649663_D6AE26AC 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 6:39 AM Icenowy Zheng <icenowy@aosc.io> wrote:

> Shenzhen SoChip Technology Co., Ltd. is a hardware vendor that produces
> EVBs with Allwinner chips. There's also a SoC named S3 that is developed
> by Allwinner (based on Allwinner V3/V3s) but branded SoChip.
>
> Add the vendor prefix for SoChip.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> No changes in v3.
>
> Changes in v2:
> - Add the review tag by Rob.

Should I apply this to the pinctrl tree? Rob?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
