Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308319A166
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2/KUbNeYgeJkniWbyA0evB+RZOvK7THAgMz9fMUDTg=; b=VdM8+zOriMOntn
	4tFP9QNhcTCbdHT3Bf4w8ES5Z0VUX21FXBuHqW8MdA7N0f3Dpi8InIpmAzV9NdcgWttA1txGss7ZR
	MS+lIMsELtWRxzsgIKTb19TpsbJnAl+N/3A9F2flr21t208ovnd7Y8rZJWVeR7N27tio4SnZCQcm/
	XAxdO9ylZ7baZyEENA+iYcEv/8gBJNFR4A+0YNuTcI5GJgund7GOSTy0RLv07RKIigCJZGq0VeBym
	AY/n04Wj96HrJBt8Kx59nujUgCf8wgtHyhy/upRLfy3R2NWYQMYkO9KCA6Mcd7beQo1hPwXk63xlp
	b3j/d2DTv1ostmBopbaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0u1A-0002uJ-Ok; Thu, 22 Aug 2019 20:49:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0u10-0002tQ-NJ
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:49:04 +0000
Received: by mail-pl1-x642.google.com with SMTP id m9so4128035pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 13:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=PRyBdHjQx8YQuiWlWDuZaRk18ZPfvPfoxp9juAJhPE0=;
 b=Nt3rthPrwSqsNTxwWEFNc3alLqc2wECW4EsvmIl3hj6d8BU2kUpNDs5RWHcrvZ06Ha
 52lfo4PXNczdqV2WwSh7J71j1s9c2/Ird/b6f6N9/lKSXp1wyAiwpgq5ARNimV+FBJwv
 cL+uPV19RjKoXZFEHsh/wtmATmEuVokrT3eyx21oz/RoS6uwZNkGJWrW6uOyjEHcTS7i
 alC/R0Lz7KNgTCPha9tElM/8CQkIrGUCx+uDr6jKDLO0WS/BHxJ+xPSqDf3qIgmXI85b
 puBmPmgavEVgDXoUpxZ3OxLyXILsPEKWR37/0xyHymu6kVpnccpbfvneQBPPlwLEiaxh
 gOdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=PRyBdHjQx8YQuiWlWDuZaRk18ZPfvPfoxp9juAJhPE0=;
 b=QjfBqAtIrL48oP55p4nm/n0DP6++Wg6ErMwnJxbmou1rF+Yk0ARSdte+uyowkQSUWA
 g/XVUaYEtjeCI+LxrvrQyAs2YO66dtDa5Jb5dz6enkfqgb5Q057yTKQStfYQC3Az/lnj
 vaX6B5oWMBl7DhuSaYuwbKWWgqbqvyET0/T1yQAVbBm2Xs3b5m6sl55Y5DZwyBGwjf+I
 4YFI9Sgp4qbYMUqAyZgMNCOEvRsSP/5CMDlG2YDjo2WeMhN2NPzC54jT0vVLou9K3qYb
 oKiuQgm+hYg65MEavyeX9YUWMgID7VwTJ2jngqCTp0+pktfgRZ+hUe7HzTw5xinSGZ8E
 hgVg==
X-Gm-Message-State: APjAAAWHFhPYuXKXLY9H3Ry++tp4DrDKxgldRZVYZWPUWM6jHdnL4vm6
 kSdIcfZ7SlB7+TrPgGkzzBwElg==
X-Google-Smtp-Source: APXvYqyBOZY+Y8qPyRTGoHFxY7bYv7/YpxBaX72z5hY0CRGeCbyY7yfKY2UAF99J0VAB5mBEbwC5xA==
X-Received: by 2002:a17:902:f217:: with SMTP id
 gn23mr774044plb.21.1566506941988; 
 Thu, 22 Aug 2019 13:49:01 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
 by smtp.gmail.com with ESMTPSA id b123sm311081pfg.64.2019.08.22.13.49.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 13:49:01 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: clk: meson: add sm1 periph clock
 controller bindings
In-Reply-To: <20190822142455.12506-2-narmstrong@baylibre.com>
References: <20190822142455.12506-1-narmstrong@baylibre.com>
 <20190822142455.12506-2-narmstrong@baylibre.com>
Date: Thu, 22 Aug 2019 13:49:00 -0700
Message-ID: <7hr25d2af7.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_134902_757390_88244640 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Update the documentation to support clock driver for the Amlogic SM1 SoC.
>
> SM1 clock tree is very close, the main differences are :
> - each CPU core can achieve a different frequency, albeit a common PLL
> - a similar tree as the clock tree has been added for the DynamIQ Shared Unit
> - has a new GP1 PLL used for the DynamIQ Shared Unit
> - SM1 has additional clocks like for CSI, NanoQ an other components
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
