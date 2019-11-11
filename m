Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AB5F7AB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CBh+weqJypM/ZX0mROk76Z2wSFjI6eQM6u2IjUyhRA=; b=py0fXnxoqPMEsU
	Ym2Roazt7hNtwzaqokgQuGUy8MH9gZtiwbVMY1Ov9ZgHXEqz+/wptxf5lD5wTFiHQJMSlu5jY3yV+
	MuCZiIbXMV59DjPEkk45OQjK/RkFP92c93TqQuMYj2h+ZPmq9Q1Iti5wY1GuJDfxKJRIX1ReCVQPX
	Jl70ufEs/QT4rpKoOHJHwbNtQrH/hIj+Fg16oNrDWhNAQJv2qTwT8/wDCW5DKqqpeqEqdaKlSvQxk
	feJpzu8hqp6Qm/mE9W+9jM6wS8gNINrFcuxDZoth4skfuQsDas79c2jYlSJ2B6NzTO7zXY4UYq+Wq
	9qsMbsqmq/BnFzsrn9Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUELd-0004Fe-Rq; Mon, 11 Nov 2019 18:23:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUELR-0004Er-AS
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 18:23:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47AFD1FB;
 Mon, 11 Nov 2019 10:23:18 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7828C3F534; Mon, 11 Nov 2019 10:23:17 -0800 (PST)
Date: Mon, 11 Nov 2019 18:23:15 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH] arm64: Kconfig: make CMDLINE_FORCE depend on CMDLINE
Message-ID: <20191111182314.GA60539@arrakis.emea.arm.com>
References: <20191111085956.6158-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111085956.6158-1-anders.roxell@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_102321_403938_5A12D062 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: john.garry@huawei.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 09:59:56AM +0100, Anders Roxell wrote:
> When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
> CONFIG_CMDLINE_FORCE gets enabled. Which forces the user to pass the
> full cmdline to CONFIG_CMDLINE="...".
> 
> Rework so that CONFIG_CMDLINE_FORCE gets set only if CONFIG_CMDLINE is
> set to something except an empty string.
> 
> Suggested-by: John Garry <john.garry@huawei.com>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>

Queued for 5.5.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
