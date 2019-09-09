Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13113ADB4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 16:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEQjCvWJtV9n0Mj37d5OjYYaGpOqDFCUBj28lqneP28=; b=a6KobOa/ckbx0S
	E3zKvoCaqczSb3oUOLlIm9+npuILQFbJuPmMhPylMzBX3nYTbrdsLwdL+cGekMzPacBDUpDNVcg63
	4GBl1B5Fik1HqxaVDaQiNK8/xi3oA9ze5R479E/0ADRKV78hIGr3Hd74aHtD14+d+9uhybrFhcSkh
	MDIvYrnwv99BGPgfwY19WTo+vJzRGA4pM/5BJJ5Z8k7kJgDGrR77RUNrhkW6dxWTnUwJllNHc2BC2
	Qm4o82kaHpoyUjGI006zRz02GRWd9MPbpuqCq3KHw9QskzrYlkJxz+/xV8gJk4T7eNGJcOrdtts55
	XzgRI6y5FMk6Tu+NP7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7KnF-0001L6-Jp; Mon, 09 Sep 2019 14:37:25 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Kn3-0001Kg-Ag
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 14:37:14 +0000
Received: by mail-io1-xd41.google.com with SMTP id r4so29202464iop.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 07:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MTv1Mbl9KcBOAl4SzU/Ny9Eh2P0M0x8Uu0yc522I0Ec=;
 b=sbx0IW1HxfaVI4vklahPVlyA5ldWtX+WKIRmkuStLP/Us1lKJOF56BLy0Gg10kzj8y
 Or2inBPdmIydnwaPl2OvJcwNd3tB7hrPim4cnDObONoVZtnDfj03aeJSdBziZ2MGo1I3
 4DWuh327IX2yyo6UcXUB4YsF2hUmsla+F4Udzn5dbU5FNiR91i4mQDf+MHh1OsmiyWAq
 wOlbeGuFxvdZ4RfSnTTSoG52E5gspyLsEk0jiX0EdJk5xXLn7fROTLl/f//CQ8BDdyRe
 /pS8alEIs7m6YKZ/TQ42vV3joVnlU+kOFw/gO1wtaKQ1va87bMDrMKVBEYMAI8Twn2ko
 QYXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MTv1Mbl9KcBOAl4SzU/Ny9Eh2P0M0x8Uu0yc522I0Ec=;
 b=CwflX0DMjk0V/3o8vupgkyUSlJbVcAU84fm69cUniu738PUctSbdZSejwV5wA7q/eq
 nqqGRvl22SQCKt5i987ZfYPpjrxNZjQXFBtjbrwkeujLY/tcns1fWkRzn1hCcrbXcgkz
 vZByzBVYyjTc5V85ovg79CcrCaIL6iv/bT8e7dzLkN3rW+C3eWnuFbY+lMyviYgnJDV2
 XLej5d7DyfseBJCJWA5wTF4iJZ3E2E+D/OY8nC98fZD/DbwSAflqhBXe0VEwmyhgzxZG
 SJLdbbvqu0wsUBW3w9yXYglcRK61S3uBI8uDBc32WBKeagl41riJpiGUJtY5IS+kM88y
 cndQ==
X-Gm-Message-State: APjAAAX3k2Y57f37LkkAfe3bW/qYaSpTWTG1GSvROTGlie0pouNLzob6
 EH4hbTwptU4dQ6YbQuKG0zXev2wYRrJjDU43Wb4=
X-Google-Smtp-Source: APXvYqz6ER7OcOSLuzzRgvm0n/yKD+xdIJZZvGdqGscjHRsmzolipTug9aQL+Z926VaGW1wQJaI9PyejiNgkrnaumEk=
X-Received: by 2002:a5e:8f41:: with SMTP id x1mr14959320iop.191.1568039832543; 
 Mon, 09 Sep 2019 07:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-2-git-send-email-aisheng.dong@nxp.com>
 <20190829102009.GA22728@optiplex>
In-Reply-To: <20190829102009.GA22728@optiplex>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 9 Sep 2019 22:27:10 +0800
Message-ID: <CAA+hA=TNJt00hqdajYy0jrzMU9+K6Xsu+3hSyouPXmhGAyYxtg@mail.gmail.com>
Subject: Re: [PATCH v2 01/15] arm64: dts: imx8qxp: add fallback compatible
 string for scu pd
To: Oliver Graute <oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_073713_372079_32AC9ED7 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 devicetree <devicetree@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oliver,

On Thu, Aug 29, 2019 at 6:20 PM Oliver Graute <oliver.graute@gmail.com> wrote:
>
> On 16/07/19, Dong Aisheng wrote:
> > According to binding doc, add the fallback compatible string for
> > scu pd.
>
> This Patch series (v2) is running fine for some weeks on my iMX8QM Board.
>
> So feel free to use my Tag:
> Tested-by: Oliver Graute <oliver.graute@kococonnector.com>
>
> Will there be an updated version of this Patch series which apply on
> latest linux next?

Thanks for the test.
I have a local version, will rebase to latest next and resend.

Regards
Aisheng

>
> Best Regards,
>
> Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
