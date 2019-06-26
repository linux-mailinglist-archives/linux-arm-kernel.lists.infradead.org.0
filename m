Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0042F5675F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 13:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MnHPNxdyD1IxFGSFHvDJaSiwanP7NxCgwkcyGPaZ+Q=; b=HoIjcQZXAk0bKy
	xMxXS4tEu9j8Up+5Q9IfBh4Qg+1//LYc64FLPBexx1mMzYgPqg6LvJSopxAyv0qCFDK0jWDkJh38l
	d9DJlBxzHqxTmEVxWVRoOqBu7tzTSx0wuBk5XTkFtrXy9ph3rLN+OaYyzDPsGIRt+y4TUTOoRV8yU
	H6EjzYDX6cMtQ6zKnjZtitIuL1pgRTs/28tsuYptwYIVYM0YR9toITHH9QY8SCK9bLKji62v3Bpuv
	IrQLVYuNvMZAXZvhr/b//B75m1QHnpC80akj9/QgbROEmAI8q9oUfYKjGZT278KBpjoli2nqsCghO
	19M0nna+g/tmXKujFTaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg5mn-0003h0-1O; Wed, 26 Jun 2019 11:08:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg5me-0003gW-1u
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 11:08:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28B6A360;
 Wed, 26 Jun 2019 04:08:11 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2386C3F718; Wed, 26 Jun 2019 04:08:10 -0700 (PDT)
Date: Wed, 26 Jun 2019 12:08:08 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH v3 00/10] 52-bit kernel + user VAs
Message-ID: <20190626110807.GE1161@arrakis.emea.arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_040812_140722_73CABA40 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 bhsharma@redhat.com, will.deacon@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 06:26:48PM +0100, Steve Capper wrote:
> Steve Capper (10):
>   arm64: mm: Flip kernel VA space
>   arm64: kasan: Switch to using KASAN_SHADOW_OFFSET
>   arm64: dump: De-constify VA_START and KASAN_SHADOW_START
>   arm64: mm: Introduce VA_BITS_MIN
>   arm64: mm: Introduce VA_BITS_ACTUAL
>   arm64: mm: Logic to make offset_ttbr1 conditional
>   arm64: mm: Separate out vmemmap
>   arm64: mm: Modify calculation of VMEMMAP_SIZE
>   arm64: mm: Tweak PAGE_OFFSET logic
>   arm64: mm: Introduce 52-bit Kernel VAs

The patches look fine to me now but it would be good if Ard had a look
as well.

I'll do some testing with my config combinations script (which takes a
while).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
