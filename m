Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBDC6F997
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixKxwUUQwjNYG6gmhCHBFJeRIQ5822thp+QKIlbEOTs=; b=fpEglV7Q3c1ZB7
	Qc7C7UBQVujxaLCZba9Sa2Iiad9ZG9vRX2Ib3zAezO0KO7PxijtzHr2hVskdO1uaM0VZVPxp+l+k+
	QR8UfQJoWbGXA0FoXBQKvtG+zDaz1Sun6peV/zDk5iIeKLZNatP3UCszwHiz9N3omHV6ahxTaFZVZ
	i1gsaXhFzA8FCtM7vSZgo9ne/plN2EARFAAyPJ1DgjftL5zRb92Ht6rfVmUs7qHmnuvWewbONjJBR
	ZFRQBNGDdDxk5uo/D270CFpVYbPjlOxnay+WjF2SL3za/QDXeAyYLK5Zhckrmgcbkl/hnRNwccWKT
	VNP1sfSiOwVVsIrlsdQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpS11-0008RB-7g; Mon, 22 Jul 2019 06:41:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpS0g-0008Qu-F3
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:41:23 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63D6421E6D;
 Mon, 22 Jul 2019 06:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563777680;
 bh=UUh4yHEKJHki1vrQZg93MSeQJqvf2KreNyt8bksDR/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SJ+zXESRcVYxesIhJUxHjwnwXPdz5MS6r0L7nLNzO7pWJr1phYpTqVxE4Z+GPRBnX
 2kZ0qEUaEtq3klU0WeepsoIRRASCLUDHy9XKri+QHJLIKdm8tlXwiSoAoEQFkgFVO9
 k5OU/UDsHEpW3MTLlyRlvEG2lbsyxALzKTU1iAZM=
Date: Mon, 22 Jul 2019 14:40:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 2/3] arm64: dts: imx8m: Add ddr-pmu nodes
Message-ID: <20190722064051.GY3738@dragon>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
 <b8aeb9caf6c2380a7c8f65b19e420e18498d5c1a.1562230183.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8aeb9caf6c2380a7c8f65b19e420e18498d5c1a.1562230183.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_234122_526482_0EC9DE22 
X-CRM114-Status: UNSURE (   9.04  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Frank Li <Frank.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 11:53:21AM +0300, Leonard Crestez wrote:
> The same ddr perfomance counter IP from 8qxp is also available on imx8m
> series so add it to dts.
> 
> Tested with `perf stat` and `memtester` on imx8mm-evk and obtained
> plausible results.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
