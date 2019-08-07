Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BED850CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOy+GgA+xrY50/hjPGYYabDoC8f39AP7GwMeGMwksto=; b=pWYj13wy+Tnc6O
	ct9XCyVmFVWOhf4v3OmhVCyULlosFtFhghnUrajJiQTnLLdtduzQ6wgCuzAZmSK/IW3g16ptvA2gL
	nEjOMljaCWLUlUBbujSht+0kDbbXzQOvWQFV++zZJy10oO4XX2/PH9e4F//KDm1S4SoDjMH4dGaCs
	WKbbKo41ZwsqE9SAcGv4ZSS72MPbBnjiROie/N5qeOsKddOGqOSDQy5XTyLgn7+rw4ww4xsdGBRdI
	8CM0QIp3mplFWL8X8SJ1hQuHVKquTKhN8W560lE2JmVZMppkMC5rPMqk+liqYdOMJw3zHFD0rpmat
	vkHS9egRHL96sxMWYpCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOai-0000wQ-Su; Wed, 07 Aug 2019 16:15:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOaW-0000w1-63
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:14:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC834344;
 Wed,  7 Aug 2019 09:14:55 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B90683F694; Wed,  7 Aug 2019 09:14:54 -0700 (PDT)
Date: Wed, 7 Aug 2019 17:14:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V5 05/12] arm64: mm: Introduce VA_BITS_MIN
Message-ID: <20190807161452.GC1766@arrakis.emea.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-6-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807155524.5112-6-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091456_267788_D8395DAA 
X-CRM114-Status: GOOD (  11.59  )
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

On Wed, Aug 07, 2019 at 04:55:17PM +0100, Steve Capper wrote:
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
