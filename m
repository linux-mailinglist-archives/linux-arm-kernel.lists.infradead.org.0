Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EDA1C0E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 05:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xi1WgW+sg+fYwKtqVVeU6Tc9Gvu0GrEjWNPremeb8+I=; b=tJnQ5IQK7UEAqfdB8qORGbGiF
	h4DSAh7CMsmWoUHBWw6bimMU7x35dWXmtZWUou4s2/6DFOPMYw5Qi3t5bpA/3Z0hjEkJN7pabYgQD
	c8Kt8HaNO0QYAfj9znbYUe5SD3TsUU1NIc2TZ8B8oCdcXY0r9xFFdVJmMjP8qYUDBbQP9QUcApvg2
	TzHPS2N79OQCROtel1MqCMO1lfoebF1sTu9WnFRZhe9uT+vJXNeCaGPpriwkPGiXy/A4gcL0lJek2
	KlSwGLQtLmqiNN0EqGH3imXVXZQXRIBQidcDAvRE9VQoNsnFgqzZJernttruF1PFt+VRIoJiMRCJa
	6g/OVCU2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQO9F-00070C-KQ; Tue, 14 May 2019 03:30:37 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQO98-0006yx-Q7
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 03:30:32 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cda365a0001>; Mon, 13 May 2019 20:30:35 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 13 May 2019 20:30:28 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 13 May 2019 20:30:28 -0700
Received: from [10.24.47.172] (172.20.13.39) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 14 May
 2019 03:30:22 +0000
Subject: Re: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
To: Christoph Hellwig <hch@infradead.org>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-3-vidyas@nvidia.com>
 <20190513072539.GA27708@infradead.org>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
Date: Tue, 14 May 2019 09:00:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513072539.GA27708@infradead.org>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557804635; bh=WF0v0tqItCQpPYntKi+aRXw99fOxbVxnrACwlglFS0M=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=CG/hepeT0PKprItd4aVLx0siRKGoqBQsVPtZB9n0+z3wKU/rBtSo7sUzqyrb5q6iw
 20TBFHmDxZX/RK8u8iUDNYLnfx74+YmrrQ/gCL4EkiTDdaaVFSHjqNhR0leppyUeTB
 ChSatjDwvyeWU/kZOVfMBXjsWOUXESuOmghAzkEPZoBNkTBaF1iQpV0Kj10V2cZA2I
 EtXRmv/zTm2fa5APR7T2TPAQnDgfaV5lPPj9tI6Jeb8dHWbVTRgHGAIDWSdUP051FE
 W+WvGWMI4/xdAWzkTHiS5Ftamt2ooSjaPGDD8W6OdZSzbkXID0FlK8AnD/mtizScL8
 cwz8vpu2Aoprw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_203030_863741_A86EBF6F 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 catalin.marinas@arm.com, kthota@nvidia.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com, bhelgaas@google.com,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/2019 12:55 PM, Christoph Hellwig wrote:
> On Mon, May 13, 2019 at 10:36:13AM +0530, Vidya Sagar wrote:
>> Export pcie_pme_disable_msi() & pcie_pme_no_msi() APIs to enable drivers
>> using these APIs be able to build as loadable modules.
> 
> But this is a global setting.  If you root port is broken you need
> a per-rootport quirk instead.
> 
There is nothing broken in Tegra194 root port as such, rather,  this is more
of software configuration choice and we are going with legacy interrupts than
MSI interrupts (as Tegra194 doesn't support raising PME interrupts through MSI
and please note that this doesn't mean root port is broken). Since Tegra194 has
only Synopsys DesignWare core based host controllers and not any other hosts, I
think it is fine to call this API in driver. Also, since this is a global setting,
calling this APIs from anywhere (be it from quirk or from driver) would have the
same effect, or did I miss anything here?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
