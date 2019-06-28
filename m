Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09A75A45D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1vlKVJeN8YSUeTWM7WmfLHNr2EZjc6M15qjNMmOXMs=; b=UEfn9v/zjHVAQq
	08GqshMxhIxHp6AjH51rO7r29afNa9JOv3l/ZlUG/Wiy7VgsBMzSRZwicjLwmzqhJiI4j4GQN72qb
	ln0jPukdc4S8bmO2VHU5oT2xbHv4+tyWHoxDMes1WLlsyf0yqKcPWBxiTemtw6bxXxROKWKBOecF2
	duxdDTsGba0bCReePqE51UoV6N6h7pLmzNsEMbETg17zLLXOB7mONrbsRB5gzz81GxDZnGLxDyWxQ
	M2/0+FRr0jH/jGmSTkThGPol98s6Yp6wEM3GHuYlBpEAwNSrxvAMBGn/u3akjcJ4j/LNcUAT8KOi4
	4cdQIiPC5zLeq83EyPyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvox-0007i7-8R; Fri, 28 Jun 2019 18:42:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvo4-0007Og-Ue
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:41:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so3693144pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 11:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=fQE3yjXSmEBBK7nvjeoLovQEjasyqjJ5dyMYD6mC7O8=;
 b=QY3rhsLuoD6pfWkXWngj/KQZLMCZ6yKpGYJkF8Udg5G/NGlFdbnzzTaxM/GRBX+11c
 AnNNBc/vjnaGlBRfRxmVRJoln28jtZgEKcNVIEXES54GLsmjjJVEjQGOwQx3duZv8EFD
 bg778Ycp1xeyCJe7RSwG5IXqT5y/7DDJtHpUMuqo1T0kome3xAVG4DxMia5CUsq+d4VD
 8f4NSX1ZdBgmdmwL/W+JZt8Sq6C3jNm2Iyyz70u/HmpqhhcQUZ+L/yrkulUFpykYYq3Y
 RijRHD7GKT4cLc9K1EZckwtGCnlSApICLOCkfIClG7XztQWsSpDyHnltBacBvaUmhgzs
 oaaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=fQE3yjXSmEBBK7nvjeoLovQEjasyqjJ5dyMYD6mC7O8=;
 b=ns9OeYFuHU/za9IMZxkMg+whvaxrYytw0FOi5ude64LbkxGQNQDRYYhf7meXrWchDb
 1bZjDqxa5PVOsgD7q/MvBVo0jBM//nrVrSAHka/qywCTx2KrTGMkuglHDw8N7Zf4JyG8
 gpO2I9Du0SE2NbzHBQtTMh3eztWzXiaZvQTxb2/qYbyoAfyYNyJhUEnIhtEApowDpcxF
 WxxfY0naPVefsYo79ymW+R7/9eG7MvSc8kZJmPfLt0QmPY2FT/DFRppHIGAfljTsaDlK
 aoPkpdXlTufpaWCmCzGQuZ2cnqHG0bTA27Pcp4L9hlrh3WvC04FvRvVI0gyBOEmtz2Lm
 dDAg==
X-Gm-Message-State: APjAAAX9hdfTiEhn0ysrH98UkypUXxJxwFkLvM8gNjkQiZOg/+n2byvc
 xWnyHFTg3f67o8eiqZUiPAittg==
X-Google-Smtp-Source: APXvYqzByc/4yIWQSC44smY+Wmaei7vfmV5iHq9ECor2e7zK+iHHiRISkR4djb2VDtszsmN6vH8dvw==
X-Received: by 2002:a17:902:7687:: with SMTP id
 m7mr13517930pll.310.1561747268178; 
 Fri, 28 Jun 2019 11:41:08 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152]) by smtp.googlemail.com with ESMTPSA id
 q144sm4238550pfc.103.2019.06.28.11.41.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 11:41:07 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson-g12a: add missing dwc2 phy-names
In-Reply-To: <20190625123647.26117-1-narmstrong@baylibre.com>
References: <20190625123647.26117-1-narmstrong@baylibre.com>
Date: Fri, 28 Jun 2019 11:41:04 -0700
Message-ID: <7h8stlr1rz.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_114109_041633_835B1DDE 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The G12A USB2 OTG capable PHY uses a 8bit large UTMI bus, and the OTG
> controller gets the PHY but width by probing the associated phy.
>
> By default it will use 16bit wide settings if a phy is not specified,
> in our case we specified the phy, but not the phy-names.
>
> The dwc2 bindings specifies that if phys is present, phy-names shall be
> "usb2-phy".
>
> Adding phy-names = "usb2-phy" solves the OTG PHY bus configuration.
>
> Fixes: 9baf7d6be730 ("arm64: dts: meson: g12a: Add G12A USB nodes")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Queuing for v5.3-rc,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
