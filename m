Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0BED974A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyuKhGlakz/HRKKDyZCoYN7XO9efx7EVVumf3MIP2mU=; b=m5SxR4WZlKVVNM
	KmfAmnIT+lpXhzGJoK0/ClgZ0JiK5awYq+bm62XzV2rHWgvTvAddsqPhkIMsdR7Uz8jjkRpKeUdca
	BillbbAlOtY78aGK/3ho9EDizXFU7aQ+0aQnkLw/eW1XzJbO2Y60oQw/eYzPmf3D2c7QK0wKWMGwO
	mQiRS3Kce11DYa0B9joFpkDuHnEP0D+lZndJLaiQrtlWkRfDTUJ5PYqXH/chrEYDUp3YyVdKcmC6t
	mOPkuap3DtSiNMmYjcxqPvxHfL09TuJE/pMV9K8RqaRonbcyy7LATD6HXcCa2+qC4vvsDKwuWSHLc
	T1etSh/6J9Zey1fupLRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKm8W-0000UB-Ue; Wed, 16 Oct 2019 16:26:56 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKm8M-0000RJ-3h
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:26:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id p1so14589827pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=2XIK6irSOUYOqaT55Cb2rTG7oY2nstdNhyuJ62jJp1w=;
 b=LgzC5Cn/xPt2olUE60N4pEOt4RSI2ZpcK9ac3jR5QUoHjfZ6KopcgFKySrAzfqZTLK
 xw/GP4Ayp98mwvf5lXiBtokVwF22c/go7Jq2fmAHO3+z/dfZ4UGj2h2lSPA4WPi3wTu5
 kx2xY3EISo3KDeawhuE8CoFt6RS3ckhddrTpZUBfj85vPWLuQ5gjqKgIodSgMg2Z8UOE
 QLXiWAtlZnMJukqaX13llRVWRA5GhM1++i+VT2hv2z7Jz1d1zTL4o+yZm0aV0tI5Dor3
 5/Lm+xvgudiyUXI4Q4b3d+P6YU/hlFTOozKWQPwvl5Qs3pkxxAMSoh8rHBJCZr+G0LNL
 AJnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=2XIK6irSOUYOqaT55Cb2rTG7oY2nstdNhyuJ62jJp1w=;
 b=YufOd6qhmImYi3d64rUeJgU8Zz/phjkZApLIYPEngLjTJohEMR4is+capjqfNxYxvF
 AYH9UEtsHR+AUTqomktJ2oinbT9DYYeAwsvKO02QEtIJfuemsIIA3sJVM7TgQByc1F73
 d6e2pGIzL/cYR2HUTUK1OPvxM+QmB3ytM34zg7PGEGHI0gNabuTgNsOIyjqHcIAxoeEj
 dphAcjYdcAjo8YUPOPJ2VqtMm+fhT0+tiOV9cCLBu0sb2kSvinZo2iEWGkuVXGiLaK6Z
 20VnLBNBv5a+69a/6I3OoliFWqDkxbIOR0Fg/a/3hdGBkf00sBK0RWnDOZJIEs44CX6V
 OSOg==
X-Gm-Message-State: APjAAAUUJSG+Wb8D4g4hJSKoWibhBQMlEvvcPXDO1TkPtbUoiULEiyHo
 VroBV9vj4EHsOzFT8G6dMzfhxg==
X-Google-Smtp-Source: APXvYqygm5XuOYj8EY825cN0gcWiXGpwZtxv9FetNVUXLKyxWccm3GGuLgq33/o/9nNMAg3YUL0DMw==
X-Received: by 2002:a63:4705:: with SMTP id u5mr24757808pga.317.1571243205298; 
 Wed, 16 Oct 2019 09:26:45 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id c16sm3155360pja.2.2019.10.16.09.26.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 09:26:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: YueHaibing <yuehaibing@huawei.com>, herbert@gondor.apana.org.au,
 mpm@selenic.com, arnd@arndb.de, gregkh@linuxfoundation.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com, eric@anholt.net,
 wahrenst@gmx.net, l.stelmach@samsung.com, kgene@kernel.org, krzk@kernel.org,
 dsaxena@plexity.net, patrice.chotard@st.com
Subject: Re: [PATCH -next 06/13] hwrng: meson - use
 devm_platform_ioremap_resource() to simplify code
In-Reply-To: <20191016104621.26056-7-yuehaibing@huawei.com>
References: <20191016104621.26056-1-yuehaibing@huawei.com>
 <20191016104621.26056-7-yuehaibing@huawei.com>
Date: Wed, 16 Oct 2019 09:26:43 -0700
Message-ID: <7h4l08hd18.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_092646_155416_0CF4CD56 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YueHaibing <yuehaibing@huawei.com> writes:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
