Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D60A83498
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92Vcuu+fWGSsvhzqTpJ9ZYXyZje2OnBY/o2Q5ZkfbzU=; b=PSoLzuauanajid
	VkILK0qLzCcXijnIG/FEU42GS/Z40yLv01diCyoYr6u2k7fxM3sSMjgnEoEdwJ1DB63X1iHOIC9Km
	Cl74zwPe2omz8Gt7ZmNnoJCs7OAvx5/U8wQmmwMpMXih9WF4GUT11CywPSsL2x2sMqUhomc24JIDH
	e3/sM5WYnjXGQYvwd8yBCxLu1XfsXGLV9T1kHqWK32S24RqvRqBIVIDUozMrk1VHaDA5PD9Zc7KjF
	3412km0MR4B7oKegsPRscnpPFF5xxfQFPE+PCClQQPBghqBy49LNQSy3hRROxu0T+vyKAV+/cP1xw
	TclqW1fG5UWzzcyrwImw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0xI-00077Y-4o; Tue, 06 Aug 2019 15:00:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0vC-000311-16
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:58:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 524FC1715;
 Tue,  6 Aug 2019 07:58:41 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 507893F706; Tue,  6 Aug 2019 07:58:40 -0700 (PDT)
Date: Tue, 6 Aug 2019 15:58:38 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 10/11] arm64: mm: Introduce 52-bit Kernel VAs
Message-ID: <20190806145838.GG30716@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-11-steve.capper@arm.com>
 <20190806145545.GF30716@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806145545.GF30716@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_075842_214412_EA4CFBBF 
X-CRM114-Status: UNSURE (   9.54  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 03:55:45PM +0100, Catalin Marinas wrote:
> On Mon, Jul 29, 2019 at 05:21:16PM +0100, Steve Capper wrote:
> > @@ -759,13 +759,14 @@ config ARM64_VA_BITS_47
> >  config ARM64_VA_BITS_48
> >  	bool "48-bit"
> >  
> > -config ARM64_USER_VA_BITS_52
> > -	bool "52-bit (user)"
> > +config ARM64_VA_BITS_52
> > +	bool "52-bit"
> 
> I think we should change defconfig as well to make this the default. We
> tend to make defconfig cover all the architecture features we support
> and people can disable them if they get in the way (performance).

Ignore this. It only works with 64K pages and our defconfig is 4K.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
