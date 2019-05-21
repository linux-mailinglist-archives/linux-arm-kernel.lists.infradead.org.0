Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BC225857
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 21:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k10dauKegIS/wWv/f/dfJz650YxHPDI5aE90WKTdzAI=; b=dhrG7AxK1sInhxi1EugwCYPtw
	LvaxBbFNSapfeSdrcRtpWhXNup0L7bfo+cPWUf3Jk5h4qY6axE7+RWf14oQ7H6TXV+8JKplJ2kODT
	tDYbtr0ctWqm0YMA+CNN3fIhidf6eKHxPVzCNnbnfcI8JqQL+b4D3sZbl5kw8OQ4mpkIL6Qk3OQrr
	g/qiHLaqKrcZJhCXSkLZ00XrIi5Rk4mS8DGAoKt6qRp58m5u4c/DLQpf7kK4FID3ImVWUXJdEJqBm
	H11RfNHCJEGS01W5zX124RmmP8X6nyf3Q8w1/BPk0xkKA2FbMd4/W+mmtB2IioOZHNN0awWBgvieW
	0Pad8OVLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTAXa-00007p-VY; Tue, 21 May 2019 19:35:14 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTAXU-0008Pj-17
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 19:35:09 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce452eb0000>; Tue, 21 May 2019 12:35:07 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 21 May 2019 12:35:06 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 21 May 2019 12:35:06 -0700
Received: from [10.25.72.115] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 21 May
 2019 19:35:01 +0000
Subject: Re: [PATCH V7 02/15] PCI: Disable MSI for Tegra194 root port
From: Vidya Sagar <vidyas@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-3-vidyas@nvidia.com> <20190521102729.GB29166@ulmo>
 <f63051b0-a220-125b-219e-25156d65ea6d@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <220fcb99-c3b5-58dc-a37a-57cbe9efa072@nvidia.com>
Date: Wed, 22 May 2019 01:04:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f63051b0-a220-125b-219e-25156d65ea6d@nvidia.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558467307; bh=BZ2BIbzj5D7Ss2aLhzoWXgSRs8f/dBCrJl7cBh1DHuw=;
 h=X-PGP-Universal:Subject:From:To:CC:References:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Pr4XuljVobWvPLT6veT/0/GmsErJZdmsGM1t1ifHwtcsEWiKNszVBeFNivXaGp6WG
 /XfrDcL8vAj6aAb63WyGlpAjMEgAFVybAo9eaRma55mRch4OGR7qNNvr1BPO0ktTza
 FJnN6agdqSzG4cMcsZI+che0lf+S/Zw2UYeumX0MXvm2Jaz4Vz8HlY7N4WTyR1nZCP
 /HwUWL4t1SbuCFsfew2zu5pyeABkANCRPx1lKbHAJQt7HtYGgSH0zWsYM47FGlVlOI
 o7MchRfrlBKGhTM2vtQGZ9WlWg1+J5IU/83DRd6iUmv+5tibGVE+ktHnY9+yZYBacZ
 6oE0nozZhIVhg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_123508_092396_E4CE900D 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/21/2019 10:17 PM, Vidya Sagar wrote:
> On 5/21/2019 3:57 PM, Thierry Reding wrote:
>> On Fri, May 17, 2019 at 06:08:33PM +0530, Vidya Sagar wrote:
>>> Tegra194 rootports don't generate MSI interrupts for PME events and hen=
ce
>>> MSI needs to be disabled for them to avoid root ports service drivers
>>> registering their respective ISRs with MSI interrupt.
>>>
>>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>>> ---
>>> Changes since [v6]:
>>> * This is a new patch
>>>
>>> =A0 drivers/pci/quirks.c | 14 ++++++++++++++
>>> =A0 1 file changed, 14 insertions(+)
>>>
>>> diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
>>> index 0f16acc323c6..28f9a0380df5 100644
>>> --- a/drivers/pci/quirks.c
>>> +++ b/drivers/pci/quirks.c
>>> @@ -2592,6 +2592,20 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA,
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PCI_DEVICE_ID_NVIDIA_NVENET_15,
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 nvenet_msi_disable);
>>> +/*
>>> + * Tegra194's PCIe root ports don't generate MSI interrupts for PME ev=
ents
>>> + * instead legacy interrupts are generated. Hence, to avoid service dr=
ivers
>>> + * registering their respective ISRs for MSIs, need to disable MSI int=
errupts
>>> + * for root ports.
>>> + */
>>> +static void disable_tegra194_rp_msi(struct pci_dev *dev)
>>> +{
>>> +=A0=A0=A0 dev->no_msi =3D 1;
>>> +}
>>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad0, disable_tegra194=
_rp_msi);
>>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad1, disable_tegra194=
_rp_msi);
>>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad2, disable_tegra194=
_rp_msi);
>>> +
>>
>> Later functions in this file seem to use a more consistent naming
>> pattern, according to which the name for this would become:
>>
>> =A0=A0=A0=A0pci_quirk_nvidia_tegra194_disable_rp_msi
>>
>> Might be worth considering making this consistent.
>>
>> This could also be moved to the DWC driver to restrict this to where it
>> is needed. In either case, this seems like a good solution, so:
>>
>> Reviewed-by: Thierry Reding <treding@nvidia.com>
>>
> Ok. I'll move it to DWC driver along with name change for the quirk API.
> =

I see that if quirk macros and API are present in pcie-tegra194.c file and =
driver is built
as a module, quirk API is not getting invoked by the system, whereas it get=
s invoked if driver
is built into kernel. Is this behavior expected? I think it is because of q=
uirk API symbol
not available as part of global quirk symbol table when driver is built as =
a module?
for now, I'm going to keep quirk macros and API in pci/quirks.c file itself.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
