Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C8A37B00
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlIOrf2MrtsfxZEYXMqu/jJLiHLdwwyHAQhWaTdTwMY=; b=oJkdrb0wX+IMMc
	XgB9HyKW5CDUgIfm3CNzf48cIcLlkapIvXTTFmqSYYHsPqg4WJW8Dqj0h9l6vvwvrbpqDpa1BJ6Yj
	2b12ExrYIoz85kufhKUE+WUmrAYR+qx+jw+GVDy4+5tgbbeItBy8yG4Q7tK4NQY1f7xGNX/ZHP3Ao
	JTGDx9c6DOnwpPA913uW/23sMPwLs4fIN1D0EJv8sL1w7PlWiVs4b1+3X0AyycD2gUsbrzMpJO81g
	v7z9VS+IVXjkEfYJmCHs2cutpGZ9Ss8sK7Alf+KsYshA/8Z2raUdkeInwtGVSWFXdOFRs+lrT6xAb
	K5VJAO5CzOgTnaf9pzsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYw9G-00027p-S2; Thu, 06 Jun 2019 17:25:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYw99-00027E-Po
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:25:53 +0000
Received: by mail-pg1-x543.google.com with SMTP id h2so1744072pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 10:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=3LKp2333dAsdHgcKPbSCpFKyWi/YPsxy5d/uBrW1vJw=;
 b=ufbn7N0jryrG0HOBOgiTOLSXC+8CPoOdNvpRg5ioCQ2Qnq3/MrgCcULLU781HRzV/Q
 FyI1xMLATPNfnzoHevVmHhEXmu0Xb3yn/a/9SpyrVKYJmdbTqEyUtphCSQkrcuaaX+p2
 adStH4+ROigx3lYaPqm8G8VWsXfWia6rq8hgPt3dBflYTEzen7o/cT/jlTXf/BHfde5S
 Rvg73ZoiiSSqjn6td0HTTOV6iHyNqYfY9lysMaLD7aAicDH2SlsSwX1J4n1H/vRwl6MB
 VGx72V80nauy5tZgAFakAmBVh8F0Ja4xXvg/+RxALTR++Q0atOThCsvkcv1gNEd/HkWz
 LwNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=3LKp2333dAsdHgcKPbSCpFKyWi/YPsxy5d/uBrW1vJw=;
 b=LUh9tqTS2f4k9EMdsR0NtvAR+BvOB4TcAOFUA5L2wd7z17NCYQGk480hc31dcnQYeN
 zP2HGpUSaYCF1UGJCFSY7Oe6JrkFHQXuXJ9JDhn/flyhJV5UCt06A6ozoNRH64ShUQHu
 y4MlhQUeqGWM089ekG3twFp2y08CBcS6BanevdcKmW6CYOoFxwDqOUjvgpf0+SsWCKxz
 xV1rYrJ7h5DPQjrdmBPWKSIL6LwScvSfgdEc5al+fI9BBj50RYSOJUclq/h+b9dVEPIV
 tXoCn4fBw17E/oXCT2viMsxQnVavWtGn/aX296oAjNqWevmuUz2bxV0vwFGsHnXlTExq
 f2TQ==
X-Gm-Message-State: APjAAAUE+S5eR1APl6zymZ75QraX7O8WQIrquwcDMOyYsM9atTWJjiWn
 IBr+Y+1ABFSpgfAq4j67tLTEdA==
X-Google-Smtp-Source: APXvYqwY6ai4KXXEJsOuFBjETzbH/6l5KeGhPhmBm9jpS8OgNIxzeR41NaXMlAcOyAEwxTNJhTZOnQ==
X-Received: by 2002:a63:445b:: with SMTP id t27mr4314682pgk.56.1559841950934; 
 Thu, 06 Jun 2019 10:25:50 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id t4sm2201097pjq.19.2019.06.06.10.25.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 10:25:50 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/meson: fix primary plane disabling
In-Reply-To: <20190605141253.24165-2-narmstrong@baylibre.com>
References: <20190605141253.24165-1-narmstrong@baylibre.com>
 <20190605141253.24165-2-narmstrong@baylibre.com>
Date: Thu, 06 Jun 2019 10:25:49 -0700
Message-ID: <7h8sueeici.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_102551_955551_66FCAB58 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

> The primary plane disable logic is flawed, when the primary plane is
> disabled, it is re-enabled in the vsync irq when another plane is updated.
>
> Handle the plane disabling correctly by handling the primary plane
> enable flag in the primary plane update & disable callbacks.
>
> Fixes: 490f50c109d1 ("drm/meson: Add G12A support for OSD1 Plane")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
