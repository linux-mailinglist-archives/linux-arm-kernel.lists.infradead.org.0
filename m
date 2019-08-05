Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7067823A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xu3/BIaop1OsTRrCTo0Yxgca51oF8d8gJhnwCdTkn4k=; b=LWk3qYAnqYKrwJ
	cxtYBYm8Jt4eHhWS1y+UPXGuwFFyEk5Lggs6pxLJd9tX9QjYm+NtBtEeBulsnpy7+d0l/aGBF//kQ
	KF5gibcqEI2GPFKL+Cg46s02QbFPhd0oUoqwSlokYI/ToZxrzviPdpjVIwzoy2Z90smsJDhVJWFvG
	UyRPeDEtjZidb9EUPBBdbEzvfQEgSBChImLkJpoHPm+9wmaMeC9D5i9m783KVSU8SMmQXvW27wyXX
	BbywcjHkLnxJD1BHfgdY43GpsvSOe5QtTpG1kuuILD05BoY16esSK7RzjDeE8X7aOdneIqyKDj8xk
	Ttx0XM3TEucXYRzacJnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugRi-0000xD-Iv; Mon, 05 Aug 2019 17:06:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hugRW-0000wt-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 17:06:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48218344;
 Mon,  5 Aug 2019 10:06:41 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 44CBE3F694; Mon,  5 Aug 2019 10:06:40 -0700 (PDT)
Date: Mon, 5 Aug 2019 18:06:38 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 07/11] arm64: mm: Logic to make offset_ttbr1 conditional
Message-ID: <20190805170637.GH4175@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-8-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-8-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_100642_940563_9F2C0E3E 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 05:21:13PM +0100, Steve Capper wrote:
> When running with a 52-bit userspace VA and a 48-bit kernel VA we offset
> ttbr1_el1 to allow the kernel pagetables with a 52-bit PTRS_PER_PGD to
> be used for both userspace and kernel.
> 
> Moving on to a 52-bit kernel VA we no longer require this offset to
> ttbr1_el1 should we be running on a system with HW support for 52-bit
> VAs.
> 
> This patch introduces conditional logic to offset_ttbr1 to query
> SYS_ID_AA64MMFR2_EL1 whenever 52-bit VAs are selected. If there is HW
> support for 52-bit VAs then the ttbr1 offset is skipped.
> 
> We choose to read a system register rather than vabits_actual because
> offset_ttbr1 can be called in places where the kernel data is not
> actually mapped.
> 
> Calls to offset_ttbr1 appear to be made from rarely called code paths so
> this extra logic is not expected to adversely affect performance.
> 
> Signed-off-by: Steve Capper <steve.capper@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
