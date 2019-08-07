Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D49850D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs4HACbrfxegDH7sU0R1FChyILplYK/9wGeGqM3GjEg=; b=Vu1ZKy7UJSUYCM
	rwxdV0Bk00NvOpPRg+AVrEmLNc0o0g9AHwUi84o7hgkBYDDQBRu36i5afWsvhuxP+vHs9R8LHnsKI
	LU7PFeqSUuHYYWE9JI6gn8bLcFnmXrIRXSKMV1VfEG0RXrZhIKe3Wr0fV1x9O6eqfis2qMnSvuwkU
	yT43SSNtiYNG6JT6fVMZYeeDWlbfWde9SG2J+3QrTyke8PwvTTi/O8aLZC0WdF//UbzZSo0C62KKr
	gc/WGQ0ndBqUnZbWxOLRVrdoByHNXB7OIK+wtU8piVVy6x9wvUHqA79wZn1FdWcLffHD8sbu2lhYX
	McANHBifGH2eYBwOMBnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOcA-0002mj-CF; Wed, 07 Aug 2019 16:16:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvObl-0002cz-Kq
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:16:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49470344;
 Wed,  7 Aug 2019 09:16:13 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 479843F694; Wed,  7 Aug 2019 09:16:12 -0700 (PDT)
Date: Wed, 7 Aug 2019 17:16:10 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V5 06/12] arm64: mm: Introduce vabits_actual
Message-ID: <20190807161609.GD1766@arrakis.emea.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-7-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807155524.5112-7-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091613_807883_F65231D5 
X-CRM114-Status: GOOD (  10.49  )
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

On Wed, Aug 07, 2019 at 04:55:18PM +0100, Steve Capper wrote:
> In order to support 52-bit kernel addresses detectable at boot time, one
> needs to know the actual VA_BITS detected. A new variable vabits_actual
> is introduced in this commit and employed for the KVM hypervisor layout,
> KASAN, fault handling and phys-to/from-virt translation where there
> would normally be compile time constants.
> 
> In order to maintain performance in phys_to_virt, another variable
> physvirt_offset is introduced.
> 
> Signed-off-by: Steve Capper <steve.capper@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
