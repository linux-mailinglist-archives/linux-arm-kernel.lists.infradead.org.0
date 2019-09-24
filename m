Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFEEBD4C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 23:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CH8d48enJj8xQm6djrFtjIcCGtHeIhbFFLxOkRcwVzQ=; b=S9lHa6S0dMx9as
	RFdXeRXrW+/nS0gCaMQuDH1Z0pVKtyiCRmzkrL0E5saYj6b98vB+HApjJrY7YUOUqg/yU7wAhldPA
	uB83Vantx/SSnRaz0KOvJVhMD2CueG10U2OtPTFdv5VxR8LMezzbyktIUQVWe3ndQ8DvkMVge7zp9
	oNlZH5l/jqhW0EZquKIIGRPHuvQQPF3vOETOiMiCfuWmfd0W+aSaXBH8zEGIXGE6tZAfpzb/Hbc62
	1CgF6sMkvOMy50a0+SnsrZ9Pbaw9JZ6wIdk3IFKw6/FyDKn47VdE2DrJlLxgDj3zZwZrEIId4Qbe2
	Lhj4smeS2UR0XFDlBbjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsqY-0003Nr-LO; Tue, 24 Sep 2019 21:59:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsqL-0003NB-CL
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 21:59:34 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DE262168B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 21:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569362372;
 bh=7EnBQLGJXbJ0krx6sf9eAXMt0SpVcFYHvJ4Ffxc+GEI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZUjBfJ5y+ysHUqZVHvVQV6vmXEF5m5l7X/D3o8MMo6T+fnXCBe1Len91UdIVSmNm8
 1+IgmCK2yWkyLXKdLfON0wTF2uVY6/Zj+z4CbqBQ8S1mTFhTzxJ4K+kIhlIbeitlp5
 qXtcO6SJzhSJ74/8s14mN0YBxYms1LJJP0SwTimA=
Received: by mail-qt1-f175.google.com with SMTP id c3so4089343qtv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 14:59:32 -0700 (PDT)
X-Gm-Message-State: APjAAAX/DlTc5ik6jPn2uHV5N1PjhFQs2s2MH5buCkHTxcww4P8keu8I
 6V1fCsqDD3GO9YGG6LRpjv0Xu3HcvpFQuZ4fow==
X-Google-Smtp-Source: APXvYqxu7lx2ORNXYuD01RyoAdK8YY//zQYn3oJnMVZaPVMMDgXcioCqkbUXveNdRfpBkQzN/4OY/SjTncH5t1k8eUk=
X-Received: by 2002:ac8:6982:: with SMTP id o2mr5274643qtq.143.1569362371529; 
 Tue, 24 Sep 2019 14:59:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
In-Reply-To: <20190924181244.7159-1-nsaenzjulienne@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 24 Sep 2019 16:59:20 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+v+svTyna7UzQdRVqfNc5Z_bgWzxNRXv7-Wqv3NwDu2g@mail.gmail.com>
Message-ID: <CAL_Jsq+v+svTyna7UzQdRVqfNc5Z_bgWzxNRXv7-Wqv3NwDu2g@mail.gmail.com>
Subject: Re: [PATCH 00/11] of: Fix DMA configuration for non-DT masters
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_145933_470205_CB86AC2B 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, etnaviv@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, james.quinlan@broadcom.com,
 linux-pci@vger.kernel.org,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 xen-devel@lists.xenproject.org, Dan Williams <dan.j.williams@intel.com>,
 Robin Murphy <robin.murphy@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 1:12 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi All,
> this series tries to address one of the issues blocking us from
> upstreaming Broadcom's STB PCIe controller[1]. Namely, the fact that
> devices not represented in DT which sit behind a PCI bus fail to get the
> bus' DMA addressing constraints.
>
> This is due to the fact that of_dma_configure() assumes it's receiving a
> DT node representing the device being configured, as opposed to the PCIe
> bridge node we currently pass. This causes the code to directly jump
> into PCI's parent node when checking for 'dma-ranges' and misses
> whatever was set there.
>
> To address this I create a new API in OF - inspired from Robin Murphys
> original proposal[2] - which accepts a bus DT node as it's input in
> order to configure a device's DMA constraints. The changes go deep into
> of/address.c's implementation, as a device being having a DT node
> assumption was pretty strong.
>
> On top of this work, I also cleaned up of_dma_configure() removing its
> redundant arguments and creating an alternative function for the special cases
> not applicable to either the above case or the default usage.
>
> IMO the resulting functions are more explicit. They will probably
> surface some hacky usages that can be properly fixed as I show with the
> DT fixes on the Layerscape platform.
>
> This was also tested on a Raspberry Pi 4 with a custom PCIe driver and
> on a Seattle AMD board.

Humm, I've been working on this issue too. Looks similar though yours
has a lot more churn and there's some other bugs I've found.

Can you test out this branch[1]. I don't have any h/w needing this,
but wrote a unittest and tested with modified QEMU.

Rob

[1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-masks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
