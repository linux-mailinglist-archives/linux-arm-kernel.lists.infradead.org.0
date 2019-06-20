Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9D74DCCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 23:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJts1Ag8LTkHdPlFDjgUAQfU2ddnMLR8HQC7BG69QrQ=; b=g1odOXAwk6iABx
	LyshtQ9k5WTtHmxc9djFf7WYclgDIVZry4fktEBLeZLgB2qKar4Ff1O/FwxiRVuzSLXmmEbt43/eN
	JOn0+D1LajyzPBBN+9URWfL39cSVm8eVDsZbDVt0jVNRQXfevj4TIn/MS1lAfG2xtBVnMRwS83w8s
	v3MlNkag2fagKxK5rgGPNUVivFEfIFka13jCYElwxwFCo20HMC/HUhWKxzprGwYhZan44tyIfalR8
	GS5Sg+ThebdIvWtb4IyeZim9DJLX2E/jX9yDOXHa1Fa1sN5BJdf7M6HFsqbK6FajsgLWLUAQc4sfc
	8NI3nng8ivLRnEniRArg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4lp-0002tu-6D; Thu, 20 Jun 2019 21:39:01 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4lZ-0002s2-Cj
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 21:38:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id f21so2263505pgi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 14:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=FRa+FTYrUwE5FnAqArVG6ocbHw5r29drxK/7hoYzZjo=;
 b=HR7QDXLF7YhGpHGL9vIVq+IKHpppE33n8uKbIEm8UdnyiHhFldKWoErbW86WxynVZB
 4i4L4LrzxDFCh7MvTNJvhtiMin58jW986U/8DoROWF4VPVnPfevCtaZQt8Uzvz6/6rO/
 Hk1K2d4TVRL6un9PVsnjAGfyCrNnmX2DfItpG9GMkMTr5x4akX/6PGZw4KnwFnPL+ZYV
 wjxcI1mC04550rE3GTltks17N66DE4Ys6GexAO14YEFtKdKK0dcZDvOBQa7WLRy/TeoC
 sttTGsNi7ZMpS+09IYY/opogZcAnSmRWR5Cr1Fcm78Cas4Ro+hh/gbHmTxdNE8P3RsvA
 cSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=FRa+FTYrUwE5FnAqArVG6ocbHw5r29drxK/7hoYzZjo=;
 b=g7ahYM1jxCPuZU9iIoXaS5MqkQuEIkj84eWWrZuMqefOFBJNAZ85PLiC5V2dGpQksL
 X/ew96ISX0d4Kc1HhKk6H3oeRWuGFXI0cdDsZDaAFyRoNc3IowRa9lr3Oww11Y/vlFRf
 lpomnLPbjmRKfjYNw0l0C0j3mubPuk3b/hKquNw9qeAaeoPrbAmHdYwj8USXUzILBocs
 djMykW84DmzMBkZH3PgIGxk8ZdTfmTLBpltnPEcGU4MAPQ8efa5m4KTunE6pp5kIDFqz
 4C8IJpFzot3Z8025ZD7iwMk24BIh4RbxgXEA7KaCaiSK8eH06lkcGQgA04q06e8cM9D8
 hydg==
X-Gm-Message-State: APjAAAXwRbs39S6iiPLs31u9pRXfzBdfgWUhxxsSI94xnCNTCXv+qv5V
 eigYANhc2HoWAsJe2c718tIoac3gRxgmGQ==
X-Google-Smtp-Source: APXvYqxjVkZc9pYQKXqXmi7Q6qEP+iSI2+ZCxr5esPXxOJPjmPJLRPJUnOC0Vw9lcgMFgHRUh0BlRA==
X-Received: by 2002:a62:7d13:: with SMTP id y19mr74181464pfc.62.1561066724568; 
 Thu, 20 Jun 2019 14:38:44 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id r9sm542327pgv.24.2019.06.20.14.38.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 14:38:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, thierry.reding@gmail.com
Subject: Re: [PATCH] pwm: meson: fix the G12A AO clock parents order
In-Reply-To: <20190620144655.2142-1-narmstrong@baylibre.com>
References: <20190620144655.2142-1-narmstrong@baylibre.com>
Date: Thu, 20 Jun 2019 14:38:43 -0700
Message-ID: <7hy31wdjj0.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143845_436297_898B3204 
X-CRM114-Status: UNSURE (   8.57  )
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
Cc: linux-pwm@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The Amlogic G12A and G12B Documentation is wrong, the AO xtal and clk81
> clock source order is reversed, and validated when adding DVFS support by
> using the PWM AO D output to control the CPU supply voltage.
>
> The vendor tree also uses the reversed xtal and clk81 order at [1].
>
> [1] https://github.com/hardkernel/linux/blob/odroidn2-4.9.y/drivers/amlogic/pwm/pwm_meson.c#L462
>
> Fixes: f41efceb46e6 ("pwm: meson: Add clock source configuration for Meson G12A")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Acked-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
