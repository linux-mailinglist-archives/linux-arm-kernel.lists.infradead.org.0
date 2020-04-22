Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB301B4B5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbFQ420xn3rD7fLFpYlaHvf5Z2E5i48UN8mA1zs7pJ0=; b=MmA81q4MVtWhCz
	SQRGfHrNScNzkHmowXo37PR66X0A2IGYOq/FdYybOp64rAFBHKmxrWLPlKR5Laqw+so2YTBO5UJgf
	sFU1N9iuxtke9Tby/mjT1xJDhHVJVHNEZZwYcF4GnsvpaEBBleFAUjDJGTIXVAz77flHoR6f5NWbm
	spkjsaMcFoWO9bhyawMNkR4LhQJn+HHkYX/gcA5QzCu/mbYVLrsUwJT3UipcHOpDOtpNGoEJGCq96
	9VE/Mq2DmS/z1rSYNilsP1mYN1uypOScfo8p92O7AcQEtoT3kVyKPV6UMbrHrG3Vw6NHU9EOchUc6
	mKjo2wYpwkC04NB2GFhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRIuX-00059R-UX; Wed, 22 Apr 2020 17:11:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRIuM-00058L-VX
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:11:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E7CFA1FB;
 Wed, 22 Apr 2020 10:11:32 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4581F3F6CF;
 Wed, 22 Apr 2020 10:11:31 -0700 (PDT)
Date: Wed, 22 Apr 2020 18:11:22 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: add check_wx_pages debugfs for CHECK_WX
Message-ID: <20200422171122.GA40812@lakrids.cambridge.arm.com>
References: <20200307093926.27145-1-tranmanphong@gmail.com>
 <20200421173557.10817-1-tranmanphong@gmail.com>
 <20200422143526.GD54796@lakrids.cambridge.arm.com>
 <20200422152656.GF676@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422152656.GF676@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_101135_056638_5944713D 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
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
Cc: keescook@chromium.org, steve.capper@arm.com,
 Phong Tran <tranmanphong@gmail.com>, greg@kroah.com,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 steven.price@arm.com, alexios.zavras@intel.com, broonie@kernel.org,
 akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 04:26:56PM +0100, Will Deacon wrote:
> On Wed, Apr 22, 2020 at 03:35:27PM +0100, Mark Rutland wrote:
> > Thanks,
> > Marm.
> 
> Wow, employee of the month!

Muscle-memory has finally defeated me...

Marm.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
