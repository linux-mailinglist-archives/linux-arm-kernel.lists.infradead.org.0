Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DBBD67D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mAV4W7H2oZAC0y0MnMriRijqNioc5iJBUQ3bioR405s=; b=nEg0wI1YpmxnOfYiteLTOQRdb
	gqr4dQT01RHSzH6vYepcImS66FsgyVaMEsD9r8e2abIDaNf9rew+kQrseqN3dWHI/fS2NnmLsa6HW
	8DXGCdMKVrzMcUBDhBV6/j4hw2oIbmcgpjGvkr88W5Ri2I11rQXPswnTG/jW62wXVtyXmUP8BCc5t
	GOgRcKGGJKCRvmPP/CMcV9O4S9SA9HuIOpnoQRbBTrX/QAr+Nw8sqEybq4MZACuoYGrqEgzXsXf7/
	PjiHb1BAc//rh5E8KhtS67XuEXVdPh7axUkp8QPi56qattbljAz+E8sAqkx/mQKI1b3BelKRfhfs0
	C/Tn9RIIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3fr-0002QZ-KA; Mon, 14 Oct 2019 16:58:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3fJ-0002Cp-4Y
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:57:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09EFC28;
 Mon, 14 Oct 2019 09:57:48 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D09D3F718;
 Mon, 14 Oct 2019 09:57:47 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Don't expose ZFR0 to userspace when
 SVE is not enabled
To: Will Deacon <will@kernel.org>, Julien Grall <julien.grall@arm.com>
References: <20191014102113.16546-1-julien.grall@arm.com>
 <20191014164313.hu2dnf5rokntzhhp@willie-the-truck>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <223c22d0-cfe3-4aed-6a8f-b80e44cb6548@arm.com>
Date: Mon, 14 Oct 2019 17:57:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191014164313.hu2dnf5rokntzhhp@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_095749_237284_B1C8862F 
X-CRM114-Status: GOOD (  14.27  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dave.Martin@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 14/10/2019 17:43, Will Deacon wrote:
> On Mon, Oct 14, 2019 at 11:21:13AM +0100, Julien Grall wrote:
>> The kernel may not support SVE if CONFIG_ARM64_SVE is not set and
>> will hide the feature from the from userspace.
> 
> I don't understand this sentence.
> 
>> Unfortunately, the fields of ID_AA64ZFR0_EL1 are still exposed and could
>> lead to undefined behavior in userspace.
> 
> Undefined in what way? Generally, we can't stop exposing things that
> we've exposed previously in case somebody has started relying on them, so
> this needs better justification.

We still expose them with this patch, but zero them out, if the SVE is not
supported. When SVE is enabled, we expose them as usual.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
