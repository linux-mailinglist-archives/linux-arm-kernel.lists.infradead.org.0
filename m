Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA9215809E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WdZtYuqIflO/k2s3gpBqMRjVoBhPzraVBHjQTlAkgC8=; b=hxwGOqPN60qB0x
	ikvCUJZAzFJJu8+ApzO4e/fadn5PrW0epXjORxdDVouxhNyLwSWfpONuAERUibl3uGH+x1Ac1Ob2v
	Hx22PBsW3V0swpnc3cE/+PoHD7NVGi/cJCXfTMEuhzw+jk+ySkEgUdEumGdOCKGBPqiq6FQhZRFSb
	hgiuYTD/KEyyx4pPYA3WPeoYDZbj5VbUv/aZr4B0GDYh7DBkLVHhtfvmAPxese0uxWAA6PyGE3XOg
	caeLiPg8ULlmyHi4w17eMbSykXfYRf0+pJEjrktW9hAXMbzCNgsXGhsQl51nF/RWQNGul9041KpZA
	l8Q6mmXmxMrGw2/StVuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CYZ-0002yz-L9; Mon, 10 Feb 2020 17:09:11 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CYQ-0002yK-W3
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:09:04 +0000
Received: by mail-io1-xd41.google.com with SMTP id z193so8421012iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 09:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J7TMYFnb5/RylQGjk6pwzyOMg8V/VoQJOxgPOgvp4TQ=;
 b=qkseAph0tr0+SBm6cWzFPpfeUipxzvfJYFreIZj2Jc+t+btZhb30Pnb9mpex9HMBQg
 s+lqIIVdZp6P2b3ej3X+DSvXo9boYOAwkuRDpXFDFmb+unXmhjjzgsHiz5svYX4DA8zg
 SjCbWxPPQUcXM8nbqah4fNmVOA1FdsMC0BHByvTzA51IJ0YsIIyEGfx+O//kXPUerzEf
 EIqa1QT6+2UztMHYkEf0K83GPRPas7oB/Uhs8YQQ0TBkd7fhYDVMJEhC8GzWTYLDhGGL
 QLCgft+GLsJlvjVkAelArQw8+7x4nxey6QHvnSH8+g5esCnP3XRGogXyLcpGt3tjBarC
 7LFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J7TMYFnb5/RylQGjk6pwzyOMg8V/VoQJOxgPOgvp4TQ=;
 b=PD2TF9A/zFleEphhVQsPR71hUYGZ1UsJXPAIOb38PrF+6JIo9kj0fF0T9Xdbq8+Bsq
 Uzpgor+Py5kniBJI1SJRRxwOIjjkdxGy72Jp1ndAcE1yoaQS/J2hrPCMoHwmGY4NkjNB
 FN+JVbKle+opjqtBGIxPxKdb5IhlwRHviKBYqwZ5BbEWUmUweSFuCswJu8BbfeVpABg7
 BxzDkwvBFsMscS+vf+qKJtoO4LFXxjgeghGnRtJwuyMoO69zWal0EBuwjp7AE4RTLNJs
 QQG6HXvDAkyHO4RNSXDkdNbBc3uwavSfESMC11uZgc6LFKcFBysQfjM4AGSxsY7fsWL/
 T/KA==
X-Gm-Message-State: APjAAAVEGh7oDDVuaIUYnZw9hR83KGtJlg2P8Qiq/pmYCWrvaGY9AYEW
 9qOFguRRTI47pHus+j2QMzT7WegMJrqa2IeG+SiQDi/H
X-Google-Smtp-Source: APXvYqyDx6797nOWepvliuKmQFE1G8xSfLPt0573SCGJDKIhe8kTAtSqJjvSkmUZPLV3kuczOpS2tsqodoJhp8fk1gs=
X-Received: by 2002:a6b:b48e:: with SMTP id d136mr9655577iof.243.1581354542360; 
 Mon, 10 Feb 2020 09:09:02 -0800 (PST)
MIME-Version: 1.0
References: <20200210105108.1128-1-linux.amoon@gmail.com>
 <20200210135612.GB2163@pi3>
In-Reply-To: <20200210135612.GB2163@pi3>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 10 Feb 2020 22:38:52 +0530
Message-ID: <CANAwSgT9aq123H-pO2u6iN2E8towsWUFcWDsA9TbVqP30j=10w@mail.gmail.com>
Subject: Re: [PATCHv3 0/3] Add support for suspend clk for Exynos5422 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090903_056903_805C745B 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Mon, 10 Feb 2020 at 19:26, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Feb 10, 2020 at 10:51:05AM +0000, Anand Moon wrote:
> > Long time ago I tried to add suspend clk for dwc3 phy
> > which was wrong appoch, see below.
> >
> > [0] https://lore.kernel.org/patchwork/patch/837635/
> > [1] https://lore.kernel.org/patchwork/patch/837636/
> >
>

Thanks for your review comments.

> You ignored parts of my review from these previous patches. I asked for
> describing WHY are you doing this and WHAT problem are you trying to
> solve. I asked for this multiple times. Unfortunately I cannot find the
> answers to my questions in this patchset...
>
> Best regards,
> Krzysztof

I dont know how to resolve this issue, but I want to re-post
some of my changes back for review. let me try again.

My future goal is to add #power-domain for FSYS and FSYS2
which I am trying to resolve some issue.
Also add run-time power management for USB3 drivers.

Here is the clk diagram for FSYS clk as per Exynos5422 user manual.
[0] https://imgur.com/gallery/zAiBoyh

As per the USB 3.0 Architecture T I.

2.13.1 PHY Power Management
The SS PHY has power states P0, P1, P2, and P3, corresponding to the
SS LPM states of U0, U1, U2,and U3. In the P3 state,SS PHY does not drive
the default functional clock,instead, the *susp_clk* is used in its place.

So enable the suspend clk help control the power management
states for the DWC3 controller.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
