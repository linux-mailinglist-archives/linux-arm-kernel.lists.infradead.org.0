Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE5519F636
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8Sxnz4FZ9NxAEGfF+tpbCnJLErkYUa7woUiq8be6EU=; b=Dz8XtKmOtTkRFI
	ZcuNZn7bYwGubCCDFuFnFsmNx36fWufENymO6TPAk9/HfT7VkHYKcEoksZo/rI6jFlZQes+kR0nxv
	kjUcnAbrM9nFl2iCrY4AuN0z5S0kMS2eyuD+L1czjhBFJtiWqElJpo+sI0aEjBWPUIB5pqpXo6cIt
	fCBnOVTJmp/EReY2icLhYW4d2mp/h11j+ZOD9kkd+TdimWFCNmdMbPDiuxPWYhnKryA9TpQXWAf9z
	Luc2GThvJCKhsha6Yia4k5LlLdSmp0hM4Izh/88YlVDi6mYJ0R1Tmy95bQNvxiUWyWPfYZ9AN4pPr
	WJyv5RjFPCBz7j35HleA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRJR-0000Hk-MW; Mon, 06 Apr 2020 12:57:13 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRJI-0000HG-7f
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586177822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0FWGzPzG637AbR5VZeorQ2Gm882bkKl9WJboO16RPtk=;
 b=gshAB07YOTv7oQD1huXKOCaVdevDjeXudIhrE55zRT/1fvCNFZvzAmV67Cgrg0czgjxlmx
 yTZztjGBaoz8JdcqHR5Qp6vqQyVlCUkSsxmc92LS+rZkQHmEC/Fngk59M6JvLanvPcDwpj
 3pW+VjD6IDRxpK/S4jDbYhGlaHbkuNI=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-510-jKKneN80PhWGpfnetu-o_A-1; Mon, 06 Apr 2020 08:57:01 -0400
X-MC-Unique: jKKneN80PhWGpfnetu-o_A-1
Received: by mail-wr1-f72.google.com with SMTP id m15so8359710wrb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 05:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zA3oXFlf+tA0XqNfZvZ8NSCiPUHKJG3g0r1brnP9MhE=;
 b=ZHmqCD48mdmUwK7G/VeAYjvy/fg+h2crBkV6GtEqeebqIamL1ITKPU+A8y8jhg+6RR
 9xPgmp5NAE4S3arhtQEkc/sN+uro08Q6URJo7w4F1b4cYSjfyGUEwuLkUhkz5RYdzQMy
 /e1KFuMxNRZv6UmiUU2fhQ5JQCQF7Gb5IX6uwdIzWfLmQ9MaP7NQoVZPcJCD9WRg9PYx
 WnaIY9jGgcoq+rpyndZF7fXlgw+1vc0BdE2Qd5g/CXIKrPFeDvoGmGJBoq0SZUlV2Yms
 z5GIuP3D5MDDs9Pz0ZurnB8XTw4xNW6sgrO0gfKSKDJBXEH6GGbTQHTSReHudaOnRLm9
 vMVg==
X-Gm-Message-State: AGi0PuZNtHA0rAe+MK004EHaKAQDI1/TAsSsX9nHZUwubjb1y9WXbWAr
 OGXXW/LUaGUUlj+oXDrdChETB8GGOWhC9pzpQGnX4+URmka6KzECibKQRB3JDy5cvZzARqe6MW3
 ZlQD0dKf503Bagwpu8r1NY/v8IblyGzmsihk=
X-Received: by 2002:a7b:c359:: with SMTP id l25mr22974378wmj.149.1586177820040; 
 Mon, 06 Apr 2020 05:57:00 -0700 (PDT)
X-Google-Smtp-Source: APiQypLkRAUfyI4Cg7RaR/a2JYi9c2Rr5Wp8n4wDNVakzk3f4Q2RbJ2sjxo/Naa7H/tihWUIO6KVSg==
X-Received: by 2002:a7b:c359:: with SMTP id l25mr22974349wmj.149.1586177819765; 
 Mon, 06 Apr 2020 05:56:59 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id i1sm1637648wmb.33.2020.04.06.05.56.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 05:56:59 -0700 (PDT)
Date: Mon, 6 Apr 2020 08:56:56 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 2/2] vhost: disable for OABI
Message-ID: <20200406085453-mutt-send-email-mst@kernel.org>
References: <20200406121233.109889-1-mst@redhat.com>
 <20200406121233.109889-3-mst@redhat.com>
 <CAMj1kXFNeuZU66swwf_Cx7PrQJV34C0VJ7Rte5aga2Jx4S-yHw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMj1kXFNeuZU66swwf_Cx7PrQJV34C0VJ7Rte5aga2Jx4S-yHw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_055704_350743_3F7CA6AE 
