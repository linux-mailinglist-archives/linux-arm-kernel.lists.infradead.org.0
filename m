Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93227117938
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1c1U7WX/h8XeLuwDXqzZtuZFbuQ8FGjSxatrhQ35WTA=; b=e2hhvkZa7ot/sa
	QztY3Wpn5rIw/j7n2JhxuM0WaixEEg/cu6rYFlDUAsV6kf8dzRY2/mMW6SYrQVzaDcdsIdqz0TS1k
	FMFmvqTlWyPBQIl92520pvwtioEBwoLcBgou76ccT5L45mE6Tcld4EzjH/EMZZUA+Zts+LeINBspm
	fekuvvgHDfVTh1vC8izu8V+MQ3mCZEUY7FxekocPuiB7XKjGai8YqI4AV7H371CxQEZLhh6AsQoSs
	vHNBUKS+e8gfpU7Yw+FGHmFzGGgb+WPlMOjlIWACTzQxugBzpcECGXhpQCiI+FK3xwbDO1gau/m0i
	UQB0paeGXJWcsPocfLYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieRSt-0002o7-QT; Mon, 09 Dec 2019 22:25:15 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieRSY-0002if-Pk
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:24:57 +0000
Received: by mail-pj1-x1042.google.com with SMTP id w5so6478838pjh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=x3D7n4O3kX8B7KT//FIge0j+XydruvOFEBnBKMDQn84=;
 b=Os0qYB1gNkMhu5bccBa/iWtRXy7cUmbltuRSoHOA25++iLBHnsK4LQqIGSW/4VmaUC
 rFx94GXTakBK9ErXWX79g1pQR3cUrClNexIUuGxabmhdbuyaLvBPj3lveAg8nlbfyxrb
 NDe0LNsNQUiOD/ROkrf69V1RTxWrq/tqRMR4Gw/2VFO9TPgIGD8rWvy/QgD2u+VkmNk+
 RrInxkfVAJKiuPt/3JknHM2YxMUH16ZEBeW0JzY1pC9ps/Y2av9qGc5qYan8b3kIHdvI
 uFyeenmN6uxhFlomDtFrM0WjE2/gAidWiYxA0PJ/NvejI6fB6VyRmXxjgRLneQobSsU1
 3bcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=x3D7n4O3kX8B7KT//FIge0j+XydruvOFEBnBKMDQn84=;
 b=KZxYJhCVO4Ha2TX6GeLsJ+zbzGcam/iOaumiyc6NNygPUqv6qRzDJdA01f5ZTwexGj
 0fvCjaMAmo2rDq2otxou0+jD/uaQv9bCEC3UMVnPIjjz89AydMC292ZzsYdS6cZxmN3E
 35H20IvXhPpsY8CA19VyQcJHnxfC4XgrWJ009o2KbeFZ6n0E6IfXg7sN/QHedbiduZN2
 fDvBX6IA7zxOpGZNmV4qt8epv4ErkeISiFk5CuWpcvoMEt74ZP32lQ9G19ji4H43aDfM
 /Lgs+CbFrF0I+4UroqDrih0nfiqESgBdrC7wuK0pcWbQ2r4JYgBURp50g0r7XVYEGRNT
 pZPg==
X-Gm-Message-State: APjAAAXLn+A8vLLk+mYlRqB/Sc/AepLBpPxI58/r7VvB8ZAorld/E6Y5
 ovuMrTsyiNWKD78P0eF9F4LvXA==
X-Google-Smtp-Source: APXvYqwmpgZFnfs15zotdT2qkfcibGHFV7p0FuUe95hjRjGSKRP1wFd1Bqfcrf67Nov5zS8f7qjaDw==
X-Received: by 2002:a17:90a:d783:: with SMTP id z3mr1473865pju.3.1575930294097; 
 Mon, 09 Dec 2019 14:24:54 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 16sm452756pfh.182.2019.12.09.14.24.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:24:53 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
Subject: Re: [PATCH RESEND v1 0/2] amlogic: meson-ee-pwrc: two small fixes
In-Reply-To: <20191130145821.1490349-1-martin.blumenstingl@googlemail.com>
References: <20191130145821.1490349-1-martin.blumenstingl@googlemail.com>
Date: Mon, 09 Dec 2019 14:24:52 -0800
Message-ID: <7h8snlrvbf.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_142455_415058_476F781B 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> While working on power domain support for the 32-bit SoCs I had some
> crashes when trying to actually use the power domains. Turns out I had
> a bug in my patches which add support for the older SoCs to
> meson-ee-pwrc. However, I didn't notice these because the driver probed
> just fine.
>
> This is my attempt to spot "problems" (bugs in my code) earlier.
>
> RESEND: sorry for the noise, I forgot to add the linux-amlogic mailing
> list. This is important so patchwork can pick up these patches.

Queued as fixes for v5.5,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
