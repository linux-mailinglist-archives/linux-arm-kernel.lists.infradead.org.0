Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2351183E54
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:09:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miSCM/7eHFUK/vupvAd2gOK5NC+UUkD6UO2jDy/CX/o=; b=ebBJx9wCz8ko4C
	BSV6EwlIPJ9mFgUtfaHzGiin3BSvY5y6UPz/pmLXAZ3UINl+iqwAKpxTGVGZi5lrrq0WetGfltLmS
	ZYuxktCJbWYnlpxMNU0LDLSKeWscYnrJU4RsnUh2Bt7pkL0SIWfRIRwU8yxii/+f26CnX7nJGqPrP
	oYMWKzEURAJ8WsHrNupgSBBn3uTwhpYcxtbAkKANZIJwR5lTOSAW91LdlNNfAOaS1tijf1pMCfhFu
	1r48cr4f1+BeZTj7GWuulpqpTJpVWhnwH7sWlB1spdb8TxpFIvLppf1wjZkJnyFM6yZVWImdwmgui
	b4zfxFq6SBjsyZBOKxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYp7-0003wm-2G; Fri, 13 Mar 2020 01:09:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYoz-0003wD-Jz; Fri, 13 Mar 2020 01:09:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D266206EB;
 Fri, 13 Mar 2020 01:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584061745;
 bh=mWqeGuTaiZai0N4s1DzkxGkdeqfOfgnSh0u9DgPUrVk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=H+jnZc1EoaJ35ayLCNYofkh9rUSQAgSBTGZS05+Ylij4TruMQlpFFz/jvJx/vJ26k
 QqTto/RcDBtYQuo1Wj3+6L3NnFxNJjc5t5KAIt5bUBUdzlJ1XzQCGiN77sn5V6Y+xd
 zrI8IERSuvKnFr1MLlJoF7C3zOFhWMKKVLLa5KyQ=
MIME-Version: 1.0
In-Reply-To: <cdeaa4152ac84aecc362e09153d1427777e3d933.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <cdeaa4152ac84aecc362e09153d1427777e3d933.1582533919.git-series.maxime@cerno.tech>
Subject: Re: [PATCH 18/89] clk: bcm: rpi: Rename is_prepared function
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Thu, 12 Mar 2020 18:09:04 -0700
Message-ID: <158406174449.149997.5773094595733597236@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_180905_677809_99E5CE3A 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-02-24 01:06:20)
> The raspberrypi_fw_pll_is_on function doesn't only apply to PLL
> registered in the driver, but any clock exposed by the firmware.
> 
> Since we also implement the is_prepared hook, make the function
> consistent with the other function names, and drop the fw from the
> function name.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
