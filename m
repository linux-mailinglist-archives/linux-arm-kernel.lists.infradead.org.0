Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9279110978A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 02:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yO4jTjB1YKPZYj3EW/R3AAaUFsWDkYN9/gK6745i8do=; b=dLWB/7eMvyvslZ
	nR4C/avdf4fZL3jobxG9kZT6mcvuKXGfGOH4NIUHMlbwCAnUmMzuveU5Rm0AoZb0/PAO/hl3hWZSh
	PbjMDOETljqCT+jJg6rQHwuLkY3cZhDFYerbN7ys2QyDfhjkAS1ds9b7lfnqPfQh5TfCCFj+CQl0L
	gS5ijerZMOKKRK8L85sfSsgrsSsvzfEWgq1eOBwf4DW4oPmfYRYmjFjdxPzZTW4XvKJ1nxZBjuHq5
	nrjH53UgPdOhlqbHFFOM5lPsKs/6FX0GzlblCFRIrXL2E3YmR88PNQjsbapMesLoBdh0YFxQv/LoA
	RcKY4MvDUzGGEhMCn54Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZPYt-0002nj-Bn; Tue, 26 Nov 2019 01:22:39 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZPYi-0002ll-4p
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 01:22:30 +0000
Received: by mail-pf1-x42b.google.com with SMTP id c184so8325449pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 17:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=AtPRMYJsiWkwHiFFHZwBcUcKfK6FWEVPRzt0kULjoMk=;
 b=ZsjGN9G3y6QPq/SuMUBdQdPjWMaaqGTsg369cIOxGzFWf76C6KhXoa28fC3PDPNsv+
 7QWs10eF6lz9is8be53GzoigIeoomf7xOruNp1Y/bJBePCpSOXYLOA4H2/KJ77cRhk05
 x0KvyJoRGbdZ9bbhy/XpP674iOcUGGYfS/H2W20tUStvBWi2ytsJmsFm0cuVxx0LrVhE
 fJVgEsvqgV4FirojN5oa+BaOcKBvYRvapbjhDDbYa7cJEo8dtqNlxLA6y+V/jXxspakD
 Spg4rGfGWHPFYnszQbpNq8GQ03LpilTeTOS2V8qw2dZ1gjduJRffPZoij6u5G0iQYIDa
 y3mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=AtPRMYJsiWkwHiFFHZwBcUcKfK6FWEVPRzt0kULjoMk=;
 b=eBGFQm+HZbOhfcIoCTj4nFqc0rwcgxS7tnsHtIThJHsaaZYD01+AEmX0K2EJ2TG+un
 HnU+jv7hd5AoffIZX7vd6VYEgQ/hkwnMmV7jfgl/LccnDbMizCniDEMlejSmrdk8EyXH
 K9F54v9i/YDduqFL9RfREYAr7TMiK2E8t7WAU+fB6rRzbGkYcnB+RI/TlLMG7z4ffWSO
 BiYpC2m9YC47kVWBNBeTB7VOdQPhEUlYDgpjDIMell6rTWg263Qd0a0NGcfjunkQkY75
 cc3tRb0l2AtPIRL2RTXmn8TvbRMRv/H3CH/lPV8njVLQc8hF5x/zsffRlX5T+WjbeQpB
 SdzA==
X-Gm-Message-State: APjAAAXm3xb3HrdKJ5NnDuWnD/qRk+SdYZh6n/cLGX2WxD4t498YX+cU
 tGsr8k7LsSoJ0BihOURD79codg==
X-Google-Smtp-Source: APXvYqzCduZpVjmTaqiZExnNw3OMBfwJqTBjnW12KeeSXsvhWXRVkr9xrQzORP/oWCYG2oNVoKbw8g==
X-Received: by 2002:a63:6a47:: with SMTP id f68mr35998951pgc.35.1574731346647; 
 Mon, 25 Nov 2019 17:22:26 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id r15sm9985094pfh.81.2019.11.25.17.22.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 25 Nov 2019 17:22:25 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, robh+dt@kernel.org, ulf.hansson@linaro.org
Subject: Re: Amlogic 32-bit Meson SoC SDHC MMC controller driver
In-Reply-To: <20191117142716.154764-1-martin.blumenstingl@googlemail.com>
References: <20191117142716.154764-1-martin.blumenstingl@googlemail.com>
Date: Mon, 25 Nov 2019 17:22:25 -0800
Message-ID: <7htv6rh1ny.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_172228_250003_333D91BE 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42b listed in]
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
Cc: mark.rutland@arm.com, jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> this is the first non-RFC version of the driver for the Amlogic "SDHC"
> MMC controller found on Meson6, Meson8, Meson8b and Meson8m2 SoCs.

This will need to be reviewed/merged by the MMC maintainers, but to get
some broader testing (including in KernelCI) I've added this series to
the 'testing' branch of my tree so it will be included in my 'integ'
branch.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
