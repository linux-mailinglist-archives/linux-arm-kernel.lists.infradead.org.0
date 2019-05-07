Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CD115F64
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WbNR2vaBTM9/mcoAujA0t9HlvQiN4KGQqfYxCUzWMG4=; b=q0bK7VAK0Ei7amL73XJNxZjt3
	PfvmupJ4G/yOCXd4PUVwaK83RPHdrhWvgpozdLDuLp88e4BufOSOJHtk+VycGhv8bEhExELRlFxua
	028lf9+G5gua+g0hIXlWO8qpjeKs1j8tfq0V+hEpr6595BnvDk0E2PZh2CGnSqY7q/7btpl6s9udz
	jClcLHzemaX9WIIxBSr/xNkgf2da9ZXfe1INfS2Ng5eT+PuZr2Vg09v4dedQrKl6+93h25yM+Qbf9
	x6i6iUH7jBkGuhz2plsuPuR7ICDMFHUutTy2jFMdogTzeLJRm+TY3xZqYFzOh1jYp1sTsESUmZnzW
	Ct0Ml4hjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvVS-0003KZ-75; Tue, 07 May 2019 08:31:22 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvVL-0003KA-8e
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:31:16 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd1425a0000>; Tue, 07 May 2019 01:31:22 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 07 May 2019 01:31:14 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 07 May 2019 01:31:14 -0700
Received: from [10.25.73.250] (10.124.1.5) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 May
 2019 08:31:07 +0000
Subject: Re: [PATCH V5 09/16] Documentation/devicetree: Add PCIe
 supports-clkreq property
To: Rob Herring <robh@kernel.org>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-10-vidyas@nvidia.com> <20190426152229.GA8492@bogus>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <d8ef9c8d-031b-4c77-b225-4a1fef3bc9eb@nvidia.com>
Date: Tue, 7 May 2019 14:01:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426152229.GA8492@bogus>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557217882; bh=E4R0bJaTc1XE8Bf2zvQbXuwPLi2Wnco5hGqGVqidxEo=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=EjKMx+IrwLC7OlCn4DahxXHLMvnH1eWfEWPdkY/ioG3avM5ymJYSCMMugCZWV4n1x
 FsOJwNFO2fEcxle7Ne9WovuScxWqwRHx8lpa3BH6b5A5udhmvr0irtXmCru6Hy0Yj+
 ED+8LoEy0fZ9yJDTov8NGlEc5ExVyXI8sLRmBkfdsUftk4M49ons7tllllj0Ao4+Oe
 LOAiIjAeZxulLxMFTdZE5b+O4bXhiWyDQ+7rWqPnDr9cE9Ti4gLfT9GPKz0qwyUW5n
 cJYifvYWO84KI8RI3CC/5HLc5ZfUjYfPOLxSDFJM4BbzUCxT5FdeB/KHkV5KIq3TQV
 tkXX3FOplgwVQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_013115_317859_F97FD717 
X-CRM114-Status: GOOD (  13.38  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/26/2019 8:52 PM, Rob Herring wrote:
> On Wed, Apr 24, 2019 at 10:49:57AM +0530, Vidya Sagar wrote:
>> Some host controllers need to know the existence of clkreq signal routing to
>> downstream devices to be able to advertise low power features like ASPM L1
>> substates. Without clkreq signal routing being present, enabling ASPM L1 sub
>> states might lead to downstream devices falling off the bus. Hence a new device
>> tree property 'supports-clkreq' is added to make such host controllers
>> aware of clkreq signal routing to downstream devices.
> 
> Please be consistent with subjects (Use 'dt-bindings: ...')
When I had made this change, I did a git log and saw 'Documentation/devicetree:' as
the prefix and hence added it. But, now, with linux-next top of the tree,  I see
two more commits with 'dt-bindings:' prefix. I'll change my patch also to the new
'dt-bindings:' prefix.

> 
> With that change,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> Changes since [v4]:
>> * None
>>
>> Changes since [v3]:
>> * Rebased on top of linux-next top of the tree
>>
>> Changes since [v2]:
>> * None
>>
>> Changes since [v1]:
>> * This is a new patch in v2 series
>>
>>   Documentation/devicetree/bindings/pci/pci.txt | 5 +++++
>>   1 file changed, 5 insertions(+)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
