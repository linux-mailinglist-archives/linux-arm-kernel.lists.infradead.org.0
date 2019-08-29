Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7310A2015
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGEYWacJB6GN7iU+xdNh+5su7FpDK0v+sbADMxa32TM=; b=gLyi91ZSf84HDI
	ZQTFS+bvQc0MK7y9dzGJNGKyfap6SzKxvFSrPyaySQ6UVwOA9XmpR/UZan3/bPgYVbDLWOQtfYJjn
	SPIKxI5VvUMRzX7vZKYtdDNc2wfnH0oBD2iAeo9MsjMaKq87PfOgrwqk/OvG5ukjg9U+7pX1eXMVe
	0P2d8fEnh3pvFGMPFRXoO45G6xaaRRG11azQkrrywhYN59fQOqaX1RD1kA1Q7zcRMd7VplMAhznO+
	py1qboWBRT5w+uFZ2wGpw/QdvPdDfFbKVz0NjGgnddJEVajJZqoYXdd2ioD7hAmA0ffj32RF6LwN2
	pB9g9A/rRafS+2AxFUUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MkU-0006Hs-BA; Thu, 29 Aug 2019 15:54:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Mj1-0005OY-N2
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:52:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1145D28;
 Thu, 29 Aug 2019 08:52:39 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0F633F718;
 Thu, 29 Aug 2019 08:52:37 -0700 (PDT)
Subject: Re: [PATCH 5/7] arm64: compat: vdso: Remove unused
 VDSO_HAS_32BIT_FALLBACK
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190829111843.41003-1-vincenzo.frascino@arm.com>
 <20190829111843.41003-6-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1908291420060.1938@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <100cf343-1cac-84d9-3a4f-5de801fc4482@arm.com>
Date: Thu, 29 Aug 2019 16:52:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1908291420060.1938@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_085239_876779_6E789362 
X-CRM114-Status: GOOD (  11.65  )
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
Cc: linux-arch@vger.kernel.org, catalin.marinas@arm.com, 0x7f454c46@gmail.com,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, paul.burton@mips.com,
 luto@kernel.org, salyzyn@android.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/08/2019 13:21, Thomas Gleixner wrote:
> On Thu, 29 Aug 2019, Vincenzo Frascino wrote:
> 
>> As a consequence of Commit 623fa33f7bd6 ("lib:vdso: Remove
> 
> -ENOSUCH commit ....
> 
> Just say:
> 
> VDSO_HAS_32BIT_FALLBACK has been removed from the core ....
>

Thanks Thomas, I will fix it in v2.

> Thanks,
> 
> 	tglx
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
