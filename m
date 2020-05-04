Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDDF1C3DA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlo5nFqz7uudl547MfdfaF0xzm8WL7x/ppHSQJPAXNs=; b=F5RyiczWFsgCNZ
	ra2ezDq3Vbz3EfwswLKioJh5G2rZEiQSQEev+E3/Fiywg/qJ62vOOVEhOevXF64DwcTcrrojV6H4+
	XznelVZsXXwKUczhnSVXoRPyNVE04gRwt2NlA+S9m/RALsZG97dj/OlzSQjmS/sF3LVDQdd6ToxAC
	q69KBRQ5CrW0PhHCRQ6cQZAq7rI07FkTOkxaVrVPGMgqPDpjyikuSg9w7FYWkGFufVm+BO0JMy5fS
	6iTNDGSpzUZaX2tKEnxMz2M2NlQsOzYzQfDnZ1KFikqz2DyX4WH8xUYBnAOM0r6yq8/jIAUS712C1
	kYxOAIGO5SfS3u3koQ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcU2-0008A2-GB; Mon, 04 May 2020 14:54:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcTu-00088H-Lr
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:54:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2BA381FB;
 Mon,  4 May 2020 07:54:06 -0700 (PDT)
Received: from [10.163.71.79] (unknown [10.163.71.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 332DE3F305;
 Mon,  4 May 2020 07:54:00 -0700 (PDT)
Subject: Re: [PATCH] arm64/cpuinfo: Drop boot_cpu_data
To: Mark Rutland <mark.rutland@arm.com>
References: <1588595400-4560-1-git-send-email-anshuman.khandual@arm.com>
 <20200504124321.GA73375@C02TD0UTHF1T.local>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <224296d1-086a-5516-95a8-8f4ad5c533d9@arm.com>
Date: Mon, 4 May 2020 20:23:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200504124321.GA73375@C02TD0UTHF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_075406_759805_381FC736 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Suzuki Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/04/2020 06:13 PM, Mark Rutland wrote:
> On Mon, May 04, 2020 at 06:00:00PM +0530, Anshuman Khandual wrote:
>> A global boot_cpu_data is not really required. Lets drop this.
> 
> I don't think it's true that this isn't required today.
> 
> One reason that we have both boot_cpu_data and a cpu_data variable for
> CPU0 is that CPU0 itself can be hotplugged out then back in, and this
> allows us to detect if CPU0's features have changed (e.g. due to FW
> failing to configure it appropriately, or real physical hotplug
> occurring).

Understood. After hotplug, CPU0 will come back via secondary_start_kernel()
where it's current register values will be checked against earlier captured
values i.e boot_cpu_data.

But wondering why should CPU0 be treated like any other secondary CPU. IOW
in case the fresh boot CPU register values dont match with boot_cpu_data,
should not the online process just be declined ? AFAICS, current approach
will let the kernel run with taint in case of a mismatch.

> 
> So NAK to the patch as it stands. If we're certain we capture all of
> those details even without boot_cpu_data, then we should make other
> changes to make that clear (e.g. removing it as an argument to
> update_cpu_features()).

There might not be another way, unless we can override CPU0's cpu_data
variable when the boot CPU comes back in after vetting against existing
values. Is there any particular reason to store the very first boot CPU0
info for ever ?

Passing on CPU0's cpu_data variable in update_cpu_features() for secondary
CPUs during boot still make sense. It helps in finalizing register values.
Re-entering CPU0's test against boot_cpu_data seems different.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
