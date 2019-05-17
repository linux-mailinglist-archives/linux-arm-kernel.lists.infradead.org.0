Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEA621542
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 10:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f1F1DRklYtYUB8j1xpyCAQHigdawrowROyNqHzOj1/M=; b=jvUN/vmWGaKkcqX7lEXvz5EyI
	GhJrp0nMD4bWL76wqhuTyNDzDrhIk2oqEsCdUwrj8gTausMZIelHa+GzYIkpQpWXKWEw8EqSxitmX
	sNDdsopuZNFqiRgHR16CAz3ghkViXXQpqLNTn9KFQZnpvSULbJgfRb4rZAnDCnlq/j8lyg061knrt
	7plpI0EmveGYhzIKw1Da2y1dVXr28U/mcB7Wgldl1WpXK6+eVmk2n1siUYJHFbM5KaD4bNPL9TovE
	6DyfQRYg39M3XirFCxOBczK2qGqW4iAVuPYJ5n5Nto9jxyhTq1Hqa0FsN1YRWld8pVb8mDyme35pd
	GteyFcrdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRY68-00079W-AM; Fri, 17 May 2019 08:20:12 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRY5w-0006tF-K2
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 08:20:02 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cde6eb40000>; Fri, 17 May 2019 01:20:04 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 17 May 2019 01:19:58 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 17 May 2019 01:19:58 -0700
Received: from [10.24.47.197] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 17 May
 2019 08:19:52 +0000
Subject: Re: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-3-vidyas@nvidia.com>
 <20190513072539.GA27708@infradead.org>
 <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
 <20190516133426.GC101793@google.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <bd08ccaa-c6ee-f966-91e4-bcd5d99d5cf2@nvidia.com>
Date: Fri, 17 May 2019 13:49:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516133426.GC101793@google.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558081204; bh=7E+nwQQsltOhNZTMZRtiT6upSwPTXBC0GyTnK7lGcQc=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=PIZR+FdgqtUqHfH3RaSJwY5WHI0FbtL4N5qOhHWlKa2YHOp7bBX7cWzl4ZxjDJHrG
 b8kDPynQK0jrZZMrDPYUiDGSdFZsxeoBcfH8vVGuNP8JOXbBNEB47xTBrc2CP2LHlH
 f9bM30qiw4vC1GyoKCGovtTkgpIFS/7+toa5YKkljDcZ3fCpr4qkw5CT2nl07Nkuxh
 CYX8t/cEBvFWblrcfcpefgF177Ux3urnY9Wj/cMrbHKErCw3noqYqtuVs9AR4O5UVB
 ki6lW2NtnGaZI/R78Yi+XM+rpqojgnSAkh6j+a+YZfL4jGO6bHnfC97c81qtzqvufC
 u+mg3bAalPI4w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_012000_671547_0DF60397 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, jonathanh@nvidia.com,
 Christoph Hellwig <hch@infradead.org>, kthota@nvidia.com,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/16/2019 7:04 PM, Bjorn Helgaas wrote:
> On Tue, May 14, 2019 at 09:00:19AM +0530, Vidya Sagar wrote:
>> On 5/13/2019 12:55 PM, Christoph Hellwig wrote:
>>> On Mon, May 13, 2019 at 10:36:13AM +0530, Vidya Sagar wrote:
>>>> Export pcie_pme_disable_msi() & pcie_pme_no_msi() APIs to enable drivers
>>>> using these APIs be able to build as loadable modules.
>>>
>>> But this is a global setting.  If you root port is broken you need
>>> a per-rootport quirk instead.
>>>
>> There is nothing broken in Tegra194 root port as such, rather, this
>> is more of software configuration choice and we are going with
>> legacy interrupts than MSI interrupts (as Tegra194 doesn't support
>> raising PME interrupts through MSI and please note that this doesn't
>> mean root port is broken).
> 
> I think the port *is* broken.  PCIe r4.0, sec 6.1.6, says
> 
>    If the Root Port is enabled for edge-triggered interrupt signaling
>    using MSI or MSI-X, an interrupt message must be sent every time the
>    logical AND of the following conditions transitions from FALSE to
>    TRUE:
> 
>      * The associated vector is unmasked (not applicable if MSI does
>        not support PVM).
> 
>      * The PME Interrupt Enable bit in the Root Control register is set
>        to 1b.
> 
>      * The PME Status bit in the Root Status register is set.
> 
> The Tegra194 root port advertises MSI support, so the above should
> apply.
I had a discussion with our hardware engineers and we are of the opinion
that the root port is not really broken w.r.t MSI as spec doesn't clearly
say that if root port advertises MSI support, it must generate MSI interrupts
for PME. All that it says is, if MSI is enabled, then MSI should be raised
for PME events. Here, by 'enable', we understand that as enabling at
hardware level to generate MSI interrupt which is not the case with Tegra194.
In Tegra194, root port is enabled to generate MSI only for hot-plug events and
legacy interrupts are used for PME, AER. Having said that I'm fine to add a
quick based on Vendor-ID and Device-IDs of root port in Tegra194 to set
pdev->no_msi to '1'.

> 
>> Since Tegra194 has only Synopsys DesignWare core based host
>> controllers and not any other hosts, I think it is fine to call this
>> API in driver.
> 
> It's fine to add a per-device quirk to set pdev->no_msi or something
> similar.
> 
> Bjorn
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
