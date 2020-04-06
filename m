Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C6A19F5A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spWn5hITlwC55xlFNxQGQzfnTzS67P49hDJUHLEOWsw=; b=P76YueQPmXO8Af
	+NGgSov+jNsrdBHjtFynDNgRWWksyllRY499VT33zlokOjFr6vqQXcYvP+wMt4WTce7SU55EBuBbQ
	wqHaqZvJQCKOOcRniC/TRpFFXOZU4nm7clpRltE3Ca06SGL454qN6VZbRg7ZXH96E83FofX9oP4f3
	7XzIf9QHew8WuaxmQXhDu8JzVPVUU/lAsj2XgNaBJ0d/ghzZJmABVZyQZqipsif3w5F8Shlym0TN2
	52PCMn8mW82AxwTgA+/rRFuUuBreZGGz9hyK/bIqhG3y1kkoxoNBPKEgKMm9wU2eRYwQuapeyosip
	J1U4XOaGToWJlPakDnJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQdF-0003a5-Ea; Mon, 06 Apr 2020 12:13:37 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQcW-00035i-Hn
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586175170;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=M7VLnVLCLaJHk19KTSuFFKbEMmJ3cspHdijFFzjlWW4=;
 b=UJy1A/YCmBZc+IgaF5PvRQeA8jCHJiqGOdwWQzmxVlmizzjjD6RQIV4Miss4Vnu4+JcYsW
 lIEU5fWPmeA9z5rLMrUjEAQYE42mW166iND08SWhvqB22XuLuIgBRCz8kS7SeHMCH7rU2S
 fHpgNuIZ6tknIXzI29Hq3sL14FYapZE=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-cfwCSwwqOfqThn-ZT3vUJg-1; Mon, 06 Apr 2020 08:12:49 -0400
X-MC-Unique: cfwCSwwqOfqThn-ZT3vUJg-1
Received: by mail-wr1-f70.google.com with SMTP id t13so3866560wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 05:12:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dQAEJjJ23njMAMzpYV3TzkQNiOgjGmbglBN46bPRZ/k=;
 b=ZMLONW6hgvMp5NQmhpxJWlWSfb9GYnCjWLwoh/RO9sSDTQTpkfunZ+JpCFRQE6d+Zy
 OF2Nq0sQtMbnBOYGjKbkHNTR3+l/0LfHR/q9wDqnKX23TlBOznkFy7xZQ/NCTE0us4bg
 UaFEYmKkJBwuy2IxqCzDAAjL/XaFoYHik+Mz/V6RDwCndsDOXKuwbFwjhpzbKNWINHD5
 yYf7AH9m+ExKMeAQg//o2Ls+XKQ2cKLRwqddsXubf1DU4Gkaa7LpMEwJKByFUCa9xF7a
 o4ctTiSxceg+zA3Bo3BF9iVMl3ssh2xbE6BQi6JE/3rjLrdQkPf9qKJSVWQcLlof3Hfq
 aGgg==
X-Gm-Message-State: AGi0PuanyIbtej12U5XFJpxah7NsmbL3EmgTZMF317LIdO4m2QDlzpIP
 4mkSIx3xCDJzUZHFQy/fiHAHjx3LNfOiSo30O7EGM00LneWHVhwwmvU+Y2glOSywK5aG2kpnpoZ
 XzI8nQ4IxOazto7UHqNutYFMuJSV7evQVPAI=
X-Received: by 2002:adf:bc12:: with SMTP id s18mr25165007wrg.220.1586175167831; 
 Mon, 06 Apr 2020 05:12:47 -0700 (PDT)
X-Google-Smtp-Source: APiQypLwgTks29i/561QCQdpKOflCqiUKEhbZa/gBiQmA5aq0hS0WhmnIdFdpGtSrxr+GiRrPLsSEg==
X-Received: by 2002:adf:bc12:: with SMTP id s18mr25164995wrg.220.1586175167620; 
 Mon, 06 Apr 2020 05:12:47 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id c20sm11334886wmd.36.2020.04.06.05.12.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 05:12:47 -0700 (PDT)
Date: Mon, 6 Apr 2020 08:12:44 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] vhost: disable for OABI
Message-ID: <20200406121233.109889-3-mst@redhat.com>
References: <20200406121233.109889-1-mst@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20200406121233.109889-1-mst@redhat.com>
X-Mailer: git-send-email 2.24.1.751.gd10ce2899c
X-Mutt-Fcc: =sent
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_051252_687723_CE08E193 
X-CRM114-Status: GOOD (  14.67  )
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
Cc: Richard Earnshaw <Richard.Earnshaw@arm.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 kbuild test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 "christophe.lyon@st.com" <christophe.lyon@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Wang <jasowang@redhat.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 Sudeep Dutt <sudeep.dutt@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, kvm@vger.kernel.org,
 netdev@vger.kernel.org, virtualization@lists.linux-foundation.org,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vhost is currently broken on the default ARM config.

