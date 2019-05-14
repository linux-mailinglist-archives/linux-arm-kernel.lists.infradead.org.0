Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F0C1C33E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R8jQMSZvYX82n7Dt5wjlIcnlSfYDSxWS5+9elJCqpxA=; b=phZOXwNKEMW+FQeZ9/d7C1vYD
	SvALl+M04wO30r2ldSvFru6aNV2bvK1RDA60O2udolc0OOytjABl3Lsef/C20DejxzPQdreTY3LFS
	ZDh7lVVJb2ktagfMOSa0SogDkx9VNxAfSoIgI3vgmiC0Clwr6bNPsofcX4m9UpepvcnOGGAP6YIFX
	MeGVWwuvS95VTVPZzNgbWaTKKFHo3XqQFT01RGWmJsaKgury68W9JWew/sxaa8a9W1l5svzKu8mAt
	btwwEzy9nsReetVotIuEw8NigcykklL27vtkda48pcZhUhvg0lIPzQve6cG8BGZxYJccqHmcxKE/T
	HkYZJ7e2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQt3-0007yQ-9L; Tue, 14 May 2019 06:26:05 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQsv-0007y0-Gz
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 06:25:59 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cda5f700000>; Mon, 13 May 2019 23:25:52 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 13 May 2019 23:25:56 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 13 May 2019 23:25:56 -0700
Received: from [10.24.47.172] (10.124.1.5) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 14 May
 2019 06:25:51 +0000
Subject: Re: [PATCH V5 10/16] dt-bindings: PCI: tegra: Add device tree support
 for T194
To: Rob Herring <robh@kernel.org>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-11-vidyas@nvidia.com> <20190426154306.GA16455@bogus>
 <504abd8f-9eb3-1089-953c-a6372c34b346@nvidia.com>
 <CAL_JsqLEw+HAeqd2TD33cSVBjwDUNMb5amk2wGsW9m_4Z6CucQ@mail.gmail.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <4b1fe488-c99f-3deb-e6f0-a67eb65b2278@nvidia.com>
Date: Tue, 14 May 2019 11:55:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLEw+HAeqd2TD33cSVBjwDUNMb5amk2wGsW9m_4Z6CucQ@mail.gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557815152; bh=aymdfMw16yHSs7vet1wRgqNK0BlRIZ7Ycz6RCAS99N0=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=aey9i1BRHiCSfhSf1vClKCQmwTvcMOR82sYIz9bKYoXRvI3vXJ/Oha8Hds/elNyEJ
 6E7I3LEGq2Q+hHWAr6WlxEE3ubFXOb9I8WilE6OBU8E/dJumpE34n2UHeklhKy3iMw
 HDQQpyi0ojbwzbB5Nt10qCtZa8aCAPpQDT/8Cl0SmP1id2XoCxwVKlRdJLVCBHmqQV
 LKjZhwNPds3PjPDGsyn1rwNfOe9pkq+97sC2EiQU2L4qLYcKUCjp1Uq6FzKyfUBU3+
 OJQXPGukJJkaBw0Qg2QoRell9a16uzVDniOyvrWBukg9GbZBVbA9o9TGzSF8yVZ8n7
 O/cob961AVKhA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_232557_574825_863CEBEC 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Manikanta Maddireddy <mmaddireddy@nvidia.com>, linux-pci@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kthota@nvidia.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Jon Hunter <jonathanh@nvidia.com>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/2019 8:50 PM, Rob Herring wrote:
> On Tue, May 7, 2019 at 4:20 AM Vidya Sagar <vidyas@nvidia.com> wrote:
>>
>> On 4/26/2019 9:13 PM, Rob Herring wrote:
>>> On Wed, Apr 24, 2019 at 10:49:58AM +0530, Vidya Sagar wrote:
>>>> Add support for Tegra194 PCIe controllers. These controllers are based
>>>> on Synopsys DesignWare core IP.
>>>>
>>>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>>>> ---
> 
>>>> +- nvidia,bpmp: Must contain a phandle to BPMP controller node.
>>>> +- nvidia,controller-id : Controller specific ID
>>>> +    0: C0
>>>> +    1: C1
>>>> +    2: C2
>>>> +    3: C3
>>>> +    4: C4
>>>> +    5: C5
>>>
>>> We don't normal put device indexes into DT. Why do you need this.
>>> Perhaps for accessing the BPMP? If so, make nvidia,bpmp a phandle+cell.
>> BPMP needs to know the controller number to enable it hence it needs to be
>> passed to BPMP. Just for accessing BPMP, I already added 'nvidia,bpmp' property.
> 
> Then make nvidia,bpmp take the phandle and this number.
Ok. I'll take care of it in next patch series.

> 
> 
>>>> +- nvidia,disable-aspm-states: Controls advertisement of ASPM states
>>>> +    bit-0 to '1': Disables advertisement of ASPM-L0s
>>>> +    bit-1 to '1': Disables advertisement of ASPM-L1. This also disables
>>>> +                   advertisement of ASPM-L1.1 and ASPM-L1.2
>>>> +    bit-2 to '1': Disables advertisement of ASPM-L1.1
>>>> +    bit-3 to '1': Disables advertisement of ASPM-L1.2
>>>
>>> Can't this cover what 'supports-clkreq' does?
>> Well, they are related partially. i.e. if a platform doesn't have 'supports-clkreq' set,
>> then, by definition, it can't advertise support for ASPM L1.1 and L1.2 states. But, ASPM-L0s
>> and ASPM-L1 states don't depend on 'supports-clkreq' property.
>> Having this property gives more granularity as to support for which particular ASPM state
>> shouldn't be advertised by the root port.
> 
> Okay, then it should be a common property then.
I'm planning to remove this given we have sysfs way (Heiner's patch series @
http://patchwork.ozlabs.org/project/linux-pci/list/?series=107392 to control which ASPM states
can be enabled run time. In case if that is not going to work for a given use case, I'll push
patches separately for controlling ASPM states advertisement/working.

> 
> Rob
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
