Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB45C55C04
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 01:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPE7iIHXhC73FZ9Au+6RSupeOJ2USIWyXiq1aibo/uE=; b=WTHFyIbzdTv/9b
	0m4XJ6Euf1WSCktT5QJc0GiHb4NsCybNwcqsb0ckWYeC4BeKBTPQDghu/PSPM79kq4izwtRpmL3NJ
	lg4HQw7VieKa486AaUBJWVCLoURfEKI7+WZhBvlA4Ojt6FIksUhAprETml1Dsksqsi043J1ts0EYA
	gNSroxLkRIOKLYDYRxmhKhdv6RB0//S88gSKWP4IppHr3q2TEkKUW4wxFph4Uw5s700H8emP7Nio8
	b1S5bPa2ZDoGgKTt/Qkg215S1wbPICda2aKBBrWs4DLSFlnp9g7x/uhraV39ZIT+VF3LSuJ6BdiHL
	rCsbT+RA2lTFzWLhVt+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuUz-00059u-7E; Tue, 25 Jun 2019 23:05:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuUb-00059P-SA; Tue, 25 Jun 2019 23:04:51 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78FED2084B;
 Tue, 25 Jun 2019 23:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561503889;
 bh=/g5HbSN9aaM8rtS5Vxw7Oi3HXqq2y+sys910VJXMYIs=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=Oe4iNaIAqWM7dHzwIe2027mjsOsNLY4VxAZsubn9VofLSQo5poGekJrJkW9PWHngq
 f/Z0T6YXJXw3BpGf0YsW8VnABhtuNjy6UTBV/h/v76jK1KLrGsVTSyxI3l3kL/d8c9
 lfSQSS9u1Euez/fS5fZ75Mrwpa+5mWQ9gItqSmwg=
MIME-Version: 1.0
In-Reply-To: <20190612182500.4097-2-nsaenzjulienne@suse.de>
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
 <20190612182500.4097-2-nsaenzjulienne@suse.de>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 stefan.wahren@i2se.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 1/7] clk: bcm2835: remove pllb
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 16:04:48 -0700
Message-Id: <20190625230449.78FED2084B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_160449_928946_B9AE5845 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Saenz Julienne (2019-06-12 11:24:53)
> Raspberry Pi's firmware controls this pll, we should use the firmware
> interface to access it.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
