Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6867AC27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeUST2zJhS+RojEG0I+53/5+oNNrKLOqCAaNdzyb/wA=; b=QOkLJ1yXeR0Tdy
	hUulCkArVpX9T/FBFHYX5Ia7AltomWiSB9yOgvuHsTFAZRErwaHbH0/up8HcUb/JTW4+WQKr+ZqbA
	y6TKUzTFTIih7neccAY+GhzcI8mukCFYP1WeJFZisOqVIS/EaK3qh4FwhPnEWGI3u52oowh59uNEe
	4JK6cEa/4kpsPZSLME3Bxa2CBGkIZdxRHcDeVzclewdwaSnBGk+fzA+WpFZwV2o0/khrB22TaK+nS
	QawyNdwb3xtXUkJTK3Z2qVu/fPEXBkUIGMQHpBH6/D57y8QwdJyel1UQTvrlkYcWnO4DjWtpT4/fY
	f2kXc3xTdPBKEhL7w6mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTv7-0005jL-36; Tue, 30 Jul 2019 15:20:09 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTus-0005j0-Sd
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:19:56 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so62398944lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 08:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=41cV7dKBXD1+Ahztwm+17BUt7uOsIXebGJ7liP6Dr1Q=;
 b=fr7J4bJ48BQhcslss9rejTyZdj4FPrdCEqvatF01xmxmUsIyyYwBzjPDgZx6PtGE+g
 HwYtVBxrTJN5kM1cPkjQIT/6JjCXz4MpWL3Fo3H4uI5sXCKufNCQdoYuL1Ij8H2DfV/7
 NFQzrhBp7GwGUVncuJfMWzEt3dHIrjPOv21vcDhz89QEdO6TOONuGfWGfqyyNOGnBTFK
 uHUWnAlu4k1m5qhmQjRZj0HaUa5nr7tx1EcZFpW2/SruphDDDzA3jzJxsQc6T5svr8J3
 IeLX8hApx/ujA+n0wMFc6deIowlh/HZie+RtHmgrV2y0zQwAYsvbu1TjC6BBiCAGXwmg
 JOnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=41cV7dKBXD1+Ahztwm+17BUt7uOsIXebGJ7liP6Dr1Q=;
 b=rTeUtTmatBWhvTI6Ld27UHXADRt6zCmsKy77zuBPqW9TW3rshkH8aUlSzsNgDfMR+R
 02gbqRpyVhHx89BFYwLfAAp53qOJDx+f/D+R+eHW29ig8k2M/1E0Gj0SSvNud84RhzJm
 Khva9zwBSl2/4FGgzYjYRCuv6BqpWqy8IOEZDgZSZS178dg+tS7/MMd9mn7bRVRJaaQb
 yheF2l0PcJ+rTmGcyEietU3nU+WuIl/PMlS+VrRuWMRBPCP7je9npUOQonV6t4iVSFNz
 +PFynOcvi9UD/wdatuBFavHCM4yL8CKeA1ipNLGiQHlCw9HexeyUa04UUYVwNhe05IDL
 yYgg==
X-Gm-Message-State: APjAAAUSBVYwReWIR56oVI94zCdSqE86cOJnma+Tjcg+yNaIRdor8VYO
 9J3izp+gopbi8Nk14lLo9mX+z1EA9N5BEf4bvAs=
X-Google-Smtp-Source: APXvYqwbkHjJY94CJHMfxOymen4JekQBc6rBpZA6GX9FmhyRgQ8kFvXZ03CUkI7urj04jzey1TKg8zskVaDviN58ToQ=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr24431008ljs.44.1564499992535; 
 Tue, 30 Jul 2019 08:19:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190730150552.24927-1-lukma@denx.de>
In-Reply-To: <20190730150552.24927-1-lukma@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Jul 2019 12:19:57 -0300
Message-ID: <CAOMZO5AxPHHobQQhq30fjLVeSroLdvdT0+GqCWi8it1ejhDONA@mail.gmail.com>
Subject: Re: [PATCH] ARM: DTS: vybrid: Update qspi node description for VF610
 BK4 board
To: Lukasz Majewski <lukma@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_081954_951912_6DAC1D15 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukasz,

Subject line could be improved:

ARM: dts: vf610-bk4: Fix qspi node description

On Tue, Jul 30, 2019 at 12:06 PM Lukasz Majewski <lukma@denx.de> wrote:
>
> Before this change the device tree description of qspi node for
> second memory on BK4 board was wrong (applicable to old, in-house
> tunned fsl-quadspi.c driver).
>
> As a result this memory was not recognized correctly when used
> with the new spi-fsl-qspi.c driver.
>
> From the dt-bindings:
>
> "Required SPI slave node properties:
>   - reg: There are two buses (A and B) with two chip selects each.
> This encodes to which bus and CS the flash is connected:
> <0>: Bus A, CS 0
> <1>: Bus A, CS 1
> <2>: Bus B, CS 0
> <3>: Bus B, CS 1"
>
> According to above with new driver the second SPI-NOR memory shall
> have reg=<2> as it is connected to Bus B, CS 0.

I am glad you got it working!

This looks very familiar with the suggestion I sent yesterday:
http://lists.infradead.org/pipermail/linux-mtd/2019-July/090655.html

It is a good practice to give some credit to someone who has helped in
finding the solution of your problem.

Adding a Suggested-by: Fabio Estevam <festevam@gmail.com> would be nice here.

This also needs a Fixes tag.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
