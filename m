Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12C6158A21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 07:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSSKdNKAjX2h8wtfG8YIULs0k3SXm+RRMLk8+WXYCd4=; b=JK2dbj30vjMXLJ
	vy7eHy+9E0uIb/GXbl59kQML3/R5Gwj0JXIUgl5KwTtNGIRnnJTpPr1HxYq3GrkZBAu4ocPGuj8Gb
	NWhBJGfaAOQNtC9PzrzHEVt2FFoys4uI4/45jm34Hz7Wf0Nne1TJVAfHDQ7VvF3YMLYKUfzYVFJno
	VUoBx1NBfu8hLGE5Ztz+hs4YYlZDl55gJczDQga+42crXwCaUZfEVbSBje2NGePAsd3IPZotV+7kI
	hvRb+J7hVMHlz+qi+IzQgxGLclcV6CARsZlVNQViUNyM0Cx736fPJQhiLJ6PBrDyO/Sv1Q3EYShZW
	RNVOo8dsic/i2tFfMEvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PSX-00076E-4R; Tue, 11 Feb 2020 06:55:49 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PSD-0006vM-OS; Tue, 11 Feb 2020 06:55:31 +0000
Received: by mail-ot1-x341.google.com with SMTP id i6so9046730otr.7;
 Mon, 10 Feb 2020 22:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0qsBaYW+8tB375NH6OQOHYpSP00PTX/24760IzgBPWM=;
 b=g0PIYJaWAWx7ZYpbMTj/h5I8yC9Of7h+6G71MOTcoKwG1sXqIRCtHnj2A1Bog8F0D6
 gRegnL9DOFPHP3NfmRiQphE7IsOBTlUM31AvacH3fpoDnqGnK2q8LqWAH2RR0/Q/7WzI
 duP1KOPfAuTlULiUAgHq6CLpSbUiTV1SO95ePO4rsRoWpQ0JplY3NS7yClKK7Cu6bwl8
 pVzpg5r5EZTiEqSZ4ZQxHUcDTdJ4FA67PpBHgKvI1GDq69mKuFWRGxvx3K0fTf7J98+/
 IQsiov/bIeai8YzlLGeROG8O9fZ7Fq2Ld7LVDxIjP47KB+IR1/ZBFkCo7JBoQGKe+ew2
 yJEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0qsBaYW+8tB375NH6OQOHYpSP00PTX/24760IzgBPWM=;
 b=ozuFOpcQxxdygaA26FlxINeXH9z+4YmWPcpz2eAwAC8pt6R9NlMgjEJHrEaNDaJK2p
 mWsPSOxrxl8qDpaRYndk7MkAScfsn8eSwnE5tQ06GD0qewqMxMacccJ9tGaWzwGXK6hX
 xseVIL15wQlHJjoyHzjX4AUs6spbSJYqtNp7aagwHCAjjwZZxTPlzYW1AfgJCT7RaPa2
 8hRHj7SkqPianDGidcyGOl5CI9LzgP0pWBvQ1mSsZ0h01a3iYRxZsPZX6KtWuJaaJsyJ
 FwyZVK/UefomgzEZtYbzw24MFE+UHJ/f8BJB3ADl0glJkUGdjclrEL6o4VZMbX0gKsjj
 lBPA==
X-Gm-Message-State: APjAAAXLeP8RuBcrkXLUqxZ+qEHPFT9/cH5gjpWYOZwZ490Y03yTmBXG
 WPBComKekDmASg1B2V6xbF6eJxgncHHfdeYPe3A=
X-Google-Smtp-Source: APXvYqxfpeNlSBi1DWWxelEmsr9hbXLc0MmgqyHPY0wwLkSBHpl+jlRuYrJEeQNRvkKIlN3ori5EnDnw9W4L7XWKMI0=
X-Received: by 2002:a9d:3e43:: with SMTP id h3mr3925618otg.84.1581404128257;
 Mon, 10 Feb 2020 22:55:28 -0800 (PST)
MIME-Version: 1.0
References: <20200208084022.193231-1-gch981213@gmail.com>
 <1581323455.2213.6.camel@mtksdaap41>
In-Reply-To: <1581323455.2213.6.camel@mtksdaap41>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 11 Feb 2020 14:55:17 +0800
Message-ID: <CAJsYDVLzwWfT24NGDJMJShwoG0Qrq06mLqamHbH0xedmMLdrAQ@mail.gmail.com>
Subject: Re: [PATCH v2] mtd: mtk-quadspi: add support for DMA reading
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_225529_823151_9A9FFD2F 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Mon, Feb 10, 2020 at 4:31 PM Yingjoe Chen <yingjoe.chen@mediatek.com> wrote:
> > DMA busy checking is implemented with readl_poll_timeout because
> > I don't have access to IRQ-related docs. The speed increment comes
> > from those saved cmd+addr+dummy clocks.
>
> Hi Chuanhong,
>
> Thanks for your patch, I'm checking with Guochun to see if we could
> release IRQ related information to you.

Thanks for the info.
I'd like to keep using polling mode in this patch for easier reviewing.
It's already a pretty lengthy patch now. I may implement IRQ support
in future patches.

>
> > This controller requires that DMA source/destination address and
> > reading length should be 16-byte aligned. We use a bounce buffer if
> > one of them is not aligned, read more than what we need, and copy
> > data from corresponding buffer offset.
>
> I've checked with our HW guys. The limitation is on DRAM only.
> So for read we should check buffer and length to make sure it is
> aligned, but don't need to check from.

My previous test on mt7629 shows that from address also needs to
be aligned. e.g. If I perform a DMA read from 0x2 I actually got data
starting from 0x0 instead.

Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
