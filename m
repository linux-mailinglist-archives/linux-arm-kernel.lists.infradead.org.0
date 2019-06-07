Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D13739932
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xx4QFFFWys2sr8IKUa23B+q8tSe9Oz6GCVi6Q9QF4zY=; b=uXhD/1/QaSJ/HA
	znJfqBAg+p2bifWBbaT6eXvZx98d8xccVkPvclcCA7J0uLOEGnjeQ5GI/uonNiEmRHYXBEc9/G1vS
	Sl+5e1jkO/ZpyNdII+JV2D2IhXeY3mw3XwspnUbGJlc1rxA2PT3cxUpz6POHxJlmGhOy0VdWBOizU
	UgmL4hXKevmXC3nUUbbsfspz5wpwEySBenUJjDrHgHqx2UGZEKE84/PazbJINWGKSDq0MRoQkLbiv
	UlhVCFDkbOeI9a/+sqHVbpwmFDOerZHLN3gS5GjYLIpTZpOVNdtFpQlIXBBlYf6qvsTg54qS9IDgN
	cXo0lVoFCQi4UiM/QQ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNnh-0003dZ-D2; Fri, 07 Jun 2019 22:57:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNnO-0003Y6-5A
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:57:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so1888373pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=fQlA8w20R5VYZeUdU67NBQKZzit/borpu7F/JFKTVzY=;
 b=IM0yuPDjItT0iIlSWfas5Kn7G0w0rqLoPR/JNCZuwiW0KwUbQIs+GXWnbuNKDI8AAI
 AyK56ydbb+pLrOe6BKysFUtSwObOTZAatwkihE+DcXc1pgWywkplktpY798CmVTiz4Xd
 m8lkeF3X5m6DNTJn9T39gMhsZ2eAB3FnCpysbsvso/rb3JCBhNiZJtcIxdk2BR8So3pg
 O9YiuuYOvThcvTUDIFkk4/XYezBug9WheFvtTwgM5WwtkDv5ZcM8rgKGkg0AsxaUyJBX
 r0ECyhmRJrQBd9aQ3XwUL8n+WSK/zUs71OAn3JdmWWW+dXthPS2S5W82XXG+zZyVG8jE
 ytdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=fQlA8w20R5VYZeUdU67NBQKZzit/borpu7F/JFKTVzY=;
 b=QRNT9ArftRfatFGRX2qykJeiGXFJM9BYji4dSxY07oyjmT9NFimhJgMnKa48L9zbEM
 GqUidlJJWNXLT1gZ5q61aNS/KD6gnTwqgQGLUv7OZ4TYo5yf20Ez9S3kvQCz+Fwfz2X3
 BqUywyqgbiqXe6Qt3w7douR8DcrIF4fZ0FaMrUsjNOZfJs8w5cXoE3w4g1IHNtTGAyFR
 NaS9ZCsWuqha7e/3bhUMadKwOf0S1RKwLj9h+pOpv3OqK0fYcRNK1y1qsu73asKyrG46
 WSAA17kD801+02uTbxv+3nOqwIq9kU0Vk5NdqmCCBHP4gnk1HRLCmzUB+F5G+QWJQtyY
 lVJQ==
X-Gm-Message-State: APjAAAWU8a7MzUH0ZhpLJ++WhuX2FBKy0ve/pCAai/UqMSTd1Dbnii7F
 OIgzrP2nHSzNnOFSAggBZ+ANMA==
X-Google-Smtp-Source: APXvYqyhwQrMI0ehAWXsYruJsRs4Nc0Y05HWieJ4GsaKFrNkMltfnzDyY/rsRuJnvVzrOHRqgC/hPQ==
X-Received: by 2002:a62:2643:: with SMTP id m64mr59689157pfm.46.1559948232972; 
 Fri, 07 Jun 2019 15:57:12 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id d19sm2765467pjs.22.2019.06.07.15.57.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 15:57:12 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, kishon@ti.com
Subject: Re: [PATCH v2] phy: meson-g12a-usb3-pcie: disable locking for
 cr_regmap
In-Reply-To: <20190605090215.29905-1-narmstrong@baylibre.com>
References: <20190605090215.29905-1-narmstrong@baylibre.com>
Date: Fri, 07 Jun 2019 15:57:11 -0700
Message-ID: <7hh891atrs.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_155714_231960_89462721 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Locking is not needed for the phy_g12a_usb3_pcie_cr_bus_read/write() and
> currently it causes the following BUG because of the usage of the
> regmap_read_poll_timeout() running in spinlock_irq, configured by regmap fast_io.
>
> Simply disable locking in the cr_regmap config since it's only used from the
> PHY init callback function.
>
> BUG: sleeping function called from invalid context at drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c:85
> in_atomic(): 1, irqs_disabled(): 128, pid: 60, name: kworker/3:1
> [snip]
> Workqueue: events deferred_probe_work_func
> Call trace:
>  dump_backtrace+0x0/0x190
>  show_stack+0x14/0x20
>  dump_stack+0x90/0xb4
>  ___might_sleep+0xec/0x110
>  __might_sleep+0x50/0x88
>  phy_g12a_usb3_pcie_cr_bus_addr.isra.0+0x80/0x1a8
>  phy_g12a_usb3_pcie_cr_bus_read+0x34/0x1d8
>  _regmap_read+0x60/0xe0
>  _regmap_update_bits+0xc4/0x110
>  regmap_update_bits_base+0x60/0x90
>  phy_g12a_usb3_pcie_init+0xdc/0x210
>  phy_init+0x74/0xd0
>  dwc3_meson_g12a_probe+0x2cc/0x4d0
>  platform_drv_probe+0x50/0xa0
>  really_probe+0x20c/0x3b8
>  driver_probe_device+0x68/0x150
>  __device_attach_driver+0xa8/0x170
>  bus_for_each_drv+0x64/0xc8
>  __device_attach+0xd8/0x158
>  device_initial_probe+0x10/0x18
>  bus_probe_device+0x90/0x98
>  deferred_probe_work_func+0x94/0xe8
>  process_one_work+0x1e0/0x338
>  worker_thread+0x230/0x458
>  kthread+0x134/0x138
>  ret_from_fork+0x10/0x1c
>
> Fixes: 36077e16c050 ("phy: amlogic: Add Amlogic G12A USB3 + PCIE Combo PHY Driver")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Tested-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