X-CRM114-Status: GOOD (  27.27  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

On Mon, Apr 06, 2020 at 02:45:13PM +0200, Ard Biesheuvel wrote:
> On Mon, 6 Apr 2020 at 14:12, Michael S. Tsirkin <mst@redhat.com> wrote:
> >
> > vhost is currently broken on the default ARM config.
> >
> 
> Where did you get this idea? The report from the robot was using a
> randconfig build, and in general, AEABI is required to run anything on
> any modern ARM system .

Oh - I forgot it's randconfig. This part is wrong, sorry.
I decided to just force 2-byte alignment
instead (seems more robust) but I'll take this into account
if we do decide to add this dependency.


> 
> > The reason is that that uses apcs-gnu which is the ancient OABI that is been
> > deprecated for a long time.
> >
> > Given that virtio support on such ancient systems is not needed in the
> > first place, let's just add something along the lines of
> >
> >         depends on !ARM || AEABI
> >
> > to the virtio Kconfig declaration, and add a comment that it has to do
> > with struct member alignment.
> >
> > Note: we can't make VHOST and VHOST_RING themselves have
> > a dependency since these are selected. Add a new symbol for that.
> >
> > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > Siggested-by: Richard Earnshaw <Richard.Earnshaw@arm.com>
> 
> typo ^^^


Thanks!

> 
> > Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> > ---
> >  drivers/misc/mic/Kconfig |  2 +-
> >  drivers/net/caif/Kconfig |  2 +-
> >  drivers/vdpa/Kconfig     |  2 +-
> >  drivers/vhost/Kconfig    | 17 +++++++++++++----
> >  4 files changed, 16 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/misc/mic/Kconfig b/drivers/misc/mic/Kconfig
> > index 8f201d019f5a..3bfe72c59864 100644
> > --- a/drivers/misc/mic/Kconfig
> > +++ b/drivers/misc/mic/Kconfig
> > @@ -116,7 +116,7 @@ config MIC_COSM
> >
> >  config VOP
> >         tristate "VOP Driver"
> > -       depends on VOP_BUS
> > +       depends on VOP_BUS && VHOST_DPN
> >         select VHOST_RING
> >         select VIRTIO
> >         help
> > diff --git a/drivers/net/caif/Kconfig b/drivers/net/caif/Kconfig
> > index 9db0570c5beb..661c25eb1c46 100644
> > --- a/drivers/net/caif/Kconfig
> > +++ b/drivers/net/caif/Kconfig
> > @@ -50,7 +50,7 @@ config CAIF_HSI
> >
> >  config CAIF_VIRTIO
> >         tristate "CAIF virtio transport driver"
> > -       depends on CAIF && HAS_DMA
> > +       depends on CAIF && HAS_DMA && VHOST_DPN
> >         select VHOST_RING
> >         select VIRTIO
> >         select GENERIC_ALLOCATOR
> > diff --git a/drivers/vdpa/Kconfig b/drivers/vdpa/Kconfig
> > index d0cb0e583a5d..aee28def466b 100644
> > --- a/drivers/vdpa/Kconfig
> > +++ b/drivers/vdpa/Kconfig
> > @@ -14,7 +14,7 @@ if VDPA_MENU
> >
> >  config VDPA_SIM
> >         tristate "vDPA device simulator"
> > -       depends on RUNTIME_TESTING_MENU && HAS_DMA
> > +       depends on RUNTIME_TESTING_MENU && HAS_DMA && VHOST_DPN
> >         select VDPA
> >         select VHOST_RING
> >         select VHOST_IOTLB
> > diff --git a/drivers/vhost/Kconfig b/drivers/vhost/Kconfig
> > index cb6b17323eb2..b3486e218f62 100644
> > --- a/drivers/vhost/Kconfig
> > +++ b/drivers/vhost/Kconfig
> > @@ -12,6 +12,15 @@ config VHOST_RING
> >           This option is selected by any driver which needs to access
> >           the host side of a virtio ring.
> >
> > +config VHOST_DPN
> > +       bool "VHOST dependencies"
> > +       depends on !ARM || AEABI
> > +       default y
> > +       help
> > +         Anything selecting VHOST or VHOST_RING must depend on VHOST_DPN.
> > +         This excludes the deprecated ARM ABI since that forces a 4 byte
> > +         alignment on all structs - incompatible with virtio spec requirements.
> > +
> >  config VHOST
> >         tristate
> >         select VHOST_IOTLB
> > @@ -27,7 +36,7 @@ if VHOST_MENU
> >
> >  config VHOST_NET
> >         tristate "Host kernel accelerator for virtio net"
> > -       depends on NET && EVENTFD && (TUN || !TUN) && (TAP || !TAP)
> > +       depends on NET && EVENTFD && (TUN || !TUN) && (TAP || !TAP) && VHOST_DPN
> >         select VHOST
> >         ---help---
> >           This kernel module can be loaded in host kernel to accelerate
> > @@ -39,7 +48,7 @@ config VHOST_NET
> >
> >  config VHOST_SCSI
> >         tristate "VHOST_SCSI TCM fabric driver"
> > -       depends on TARGET_CORE && EVENTFD
> > +       depends on TARGET_CORE && EVENTFD && VHOST_DPN
> >         select VHOST
> >         default n
> >         ---help---
> > @@ -48,7 +57,7 @@ config VHOST_SCSI
> >
> >  config VHOST_VSOCK
> >         tristate "vhost virtio-vsock driver"
> > -       depends on VSOCKETS && EVENTFD
> > +       depends on VSOCKETS && EVENTFD && VHOST_DPN
> >         select VHOST
> >         select VIRTIO_VSOCKETS_COMMON
> >         default n
> > @@ -62,7 +71,7 @@ config VHOST_VSOCK
> >
> >  config VHOST_VDPA
> >         tristate "Vhost driver for vDPA-based backend"
> > -       depends on EVENTFD
> > +       depends on EVENTFD && VHOST_DPN
> >         select VHOST
> >         select VDPA
> >         help
> > --
> > MST
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
