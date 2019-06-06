Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6EC37EE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 22:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA6obgACYWkCDeqwgrTb2oOB+PL/nK8mJ0JiPo9OZEc=; b=C7/ZDpXEvmBiZp
	3533mWdasiUkmCN4fDMGNr2wJ8tlR0+68gSzXoVB48Z56hyTEodSCdIfPmh8uQbEzE4jcIE6XVxla
	hpaORZ7xkFU1peY+q9ti2Fh4FIZD0W3QhhFdFqn/sqkHTpIEgfisPcAbSV+yxYSjxtk2nnqri7zK2
	sjbGyL36W/gJfaYA4osY+lXJr/utXf8dAoUex/JAJnWeGE7eV3XWLYIvqFmTsBooWuJJ4mD4JsyIf
	Cz84Rnr0QO1ZBRxd/4Od5reNAGQII332p5RGxt/URA+HfhBxSQyyez6d0l1ij6/RoVTHCnrU2S0sk
	oSa6wifGKiQHVSv3pTTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYz7I-00074z-O7; Thu, 06 Jun 2019 20:36:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYz7C-00074e-0N
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 20:36:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B133208C0;
 Thu,  6 Jun 2019 20:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559853361;
 bh=jzmBb+CPxKYoIpOqOYW+9YL8iX62mvJWYHT6yTA/VXI=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=ocSbNKa0g3JAc3T+Gmp5iicjxRVMKkA/1XCCElps/QttkP2+lR3G8MoweQ9ThVmpI
 xqtRD1gx0w6cA+uUkFkbcGWPbqHaktXhxdOqtoWouD/MSWE3jkhSso9k3mf4DDv5oS
 OrcL+48xwervdrxa+DmlMy2BVwRsewMM1D3rvAGk=
MIME-Version: 1.0
In-Reply-To: <20190509202956.6320-3-f.fainelli@gmail.com>
References: <20190509202956.6320-1-f.fainelli@gmail.com>
 <20190509202956.6320-3-f.fainelli@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 2/2] clk: bcm: Allow CLK_BCM2835 for ARCH_BRCMSTB
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 13:36:00 -0700
Message-Id: <20190606203601.9B133208C0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_133602_059231_CA27AC03 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Florian Fainelli (2019-05-09 13:29:56)
> ARCH_BRCMSTB needs to use the BCM2835 clock driver for chips like
> BCM7211 which adopted that clock controller, make that possible and the
> driver default to be enabled for ARCH_BRCMSTB.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
