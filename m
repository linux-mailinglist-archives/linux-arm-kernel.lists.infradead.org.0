Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3984D55C07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 01:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYt+skg1P0Y0giAvr7WDxJXK5pB3u6NVRgExJ9joqmw=; b=jmPZbDKfTKSaFd
	/g7YEYReLR2acphUgYGShrJfxlih+HYA5skfONf3A0dZfbRXkyz093JikHqOiPDmcoa2dRf2SrYt8
	gALuKzuu10ara4eOIY3IHFAnQyn8MgOo/td+/0ZxYtAjMa1W9aCXmt+dQ2RiZIMtg1jzl3j8Amzci
	3RZbqRyy6w0Dd7xwg9ktSlQPIGL/9SQwq0viiuWWtlRXWKYInSc6AQkJ7XR4uMZSHb/GNJWkktA3+
	fwWP2J035ifPOjfihaXWLqtvs/0u1QdasLJyGYvBJAQ6UMpU6UcVAGMugTtZ4aXNf4bWxC3wYoXI8
	fm8v/WzzaxjZZ9dxo0qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuW2-00074B-G5; Tue, 25 Jun 2019 23:06:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuUt-0005dx-GV; Tue, 25 Jun 2019 23:05:09 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AFA72086D;
 Tue, 25 Jun 2019 23:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561503905;
 bh=90Wrt4MwnV1NZ0PqI7Vpf4wwtHJBCVCnf9ChVMO4C2w=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=2H1NJw5HGHkaTnPbpsffdTTS3WcgQec2QUgWzdn28r/UWxBHBrrOWbV/IlyGLElkO
 exxVWPDz7OHNg7+/oy46UoPrrueAfMVMtSfDPO51BgOUbt53GW06Ded7DEyTdRhy9n
 OpzdxA2quE0W0PQUUlrap7+vXA6GcG8n0Et/1r2Y=
MIME-Version: 1.0
In-Reply-To: <20190612182500.4097-6-nsaenzjulienne@suse.de>
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
 <20190612182500.4097-6-nsaenzjulienne@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, stefan.wahren@i2se.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 5/7] clk: raspberrypi: register platform device for
 raspberrypi-cpufreq
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 16:05:04 -0700
Message-Id: <20190625230505.9AFA72086D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_160507_749426_BDECB44B 
X-CRM114-Status: UNSURE (   6.62  )
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, viresh.kumar@linaro.org, mturquette@baylibre.com,
 linux-pm@vger.kernel.org, rjw@rjwysocki.net, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Saenz Julienne (2019-06-12 11:24:57)
> As 'clk-raspberrypi' depends on RPi's firmware interface, which might be
> configured as a module, the cpu clock might not be available for the
> cpufreq driver during it's init process. So we register the
> 'raspberrypi-cpufreq' platform device after the probe sequence succeeds.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
