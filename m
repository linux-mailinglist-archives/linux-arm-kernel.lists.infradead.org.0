Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5739ECAB85
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/pKI5q/raLk3+aw3wISsXtLaQnMPFRTLl0A7J6/kbI=; b=uLpWHbJYgCsO1Q
	DxHGkv0zao3+VdnPY1w6zUsqw19RfRY0qa1xGeFtelw2/9GHqTg1XKkUkiy9WlYoxgFg8/KJOs7DJ
	rz9Yt0a96aDu84qkCFsTxU40R3ZX2x4skWdyja6xHhIRTS4ncIrq87kS7Fgs9sBVnbDteK5NKv++H
	Lnt9xYCqqSuVZzQMbwd/Jo7G88l0YLo4jIFIe1HiCqR5F31dwm0x/Q6HVE2wN0/lvU0ujSMVCYMyc
	YvxwJcohmnmN/U52bvO3YCLjpZBbpzWaChmvY37QLPaNSTbZayIJG9M9xcXfvMBSD3WaVgXq+4XR0
	C3jmCsEwRDCuQ/NlN8tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG50o-0002YN-2G; Thu, 03 Oct 2019 17:35:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG50d-0002WX-EY
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:35:25 +0000
Received: by mail-pl1-x642.google.com with SMTP id d22so1835267pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 10:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=fXED1acjUYEy8AfTXY9uzTTHkmVKjak7JTmjU0uqyWA=;
 b=LcL/9uRRNdFh8s3yJ34zvuzwmAlYXY+5NtkUJo19unLkx0Vd/qr8WqTEZBan/qftZr
 P1bDgtC07qIqLSSGqeYoL0rj7rNRyavq3OPtZDp6QIfTcfUnqZ+qT1ZIDz5oFqaOGbrS
 bddhgK6RC6JawtQgHzHSJ7Dfcme+1rlZvKUh4SWJKBwzlcEPHfrq1RqtyYZSNIc7wZF6
 k7Duu2DYf/TEpibED84bxJD7NVZ2H2gVwF7PoM7jleGKOPhQ6d24sdBI+M2QemqnvXWn
 En+88TQN7gWRurqwAw27hQo3eVf/lu+2dWPwg7zvpOquykRuQTYhtNH9Wpud+t2sW8qy
 zMug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=fXED1acjUYEy8AfTXY9uzTTHkmVKjak7JTmjU0uqyWA=;
 b=stOla0CynLGFpEjLnpZP/blD3wRUoKEk7gXSMZwev+BPATxfdr8ZrARQZQIX6e4PUZ
 OTF9jq1C00EXOTjt1pJyQtfM2I9pnKep0al08KEIDRXpxtx3rMqAzNhQ/u3nc0ba2tks
 t6T7FJ4bOvtqUiwD1ChemOhfvklPBbcFhDms/qrt6uWsPznpx3v5g/a3cxh+xTLECgWR
 qhgxfWzvh997x1TcQqln5p8UZHFYw7HEsW/pA9dV30XFZAqIZXZTqU6vdgLoIUEWKd9S
 dUwBrqwWmaWeRw3adFi3gAiarkGD05/bDgQKjcElyV5XE/e2rXwUzhy2IHYN+8GQktRX
 /3QQ==
X-Gm-Message-State: APjAAAUIHM84s730hymv61lFU2xNWrtF6tvyONv6nmhEVhrtEZ7802eb
 +2r4uQDZSsqjAt6wlxWXoRTquw==
X-Google-Smtp-Source: APXvYqy05X9Caox3UXihsMlUZMERys06g8z7Vx5e9Y0f2nZLZLrsuuT/5m6q6Rg/jEuE7VX9C6qJXw==
X-Received: by 2002:a17:902:b7ca:: with SMTP id
 v10mr10149938plz.54.1570124122276; 
 Thu, 03 Oct 2019 10:35:22 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:a084:116f:9da0:2d6c])
 by smtp.gmail.com with ESMTPSA id l21sm2835389pgm.55.2019.10.03.10.35.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 03 Oct 2019 10:35:21 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] watchdog: meson: Fix the wrong value of left time
In-Reply-To: <1569754429-17287-1-git-send-email-xingyu.chen@amlogic.com>
References: <1569754429-17287-1-git-send-email-xingyu.chen@amlogic.com>
Date: Thu, 03 Oct 2019 10:35:20 -0700
Message-ID: <7hy2y1vijr.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_103523_511405_FBB63207 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, linux-watchdog@vger.kernel.org,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Xingyu Chen <xingyu.chen@amlogic.com> writes:

> The left time value is wrong when we get it by sysfs. The left time value
> should be equal to preset timeout value minus elapsed time value. According
> to the Meson-GXB/GXL datasheets which can be found at [0], the timeout value
> is saved to BIT[0-15] of the WATCHDOG_TCNT, and elapsed time value is saved
> to BIT[16-31] of the WATCHDOG_TCNT.
>
> [0]: http://linux-meson.com
>
> Fixes: 683fa50f0e18 ("watchdog: Add Meson GXBB Watchdog Driver")
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
