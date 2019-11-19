Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5526C101056
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 01:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQ9u6sMPQDqFgm4r85thxe8puqe4nmNW8GQ0IZbN0S4=; b=r4UOmf4qs+DsWe
	fUPKfQKDussJAQjwCHm7aoErchpInTl1mcn8J41bsVdquJkmnuZF3ycc4HSUCExWP9IZqvZjVu17G
	7C6d08jmZClkjlruYzkCKGzvtS1X92kDVTWhT44YdTd/Lc3JgrKPAuaS8xPjtD/7jyDBj4Anpgwur
	wLzDMxfIjaQqyWcreHfO3PhhYRTS/F6JW5Wo7P12HdNApi0TcQh76Rk5k/ue3RmDpaGg9TrDdaKcA
	BA3tvcPH3rG14TlilsXeSrAweGZQSlb5XhY7dqCr9Ktzz+h1fhU4OgGE5zN0UNxV8CCqguJ5A68gR
	zYLVZIYulL9CgASWC4+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWrdd-0008Ks-Cy; Tue, 19 Nov 2019 00:45:01 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWrdN-0008JP-Qo; Tue, 19 Nov 2019 00:44:49 +0000
Received: by mail-ot1-f52.google.com with SMTP id b16so16308632otk.9;
 Mon, 18 Nov 2019 16:44:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KK5FYD8PxRF0A+U6gGDQIfKZHAve6NPMN8YtVyh0Ls4=;
 b=d5kYIrb9vFD2p0VMPXoGC3wLNE+ZDIUfo8aJu4xLDFyMX2FNgX5WKgy8uT4AZV6zk9
 V4LIkTA1pWCOoBa4D03Evsil1dBc6f8yLSHwoTrjyxVHmT5sSqq2ijRB5gLVvHGFDfFa
 A5kHZ/DsTeAmMnhL71a9qn4ijB/oOL63bvRdSE5RfRHkUw4p5xxVBDYS2vwb1N1HBiQ+
 J80iWUQqQxactWeMHJhJLxPqQiB5BqptncqVpupg72UFzqYQarepdt8H6OdgbsHYrHI5
 aGn7X5ZknKS+wtKAEQxtF5Rt23/ItO+xh9OWmlEN4NSzoFvNhX/EuxgISDc8U6WdV/TT
 gSLw==
X-Gm-Message-State: APjAAAXAc9CZiAgES9qAsfuxy8sr8x8bUDyc1uekLwdqZdDyMiAkxsxH
 1XqJSOxr6hsdv3VNyhPC1YCXV89zGznxhcG9aQc=
X-Google-Smtp-Source: APXvYqz8vlbzWtw6HaYn2YK7CSJv8YIqAwxUC5AlU5cHaNxx+FVcsQ6Zxsu3Nnk0YdAKCbEdeBf9P5RAIwTpaJL28n8=
X-Received: by 2002:a9d:6649:: with SMTP id q9mr1568242otm.106.1574124283140; 
 Mon, 18 Nov 2019 16:44:43 -0800 (PST)
MIME-Version: 1.0
References: <20191117101545.6406-1-matwey@sai.msu.ru> <1784520.t1z2W423De@phil>
 <CAJs94EZPLedH4w3+5vfJA+f+1+zLETBdETpqNPytp3LG63az9Q@mail.gmail.com>
In-Reply-To: <CAJs94EZPLedH4w3+5vfJA+f+1+zLETBdETpqNPytp3LG63az9Q@mail.gmail.com>
From: Tom Cubie <tom@radxa.com>
Date: Tue, 19 Nov 2019 08:44:06 +0800
Message-ID: <CAFjve-AT6c-yweF0mOPea-caG3n43nZzVPcwef-qp+n35JN9ig@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4
 board
To: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_164445_868393_8A49321A 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mr.hipboi[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matwey

On Tue, Nov 19, 2019 at 2:41 AM Matwey V. Kornilov
<matwey.kornilov@gmail.com> wrote:
>
> Current schematics
> (https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4_v13_sch_20181112.pdf)
> is controversial on 1.8 supply:
>
> On sheet 15 it says that 1.8 is supplied by VCC_1V8
> at the same time on sheet 3 it says that it is supplied by VCCA_1V8

I am sorry for the confusion of the schematic. Please ignore the power
tree on sheet 3, it's from the original reference design, I think we
have different power paths on ROCK Pi 4. Please refer the circuits
starting from sheet 5 below. It reflects the real hardware. We will
fix the power tree and upload a new version of the schematic.

>
> >
> > Thanks
> > Heiko
> >
> >
>
>
> --
> With best regards,
> Matwey V. Kornilov
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip



-- 
radxa rock pi 4 - the next generation Pi.

radxa.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
