Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324AA1E3AE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aDrQ1u66pGWpNjPlQhokR5vMjIJRDMcUThu19ywMpbA=; b=mjkpDd2zOTFRqOsGPHj27qQQ6
	8VWt3c1fxpwCRd30MdZAB0jC74swYPVcYx2+5V4+ns/JXD6gl6TAuN+pW8ssbCtT1wxSVw9fBUwNl
	ZUqok7EpACx9W3vuoNj9jGGA2PrkEPGZWKUkoCkZqZJZ11g7ofRmsZZv88RBD5tGhnY0nSf/wBOW5
	bEFk+owLtQho+mVsC+rsJamuzbl2WkGhkXi44QcLTnlgiD7GUWQtbaFcpc5K6uKbaQjTywCnqnfMo
	NOkDBxoozzq/5qdTm0CvqVcgpPOHO5koeIIGkxCVLUtNnjZUkDBVPzNqgR4RKetqFlg5bgPl5TZnH
	q/S8Bc7zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqno-0003EG-Un; Wed, 27 May 2020 07:48:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqnd-0003Dt-Ks
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:48:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23590207CB;
 Wed, 27 May 2020 07:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590565709;
 bh=o2RNuuLOPzIUQugqXI2pXs40dw3MxypX2JaA7iDkwY8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pni6+ov8tRzZ5DYViPK8gJK1/JIpPkaSWj18F4PfL9wWknwOagXXMykJH5HcwlvDQ
 x3IiBKDcFTUwwSCMybSkdY/4dptm9ehSXmDPIAHI+/XDgYY1Knn4OLNEjNFyJBSJnJ
 20ZlhzylGziKft32Jn5ApIezyaR0yfrkfHQwD5Sw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdqnb-00FdJT-Gw; Wed, 27 May 2020 08:48:27 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 08:48:27 +0100
From: Marc Zyngier <maz@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 0/9] kvm/arm64: Support Async Page Fault
In-Reply-To: <987785b2-2533-c3d8-8f6a-4193aa82d502@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200526130927.GH1363@C02TD0UTHF1T.local>
 <987785b2-2533-c3d8-8f6a-4193aa82d502@redhat.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <ae0f32fa338969d25dc3da56292e35ed@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: gshan@redhat.com, mark.rutland@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, pbonzini@redhat.com, will@kernel.org,
 catalin.marinas@arm.com, james.morse@arm.com, suzuki.poulose@arm.com,
 drjones@redhat.com, eric.auger@redhat.com, aarcange@redhat.com,
 shan.gavin@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_004829_707280_65ADE54E 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, aarcange@redhat.com,
 drjones@redhat.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, pbonzini@redhat.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-27 03:39, Gavin Shan wrote:
> Hi Mark,

[...]

>> Can you run tests with a real workload? For example, a kernel build
>> inside the VM?
>> 
> 
> Yeah, I agree it's far from a realistic workload. However, it's the 
> test case
> which was suggested when async page fault was proposed from day one, 
> according
> to the following document. On the page#34, you can see the benchmark, 
> which is
> similar to what we're doing.
> 
> https://www.linux-kvm.org/images/a/ac/2010-forum-Async-page-faults.pdf

My own question is whether this even makes any sense 10 years later.

The HW has massively changed, and this adds a whole lot of complexity
to both the hypervisor and the guest. It also plays very ugly games
with the exception model, which doesn't give me the warm fuzzy feeling
that it's going to be great.

> Ok. I will test with the workload to build kernel or another better one 
> to
> represent the case.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
