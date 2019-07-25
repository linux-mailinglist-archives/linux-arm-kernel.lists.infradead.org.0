Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A5475AC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 00:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x20vrDhNimRIv0vG1Mj24mTbZdliEPRVQkAHg0mPa0o=; b=jNmCZtdEZ+TK7v
	+tnLNqVY9nZ9ghC3A9ZycdVAEM7Sr92xmiP5H7bbKv7MWOGXEM4oNS7Qc/aMzzv3HhWmQuYxeNkG0
	zKdc7DMKfmWZH5JqGFwgxJVkb/xiH2kKxe/fSOHhelH9UfZMnppHfxKsltGA5AlKIfOLx7/WMj4Ae
	eTROkCLbxYI88Fw0nInNqeMjoUseB2v0lSfYF3PM3uJu4AUhUq9xvBITiIpYVvun80j8C5xEmNpdX
	lHhcsW9ZY85dnk54NhAlqlhi60hZToPisoaxxnvQbFa6EijO1/LWYByiyXUKMA1LOPBT+6NAeNjCt
	nsTT7KJjUaskqevt/keA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqmDi-0005f5-JO; Thu, 25 Jul 2019 22:28:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqmDQ-0005ea-Dp
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 22:28:01 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05C80229F3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 22:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564093680;
 bh=Gc4j7JsS0PjEqHwHozSF6rnexXcgZrxvTO7RzQKTFss=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qYKNAz5PezlzROpy2lFbbpWuvjBQQerqHVVoYdLK6BzcCi0YJ6s0CmlONb9/I5AM1
 L0RukfeT06fQaJbG70NYTYfsXjuSMxHagn/0dawapVGqL1qC4E8q3RTpjLGC6X5AIR
 5h+Mdi8oyGTVijokVjg31L8lkWnD/qVPI6sBY6eE=
Received: by mail-qt1-f180.google.com with SMTP id z4so50755699qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 15:27:59 -0700 (PDT)
X-Gm-Message-State: APjAAAV04PriOVd5clJExjPyI0tNw7YSuREFEn7/abfs7oHxsBncfdTD
 7naHQ82x94S49fJzduZvC6rEv+70OARsPi3sgA==
X-Google-Smtp-Source: APXvYqzMrba+PSzsy/UywtewDZNE2ndi2LwEvg/77++h8VlXxXyt+GJmdgq9yzgHsfF2c6MrwB/hdxHMg94hegJNNTo=
X-Received: by 2002:a0c:8a43:: with SMTP id 3mr66978138qvu.138.1564093679211; 
 Thu, 25 Jul 2019 15:27:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-2-s-anna@ti.com>
 <20190724163419.GA29254@bogus> <6871c381-9fc6-f6be-6386-f183fcc5546a@ti.com>
In-Reply-To: <6871c381-9fc6-f6be-6386-f183fcc5546a@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 25 Jul 2019 16:27:48 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJz9eDOMPA=HbvZ3W_h5XMaW8uah7dq6k474MBnSmrq4Q@mail.gmail.com>
Message-ID: <CAL_JsqJz9eDOMPA=HbvZ3W_h5XMaW8uah7dq6k474MBnSmrq4Q@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: irqchip: Add PRUSS interrupt controller
 bindings
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_152800_498817_B46BBC1C 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Lechner <david@lechnology.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Andrew F. Davis" <afd@ti.com>, Tony Lindgren <tony@atomide.com>,
 Murali Karicheri <m-karicheri2@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 1:42 PM Suman Anna <s-anna@ti.com> wrote:
>
> On 7/24/19 11:34 AM, Rob Herring wrote:
> > On Sun, 7 Jul 2019 22:52:38 -0500, Suman Anna wrote:
> >> The Programmable Real-Time Unit Subsystem (PRUSS) contains an interrupt
> >> controller (INTC) that can handle various system input events and post
> >> interrupts back to the device-level initiators. The INTC can support
> >> upto 64 input events on most SoCs with individual control configuration
> >> and hardware prioritization. These events are mapped onto 10 interrupt
> >> lines through two levels of many-to-one mapping support. Different
> >> interrupt lines are routed to the individual PRU cores or to the
> >> host CPU or to other PRUSS instances.
> >>
> >> The K3 AM65x and J721E SoCs have the next generation of the PRU-ICSS IP,
> >> commonly called ICSSG. The ICSSG interrupt controller on K3 SoCs provide
> >> a higher number of host interrupts (20 vs 10) and can handle an increased
> >> number of input events (160 vs 64) from various SoC interrupt sources.
> >>
> >> Add the bindings document for these interrupt controllers on all the
> >> applicable SoCs. It covers the OMAP architecture SoCs - AM33xx, AM437x
> >> and AM57xx; the Keystone 2 architecture based 66AK2G SoC; the Davinci
> >> architecture based OMAPL138 SoCs, and the K3 architecture based AM65x
> >> and J721E SoCs.
> >>
> >> Signed-off-by: Suman Anna <s-anna@ti.com>
> >> Signed-off-by: Andrew F. Davis <afd@ti.com>
> >> Signed-off-by: Roger Quadros <rogerq@ti.com>
> >> ---
> >> Prior version: https://patchwork.kernel.org/patch/10795771/
> >>
> >>  .../interrupt-controller/ti,pruss-intc.txt    | 92 +++++++++++++++++++
> >>  1 file changed, 92 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
> >>
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> >
>
> Thanks Rob. I am going to submit a v2 with some minor reword changes
> based on couple of comments, but no addition or removal of properties.
> Should I be retaining your Reviewed-by for v2?

Yes.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
