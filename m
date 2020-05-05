Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB261C4E37
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 08:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3Nc6X9ltXRpTzAJA0pNdb3dvlacXfw5dPyIJAF9O88=; b=XvxVGBgx73DC0z
	2byIrWR2cGSsXm/Qxhyz5Y3T3NR7GO5EwaPd3UFfRdMvjGb2AtEnpZIOUXMn2NjFfQN63ntKbsXVy
	gbhBwiae56EsQlWCK9tjqj7nCGti87OlMElM9KFkWlXTRDNzkj8C0c9lp8RXLTaX0pqfqeKS+qVdH
	ZwpCCFKPszocqCeqxLV6AYeK3DizzrQ8ZUt7iMeiF0F+GuEFP4ZnsXTJ1c1FIdLgNPTLegxuOn8Xo
	PF7O2zuYr5qgsc21uhbY4SunxGKxfjth7M7e2ueZNRizQLD38u3kvwf3bwavVJjMrgfahe3yW7A3k
	XXPaehqn7iEkmC9BfWZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqwi-0003Zc-JL; Tue, 05 May 2020 06:20:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqwc-0003Z6-L2
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 06:20:43 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E90C205C9;
 Tue,  5 May 2020 06:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588659642;
 bh=sdnQohPvQROCI2sRvGa17udMmgVaBKbSC8JyZGmjCz0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=opMRFndCpGhUSprX51C8E5OXTbXiJzzCxdta3veIIiFi4mSSUWhAFRS2DjG8dSOd+
 iTGzqSAdY762EM94ilunogJWghFSKdz+b1dlSzMQCyObTJX+wAmN9Vig67Oy38DPpb
 sxD8nHvcSb69ON4PrN1dPbNuBoYJNIRPYnayKG4o=
MIME-Version: 1.0
In-Reply-To: <20200429205825.10604-5-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-5-robh@kernel.org>
Subject: Re: [PATCH v2 04/16] clk: versatile: Rework kconfig structure
From: Stephen Boyd <sboyd@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Date: Mon, 04 May 2020 23:20:41 -0700
Message-ID: <158865964143.24786.3579131427025004348@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_232042_709980_6435BF93 
X-CRM114-Status: UNSURE (   9.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2020-04-29 13:58:13)
> CONFIG_COMMON_CLK_VERSATILE doesn't really do anything other than hiding
> Arm Ltd reference platform clock drivers. It is both selected by the
> platforms that need it and has a 'depends on' for those platforms. Let's
> drop the selects and convert CONFIG_COMMON_CLK_VERSATILE into a
> menuconfig entry. With this make CONFIG_ICST visible.
> 
> Move the 'select REGMAP_MMIO' to the drivers that require it (SP810 did
> not).
> 
> This also has the side effect of enabling CONFIG_ICST for COMPILE_TEST
> as it was not visible before.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
