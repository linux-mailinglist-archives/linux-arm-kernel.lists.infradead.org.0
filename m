Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1284BC6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z41AXpYkLG8RxQe2xmv389v1nwIKBCsskWnuysLjdw0=; b=Hr0rrRRTyj9+IQ
	qEs01ijQXd50fWWmdSrWVieBriRrgqReXrurY8ATqgCJz/XJ3vlW9ot6exSvUIwgbcHovIxUPW9jb
	w95MpS2uxzHSJ+00uRdi4aGHp2q69MH8476y1DvU/oFvNpjl/ggTe8O/MaZ+3cOV6RQk2mRMgXYN6
	t4x75JIJaI0co4aXLVgQjQ7tr6ZxM5wWVq+LIRwCbOP/1GSyJ6/J4iZDuM7ZRbZCdOO/tuqMKGXq/
	/dadDg9o/loMUS68PScz7zAVdETgttmQ1s5Q1IpI73t4TYceFA/qdQmoiTVUB+U/XOM408NOVJ3WG
	gvIpPOhU0MLSVpYXcqXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcBZ-0003BN-9s; Wed, 19 Jun 2019 15:07:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdc9y-0002Ds-S1
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:05 +0000
Received: by mail-lf1-x143.google.com with SMTP id y17so12433217lfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qo3e63HL3BzDtfqkQiaY62IQlXV/H1BFP1jalf87HMc=;
 b=uxSUY3ZxDLYKi6tP3oJ+OgL02Da5xhLsw2kgcnf8dWSKkxZx49Yn1Rf2dhRqASNOR/
 uyih413YiGOdufoC2Snp1BzgYJC7TdUj02oLV4BzEw0y0Eqp8FHEJwShX4bIIR46JIGY
 e28m8kq6Bl4T6bkFAW0JExXNp4chY1fjQG+WkQc3TekfEdcDkJoVxe9T01/Yx2RHNolX
 u4BEJARBt+s9uJLbn3LzlBSwkWaaiLSonuChC6KyJDxUz79E5vJ1FPIk7jYsRIM2E8d5
 /yWbFFNvtSTqaW1eELAl9/WAgUqgbHmU56MWfH0+/mFNHV15iBrJhe1ME2/XCjKbefMx
 YL+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qo3e63HL3BzDtfqkQiaY62IQlXV/H1BFP1jalf87HMc=;
 b=lOYc83tUktnMmMvdUy7r3/hTcr4eXonJwAJCYnVYCf/rc6gYTd0CY0xIX7etqA2ylv
 x8y+gHs+A0zHsIFQz70EekICnj3yXFjqD8QgsNrEIAFgdCPTQLE0zKK5c2y603F19v+A
 Hsxt86MO2V02cutOB7nczy+OWiOaLP/Tlf9niz/j5PUdmmOyasexSBLaYt5vO8Z5530e
 ugTr3KtLj5jf5AEB8xWmuBwMR6wclnwJd3eWbn8LgzvaRXWkxcKIuoSTczAvn3XyvfK5
 5+ht4Ii1RLmwJ6tV2Zwujn3UmYPP2FHeoHw/E2bbmglDQT12lTlq2put6h75N6kL5vIO
 9hFw==
X-Gm-Message-State: APjAAAVF9aRfZkLw6QQPUQcjweav1cY+20RH5khrmTiiRqzOutfEeW1h
 woYxog6s5UsE5x8RqVlYb84raw==
X-Google-Smtp-Source: APXvYqx2OQTjYY91I+p4ttJwT1ZdJWsfYL5Dxi2KwgLxgOydHZgkuJM1ooIblOIa8NRl8LMbuo6YMA==
X-Received: by 2002:ac2:494f:: with SMTP id o15mr33066277lfi.84.1560956760977; 
 Wed, 19 Jun 2019 08:06:00 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g14sm3001223lja.23.2019.06.19.08.05.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:00 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:11:12 -0700
From: Olof Johansson <olof@lixom.net>
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: Re: [PATCH 2/2] arm64: defconfig: add Panfrost driver
Message-ID: <20190619141112.lvw2ibyrqr53livv@localhost>
References: <20190604112003.31813-1-tomeu.vizoso@collabora.com>
 <20190604112003.31813-2-tomeu.vizoso@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604112003.31813-2-tomeu.vizoso@collabora.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080602_933197_95612B35 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, arm@kernel.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 01:20:02PM +0200, Tomeu Vizoso wrote:
> With the goal of making it easier for CI services such as KernelCI to
> run tests for it.
> 
> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
