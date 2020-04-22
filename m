Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A631D1B4D02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 21:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1/xpg7yKI9AYJo3u+k2zC0b+YfuYj9Vq9Np49m93DI=; b=J7Y8EiW4vpz3nb
	8JURUrPJRtqy8Rffo10DgMDbx9Y3MkTXDa5ocPnLN2k41qnG2gumO4UlZsP7WyF/WeDksU79VcrZ/
	yN8ph7JuLgvLw+lO1Ol07FKmB2JS0SMfKq7zbUUWYWWtLrLcDJYgMMSaT8/HRqkxwdxP5ctVE0eFk
	THB0SGuzJZXj3dYcunVvx8u7/7/kGAmI3cqILMC10xoDu5VGIi8uHVN2rtH00fjETVehPDY/Yfpgi
	RL1SmB+qlkNyNxvuZSJYjbNY23xf+hi+QgzZPNEOv07/IGRmqWk6dGZ6UC+4M28wqzs6UdtHCd7th
	kTJ/2gx6OcIg8lFZ+2eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRKgS-0003vt-VK; Wed, 22 Apr 2020 19:05:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRKgC-0002ol-6Z
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 19:05:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF9401FB;
 Wed, 22 Apr 2020 12:05:02 -0700 (PDT)
Received: from bogus (unknown [10.37.12.118])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 74A483F6CF;
 Wed, 22 Apr 2020 12:04:59 -0700 (PDT)
Date: Wed, 22 Apr 2020 20:04:51 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 01/17] ARM: vexpress: Move vexpress_flags_set() into arch
 code
Message-ID: <20200422190451.GA25585@bogus>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-2-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-2-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_120504_293789_F1417FE1 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 12:07:54PM -0500, Rob Herring wrote:
> vexpress_flags_set() is only used by the platform SMP related code and
> has nothing to do with the vexpress-sysreg MFD driver other than both
> access the same h/w block. It's also only needed for 32-bit systems and
> must be built-in for them. Let's move vexpress_flags_set() closer to
> where it is being used. This will allow for vexpress-sysreg to be built
> as a module.
> 
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com> 

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
