Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AA5BFAB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 22:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+ZjSkKdk9bIhWAbXNuL86cHgOGCn0engK1d2stcXuo=; b=gz8aCtl1gAgzbe
	kWmXEWa6HN2ZVyIljql+eoEejLCaQDzGvWxKanIlX1hM7heSmueeheLA1hZdPGMBmShxmJUJNbe/q
	/fvhikNNEQ9p/M7SupQ3g1kJqQE+0Qa76QcrkVhYqdQk050ft/+EAqmqEZjPqib6Yz8Tvpt83aZPG
	mxCEIBj2vt2uNUg291LLic/ZhU5KrjN0DrIx74s30QXOb01PDHDjDa8/qsaChliNjRFMwWEDHdJZN
	C46m80ceMTjrTEG3t/z756ekd5wp1u1LQsjkLqiOXI7aNEhmcIpQkzvwZ29rcNS2QaYJm2PxfaIA7
	olT1IoiqTA10LtqLNmIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDafP-0004bA-TB; Thu, 26 Sep 2019 20:47:12 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDael-0004ZT-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 20:46:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id y35so2199139pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 13:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=5A93QbhcJ9OxEL8d529nmFDwwgHPcXf7jnflqd7ri+Q=;
 b=JD7JeQsALzOQnI/4qgjCyDszf1kSiggpL1jpjmpP0ZrOIuc+rH3npuK/vS6qQ+APdk
 DOxSlr0vPjLBh+8bgundu2vrbnLYxdK8cJ9A6n+FIHz1xHDLi0z+VJdL82dvLTGdo8zF
 HduM+63/IdGaaCFE3qZPWGsNkoTiLLi6WDvI4TVwW4s2I2xZ5uUu+xDZXrPM1SCBrSno
 243VhgJkvY50yMHStaZPEVf1H+Otom59J+UCdTgAuVfnoDnn2+GtT1dZFqBM3z7sWZnu
 I935JuXgwOAV/a1Cyl2iPYd9RP8KwljZunUy8mZqpja4Q9GsaO0IKxZjvyjVaxIis/71
 qQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=5A93QbhcJ9OxEL8d529nmFDwwgHPcXf7jnflqd7ri+Q=;
 b=S6QF1v6UkIjMbKDgWrbX210+GHN4D73u+BWRaFOjlzcYs8AkDJywpOlOs29KCTtwtG
 9Enjc359bXbcUATncPuHCM+NN2BR0aaJymDzKpoViPObyPTkRGxWX0h5RMXFXiYdihhE
 zGEYEA4/nPHES8WxCQB7DzfUrZI3Mo0rYLiYBvjwwuHSWGbPmP3UZloMW3NcYIQRgGkl
 kpnD2ZmTYxOiaB/4f5THxaXZ67L3Vys3iZhmrAXsqCoIK3ha1XyvQScpybMS+duYrUDm
 4iNcXzpVmCvIKgijhLRar5IpyQNg9v1fVpDCpEqBhT/v6l0aEbA82UCkpxk0zeBeplcR
 mwEg==
X-Gm-Message-State: APjAAAXJPcOZcYlt/pFol+VR5Drvt7RGCnHRUloj+me+eklm/d9e64Ry
 eRhDLd1l7RhWcB3+t1BkaqLZuQ==
X-Google-Smtp-Source: APXvYqzG2OOdfG5XCHclCet9YXaUJwXijZtrIpDdndqleeF+PAsM0A80TkkzpTkrpdeInKpWjGPpIg==
X-Received: by 2002:aa7:9a48:: with SMTP id x8mr415038pfj.201.1569530790856;
 Thu, 26 Sep 2019 13:46:30 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 195sm169718pfz.103.2019.09.26.13.46.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 26 Sep 2019 13:46:30 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, sboyd@kernel.org,
 jbrunet@baylibre.com, mturquette@baylibre.com
Subject: Re: [PATCH RFC 0/2] clk: meson: g12a: handle clock hw changes while
 in suspend
In-Reply-To: <20190919102518.25126-1-narmstrong@baylibre.com>
References: <20190919102518.25126-1-narmstrong@baylibre.com>
Date: Thu, 26 Sep 2019 13:46:29 -0700
Message-ID: <7htv8ykcpm.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_134631_996376_AFCF7F66 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> This serie aime to support when the suspend/resume firmware alters the
> clock tree, leading to an incorrect representation of the clock tree
> after a resume from suspend-to-mem.
>
> For the Amlogic G12A/G12B/SM1 case, the SCPI firmware handling suspend
> alters the CPU clock tree in various ways.
>
> Since we know which part of the tree is possibly altered, we introduce here
> the clk_invalidate_rate() function that will rebuild the tree from the
> hardware registers in case parents and dividers have changed.
>
> Finally we call clk_invalidate_rate() from a new resume callback to refresh
> the CPU clock tree after a resume.
>
> With the clock tree refreshed, CCF can now handle the new clock tree
> configuration and avoid crashing the system on further DVFS set_rates.

For clarification, does this series work without the other proposed
fixes[1]?  or is this dependent on that?

Kevin

[1] https://lore.kernel.org/linux-amlogic/20190919093627.21245-1-narmstrong@baylibre.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
