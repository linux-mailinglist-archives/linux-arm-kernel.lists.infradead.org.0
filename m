Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20966160A53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbvbpKJyunq75kxypfGIsHHOMq52mUaUM9SjIaSxZNM=; b=Rxdhznrrwu+/gW
	qJGiUIMH+kj2Pu03Ak2KciQlfXhWafDxJwEiOuHfb6+m2V8ako2qbKkIWsIgRX4FtKC2c5LgRY1eR
	mpiCspTmlZ9oT1qkwIyufGib+AYj4mCiSwp002cD9Ojcv8QkerheCKe6ES0GJAqUz96oXBxS1MQM6
	mRFmjiaNXNQSL8laBF0SUKHHRJPZ0pNfHWYLRgC3o7SKCivYLq2maa54eSN6NYm9LRZWL58RRevrL
	FaBvPJi+JkCdtMFDOXmr0gU2GqCjzFdy1kSZy1+uT1mTFD5BOFhgrVJ9zCI3tZKer1fQafbFaT1om
	sTDoZjCFeHv8W2kPP27w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ZkN-0000UO-EC; Mon, 17 Feb 2020 06:19:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ZkH-0000U2-JU
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:19:06 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C41120679;
 Mon, 17 Feb 2020 06:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581920345;
 bh=f3VOOy6CTJtnh0VI3z3/xaikmMNxZ4lv5y2xGGj1zxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oK3n/P4t8LarlsfbQ3YsmW+KybfaWi6krW3i5QTm0kbSLRrUYev40fhu2ZQKZu2Fq
 5FfKCNAou/P+Z3oUvD1LIJs5CgCn4XYERsv16tTXBNS7kcFmfIYTDzPljgsErjV8Ut
 F/d9+/lWUpANjBWERRggEnktaFRf2fUx2TP+04YU=
Date: Mon, 17 Feb 2020 14:18:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alifer Moraes <alifer.wsdm@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq-phanbell: Add support for ethernet
Message-ID: <20200217061849.GA6790@dragon>
References: <20200211134828.138-1-alifer.wsdm@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211134828.138-1-alifer.wsdm@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_221905_656212_3A4A9ED4 
X-CRM114-Status: UNSURE (   8.81  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, marco.franchi@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 10:48:28AM -0300, Alifer Moraes wrote:
> Add support for ethernet on Google's i.MX 8MQ Phanbell
> 
> Signed-off-by: Alifer Moraes <alifer.wsdm@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
