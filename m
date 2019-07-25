Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E5B75B65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 01:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snGIFlXW2qu0haVx6P9ZhqDOH+kIyOEDHy3cHOSrcs8=; b=Y86pi6m6n/l5rt
	nNRkUp4seRBhVP7ykgz70rthIidRxf+xho0KoA5pLYTe+quK0haB+/HW0ZpxKSjmL1pfJOlO7tD9E
	eDKykJ83ULXdy6n6okjbTPI5eSkU+bW+bSMxLDmJllvS+Bjmwu9DhW7ekwuYzwaL3dmBYAiRDmliB
	gQWOSPaQtTRmRYO/LuDzkIjdJmurB0jNYk9TW3lsQhFefUDN88DKiUhmIUlYRom8qUAcIvmqCVgH2
	sC0TRSO0RZ+pWg+uRE2+qNL4aanPlAV2DkHw8AZdjwNOlrAHFUOrimlzbCIe7opCVMYPG2WKaaZeX
	e9XbtvSmzamoSEaUz4qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqnMt-0001pj-8L; Thu, 25 Jul 2019 23:41:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqnMU-0001ne-Lz
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 23:41:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id f17so19528166pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 16:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=mfnZxOLDEeVO3qt5r3vvVtE+ErJ1uBMl6JY5u4LfgE8=;
 b=NYZPG4YGuOK9pb/2O879xjVVXKhk7WAvahsuMxvB98qIUqyPiOnrQfQ7P+Ixq3MPma
 duSsO5O/64u+E2DWqn5D9KXPJfVirf/E7wKVvcvQiNcVhx+9dgbDE55NwVx+TNdUFPtL
 HvSNEOHGX3NOIDAQ/pq7NQ+imv/wl1pWJXUdb6QOiYLbj793p9+d5af8/iOesOe5lQzm
 lS/0RgANQyEPvRMRa4YecacmiEKGzvpM819v62SGJVVAytNGiVNtL8m3osIFWFdWup3d
 3xF7zo67ZntoeI8Yaft3hgxhzcj+lGU7e4kaRtzhJehqB+RlDKNfFuNEkMxdc4aEElLS
 hXRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=mfnZxOLDEeVO3qt5r3vvVtE+ErJ1uBMl6JY5u4LfgE8=;
 b=KymopgtIpk2aFK6L5AsquN8bpIIAFSWE6vVzNDwYt1KJiy8vVzdrJUTCCe+bJdci4R
 YhX6KFZc4+2GXf/BwnxFskti5GAQZOzQIXkVRHwAhwiT17LoqD6/b8fyv8vEGL9pFctw
 MyJcAcz/BN2i6Ih3nJAPkGFBlRaZujvqg2t0LpXFZ8d9IBof9LwWFo6LzitUoU9F2DzL
 kMCGBR/04qbypBbk17E1fci2nCk6aY4MIe5IiDw9eXd8ZO0HbOhBMZmcbGyA9auaRdmP
 d9JKSd3FTmuWzaqsotTZGTtC+JTl4Umd4ZN1xG+Liy326SoQLzM5PQWdK2b8IIYdflJ2
 T55Q==
X-Gm-Message-State: APjAAAVloXs6eWjIZzZHzqlkHFvQzNv5uceZITWIv0GUFZqk+C/F90uu
 /uTZAe5f+VgHgFpdAZaKx5Su7g==
X-Google-Smtp-Source: APXvYqzhoS3YtUHt0ZnWmTrTLKzKcKwKjxpCWou1XYaUkEeTyPdkWoXNaQqca3bgA+hs4A+tDUQLAw==
X-Received: by 2002:aa7:8201:: with SMTP id k1mr18609232pfi.97.1564098085191; 
 Thu, 25 Jul 2019 16:41:25 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:c1da:f078:8d:a297])
 by smtp.googlemail.com with ESMTPSA id s11sm49036956pgv.13.2019.07.25.16.41.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 16:41:24 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Xavier Ruppen <xruppen@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: odroid-n2: keep SD card regulator
 always on
In-Reply-To: <20190719192954.26481-1-xruppen@gmail.com>
References: <20190719192954.26481-1-xruppen@gmail.com>
Date: Thu, 25 Jul 2019 16:41:20 -0700
Message-ID: <7htvb9smvz.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_164126_750268_ADA9CB00 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: narmstrong@baylibre.com, martin.blumenstingl@googlemail.com,
 linux-kernel@vger.kernel.org, Xavier Ruppen <xruppen@gmail.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Xavier Ruppen <xruppen@gmail.com> writes:

> When powering off the Odroid N2, the tflash_vdd regulator is
> automatically turned off by the kernel. This is a problem
> when issuing the "reboot" command while using an SD card.
> The boot ROM does not power this regulator back on, blocking
> the reboot process at the boot ROM stage, preventing the
> SD card from being detected.
>
> Adding the "regulator-always-on" property fixes the problem.
>
> Signed-off-by: Xavier Ruppen <xruppen@gmail.com>

Thanks for the fix and the detailed background description.

Queued as a fix for v5.3.

Note that I also added this to the commit log, for the benefit of anyone
wanting to backport.

Fixes: c35f6dc5c377 ("arm64: dts: meson: Add minimal support for Odroid-N2")

>
> Here is what the boot ROM output looks like without this patch:
>
>     [root@alarm ~]# reboot 
>     [...]
>     [   24.275860] shutdown[1]: All loop devices detached.
>     [   24.278864] shutdown[1]: Detaching DM devices.
>     [   24.287105] kvm: exiting hardware virtualization
>     [   24.318776] reboot: Restarting system
>     bl31 reboot reason: 0xd
>     bl31 reboot reason: 0x0
>     system cmd  1.
>     G12B:BL:6e7c85:7898ac;FEAT:E0F83180:2000;POC:F;RCY:0;
>     EMMC:800;NAND:81;SD?:0;SD:400;USB:8;LOOP:1;EMMC:800;
>     NAND:81;SD?:0;SD:400;USB:8;LOOP:2;EMMC:800;NAND:81;
>     SD?:0;SD:400;USB:8;LOOP:3; [...]
>
> Other people can be seen having this problem on the odroid
> forum [1].
>
> The cause of the problem was found by Martin Blumenstingl
> on #linux-amlogic. We may want to add his Suggested-by tag
> if he agrees.

Added.

Thanks!

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
