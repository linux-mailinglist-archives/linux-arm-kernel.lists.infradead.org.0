Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0415BFAD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 23:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3pyJHl0x6vHO1dy1S/5jxkLrrVT7fEq5wJtgzH7CHI=; b=Nvgema/Ex21k2X
	ICxU7OydKIrPI+IJdaRGew0yh0tdFOia3YysSjE3TApUJR7cboHQP6S/flHORbCUuNy+sC4slqJK4
	wheyqNbHn7Ge27+Z1901QeOMSxjMa+HfyF1/DDWsVNqBPfe2I3XUFxsSyIYSE6uWZEWUL61Riej1e
	1DZLoh6q6E5AY3WJZ+eoVqe2eHuLH5IMJ8KR63EnGcMwc7KprpPdo9hYTRyn+n5v3E5SKw37tAohG
	y/jHEL21e9L7iO/sKO9KpFjSGgKPaerDlMVnNT+lB8oDwvifHNMaMi1Z1nKSO1aacjtdbWoWlrzgp
	vRWrXLd/w7NWmB84hKTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDb0a-0002xm-PU; Thu, 26 Sep 2019 21:09:04 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDb0M-0002wl-Hk
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 21:08:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id y35so2228408pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 14:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=64FsXztamILPIXBz8vnJFTeQvvjQM5nsSnyBK9zQNDE=;
 b=k0/9eds+hd+BC79ShHCoMv49nic1Fp/kisQ0HqSB6g8SATniIReUW0nkEZQucE8+ys
 XQFTYS6R6oBJ/u+XIcl5aeONKAdNI+5EjOFF3U4iCNvmeZ4WouwX83itdH2emjOW3qax
 gyvrGOlcwY8LCHMB3a43ud46l9YyZsB6/dJ5pQmv78bIiv7OPJhqEVpwHJsGQw9gN3Ez
 rdnBuYu2A1gVvxYg6gdoh0I4W9c9wnzK4OjrlTT3twucSMbdRPTAtarOL4zTWydNdB+y
 vXD+8LfJy+AASglrdLg80MFsw6vZqrU3G9wW4xDnL9rO8QtDmxociGbah4vAsLUaI/VK
 lgHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=64FsXztamILPIXBz8vnJFTeQvvjQM5nsSnyBK9zQNDE=;
 b=LxiCyPm5q7Zezx5IwowlYckO1NjVkPjdNHWiuE9K8jyP/KtsjCYiGeWa3DTJsL3mi6
 HYgfydSGGZVHrTyMzpDqMGjvGsD6k4sVMCQWZQA915LrIdSMwI7n4kKBptaHOIhhPKBN
 zfOWkaN/uip9NnVrAJ2DDkCJdhsgiNiWNKdV1D5sdrXNw4q1AmZg7DLfRaIfVHUfiump
 84NkFloMvuq6C2jZ6Vgg36kcAyrrvyDfxH42cnliHhftmw/bE2YJ2z7gB4Hb4YahXU6h
 h8fTUyKE5ljShskAKg6UvTAigHzzjJfp2R592cxuKNs+mwZ3eUMT7k6vN11/D5ruIGTK
 TeMw==
X-Gm-Message-State: APjAAAXpn0o7UnMAr+HhR9QuYoJiOeIDMn0Bn+KTsjP7ut3i9VlHsqca
 Yvwfx3R7O+Txd9T6TRWV0saTAA==
X-Google-Smtp-Source: APXvYqyaILWTkOAOkVKUYUi6ZlBPL4LdbBfWbfkBjK3kyAgmLwz9VTCcpRbN9MZPBQkdiTqonemB4A==
X-Received: by 2002:a63:2aca:: with SMTP id q193mr5417034pgq.156.1569532129545; 
 Thu, 26 Sep 2019 14:08:49 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id g24sm6141171pgn.90.2019.09.26.14.08.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 26 Sep 2019 14:08:48 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH RESEND] drm/meson: vclk: use the correct G12A frac max
 value
In-Reply-To: <20190828132311.23881-1-narmstrong@baylibre.com>
References: <20190828132311.23881-1-narmstrong@baylibre.com>
Date: Thu, 26 Sep 2019 14:08:48 -0700
Message-ID: <7hr242kbof.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_140850_585245_73A4CDB6 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> When calculating the HDMI PLL settings for a DMT mode PHY frequency,
> use the correct max fractional PLL value for G12A VPU.
>
> With this fix, we can finally setup the 1024x768-60 mode.
>
> Fixes: 202b9808f8ed ("drm/meson: Add G12A Video Clock setup")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
