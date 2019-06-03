Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8252C33B2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVdtu3T/nLTv25K5iOR8g9TefBfDDQJdSNCFfXMvdWc=; b=KHjrCZO/z9ZRbb
	aQzbd4Gf5iAa9FUDuKItv6coag3e3X6TCVT+Y+JG7IlaLlkryne31F8DxvySuQivx0w1M6yKsRvZv
	tnEdpmxf+YW4vSxFJ1ZYoV9IUNTb048PR7hBFsW/09rLIJjDAhvKV2tR06vApL1lvF3c30a3QgH0+
	CT5DPTXwMTejdHHuUOYy7sbFvennmElZXjMeh7fnIQaSshch+y1UeOzhBUlKVSzlKr52wYwnFWM6w
	Wqz/kCUZOAyC1v7aEnMvRWIHKffLJErK4DVRH1j4nUa6DlJXA1grr+5zu3chCGlayyCxZ85F0T4wh
	ZAE6xQc7SOlSW2F0FWtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvP1-0003g5-2y; Mon, 03 Jun 2019 22:26:03 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvOs-0003eV-Nq
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:25:56 +0000
Received: by mail-pl1-x62f.google.com with SMTP id e5so5765957pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 15:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ik7OKZ9J9bSDp1bm2rOmAtlE84TTDqAVmgooCQeS/Bo=;
 b=0svwj2jn0c7y5OH0otcrckgib+WkKv1EW7+xx5dc+sjwjycdCK/Ta6//1sv9QKNgPQ
 1jmhCgdEn8SYPziXQu8iVYn4lpEc6W6S2YaSFh7HZCNDQemXUEzOey1bTaF7PfPuQzQd
 Gd7VH63DZaay8qz6uQ7Z1lOf620YHpSFKqKwxLutkycHpJsPOvx4vLwjkc9Xuhbtj+HS
 SLRE1LFOeiLTa9+FQ37klOu5lGS5IjAPLXJB6s4dkgodzaszfer/mLqBQUb5AKeEOqv6
 a4pwrybHcgXnoJpS4AjWgBJB31yyvywL9aGzi5QJOjMqwoS2l0eQTUTWNRRCz6O8anwQ
 Fg8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ik7OKZ9J9bSDp1bm2rOmAtlE84TTDqAVmgooCQeS/Bo=;
 b=FzLuuUo0OIUEOm5mtn9zs4fkOtvaNnGxlcYTMUAALpck8KSCkyFFrQ3qvby5BGJGWA
 Gwg0lcxPBO1QO7f7m+CoaTwK3byNxbunk8+WAxNX2rTlOX6YYmpIvN9fGzZsi6ax8ycj
 2C3tTSCjy4somczWMBUguynE9048GK2PEVfaEpocHIVwIa7B+o6Us1ervbwPbTGRq+cl
 LUYz5aC7swnKAr9OJ0h4lpCK5BV9Jw1Pp5q5tov+CD39xWb0owYGtTZkZnOFHvn8Dlro
 hp1xrDKhmya2EPk0u6LmT3569gFcP+oZpKN3DE1l3W/i02WfReElJdPIJGwxMikDDOGE
 Sd5Q==
X-Gm-Message-State: APjAAAX9bgj5VgDVAGQ1GpllVggsE2AOb0NG1ydcSx/DRQA1AasCRRIb
 NK89el5FsUeAz5kVnTkLPrK1gA==
X-Google-Smtp-Source: APXvYqyUVbCq5wYHPsCSWvk56C4V0YcIIPwDrGeX2enduJL0SwUMS6U+vOK+IkxCDgH9iPCmNKU07g==
X-Received: by 2002:a17:902:2a68:: with SMTP id
 i95mr33399553plb.167.1559600753876; 
 Mon, 03 Jun 2019 15:25:53 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id r64sm21793471pfr.58.2019.06.03.15.25.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 15:25:53 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 00/10] arm64: meson-gx: misc fixes
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
Date: Mon, 03 Jun 2019 15:25:52 -0700
Message-ID: <7himtmi9vz.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_152554_779255_7B9D7695 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> This patchset :
> - Fixes GPIO key DT on Khadas VIM2 board
> - Fixes regulator naming on Vega S95 board
> - Enable SARADC on Wetek and Vega S95 boards
> - Enable/Fix Bluetooth on VIM2, Wetek and Vega S95 boards
> - Enable CEC & HDMI on Vega S95 board
> - Adds ethernet PHY interrupt on Vega S95 board

Series queued for v5.3 with tags from Martin,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
