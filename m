Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C331178F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lULliYv5E+ikAlagmY4q39FnjbLsIvCI1WDYtYS+PXI=; b=qpZaBSA+Bo0I/B
	aiFkgCYh8EFh29OZnH3BERhXt5G40N09zWCLK7WhcEK+HzCUw/DT8FsG11LVjeT4WgguBOucE0ZmT
	vdzLkKRGczWqDcTMoIjjbfxKEsQQmyvVxzC0GkzA8yw+fjbjlGUJqEaG7idmT64gX4SZrkYLv/WNS
	/o0QHeFHZEN/BH0KP7a8aCkhKdarumtgB3TXKtNxlxNhLt/hJBEVDwaR45VE5Jm4YQSG0D3W6RmsK
	7cm/VyedvfKedtQG+4JxdxyWPBy3HxAEAgMSdUOE2gtsRJXziHT3+5MoCZsOc5OsiCtbCoeJfi1F0
	GoeyUppYRed0NoqZPK3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieR8E-0002Fi-If; Mon, 09 Dec 2019 22:03:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieR85-0002Ej-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:03:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id s18so7920237pfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Jnouk4yF+4hDvyyaPMkAqTb9fke0cQ8rrhVPAJu3okw=;
 b=GlVceXA+0lC6uBPMxBHhwzUEVjOgob1HMGEBkW1gJjw56t4kv3Fz3LJxzxFL53GcCa
 RkzmEwY+SU/G2b9eFzkdrgUtuT0oRkyuL5EnRnLUHzFUZI4AOjvbksVw/I1Pt/FjaYS2
 cPKnQZIulCAptVGoqm9Z3HgFSjhhD27yJILu6vTvSmbbIhRSHYSBe1gndsaULX8hZwKq
 RFa5Woj3cwn0MuO8JLgTkhrZytANWsosQ++XHOHxG736rzlWuSuNqiTmfBgHw7quSFvV
 sYprUpf24U+qTnfQ4f8gk9QrSFt1K65H2Y8+t/qtIFSPVKHPaqy+r1Ju5gjfR5BqUQf/
 B1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Jnouk4yF+4hDvyyaPMkAqTb9fke0cQ8rrhVPAJu3okw=;
 b=KuffHe1uWBFGUTayIhkWC2SS8QMQQrXxlIQZyzy5WLKOvAqx9Z9uehe0VaYp3J0LtQ
 uMdkFEHX56IdUysn4JedZ3IUJKcaksnTzP8bP03FXiNtYFLmk0mGpoF3uRXakz6KcLY6
 MM9uLbNFDBwlCTYaTTMykRIlm9L85GSejDVHKVbx2hFmOQ5GRK90bDMtm5rn9mvWzQHY
 4q+ghLhRctq+UJWPG8292wwRt5wiNXoPVYyHNJCWxGtNDFFwJEvkXapAeoKUIMIYf2aD
 EsKTl1SDSocEj9WTXBEATi8X6OxHH02MU8QxlAMli9MRzGJQbycTamCvzQkxTQh8T6Zy
 MP0w==
X-Gm-Message-State: APjAAAU6zSUpdBLQBLpO/9VT/7d5qgevdd7nkKgRBb8tUbspP9C0kIGu
 YafBVmd/wtZe7KxjPjY6V4tV+A==
X-Google-Smtp-Source: APXvYqznrAGHzf9g/H1sltB3YxQOArFm38FcptmNQg5nSRIf4XMlA5spk262ITNHuP3ffDzs8xx+Cg==
X-Received: by 2002:a05:6a00:9c:: with SMTP id
 c28mr29316712pfj.234.1575929023965; 
 Mon, 09 Dec 2019 14:03:43 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id l186sm515055pge.31.2019.12.09.14.03.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:03:43 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 0/3] drm/meson: implement RDMA for AFBC reset on vsync
In-Reply-To: <20191017094826.21552-1-narmstrong@baylibre.com>
References: <20191017094826.21552-1-narmstrong@baylibre.com>
Date: Mon, 09 Dec 2019 14:03:42 -0800
Message-ID: <7hpngxrwap.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_140345_105125_5B151063 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The VPU embeds a "Register DMA" that can write a sequence of registers
> on the VPU AHB bus, either manually or triggered by an internal IRQ
> event like VSYNC or a line input counter.
>
> The initial implementation handles a single channel (over 8), triggered
> by the VSYNC irq and does not handle the RDMA irq.
>
> The RDMA will be usefull to reset and program the AFBC decoder unit
> on each vsync without involving the interrupt handler that can
> be masked for a long period of time, producing display glitches.
>
> For this we use the meson_rdma_writel_sync() which adds the register
> write tuple (VPU register offset and register value) to the RDMA buffer
> and write the value to the HW.
>
> When enabled, the RDMA is enabled to rewritte the same sequence at the
> next VSYNC event, until a new buffer is committed to the OSD plane.
>
> The the Amlogic G12A is switched to RDMA, the Amlogic GXM Decoder
> doesn't need a reset/reprogram at each vsync.
>
> Changes since v1 at [1]:
> - Fixed a regression when AFBC was not used, adding a reset() call for the afbc module
> - Added a define for the RDMA descriptor size
> - Fixed overflow detection

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
