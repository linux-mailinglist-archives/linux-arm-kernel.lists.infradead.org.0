Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A1719F5A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJ2JFPZl6IVIlQMxSHKYb25MgavyvDyQes7W/hX4r4o=; b=Mlg0m/mgrcJT+2
	KsCZlJC8zbkgV3XTA0EeAi2MRqpe/VpNUgpNmR6LscP7RcxZ07QhIRi2y0p2tUTfrp8JM/vn7X6LM
	eMCB9Ct/OIQezrIOCoW1Dr8K/jqbZiazgXl0xR26L3SBEQopHLf4FOVpZ1ZmH9n3L7y6jGBmhi2cF
	E69UYQTKOCLYp7xfjSwJYi3P8W+Mb7CpaTY98A+jB2Rrd1MYhF2zoI7opw8JJ9wwojkgEfiqsAtRI
	X7D1zDdrblqGOnweLZ/aGH+d05wJGe6gxbUlZwWTCvAqc3KTavKXmwtetlOf+3ls55toJ4ZLKM8oY
	bVp2L0Fb4XYj96QeRKKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQcv-0003KW-Fx; Mon, 06 Apr 2020 12:13:17 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQcS-00032x-II
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586175167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UIwaHcrRaun7oD2Us25d49j/ZabCU88f9vWKyKWVwWc=;
 b=XKklBzQj3W6O5m/d9aYjTPjlP7vMLOP/+w2VrYipCG4ZpdqN/khDBZTNAHOM1rRYVQBuTP
 b6jaBFk2G9CqSutFFObOaZFcY7v5c8Xwbmro9UFzNTgvvVM7RKVESi2AJwxY6lfRq9N9rr
 kAhpyv+Lf1zmmxSDEJlWDOdAuV/pmO4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-GiMR9EJ2OG6R3PCxjvJILA-1; Mon, 06 Apr 2020 08:12:45 -0400
X-MC-Unique: GiMR9EJ2OG6R3PCxjvJILA-1
Received: by mail-wm1-f71.google.com with SMTP id f81so1242503wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 05:12:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ouQfW90npHD033GMDM+a2FinSD7SQ9pCB41aFB2pv8M=;
 b=ff8xvKNSnbhpqJmU7aF6PSSJmurxPM5cClyYZWvbD5Ng8UJlGrT71+8i9x2ko/L4LM
 evf63LGomKIhEBUcBqqlKXNGPNHO0/ie/o2Qga6RPPqB5rqgglIH1qST68Y6aMqd7J8t
 dNziB8IXJjAYRzn/7I+Ldj+Dt7PVEPmJQPlLV6B/iqLvRHOpbMqKdZcdiX+7DBuwqtX9
 LA8TFfenmxvleEx35d9EIISiFrAEJE4tvZOOUlkJdnOmif99tQ5i8CnuT/DPjSPya8cS
 KLklNmXje73HtcjRR+fftAdqIc019tAnTP3ZQg7Y6ylyg3kh18IDkrzXRn22W1fmHW/H
 UL0Q==
X-Gm-Message-State: AGi0Pua+8jJH0Gd/c/GxDze9JtE2isHwHs5xbva9BZ++mcBWleIQRmAF
 LGV7HM7FFBUhRIG731Epr3tMEBdf1cF3FPmoKLdLojQJKnuTF6cEJNfb3IKEZETybY6JJAsebed
 JtXxXiB8ekSFf7WJbYmct1YjQCvmtFye8Yno=
X-Received: by 2002:a7b:cb03:: with SMTP id u3mr20975148wmj.12.1586175164697; 
 Mon, 06 Apr 2020 05:12:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypK4UDlctUcc5AyT0Y1eM00Stu92bOV1riiMCGdPiZpDMtuNKkpU/qBM4BYhbqFnYLAuIIxflQ==
X-Received: by 2002:a7b:cb03:: with SMTP id u3mr20975119wmj.12.1586175164472; 
 Mon, 06 Apr 2020 05:12:44 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id h13sm870991wru.64.2020.04.06.05.12.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 05:12:43 -0700 (PDT)
Date: Mon, 6 Apr 2020 08:12:42 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] vdpa-sim: depend on HAS_DMA
Message-ID: <20200406121233.109889-2-mst@redhat.com>
References: <20200406121233.109889-1-mst@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20200406121233.109889-1-mst@redhat.com>
X-Mailer: git-send-email 2.24.1.751.gd10ce2899c
X-Mutt-Fcc: =sent
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_051248_691920_1388933E 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
 kbuild test robot <lkp@intel.com>,
 "christophe.lyon@st.com" <christophe.lyon@st.com>,
 Jason Wang <jasowang@redhat.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 virtualization@lists.linux-foundation.org,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

set_dma_ops isn't available on all architectures:

        make ARCH=um
...

   drivers/vdpa/vdpa_sim/vdpa_sim.c: In function 'vdpasim_create':
>> drivers/vdpa/vdpa_sim/vdpa_sim.c:324:2: error: implicit declaration of function 'set_dma_ops'; did you mean 'set_groups'?
+[-Werror=implicit-function-declaration]
     set_dma_ops(dev, &vdpasim_dma_ops);
     ^~~~~~~~~~~
     set_groups

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
---
 drivers/vdpa/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/vdpa/Kconfig b/drivers/vdpa/Kconfig
index 08b615f2da39..d0cb0e583a5d 100644
--- a/drivers/vdpa/Kconfig
+++ b/drivers/vdpa/Kconfig
@@ -14,7 +14,7 @@ if VDPA_MENU
 
 config VDPA_SIM
 	tristate "vDPA device simulator"
-	depends on RUNTIME_TESTING_MENU
+	depends on RUNTIME_TESTING_MENU && HAS_DMA
 	select VDPA
 	select VHOST_RING
 	select VHOST_IOTLB
-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
