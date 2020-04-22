Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D551B3BC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmiOoYCM59643fnuvpYDQYYH1/GpqvP/qRsVEgobV8k=; b=NOwukKhnzzOflr
	hls5nubJYSlnOztvSJ1WVwPflprXZu14HC5GTE0Ayrwk9VZZ5iA5kIJ4rXF3rnJ/LQuZb1AwfjQjY
	RtLtAQMx1J9DJL22e3HIPnXDw9ug6vm312ibDrtf/pyOlcPZUuZHS+EVcUdM0Ty/WjEUzSb+goTd5
	mFZ/V9ZmtkRKZd++b7pZFar9s1oe+O3KMb1fGR92xbSzskfmQkrb3GkBPWK1CWXemmmbPxSNEDLuY
	nzceKwLHtVCX6IEh1zcdJQqNrvSuVr/h0qiBBz7iMv1w7bvrS9v2Au1bWcvi1TGG9U8VwEsLfr8iQ
	MgaGf8GXjCledm6AjGcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRC3A-0004ZR-9T; Wed, 22 Apr 2020 09:52:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRC2u-0004Y0-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:51:59 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE2312073A;
 Wed, 22 Apr 2020 09:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587549115;
 bh=o2n43kaLkZk8Yc3c5jw7xR0qABHEQs6JMUkUxQReAVM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=SEusCKdNvAthriMYUMGBLbl+Npwh4x+yKKFsGZ+ZiCntRRFZE19TKIoA9b6fvJ5WK
 uxEuviBo94uJ7xv4ZyPWFnKDIyumUD0J9m15t2eufbrPkr3tIviPfgkhCD6l10hkw5
 wnnNR3eLnoOhe0CRRpu0McpMoGUooLe0GPAOvZP0=
MIME-Version: 1.0
In-Reply-To: <20200419170810.5738-8-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-8-robh@kernel.org>
Subject: Re: [PATCH 07/17] clk: vexpress-osc: Use the devres clock API variants
From: Stephen Boyd <sboyd@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Date: Wed, 22 Apr 2020 02:51:54 -0700
Message-ID: <158754911497.132238.14935003164917739527@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_025156_167609_ACB339E8 
X-CRM114-Status: UNSURE (   7.58  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2020-04-19 10:08:00)
> In preparation to enable the vexpress-osc clock driver as a module,
> convert the driver to use the managed devres clock API variants. With
> this, a driver .remove() hook is not needed.
> 
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
