Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB2B25F13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kUbfxCdJhPUm3GIdmPNyw27vkRHgl4sNyRGRUMrvmKA=; b=Clb6ZOav7oIJHGfb9+bGYyAeJ
	AxohB/gHRPh8JlA7PN1M750NpEM8dksSg+0NGJztFXt/obJwKN8ECWfJ/Z33UnRjqaQQfrELyxKFF
	u19KhUDkbeURq4MWsjxAbd4oKpMIa1EMjdNQfr7ICG26stXi0wJewSUUt+Rg0EvZuVvMkxRcf8HBD
	/TXmADgu2OWOZ+Op29MvTbGQDZUKCRh4tcmkrddLnp2Uis+Vlcv5e5gM+RLcFriLgEqkC7wlX/xqB
	/k5+6qA4ssTq8b6aReWWa70bDRfbZOjgHEEG/6xxoVUXiJm+qeK7HoqDM5w2JEl32b1tFvX8Tt+xO
	9d45jQEsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMIK-0007cY-AJ; Wed, 22 May 2019 08:08:16 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMID-0007c6-4x
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 08:08:10 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce503660001>; Wed, 22 May 2019 01:08:06 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 22 May 2019 01:08:06 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 22 May 2019 01:08:06 -0700
Received: from [10.24.45.128] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 22 May
 2019 08:08:01 +0000
Subject: Re: [PATCH V7 02/15] PCI: Disable MSI for Tegra194 root port
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-3-vidyas@nvidia.com> <20190521102729.GB29166@ulmo>
 <f63051b0-a220-125b-219e-25156d65ea6d@nvidia.com>
 <20190521193616.GE57618@google.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <4a9dadc5-7e16-4893-c7c2-acd7f515e039@nvidia.com>
Date: Wed, 22 May 2019 13:37:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521193616.GE57618@google.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558512486; bh=S3qg1DZrsjj7dBknX1Sd7FnNcS0V5oTUC1xCslRcFBw=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=AWdqHpM7dtZkVRmsszQ5JLOgOMdjk5aT6OpjxRX0jVR5xOEnTKH41lFcfDeR+P9O+
 qtsguVLnqrmnYEW8/NQel6Q3DzeTOHUZvNH8Kq6GEwq+DzFzO2QkzHF+2E8D0Yd6yX
 3eF8tUSXtzYOtzSxaV0MV1eZ3xXND2FxoMI0b1pOKeTe4MEPG+FLgxbxIQHpP66J7O
 CyXFXW+EYm7y1p+SaBekN2zSKWCnH8mR7V69+eUKC6GT2uXa9TME0qNIqytjTU8q7C
 NHYLQ2rLjkAc9rQID0clnHLuYDL0yV8+yLrvFSorlRjswGFpWSpCRw7vO1GBXB1NE4
 ddghXQzP14t7g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_010809_206119_F47FC81C 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 robh+dt@kernel.org, kishon@ti.com, kthota@nvidia.com,
 Thierry Reding <thierry.reding@gmail.com>, gustavo.pimentel@synopsys.com,
 jingoohan1@gmail.com, linux-tegra@vger.kernel.org, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/22/2019 1:06 AM, Bjorn Helgaas wrote:
> On Tue, May 21, 2019 at 10:17:26PM +0530, Vidya Sagar wrote:
>> On 5/21/2019 3:57 PM, Thierry Reding wrote:
>>> On Fri, May 17, 2019 at 06:08:33PM +0530, Vidya Sagar wrote:
>>>> Tegra194 rootports don't generate MSI interrupts for PME events and hence
>>>> MSI needs to be disabled for them to avoid root ports service drivers
>>>> registering their respective ISRs with MSI interrupt.
> 
> The service drivers (AER, hotplug, etc) don't know whether the
> interrupt is INTx or MSI; they just register their ISRs with
> pcie_device.irq.
> 
> The point of this patch is that the PCI core doesn't support devices
> that use MSI and INTx at the same time, and since this device can't
> generate MSI for PME, we have to use INTx for *all* its interrupts.
> 
>>>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>>>> ---
>>>> Changes since [v6]:
>>>> * This is a new patch
>>>>
>>>>    drivers/pci/quirks.c | 14 ++++++++++++++
>>>>    1 file changed, 14 insertions(+)
>>>>
>>>> diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
>>>> index 0f16acc323c6..28f9a0380df5 100644
>>>> --- a/drivers/pci/quirks.c
>>>> +++ b/drivers/pci/quirks.c
>>>> @@ -2592,6 +2592,20 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA,
>>>>    			PCI_DEVICE_ID_NVIDIA_NVENET_15,
>>>>    			nvenet_msi_disable);
>>>> +/*
>>>> + * Tegra194's PCIe root ports don't generate MSI interrupts for PME events
>>>> + * instead legacy interrupts are generated. Hence, to avoid service drivers
>>>> + * registering their respective ISRs for MSIs, need to disable MSI interrupts
>>>> + * for root ports.
>>>> + */
>>>> +static void disable_tegra194_rp_msi(struct pci_dev *dev)
>>>> +{
>>>> +	dev->no_msi = 1;
>>>> +}
>>>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad0, disable_tegra194_rp_msi);
>>>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad1, disable_tegra194_rp_msi);
>>>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad2, disable_tegra194_rp_msi);
>>>> +
>>>
>>> Later functions in this file seem to use a more consistent naming
>>> pattern, according to which the name for this would become:
>>>
>>> 	pci_quirk_nvidia_tegra194_disable_rp_msi
>>>
>>> Might be worth considering making this consistent.
>>>
>>> This could also be moved to the DWC driver to restrict this to where it
>>> is needed. In either case, this seems like a good solution, so:
>>>
>>> Reviewed-by: Thierry Reding <treding@nvidia.com>
>>>
>> Ok. I'll move it to DWC driver along with name change for the quirk API.
> 
> Is there any possibility this hardware would be used in an ACPI
> system?  If so, the quirk should probably stay in drivers/pci/quirks.c
> because the DWC driver would not be present.
Yes. There is a plan to boot kernel through UEFI (using ACPI) on this system.
So, I'll move it to drivers/pci/quirks.c file.

> 
> Either way, please also add some PCIe spec references about this in
> the changelog and a comment in the code about working around this
> issue.  I think the MSI/MSI-X sections that prohibit a device from
> using both INTx and MSI/MSI-X are probably the most pertinent.
Ok. I'll take care of it in the next patch series.

> 
> The reason I want a comment about this is to discourage future
> hardware from following this example because every device that *does*
> follow this example requires a kernel update that would be otherwise
> unnecessary.
Ok. I'll take it up with our hardware engineers to have only MSI/MSI-X interrupts
getting generated for all root port received events.

> 
> Bjorn
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
