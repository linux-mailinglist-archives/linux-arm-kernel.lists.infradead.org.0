Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168483992E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPzG1tWrdq57cWdh1qm3rHwXupz+3xyUfuNtVoqoxC8=; b=aeIgvjqX3H6hua
	HsFfkOSRidxUpDU9e9uQQhwLpN3BTX1IhIfkkFzyX1DJBM+Ea9y+dqDYdigmIw5apWdcWM5Ybv6H3
	IgrC8Yq2B7t1wiLJrubmwsHx80va1JJRUPC0GNQpkVlAnBGSpOEh7/yoX2HRmtLRsZo3k5UbnH5xL
	WGmaDbrEwkIOEcGqWWGROiVkWReoY8rP/h5mrA8PzTWe3K3g2Pnpg/GMOEB5O7yxetLL3xFmM9ztT
	PcZAdmVZYQjAdB4lh8egZfJA/pBJ//kZZK/wT8CkSYM4lHW5Oi5G+pphi1BmXNCNqEUfgE8H3bvJe
	HFD6rm8A0WapnI5/Y5gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNnC-0003Go-M7; Fri, 07 Jun 2019 22:57:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNn3-0003Fs-9k
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:56:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id s11so1949688pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=M8kh7Dgz12YKrTZB/CDTuS2cguipR8YlgXyL4uu88Rk=;
 b=NqnGfAJwCu03tLbifhT0GvFm2QW9R9io9AMcdefvJFzJ7g5Vr8PmXoK2S/sS0EBCtH
 Fusk7Ssd1izPi4ZVcnBnUIZrYJgm2cJJofYjf12PPHOu7ZZQRvC6lU0/MhgweIGPyLeg
 E6/EwGWuLTjiqp09TGPSY2SCFTQsrN6Q1gyBuOEW5aINnxk+dmy7z5bJcCLEazyA8lbi
 VWQySNTO5RzIXQriYe54HK29THy5Z3raT0y6A4hFRm5CoOlH/IVwVyITcvGmjab4XIjl
 OGj96J+wDHrvBD5Bl803937Zwo9o/GU9QYKxuCxNaeVzWqwjMi90YBdkhNvlFjQpuFFm
 tqPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=M8kh7Dgz12YKrTZB/CDTuS2cguipR8YlgXyL4uu88Rk=;
 b=be824M/TgcVNvBKJDOCdEdqPQlFdlIUTgxFdVHH2L/GIE9h7sGWV7Iq0KuYh8Oe2op
 CC6qe3efiWxF4wUtFaWXEVEV6zKEqBgJnY6lOLcRuXKPp6dTVggfIb/WYiw/GY/6biSm
 gN3SGy71eU7xQJAfZMCd1FaNrKG6JyDeBKXic68TqjYmyKt9h/E40jxLSDpIrohgIZge
 fFCr9ovVQuYu6AylGvjs//Hx18PeKHeNRBrIrbgQQCuiRGhjHccy90kVi/X+QKM9Wq5P
 enAeMBbww5xxm7CwQMfmTawEfUt8HRsw71r3EfBAojAJK0BVr9wJp7R+OszYS7MarD1O
 rcUQ==
X-Gm-Message-State: APjAAAXPAqgsGY+tel5a2if5G2dNKKCLktePdMcy0WSaR/s7BM61q8Dh
 RAtBsmJPK/4AV9/7NQLcFmK65w==
X-Google-Smtp-Source: APXvYqx8Ow2gN0FBBUIuNPbj3rAAjRbrUfUEtyHrw8/8rVx9mCf6X0IFniQr4nPekXIHjCWdFu3P7g==
X-Received: by 2002:a17:90a:5d15:: with SMTP id
 s21mr8054502pji.126.1559948212523; 
 Fri, 07 Jun 2019 15:56:52 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id f13sm3439916pfa.182.2019.06.07.15.56.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 15:56:51 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org
Subject: Re: [PATCH] media: platform: ao-cec-g12a: remove spin_lock_irqsave()
 locking in meson_ao_cec_g12a_read/write
In-Reply-To: <20190605122015.11439-1-narmstrong@baylibre.com>
References: <20190605122015.11439-1-narmstrong@baylibre.com>
Date: Fri, 07 Jun 2019 15:56:51 -0700
Message-ID: <7hk1dxatsc.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_155653_343421_0C421876 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-media@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Since locking is handled by regmap, the spin_lock_irqsave() in the
> meson_ao_cec_g12a_read/write() regmap callbacks is not needed.
>
> Fixes: b7778c46683c ("media: platform: meson: Add Amlogic Meson G12A AO CEC Controller driver")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Tested-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
