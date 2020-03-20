Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1186C18CDE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 13:30:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uagC/H40qCyzcWD1RTBl+SN/s5YSMw3Q072d2z756U=; b=pvnKHng5sPYbma
	W7/zD6XTucnNOLiuf7QMXu3xGsiTTPY4jEeW8RfiFQupkFk2sKwfJ4DfD199O5PbBM6Bmr95+xhhW
	6WhkkG9LMgzz2ory72rXYy+BfCRzz7a8OlH2hyH1Hpe0GZdERvjt5BoB0I7z6Df9imSvLDZ7xSMFp
	CAWZhNH6qVXOv2vECAsiOq/KhpBK9GVEunuzPDvPSVA75wCCWG84IpipjXqEyZPU5voy47/VtCEad
	kYVNRQ5pttbo1pZVfT46pWTLM9veruEzyVzb3qrQvUEUtKaKNmWDx+QNIB8VWaQ6PNHGjDVCBK743
	OPOqCmSk/HkAvosomYJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFGn2-0005iQ-8E; Fri, 20 Mar 2020 12:30:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFGml-0005hT-EF
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 12:30:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E3A131B;
 Fri, 20 Mar 2020 05:29:58 -0700 (PDT)
Received: from [10.37.12.155] (unknown [10.37.12.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A6343F85E;
 Fri, 20 Mar 2020 05:29:55 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
 <20200319181203.GB29214@mbp>
Message-ID: <d9418e75-0136-4f56-6d82-3d509be0e414@arm.com>
Date: Fri, 20 Mar 2020 12:30:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200319181203.GB29214@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_052959_522859_ADEC43CA 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/19/20 6:12 PM, Catalin Marinas wrote:
> On Thu, Mar 19, 2020 at 02:11:38PM +0000, Vincenzo Frascino wrote:
>> The syscall number of compat_clock_getres was erroneously set to 247
>> instead of 264. This causes the vDSO fallback of clock_getres to land
>> on the wrong syscall.
>>
>> Address the issue fixing the syscall number of compat_clock_getres.
>>
>> Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
> 
> Will left ARM about 8 months ago IIRC ;).
>

Nice ;) I typed it manually, it came by "instinct" I guess ;) Sorry Will!

>> Cc: stable@vger.kernel.org
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> I think Will could take this as a fix.
> 
> Thanks,
> 
> Catalin
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
