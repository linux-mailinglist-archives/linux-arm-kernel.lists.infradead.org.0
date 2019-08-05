Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B34882550
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 21:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2yLOEbHPVxfmuP0VZISpsj3M73IDF3nGgyaO/apzdw=; b=J+Y5A7BUwFmDi5
	3Jc0HDSEtpQpBpQNSX/w20jFG4veZ55pX/ep8lzGv1x/vSnr73HAn1gf11aU90Q/6rzNPv+ENVc/m
	g/qUo6LOvANIl3Iz3IjaxzLWCIvJZX+BXXQZ/uwjziis7NUvO8yfieAFKuD1XKHap8UBIK7yi4vZu
	y/btBJddR4Eig9UNrRL1xquQj92F/stVLWOdnGUXTJvWy3jsTV9sHDJgQf61O3Cc6wAh3RBc+xBEA
	6LzKfMK/Ocwl98BiVefMbtOjPaDd60o/ADhwEKBAf6OHJtxzoxHyP+6wuMFrvGjP3LXOCblutErfM
	Kps/KLnQPWsmMGIhIZNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiKz-00077R-IU; Mon, 05 Aug 2019 19:08:05 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiKq-00076n-KC
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 19:07:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so36871455plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 12:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=HLFGcSRnrtzTL1mjh7cGHzUe4MbVsR9BlQbuANglj5c=;
 b=FSuabh2v9pq/6MkamWwdgBgV20CYzeHQtJwzBdq7lzoSb5UkOWU5v/iQ3CiwBW0M5u
 H3kWwgCGfNz4QL5IDAlo6ew+6Pb7VP5vAABw3IyFnaJ/DD/KySLDoGNTTR2TVYugvhaL
 KFhohMBJuOG7aom24gh69NuS5torpA++ACe/cGHxKqij0bK9e+Jzp2HUGW8s7ukHfOj1
 BfRKy0AgSlw+k5qGL6pMeNDgv/ybVrI3OlwWrhtnA/EIggHvi3kim2vh7hbV5H5ZAMUp
 bDsozCfjfZItrJOTz1HMEXv0Hla71yyPRANQkegzPwDilCscsPTPL1HcF5gPrjJcO2yT
 qTsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=HLFGcSRnrtzTL1mjh7cGHzUe4MbVsR9BlQbuANglj5c=;
 b=BqzrdrEpIDvsY0gPrIbEZ790OFqUvCTxiHulOdSZZI6x3OPkY63h0IJJHV3xJTPLrl
 SPfBC/ofh47TiuXnNUwReurOeKZHTaZdI3OalxgziakI/XFMS5sGvtA0cratfNow7OEJ
 jBuHK6ymHQW9Xgc0jXDobeZhlrXUJ9O3pgzUcZwFy24WpxUJoF8/Sj+Sq+u3t3YY7SL1
 75Dwh47D7TBDmvpd53ILtRrB4JxtIK++MEurwKm25lo1a2YBCgzENKadEWPgv5r7g6JB
 R0Hr5wf4n+agcmWaTEHNY1FHE/DTmHokpukDayO3LqlHaJhO257spH5ERNUaaeVKq9cY
 OyRQ==
X-Gm-Message-State: APjAAAXldESRVFw7wZuf766KUNAFVSMlZrI/G185QV37o4psVomE6ccO
 2zJghzutjyPS9TmiMGPNmMLD2yVtTcLJ1g==
X-Google-Smtp-Source: APXvYqx9d9VCzc9djqGE8vhbN6fzsNZNeX3ceeR7YwwNB9iSwkiHZpuA9cyWGIFzRIf8wafnMVSCdQ==
X-Received: by 2002:a17:902:2be8:: with SMTP id
 l95mr135702321plb.231.1565032075952; 
 Mon, 05 Aug 2019 12:07:55 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
 by smtp.googlemail.com with ESMTPSA id
 e189sm71404193pgc.15.2019.08.05.12.07.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 12:07:55 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/6] arm64: g12a: add support for DVFS
In-Reply-To: <20190729132622.7566-1-narmstrong@baylibre.com>
References: <20190729132622.7566-1-narmstrong@baylibre.com>
Date: Mon, 05 Aug 2019 12:07:54 -0700
Message-ID: <7hwofrh1md.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_120756_668695_F1D0C55C 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

> The G12A & G12B SoCs has kernel controllable CPU clocks and PWMs for
> voltage regulators.
>
> This patchsets moves the meson-g12a.dtsi to meson-g12-common.dtsi to simplify
> handling the G12A & G12B differences in the meson-g12a.dtsi & meson-g12b.dtsi
> files, like the OPPs and CPU nodes.
>
> Then G12A & G12B OPP tables are added, followed by the CPU voltages regulators
> in each boards DT.
>
> It was voluntary chosen to enabled DVFS (CPU regulator and CPU clocks) only
> in boards, to make sure only tested boards has DVFS enabled.
>
> This patchset :
> - moves the G12A DT to a common g12a-common dtsi
> - adds the G12A and G12B OPPs
> - enables DVFS on all supported boards
>
> Dependencies:
> - None

Not quite.  The last patch to enable DVFS on odroid-n2 has a build-time
dependency on the clock series that adds the CPUB clock.

I'll apply the rest of the series to v5.4/dt64 until there's a stable
clock tag I can use for the clocks.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
