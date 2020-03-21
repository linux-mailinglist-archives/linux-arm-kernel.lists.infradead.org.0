Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DA718DC73
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 01:20:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vXk/pdHiXvwxeTGhLvmLzGHaQZhhAHZN9oWzpk5Zqs=; b=kyF2U+TO+d5j/Z
	r93OWrADreCF85CWJSm6d4USOAHusxlIr6v1/GfF0C8PQmE6xRFx/0WvDPpW4dnXQZJxyCRyGvvNu
	2EpC7X7x6le3J0AA9ACRysAxvrvt77j5y6WhtDgwdfUqfJi6U4y8jIVVpZICVjtOWPPw4UWUnrjR1
	C+5FzHYPkuUFO2OY6J2Akqi+e7qOvSvzpJdcdEiR8hZCENi2y+A0oubXoMk/ETv+Ia8IDskrj787v
	kNFR12jHf84D+Z9yltKLmraCSXmWpV/k3oDM3firCrF9kyBOGws+bZci8l5fhop2oZ3pzMwbwb44n
	PMu1mthS4dwZN2Dssxag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFRrm-0000W0-IS; Sat, 21 Mar 2020 00:19:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFRrf-0000V4-Qn
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 00:19:49 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A64120658;
 Sat, 21 Mar 2020 00:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584749985;
 bh=8xvBxIIQydZTAAeg1xjxOXL/CZLRUP+mS861uvfSts8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=R6F8yDLDdPfFPiBQs2JnncDBfQbNyp5l8iea78ARUFuKoWXQ6m/e9lrIUxcTWs+vj
 IWuBOa7leMCrekmsK8xj3KRHH8vJXY02u76jNSJikwkzz8w0YJSLHSQzRY7itZKSeu
 88XrbwfFKUFqFFgbY7/8tYfKOOkaFLPyFshrvdSM=
MIME-Version: 1.0
In-Reply-To: <20200214145934.53648-1-alexandre.belloni@bootlin.com>
References: <20200214145934.53648-1-alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] clk: at91: add at91rm9200 pmc driver
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Date: Fri, 20 Mar 2020 17:19:44 -0700
Message-ID: <158474998460.125146.8220232566389840354@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_171947_895672_4CB56332 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandre Belloni (2020-02-14 06:59:33)
> Add a driver for the PMC clocks of the at91rm9200.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---

Applied to clk-next

But please migrate to new way of specifying clk parents at some point.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