The reason is that that uses apcs-gnu which is the ancient OABI that is been
deprecated for a long time.

Given that virtio support on such ancient systems is not needed in the
first place, let's just add something along the lines of

	depends on !ARM || AEABI

to the virtio Kconfig declaration, and add a comment that it has to do
with struct member alignment.

Note: we can't make VHOST and VHOST_RING themselves have
a dependency since these are selected. Add a new symbol for that.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Siggested-by: Richard Earnshaw <Richard.Earnshaw@arm.com>
Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
---
 drivers/misc/mic/Kconfig |  2 +-
 drivers/net/caif/Kconfig |  2 +-
 drivers/vdpa/Kconfig     |  2 +-
 drivers/vhost/Kconfig    | 17 +++++++++++++----
 4 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/misc/mic/Kconfig b/drivers/misc/mic/Kconfig
index 8f201d019f5a..3bfe72c59864 100644
--- a/drivers/misc/mic/Kconfig
+++ b/drivers/misc/mic/Kconfig
@@ -116,7 +116,7 @@ config MIC_COSM
 
 config VOP
 	tristate "VOP Driver"
-	depends on VOP_BUS
+	depends on VOP_BUS && VHOST_DPN
 	select VHOST_RING
 	select VIRTIO
 	help
diff --git a/drivers/net/caif/Kconfig b/drivers/net/caif/Kconfig
index 9db0570c5beb..661c25eb1c46 100644
--- a/drivers/net/caif/Kconfig
+++ b/drivers/net/caif/Kconfig
@@ -50,7 +50,7 @@ config CAIF_HSI
 
 config CAIF_VIRTIO
 	tristate "CAIF virtio transport driver"
-	depends on CAIF && HAS_DMA
+	depends on CAIF && HAS_DMA && VHOST_DPN
 	select VHOST_RING
 	select VIRTIO
 	select GENERIC_ALLOCATOR
diff --git a/drivers/vdpa/Kconfig b/drivers/vdpa/Kconfig
index d0cb0e583a5d..aee28def466b 100644
--- a/drivers/vdpa/Kconfig
+++ b/drivers/vdpa/Kconfig
@@ -14,7 +14,7 @@ if VDPA_MENU
 
 config VDPA_SIM
 	tristate "vDPA device simulator"
-	depends on RUNTIME_TESTING_MENU && HAS_DMA
+	depends on RUNTIME_TESTING_MENU && HAS_DMA && VHOST_DPN
 	select VDPA
 	select VHOST_RING
 	select VHOST_IOTLB
diff --git a/drivers/vhost/Kconfig b/drivers/vhost/Kconfig
index cb6b17323eb2..b3486e218f62 100644
--- a/drivers/vhost/Kconfig
+++ b/drivers/vhost/Kconfig
@@ -12,6 +12,15 @@ config VHOST_RING
 	  This option is selected by any driver which needs to access
 	  the host side of a virtio ring.
 
+config VHOST_DPN
+	bool "VHOST dependencies"
+	depends on !ARM || AEABI
+	default y
+	help
+	  Anything selecting VHOST or VHOST_RING must depend on VHOST_DPN.
+	  This excludes the deprecated ARM ABI since that forces a 4 byte
+	  alignment on all structs - incompatible with virtio spec requirements.
+
 config VHOST
 	tristate
 	select VHOST_IOTLB
@@ -27,7 +36,7 @@ if VHOST_MENU
 
 config VHOST_NET
 	tristate "Host kernel accelerator for virtio net"
-	depends on NET && EVENTFD && (TUN || !TUN) && (TAP || !TAP)
+	depends on NET && EVENTFD && (TUN || !TUN) && (TAP || !TAP) && VHOST_DPN
 	select VHOST
 	---help---
 	  This kernel module can be loaded in host kernel to accelerate
@@ -39,7 +48,7 @@ config VHOST_NET
 
 config VHOST_SCSI
 	tristate "VHOST_SCSI TCM fabric driver"
-	depends on TARGET_CORE && EVENTFD
+	depends on TARGET_CORE && EVENTFD && VHOST_DPN
 	select VHOST
 	default n
 	---help---
@@ -48,7 +57,7 @@ config VHOST_SCSI
 
 config VHOST_VSOCK
 	tristate "vhost virtio-vsock driver"
-	depends on VSOCKETS && EVENTFD
+	depends on VSOCKETS && EVENTFD && VHOST_DPN
 	select VHOST
 	select VIRTIO_VSOCKETS_COMMON
 	default n
@@ -62,7 +71,7 @@ config VHOST_VSOCK
 
 config VHOST_VDPA
 	tristate "Vhost driver for vDPA-based backend"
-	depends on EVENTFD
+	depends on EVENTFD && VHOST_DPN
 	select VHOST
 	select VDPA
 	help
-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
