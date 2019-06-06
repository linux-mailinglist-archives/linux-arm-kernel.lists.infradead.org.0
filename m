Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D37F37A20
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/XvNNH8P9DVxFSkIe5Unla6mqgq30efafwUMZZdZN8=; b=F0KLkrMghZfEy1
	FEd59vU8AhuYqD1XjdQBlRPIHWbRsNwuc2Tyj9wNKxop+oi5r0+xKXT5YBpVzWLXi5lAIRl4T7Czp
	SkauFCEsOHCZ49yqhSSmt1GCj422y88ZI1iTm++K3rgtcVIJ3DEjcjVt0V984lWwjH0Dw/fl+U9x/
	36QwlJAuU0mZtG6LY6O0qVrFT5VI3WpRaV8/MG49nTRQdCpavrSulh+TNmTwLGAUY0jxXmnvAN+Gx
	dfWEDkiqlAlF7n1Obwqc2leR3f/fgwvzSmwjunW24TOTH1lerhgc5Ay+IvCbOYEpI4wTCEUa/2U5C
	09LbhbL7r4zhswEZi4CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvdw-0003oM-8l; Thu, 06 Jun 2019 16:53:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvdn-0003mj-4W
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:53:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so1673737pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=zGrqsmVewnpRBL6cgILQS0mdV4kn0nEbbTIMAtPnZ+0=;
 b=BSqi0C2QpXTjyH/B1kVfcYczMGoJJzapcHSKvOz6LV0IIIDSFaGv+EF8ULJghex95X
 bVVg8Q4OJtZf1ZNH/uJZKqEHDQwdjmZSGofFxXOhMFsizAuOjtaqb55JrX/Z3M1qADiu
 XOpO7NAcmvvb19l488bihdEov0+9zp2MoK124Gji15egxg4QRCYgCBUFpUZ+8enfpnZK
 oSS0k+dDTj8R8SO2spVt422LdwjFCYu5kih9OGSm1GFN5vWDElPfetT4y7tJJR+6GrRG
 M241gxaRtBUsB0irpw5n45jxZJJj53Ufa1xDc+l/CsYU81gvk+bc7qmWx2RsnyAxJ5pX
 Fxow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=zGrqsmVewnpRBL6cgILQS0mdV4kn0nEbbTIMAtPnZ+0=;
 b=Y88Z+7GChUUvKJUeLARmpNSszw4iAfk0g10HdMYQLjgmDLjfp1ZCM1F2iJlqq1vJMw
 pghH58IJ0fSsfJktswatr7RdWG5MaJkw0YCgUSXb+0hWclpKwNKMmeqdvOufV7rG91b6
 pFXprDGNrdnBZTjAvXYsIFzR6glfM4JnY0xMHH2raqdQWsef0tQRy84tqfl/wRcTKJYC
 pg+0UJY9B2kAwUs7HLAkKhGOgwTfCz7dZsH1QV9G4I3b656GlDn+2RoLc5aa21P59Iq9
 1vqJsOKQNZB0Hb7ueJ+Bgy1+U1q9M5eSHH/PrJpJhECN8NwTbU3K7blUW3n9aLX33TrS
 tjag==
X-Gm-Message-State: APjAAAXDIdzCfjLfd29JZo0dp9iyEmcrjuTd7U//pzIrTXXI75vxdjQQ
 rctj1u+TZbqq4r3FzT9NjsFC8Q==
X-Google-Smtp-Source: APXvYqxZ4JQdtqCpus9ijZY0A4itD2/gcxz6vva8D0mzSp8j3sFAes2+/v8tO/ZWyHXyyw0rHJanlA==
X-Received: by 2002:a65:520b:: with SMTP id o11mr4270398pgp.184.1559840004995; 
 Thu, 06 Jun 2019 09:53:24 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id g15sm5711877pfm.119.2019.06.06.09.53.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 09:53:24 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/meson: Add support for XBGR8888 & ABGR8888 formats
In-Reply-To: <20190429075238.7884-1-narmstrong@baylibre.com>
References: <20190429075238.7884-1-narmstrong@baylibre.com>
Date: Thu, 06 Jun 2019 09:53:23 -0700
Message-ID: <7hblzafyf0.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_095327_176636_0FD3284D 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

> Add missing XBGR8888 & ABGR8888 formats variants from the primary plane.
>
> Fixes: bbbe775ec5b5 ("drm: Add support for Amlogic Meson Graphic Controller")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
