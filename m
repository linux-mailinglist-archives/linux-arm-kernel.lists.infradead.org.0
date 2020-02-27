Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D61724C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N19/rTdeZ92O6jiOFzozBmL9LKP/P0wY0kzsG90AXQ8=; b=NtGSYcGBt07ZLD
	eIA92xJyjrlSa69Rcfju3l3BeSY/d04BKGjwQX9pYpkIcQ1+/D2AiY1avgt99v8izOVyMiethnoYi
	YNWO5VzVZgE+tdXgLwHNtQVdfqSorwRWjCurozWAqRIKzW55MBgKkknN8a72IcAcGAWMHA8cVe9CX
	5U5JqiN9q2sPjE74vqnP+wOk8OFVO6dz7MTxWsL90eZPOgDKkp77j2rL1e/GzbOUSw/jO9MneJkcH
	BAONKZPopmwJJKGZHFTdXNWPrfx38Lr9hb6ZuwgHH/A8KfKhEbVXoCG3o9TW7M1z/z4hGBXlFnh1p
	nP5vK/uJE/TqIOGcSbwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MkS-0003V2-78; Thu, 27 Feb 2020 17:14:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MkF-0003UY-Mn
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:14:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 01EDB1FB;
 Thu, 27 Feb 2020 09:14:43 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5270D3F703; Thu, 27 Feb 2020 09:14:42 -0800 (PST)
Date: Thu, 27 Feb 2020 17:14:40 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/4] firmware: arm_sdei: cleanup locking issues
Message-ID: <20200227171440.GH3281767@arrakis.emea.arm.com>
References: <20200221163509.47254-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221163509.47254-1-james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_091443_790978_BF843429 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Liguang Zhang <zhangliguang@linux.alibaba.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 04:35:05PM +0000, James Morse wrote:
> Liguang Zhang spotted the SDEI driver would try to take the same
> lock twice on its resume from hibernate path. Testing this uncovered
> that the re-enable flags are updated in the wrong place, meaning the
> driver never tries to re-register shared events on resume from
> hibernate. Oops.
> 
> The first two patches fix these two issues. As the bug was found
> by inspection, and its always been broken, I think this can wait for
> v5.7.

Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
