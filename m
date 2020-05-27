Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7426D1E39AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rloXtTnhjmh8O24jhqa658vQDeIs4huBOZxusz13H0=; b=MYC7lGCT7x/Qss
	gwukitYW+d6ylgrhCvVjn3dt8Wk0nosblH1Ty3+8f81GcLWdz+jRM0B5FlcYqTNT/PtZX5HkWXTGI
	gVi0BaYegxIFirFPpXeqZENqI9LCyDfM8lXJdSOonk16RX0Eg9S+vyZTI6LGucD1xM0oUPAvAAo2u
	JJVH0Q4yrMRvZUVdNmCaQ4iHTpiERYkYp4ra+RM/U7N797E3spPLUGzs6zf30874RAJwJK7+mnqM5
	BL3jqo7CjUxr7nmZ4gpRQRHEwgryPuvP5QvS7yhSfTFW3JkAXMkLy5Ngxr91ymwgu1c2ZmSjORrv5
	eaLii8Jkym4u9wGcUSvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdptS-0002ih-R9; Wed, 27 May 2020 06:50:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpso-0002Tk-N8; Wed, 27 May 2020 06:49:48 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43B4820787;
 Wed, 27 May 2020 06:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590562186;
 bh=Mk0WhkBIU2YaD9/TvTDR7cnluLj0/U9QGU8sM8xfkQY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=t/jLS7Hn7JIrLhyly00O4MTUvM8vxasos/btmdCHde4Kfjcod0t6KxYiej7F+A9H5
 HkTWW0NNbrKCBVwMGeELjC+OKMwQCjrF2wzoGayM+oVZXsqwZSPyXkhwf1qIYJzpRr
 Y2fBI1is3w0dfNxNBJYIAm3mhy06JopaziSFi2xc=
MIME-Version: 1.0
In-Reply-To: <db082ca433f69533e4cdf41c80a0699a61aa285e.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <db082ca433f69533e4cdf41c80a0699a61aa285e.1587742492.git-series.maxime@cerno.tech>
Subject: Re: [PATCH v2 15/91] clk: bcm: rpi: Pass the clocks data to the
 firmware function
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Tue, 26 May 2020 23:49:45 -0700
Message-ID: <159056218564.88029.2045421244450515235@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_234946_811118_1713BE1C 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Quoting Maxime Ripard (2020-04-24 08:33:56)
> The raspberry_clock_property only takes the clock ID as an argument, but
> now that we have a clock data structure it makes more sense to just pass
> that structure instead.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
