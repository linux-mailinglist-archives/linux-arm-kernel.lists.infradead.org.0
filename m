Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4FA823D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrlgU75nFWqbemPPOXFZ1/Geuqc9ZwTs8U1dWhu4OhE=; b=IopA3PvhzZhiXK
	9T99UIDoQuO8cZiMBBW1DohPeS0HEmBcqLhJqkMmrTkeCN0aFxPdKDA1RtfMS833eIz2uQgVOpr2f
	AfvDupZy39bIcDmKNf2LxOqHEl+5O/m2jKLL8xE+z5GXbNuU59jfxFusqq0pShg4f0SfMgDIX3mmo
	yDoq6WNWvnI09kNiBOR+qKVpPgbhmqRHymfan18KExumVMmmE/IHkBo0YQVKhqJcrgOfWqlq/mMfA
	YhzaVXrWdw1H5S9C1nX1IpPQbZWUkdfAqrbnUYnbjnUrEIZNyPHMtE9B2me35RCBSnnxdltpLlAbV
	J30eOJnTG3U3KwheTeZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugcU-0004gP-0y; Mon, 05 Aug 2019 17:18:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hugcI-0004fu-QC
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 17:17:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D0AA344;
 Mon,  5 Aug 2019 10:17:49 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2A2BE3F694; Mon,  5 Aug 2019 10:17:48 -0700 (PDT)
Date: Mon, 5 Aug 2019 18:17:46 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 05/11] arm64: mm: Introduce VA_BITS_MIN
Message-ID: <20190805171745.GK4175@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-6-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-6-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_101750_896862_1F65091F 
X-CRM114-Status: GOOD (  11.43  )
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

On Mon, Jul 29, 2019 at 05:21:11PM +0100, Steve Capper wrote:
> In order to support 52-bit kernel addresses detectable at boot time, the
> kernel needs to know the most conservative VA_BITS possible should it
> need to fall back to this quantity due to lack of hardware support.
> 
> A new compile time constant VA_BITS_MIN is introduced in this patch and
> it is employed in the KASAN end address, KASLR, and EFI stub.
> 
> For Arm, if 52-bit VA support is unavailable the fallback is to 48-bits.
> 
> In other words: VA_BITS_MIN = min (48, VA_BITS)
> 
> Signed-off-by: Steve Capper <steve.capper@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
