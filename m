Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA1D866BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4KS4Awpgx3LMw/ESpPxXBkrJ9POnqLmXd5BOYKihHM=; b=g0h8Etz/bxddFW
	Pc3sA7lMvLV/1klG7ruRBfchMFwdW4Upf3sKtutththas/KigEQmj6kWk562vRXM1p8bqrW5uWKLy
	rQEix0n1ZlpsCWcYHfYBLlwxu+9yKFQiZa8vSMe7GhHLtIow3CE3S7PhwbVKKK6/geYS+UqOc9nhf
	F5iXP0KIMyKL8+8lkHgWDfRUevYgZX1J0041h291qT6aTflzSafmFNwMb6Fo+g9gY6CujzyJdJiQK
	UEWf7K7m7Ce54/ilBeOvlX9p0z/Van7TMAKvZT82HHuXKILw9hj5t15FnMC6aTSX9XkoSS+e4zd+5
	e9KyNxe0SM0DwyMb9TsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvl22-0004hv-Cp; Thu, 08 Aug 2019 16:12:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvl1V-0004F4-RU
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:12:19 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6280721743;
 Thu,  8 Aug 2019 16:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565280737;
 bh=hMbk09CEqq/4ZnGxwjNfY8qvoPlkHX3ojR8xSAa10AQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ZxpF5RAbgDUrM4R9Msr8xapAQE8EzzDe00dWjrd5HbXTvZ48ZIEDz609L7PjVnOOw
 mq31jCnjD3PmCkl18vuD1qJ1MTV0CH+x28Sp6WPlu+iZlQREnl0h6o/+UnkU6qqfYd
 /6uKCOVdaibV+wK8oWdi2y+wtzVEa3TNXLAYpUjc=
MIME-Version: 1.0
In-Reply-To: <20190710134346.30239-4-gregory.clement@bootlin.com>
References: <20190710134346.30239-1-gregory.clement@bootlin.com>
 <20190710134346.30239-4-gregory.clement@bootlin.com>
Subject: Re: [PATCH v7 3/6] clk: mvebu: add CPU clock driver for Armada 7K/8K
From: Stephen Boyd <sboyd@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Mike Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
User-Agent: alot/0.8.1
Date: Thu, 08 Aug 2019 09:12:16 -0700
Message-Id: <20190808161217.6280721743@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_091217_943174_A5260B3F 
X-CRM114-Status: UNSURE (   9.31  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>, Gregory CLEMENT <gregory.clement@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquèl Raynal <miquel.raynal@bootlin.com>, linux-arm-kernel@lists.infradead.org, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Gregory CLEMENT (2019-07-10 06:43:43)
> The CPU frequency is managed at the AP level for the Armada 7K/8K. The
> CPU frequency is modified by cluster: the CPUs of the same cluster have
> the same frequency.
> 
> This patch adds the clock driver that will be used by CPUFreq, it is
> based on the work of Omri Itach <omrii@marvell.com>.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
