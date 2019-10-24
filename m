Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A22EE377C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5wY8kaEgox1Y62Oj/lIfBNMTzN7cmjkqXJosK5bKE8=; b=BRUGVtabsxDnna
	XgUiHVHP8GN18I1VlsBaPu23irAmU0ruLTMarWAoNSqlMmV2ugPfLeVkWkwP0NpQfKF+rHJNRkRPK
	IUMbY2DYUMce9uLe6xfVUC1BZJALIpReprb3644NDpOnEmRWB/UPsAc4uf5nYGa7XMOcMfjvQ0M7a
	dFc/BoBg5FZwwaWRGWihfe8jhug5L7U/yWEr9GNs2ctwNkB5uDuTEd7PxKVEoExKCxPtY0lMVYLrT
	Oxjb6WPOV8GVQzQ4IkGMIEjPam8cc8h/iWPE/ZWFOVyFTvyDP1kIJRmFeUaySI1kKhzUbgyQ5sNif
	Amt1yahSFSnyGNgFe8eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfh7-0001Yg-BJ; Thu, 24 Oct 2019 16:10:37 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfgs-0001DS-2Y
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:10:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84FEF28;
 Thu, 24 Oct 2019 09:10:11 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 63EF73F71F;
 Thu, 24 Oct 2019 09:10:10 -0700 (PDT)
Subject: Re: [PATCH v2 3/5] arm64: KVM: Disable EL1 PTW when invalidating S2
 TLBs
To: Marc Zyngier <maz@kernel.org>
References: <20191019095521.31722-1-maz@kernel.org>
 <20191019095521.31722-4-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <f7b0fa68-7e21-26fb-96f3-9c471e6cbe54@arm.com>
Date: Thu, 24 Oct 2019 17:10:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191019095521.31722-4-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_091022_199442_9F00E29D 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 19/10/2019 10:55, Marc Zyngier wrote:
> When erratum 1319367 is being worked around, special care must
> be taken not to allow the page table walker to populate TLBs
> while we have the stage-2 translation enabled (which would otherwise
> result in a bizare mix of the host S1 and the guest S2).
> 
> We enforce this by setting TCR_EL1.EPD{0,1} before restoring the S2
> configuration, and clear the same bits after having disabled S2.

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
