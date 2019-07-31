Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4577C400
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiyDjdM9Ye872d28pZl1HNJUUVbysQF2cfGAwx3Rw78=; b=CE0WDeFhjn0/lG
	weYdqealkN/QqkA3+Sy/0A9yoaqvk2p3JS0GMdTCar0KKww01IiRxxW3PQk0j1TNY1E9xlfcPcZ5/
	/XfJLVxSlylMT7W6jpXBrbkSFj4QC/OrNvk3QDd1b+yUDflNbloh+0p9IgshUn4ol5gCmML6nAlA6
	9prxVXWd7eyI1w6OzQE5DQI+QbQB+/NOKF7Vij9JI/etAoszsFIqFVrIMC1asjaGi5fmTeBlWeX/f
	ybAFF6cyTPSRpFm5/jGxG8ykOEfZKuGj6E6BRantBNrHgzYVvYLEuY8HBTKrfHG9b7S+CU3YMDAdu
	SDMPEQldYTfk1uxyjAQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsozM-0003F9-2A; Wed, 31 Jul 2019 13:49:56 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsozE-0003Eb-Vh
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:49:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id d24so65668549ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 06:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gHnmszNHQ24CJyTvOnvNHkM+wRRDSJ9cy+lG6yjUm6A=;
 b=FOMsBV9S1Vb6xH9FUBqIDl2S1V+eJuU8e/JPTM/AamBryhGN8AWt24ot7iQOlRaSPS
 lwobEJNTfwgkQJK5Rp+7k+Ah/g6519n9ue/b61eD/qF9k8NEjF1DI21GDIq65JnRzdsC
 WDj1jTaZT2XoWzO9RAV3N3DkAjCG3HYK1TXM2bmSt+t/XDdKezfbCmfLstDNReBUjYwl
 tDTJ5gmOitt8H92diDLl3uv/h+94LN4BnOmWSjFlQUtq8GAiRIU05L2lsbHzbuXM3HO/
 uXGwvwKTAtyhObuELaPdjOlsab7bHka8etSQachElSNyUtrhnyvIleoPQ+FV/2TkADAx
 sjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gHnmszNHQ24CJyTvOnvNHkM+wRRDSJ9cy+lG6yjUm6A=;
 b=sdBQWChMwN4lY9CkF140T8w0AL8i7jEr/TGNEjYrCkq55U+MP25SYodU9br1VniSbe
 Qzwbn64VMwmRgpDVIUdys3ykfTKV8wARKPfnIfNP2J3rlmTURznfr6XsmdhnJBIjCWSl
 fruo5e+kN4lRdSxfKVmSbnPQa7lPP35ZXe3BcxxJdwBqtzToRpiRLT4TCCMgCp9R82tO
 5N/2gUDbHozwFR8Hcw3Je+GtTb/Es1piW42iCms1eTO803/YPW4QAbMlDrzNcdTEgTX5
 8b9rZI74ELqCtPUAHn03HdHSm0nlccFV97/dKU+gyRdlr1nyUCSrFmG58bTjgco77YN6
 TBmQ==
X-Gm-Message-State: APjAAAVCjzbclDd3rVtZmN3V7Vg06qnJ1ZA4H94Sbzr8OBSFQPb98HFH
 Y8p9zhX+jkxhkNdb0yvU385cFAGg6WwRq1eEZc0vaH9r
X-Google-Smtp-Source: APXvYqwlpiIrNNuUqGXtabWXIAAqU7YbPr6xoLilXUIcgeT11EtO5xmCkkDnDuOgWknepM66PFb7aBm6HjOt5rrPB1U=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr27620915ljs.44.1564580987014; 
 Wed, 31 Jul 2019 06:49:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190730214833.30659-1-lukma@denx.de>
In-Reply-To: <20190730214833.30659-1-lukma@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 31 Jul 2019 10:49:53 -0300
Message-ID: <CAOMZO5Bokk_j5h=34e4jrB1-+KPV0P4nURL13VD7kq2=GXfmhg@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: vf610-bk4: Fix qspi node description
To: Lukasz Majewski <lukma@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_064949_023002_025525CA 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jul 30, 2019 at 6:48 PM Lukasz Majewski <lukma@denx.de> wrote:
>
> Before this change the device tree description of qspi node for
> second memory on BK4 board was wrong (applicable to old, removed
> fsl-quadspi.c driver).
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
>
> Signed-off-by: Lukasz Majewski <lukma@denx.de>
> Suggested-by: Fabio Estevam <festevam@gmail.com>
> Fixes: a67d2c52a82f ("ARM: dts: Add support for Liebherr's BK4 device
> (vf610 based)")

Please fix the order of the tags.

- Fixes tag goes first (do not split it into two lines)
- Suggested-by
- Your Signed-off-by

With these changes you can add as the last tag:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
