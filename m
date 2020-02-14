Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE40F15E294
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:24:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83T0usImWURISbZUbs6QrRHhuDOkArMflMLpspW/oJs=; b=a89IXa5lacv4db
	5XW4mO3hm90ApjPiRkfAxzAITco2J/APw9m0zPCOcrdi87jnoMF43GlFv2QobN4IR9+7Gn1uNjuxA
	Nsou9vDmXBmt/kOZmsmyOa+/JVgzltsE2fyfAUM6aDJKwX8XXj4QZ6XyKxFFJ0QnLIySxcQT9CCM8
	H7KjNrLSoZc85xn0lmqNI1zFj/+LkhekW9r3YFS6ZFWLE/A9+Cgx4gxtdzbwyBhfxmVLSRNG3fS51
	QJ7VNzpR7uIgT54Ik+rnm0RIKwtj97mrmggt/PI6L7T8mPuoI9dsEVHDShdaqYt/uzQQEaI4hcISw
	c400RW87A31yWB+o5STQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dlW-0007o7-Q3; Fri, 14 Feb 2020 16:24:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dSz-00057o-J6
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:05:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id h23so11306559ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 08:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HZy/2z20rQr+AZdAg5mBnbB8bwtIRJaA+N58PUrVOnU=;
 b=q0kKzSxAaRi40pL9e42a2YRfXqBYeh0GO136AUpv4Sy/B5RUFaHSKYdAat9LWsXNQq
 8wGk9sMJS0ZGQZnZmamOiwBWCaHh4f+ufFpczx5vfyYxe51fyIbpiMudk1ydapLoFb6w
 rK5X45HcvQMyVFfXq5inLv61KrGjtD3sOyTS3NinbHykT5tm3bXP5siZBYRmyJ8tOshn
 v08UpR9sZAH9Kov4ZV8GwlsDKvoKEcCqUIrjR/c9usKy2X676NJuNVvJbwkc043fp+PU
 wTIUfFBpObrZz8GamGuuqGVA7qMKeNbvXcV7ajy1qIngZPf/rVUZi/qEDJI0+Ou4NVai
 NieA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HZy/2z20rQr+AZdAg5mBnbB8bwtIRJaA+N58PUrVOnU=;
 b=LfTBJe8c8zMiWmwkU7Yzq4LeDm8CWOD6/h/I/e6xOX6pZ9XvaVgLj/lULK2D8ym15A
 56XfPv91ZX+4z+j+YprDwPPpeHGfYOMb2wumrciXwPbidjYjxiCgOc8e2qc9P7UJsBjL
 V0DlrQMDjEVNNM69L7SSTb5JdEUVeWUo2Sdn9VWd6EW5KG2FiwJMfuirYEPcmtWNFODt
 r8fZfLsxmnBBVqvWZEO4fcUJdHYUnwvaDBffZVEH1keOBrf1CHLb1XMlIToos5sGT3Jw
 eWo+eMHrH7dwRDSQWoMFit+XVumnxzvkuA5i0ajeaX75eYVno+wnPSdY9yy6gl6lQPaX
 G27g==
X-Gm-Message-State: APjAAAX2VS9nIUZFkm603J4Untx5lBhEiQVxjB/y/x2ELfUsQEJAapZq
 AOwhU+nQseLkK3Bx5XnYCM4WEyWQSNs04Uf/Ydmn+A==
X-Google-Smtp-Source: APXvYqzJN7ytfDnK6tZ5nG+mPSSYfHbFQ8ddbX1jdU4abEP4ser8GiuEaC5aIp2nOnJIJo+28PrKUKGhtrbKXFffkjc=
X-Received: by 2002:a2e:81c3:: with SMTP id s3mr2530015ljg.168.1581696318753; 
 Fri, 14 Feb 2020 08:05:18 -0800 (PST)
MIME-Version: 1.0
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
 <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
 <20200129095240.GA3852081@kroah.com> <20200129111717.GA3928@sirena.org.uk>
 <0b109c05-24cf-a1c4-6072-9af8a61f45b2@st.com>
 <20200131090650.GA2267325@kroah.com>
In-Reply-To: <20200131090650.GA2267325@kroah.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 17:05:07 +0100
Message-ID: <CACRpkdajhivkOkZ63v-hr7+6ObhTffYOx5uZP0P-MYvuVnyweA@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
To: Greg KH <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, 
 Grant Likely <grant.likely@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080521_734476_3D4E5C27 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "robh@kernel.org" <robh@kernel.org>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lkml@metux.net" <lkml@metux.net>, "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 10:06 AM Greg KH <gregkh@linuxfoundation.org> wrote:

> Why do people want to abuse the platform bus so much?  If a device is on
> a bus that can have such a controller, then it is on a real bus, use it!

I'm not saying it is a good thing, but the reason why it is (ab)used so
much can be found in:
drivers/of/platform.c

TL;DR: struct platform_device is the Device McDeviceFace and
platform bus the Bus McBusFace used by the device tree parser since
it is slightly to completely unaware of what devices it is actually
spawning.

And everything and its dog is using device tree in the embedded
world. (A quick glance in drivers/acpi gives me the impression
that ACPI is doing the very same thing but I am not a domain expert
there so I am not really sure.)

Whenever a device is created from a device tree it gets spawned
on either the platform bus or the amba bus. In 99 cases out of
100 it is going to be a platform_device.

In most device trees all devices ultimately spawn from the device
tree and the root of absolutely everything including irq chips on
the SoC, timers, PCI hosts and USB root hubs and whatnot is a
platform device, because that is how the core device tree parser has
chosen to spawn off devices.

This generic code goes back to
commit eca3930163ba8884060ce9d9ff5ef0d9b7c7b00f
"of: Merge of_platform_bus_type with platform_bus_type"
where the device tree-specific bus was replaced by the
platform bus. This code was then moved down to drivers/of
and used in multiple architectures. Grant's patch makes perfect
sense because at the time some devices were created using board
files (thus platform_device) and others using device tree and having
two different probe paths and driver files for this reason alone
was not reasonable. The same reasoning will apply to ACPI
vs device tree drivers.

What we  *could* have done was to handle special devices
special, like happened for AMBA PrimeCells. Mea Culpa, I suppose
I am one of the guilty.

Supporting new bus types for root devices in systems described
in device tree would requiring patching drivers/of/platform.c
and people are afraid of that because the code there is pretty
complex.

Instead platform_device is (ab)used to carry stuff over from the
device tree to respective subsystem.

In some cases the struct platform_device from device tree is
discarded after use, it is just left dangling in memory with no other
purpose than to serve as .parent for whatever device on whatever
bus we were really creating.

For some devices such as root irq_chips they serve no purpose
whatsoever, they are just created and sitting around never
to be probed, because the code instantiating them parse the
device tree directly.

For the devices that actually probe to drive a piece of silicon,
arguably a different type of device on a different bus should be
created, such as (I am making this up) struct soc_device
on soc_bus. (Incidentally soc_bus exists, but its current use case
is not for this.)

I don't really see any better option for Benjamin or anyone else
though?

The reason why it is used so much should at least be clarified
now I think.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
