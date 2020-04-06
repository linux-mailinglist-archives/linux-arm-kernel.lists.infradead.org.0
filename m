Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DAF19F605
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGSnRiAg5HWAq6vuZQWurRmt1uJCYhcF6tJvdFMJu8Q=; b=uzX44e2hMp6AUu
	qcbXm3OCFNbhV4TlPgDZ2Dm7SlmQLhgsomZg0ZpDC8Mr+U/vSkK5+OFPJfMk3dbKiYIvmGzSbwaZs
	p3nY9D0bjUwT49MlMwiVDFdyan29kMgag3FdMCO9khoJPSrC6y9ixR98IUwHuZBA5Xd+5YYrrQ361
	FwHmct5s4mLlyoIn9yeJEEOC73PRWWInhE43D+cZ4yTKfImFqWg4t2kZvy9Mgfws046AV9aCkcYRF
	GdbCNvHYaZZo/rDBg9gB5eOk2Fj28JOQsnMg0gU/FkwBy3m7A8UZ8Yf4ckcDtw7q63xe2i803S8tZ
	8M62vP9w71SrheHSsGMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLR8C-0001eg-UK; Mon, 06 Apr 2020 12:45:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLR81-0001dg-PD
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:45:31 +0000
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57B7D221E8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 12:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586177125;
 bh=tiN2oTj1i0XyvRhRfdLBlfrbeamD1vChWpja08uq09w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q7O72xtV3LBHX177tBgE4k8duWbcQLkAnOvu2i0oWsmlEVrgMpKM3Q1K8phxJkiLN
 C1GBx8jR/l4WGDlFSPD7ZybDU8FJfT2WzYUMEWgVcI4vd98Lj7j6VgsSlrnwVtFd0A
 xlZFWEjxBmW5054XDH0fJTY5IycORF0oShPo291Y=
Received: by mail-io1-f42.google.com with SMTP id y14so15540446iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 05:45:25 -0700 (PDT)
X-Gm-Message-State: AGi0Pub1nJrBS+VNCgDE4SqBR8aHL28sqYj458YGrzBuhNaS4mISxh3E
 DaroEbcJT2P5mtdO0re+nLcBtZTsK2d5BEqx7zg=
X-Google-Smtp-Source: APiQypJR/I5FJdjjJ5dWxK8nEozXVMsHluDJKpsrloyjYgJrmslBzZKSVlpcnCxFRDiK8soBbZ4QBOO/IENvSOEHHp4=
X-Received: by 2002:a6b:f413:: with SMTP id i19mr19532257iog.203.1586177124713; 
 Mon, 06 Apr 2020 05:45:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200406121233.109889-1-mst@redhat.com>
 <20200406121233.109889-3-mst@redhat.com>
In-Reply-To: <20200406121233.109889-3-mst@redhat.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 6 Apr 2020 14:45:13 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFNeuZU66swwf_Cx7PrQJV34C0VJ7Rte5aga2Jx4S-yHw@mail.gmail.com>
Message-ID: <CAMj1kXFNeuZU66swwf_Cx7PrQJV34C0VJ7Rte5aga2Jx4S-yHw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] vhost: disable for OABI
To: "Michael S. Tsirkin" <mst@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_054529_239093_C2D13A5D 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 kbuild test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Wang <jasowang@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sudeep Dutt <sudeep.dutt@intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, kvm@vger.kernel.org,
 netdev@vger.kernel.org, virtualization@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Apr 2020 at 14:12, Michael S. Tsirkin <mst@redhat.com> wrote:
>
> vhost is currently broken on the default ARM config.
>

Where did you get this idea? The report from the robot was using a
randconfig build, and in general, AEABI is required to run anything on
any modern ARM system .


> The reason is that that uses apcs-gnu which is the ancient OABI that is been
> deprecated for a long time.
>
> Given that virtio support on such ancient systems is not needed in the
> first place, let's just add something along the lines of
>
>         depends on !ARM || AEABI
>
> to the virtio Kconfig declaration, and add a comment that it has to do
> with struct member alignment.
>
> Note: we can't make VHOST and VHOST_RING themselves have
> a dependency since these are selected. Add a new symbol for that.
>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Siggested-by: Richard Earnshaw <Richard.Earnshaw@arm.com>

typo ^^^


> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> ---
>  drivers/misc/mic/Kconfig |  2 +-
>  drivers/net/caif/Kconfig |  2 +-
>  drivers/vdpa/Kconfig     |  2 +-
>  drivers/vhost/Kconfig    | 17 +++++++++++++----
>  4 files changed, 16 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/misc/mic/Kconfig b/drivers/misc/mic/Kconfig
> index 8f201d019f5a..3bfe72c59864 100644
> --- a/drivers/misc/mic/Kconfig
> +++ b/drivers/misc/mic/Kconfig
> @@ -116,7 +116,7 @@ config MIC_COSM
>
>  config VOP
>         tristate "VOP Driver"
> -       depends on VOP_BUS
> +       depends on VOP_BUS && VHOST_DPN
>         select VHOST_RING
>         select VIRTIO
>         help
> diff --git a/drivers/net/caif/Kconfig b/drivers/net/caif/Kconfig
> index 9db0570c5beb..661c25eb1c46 100644
> --- a/drivers/net/caif/Kconfig
> +++ b/drivers/net/caif/Kconfig
> @@ -50,7 +50,7 @@ config CAIF_HSI
>
>  config CAIF_VIRTIO
>         tristate "CAIF virtio transport driver"
> -       depends on CAIF && HAS_DMA
> +       depends on CAIF && HAS_DMA && VHOST_DPN
>         select VHOST_RING
>         select VIRTIO
>         select GENERIC_ALLOCATOR
> diff --git a/drivers/vdpa/Kconfig b/drivers/vdpa/Kconfig
> index d0cb0e583a5d..aee28def466b 100644
> --- a/drivers/vdpa/Kconfig
> +++ b/drivers/vdpa/Kconfig
> @@ -14,7 +14,7 @@ if VDPA_MENU
>
>  config VDPA_SIM
>         tristate "vDPA device simulator"
> -       depends on RUNTIME_TESTING_MENU && HAS_DMA
> +       depends on RUNTIME_TESTING_MENU && HAS_DMA && VHOST_DPN
>         select VDPA
>         select VHOST_RING
>         select VHOST_IOTLB
> diff --git a/drivers/vhost/Kconfig b/drivers/vhost/Kconfig
> index cb6b17323eb2..b3486e218f62 100644
> --- a/drivers/vhost/Kconfig
> +++ b/drivers/vhost/Kconfig
> @@ -12,6 +12,15 @@ config VHOST_RING
>           This option is selected by any driver which needs to access
>           the host side of a virtio ring.
>
> +config VHOST_DPN
> +       bool "VHOST dependencies"
> +       depends on !ARM || AEABI
> +       default y
> +       help
> +         Anything selecting VHOST or VHOST_RING must depend on VHOST_DPN.
> +         This excludes the deprecated ARM ABI since that forces a 4 byte
> +         alignment on all structs - incompatible with virtio spec requirements.
> +
>  config VHOST
>         tristate
>         select VHOST_IOTLB
> @@ -27,7 +36,7 @@ if VHOST_MENU
>
>  config VHOST_NET
>         tristate "Host kernel accelerator for virtio net"
> -       depends on NET && EVENTFD && (TUN || !TUN) && (TAP || !TAP)
> +       depends on NET && EVENTFD && (TUN || !TUN) && (TAP || !TAP) && VHOST_DPN
>         select VHOST
>         ---help---
>           This kernel module can be loaded in host kernel to accelerate
> @@ -39,7 +48,7 @@ config VHOST_NET
>
>  config VHOST_SCSI
>         tristate "VHOST_SCSI TCM fabric driver"
> -       depends on TARGET_CORE && EVENTFD
> +       depends on TARGET_CORE && EVENTFD && VHOST_DPN
>         select VHOST
>         default n
>         ---help---
> @@ -48,7 +57,7 @@ config VHOST_SCSI
>
>  config VHOST_VSOCK
>         tristate "vhost virtio-vsock driver"
> -       depends on VSOCKETS && EVENTFD
> +       depends on VSOCKETS && EVENTFD && VHOST_DPN
>         select VHOST
>         select VIRTIO_VSOCKETS_COMMON
>         default n
> @@ -62,7 +71,7 @@ config VHOST_VSOCK
>
>  config VHOST_VDPA
>         tristate "Vhost driver for vDPA-based backend"
> -       depends on EVENTFD
> +       depends on EVENTFD && VHOST_DPN
>         select VHOST
>         select VDPA
>         help
> --
> MST
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
