Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852145A2FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EG4Op+aJPZ8zr85Z53hLhFRmOzAKt2fx+y81OYuwVtw=; b=gwC+qCSjYMo/8m
	TpvR/0RtHFvPDnuQhYazls859D+iKRwo6z0KLnksSQskoHayBHk1fDoa23ANQ0n0fi2xjvb9+gw0H
	qfMaClPCPJVJOaam+LXVVSvZeIWvWsNTvXgKxlYBX+zXzDMJAtEIDI5e+SdjrlhMOnoI87QLI2BxA
	ZOYSTehDJVuSxLVxiW/BrYXpPqutxvFbxaI6fjkC83V4rA+Kg/6LohHyK947h7we1M3JvX9M7Jh8h
	4WobiokyFeNTB6iuIkY6k65E5CqV1EYyltUhFd67hIQXp3TpyRY1AH7BFLrA79xMvhaqu28itJ4Pr
	+9K8ZD9T5IVxVCbvB+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvAS-0001HY-2E; Fri, 28 Jun 2019 18:00:12 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvA8-0001EQ-5W
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 17:59:53 +0000
Received: by mail-pf1-x42a.google.com with SMTP id 19so3371578pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 10:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Of1JaN7sHuZfD0NstaLTd2MzqkoQNU+dB9/U+AM5Bdc=;
 b=Hz0aXYf9FNAepuCVFV167R3gAlxBZ41oQ5OOcua47PXfGIdizOWCfV7tUZJE3QgyE/
 rQLoSx180BgnxwlNgVTpQ4Ig+1Xn1VJoIeTgLsNDp2QQxn6WDq1x+YB4YdmWR1WRSEYI
 fWBIw7gApvr5ABgJvq1W+dx/05+xPrT5pRWc28UcKWjgAkPgDOoeyClRAvTuoAUW72Cf
 3dQPhidbgh7UAQ/wW9+OU+yw0I4jRXfps1zfC6+2QY+vRwyd5O8DiX8senYHiYvw9jue
 5l1RCL0un8DiyEfOgErem33EsWOke5gka4sQlT7+fIWwWP3Q/BbUKGSoQb7/N7qJTbea
 brMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Of1JaN7sHuZfD0NstaLTd2MzqkoQNU+dB9/U+AM5Bdc=;
 b=qeVUkgU6ofxyG3cusSb/OxDxSvefsV6//3YoBBb3EA0ZWxn5r4xyNjfhHWeeJeuCgv
 jdAwHqDUTPga3pmZri0K2iiKz3SWNhkRnNkRnNvDudKrTFGEcHIaSbE4KKUI+wuwxiBh
 h3E8jP3bVIVjMBx3nNqsz8EfiuIxXSDNTyzlQAe8dA1x35EHrVRUn0RhvUHLZ0B/YDLT
 MUqha9utRkyR5zKqnoke7Z8zi/7do35L1SuQ+ZzDHNlHiWGfLD0SxaMCOrlwwyfnlh+x
 PV2zfPJiJIFXaKVCWtu4a9Tc9LSy4er1V6RlC5ZuEMQqXHdVYcXgZeEpPfSYXiAM/KPn
 hvkA==
X-Gm-Message-State: APjAAAW7hDVDL9+XI5YTZ5ZZcOL71mlMBaSmgtX8kEQmTgSdGC32RrlA
 rnCtVKkx6Fg2APqBqnNYc1v/lw==
X-Google-Smtp-Source: APXvYqzVm3ctFoObBMm0Kx/+AEZc0kKotlZRvKqXLokKmAqQl+Yz8kBBvBT8Pkq4aB9NKrit17xIEw==
X-Received: by 2002:a63:3d8d:: with SMTP id k135mr10798175pga.23.1561744789355; 
 Fri, 28 Jun 2019 10:59:49 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id s66sm2933246pgs.39.2019.06.28.10.59.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 10:59:48 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com
Subject: Re: [RFC/RFT v2 01/14] pinctrl: meson-g12a: add pwm_a on GPIOE_2
 pinmux
In-Reply-To: <20190626090632.7540-2-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
 <20190626090632.7540-2-narmstrong@baylibre.com>
Date: Fri, 28 Jun 2019 10:59:48 -0700
Message-ID: <7hmui1r3or.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_105952_209236_FB440C29 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Add the missing pinmux for the pwm_a function on the GPIOE_2 pin.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
