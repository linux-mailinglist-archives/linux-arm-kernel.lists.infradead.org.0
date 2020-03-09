Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C36817E4C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:29:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOKaOZoXuLLLroSLzfaVnBrq7O2hGQ1NHNikmHOVNx0=; b=kZpW9+AhO46L9R
	z1okoVHQX9IAEH1tIYWX2NrDhjUjdIrj/wYtFOCX9zeksI8EG2pVTOfnajJeRM8WWjsrftrHSIaUO
	A/vquMmDVJOK2Oo3obmaQGZoONq98EzDP0XO4AYFLB6BQ27N3MUu6dm1GM6oXhA0gyAXs7C38bHyS
	hk4SVjREkWNQbFi2lYrpZ9q9w9KbvrbcZwAyt5pGH1ty/nyHxxScSUpgT4zVo0P3ieKWM2BCcnalA
	7JfT31+wGlhhm9F0wzQWjwP0e2fbAAin9seTC/80miXpI15fNJJGzNvQXsjM92pYEQ5lyWDdBGhCk
	SFRFNJZAWqiIgz94xocw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLHA-0007VE-UG; Mon, 09 Mar 2020 16:29:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLH3-0007Uo-BK
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:29:02 +0000
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
 [209.85.219.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E58FB227BF
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Mar 2020 16:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583771341;
 bh=M4hta4rO76KqNz2KpbfSKCytV36dh+QCi4nxP7/70Qc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ECUBHZzfDRkL9+lrtL8/IGT7DbZmO35UvWwclsqTqmkRcDexN6CHlkMzScuw7TMcm
 NzQH3V27LN71opJGS/wmkQrk/tDaJRTYQrHhqtHPvgLFnGlkNqVMXKwlQoAyqlKD/r
 t1FDTfmcoW3ym7RxHnJ5sNxFx8b+4/rmcWs6SXnc=
Received: by mail-qv1-f51.google.com with SMTP id m2so4620232qvu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:29:00 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3/FwK+HJFxbgZ8Cub/r7Ciz4GLpF5taIHTNrxd9mx1kYgPPuLk
 NOqx1XqE5/iQNHWMfYmFkJU7aCIqwHtxICqPKg==
X-Google-Smtp-Source: ADFU+vsPj8UzEH+o8HBMtD0nC79kmD3U8pOn1ISxPCZv+ibGYoRV/JlHc/4T3252S5sD41c4taRylKCtx1mQLcBqN+s=
X-Received: by 2002:a05:6214:17c3:: with SMTP id
 cu3mr9866831qvb.135.1583771340026; 
 Mon, 09 Mar 2020 09:29:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-7-lkundrak@v3.sk>
 <CAL_JsqLpDa0viedjBVDGGa9p1ytpRizw9hE3m1FE8_xVv6+FmQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLpDa0viedjBVDGGa9p1ytpRizw9hE3m1FE8_xVv6+FmQ@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 9 Mar 2020 11:28:49 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+WQEANnXVgiNyQe97dneD7GG0BsihgKanJP+eX99YMgA@mail.gmail.com>
Message-ID: <CAL_Jsq+WQEANnXVgiNyQe97dneD7GG0BsihgKanJP+eX99YMgA@mail.gmail.com>
Subject: Re: [PATCH v2 06/20] irqchip/mmp: do not use of_address_to_resource()
 to get mux regs
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_092901_410928_6A0F921F 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Pavel Machek <pavel@ucw.cz>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 11:25 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Aug 22, 2019 at 4:34 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
> >
> > The "regs" property of the "mrvl,mmp2-mux-intc" devices are silly. They
> > are offsets from intc's base, not addresses on the parent bus. At this
> > point it probably can't be fixed.
>
> Another option is for platform code to fixup the live DT and just add
> 'ranges' to make this work.

Nevermind my reply on this old thread. It caught my attention when
looking for the other thread and I missed the date.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
