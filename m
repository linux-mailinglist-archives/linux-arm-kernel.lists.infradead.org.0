Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65D51356B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7/RRyBSHWVXJiIsSiX4X6et4N0flS49TEm0Fua0p1g=; b=TZFhAqh38aniIQ
	ra0CE2kNpzRoL/JZciNJu40o/edTHmHAIBKTRMHPN8RtZUmUdhNFOQi8WXCiIvb6EO3Bmh17Ckqis
	IccMfLdLe6oTDIvBjiYp0uQbPK20QbubDcO6bdsM9QuXGuiyHrbh2s6tF6TZq8G9I0kHW6J6TjDno
	WFGcLcd2TKPkytP9katNR7RND5XgychWhTFlpFypB+Q6tRUHDRvG3RSXQ/DIp+A2mPY1SAlucIp7A
	o4VAos9tpa9iJOUI9VJMMmmhTK8y/BrnVViDKvjUtvDEme7C5pkvdK9VGrZ7Yvhvlcfif4t1gqI5x
	DP0rJ9CE0uXKnX/dEfBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUsa-0001r8-VT; Thu, 09 Jan 2020 10:17:28 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUsR-0001qm-TD
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:17:21 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 009AHE2v100029;
 Thu, 9 Jan 2020 04:17:14 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578565034;
 bh=dD1YFWbC0Y7B9niXQWfTUrQg3FwDw851xh9FQ221VB4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SnN5SH8XX4JhKyx1d11va8cV5XIYCpZYj8XzJ34POQo+nTFWbMTuOZOHeNfFdwhz5
 pyYIZDxSVOIwZ/nZd4dChG2ylyd/1gAuzC+YBCStLALcCyGMzOlwy487aA4bm/tQIy
 F/GMlX1I+jzhBTqKrl1AB8Uu9x2lObjqwmyaDjWU=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 009AHDkc039244
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Jan 2020 04:17:14 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Jan
 2020 04:17:13 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Jan 2020 04:17:13 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 009AH9k0024424;
 Thu, 9 Jan 2020 04:17:10 -0600
Subject: Re: [PATCH 0/4] Redesign MSI-X support in PCIe Endpoint Core
To: Bjorn Helgaas <helgaas@kernel.org>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Xiaowei Bao <xiaowei.bao@nxp.com>
References: <20191211224636.GA122332@google.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <a971c0b1-ed66-fd4c-5a1d-7aef9d410866@ti.com>
Date: Thu, 9 Jan 2020 15:49:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191211224636.GA122332@google.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_021720_021049_902439AF 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12/12/19 4:16 AM, Bjorn Helgaas wrote:
> On Wed, Dec 11, 2019 at 06:16:04PM +0530, Kishon Vijay Abraham I wrote:
>> Existing MSI-X support in Endpoint core has limitations:
>>  1) MSIX table (which is mapped to a BAR) is not allocated by
>>     anyone. Ideally this should be allocated by endpoint
>>     function driver.
>>  2) Endpoint controller can choose any random BARs for MSIX
>>     table (irrespective of whether the endpoint function driver
>>     has allocated memory for it or not)
>>
>> In order to avoid these limitations, pci_epc_set_msix() is
>> modified to include BAR Indicator register (BIR) configuration
>> and MSIX table offset as arguments. This series also fixed MSIX
>> support in dwc driver and add MSI-X support in Cadence PCIe driver.
>>
>> The previous version of Cadence EP MSI-X support is @ [1].
>> This series is created on top of [2]
>>
>> [1] -> https://patchwork.ozlabs.org/patch/971160/
>> [2] -> http://lore.kernel.org/r/20191209092147.22901-1-kishon@ti.com
>>
>> Alan Douglas (1):
>>   PCI: cadence: Add MSI-X support to Endpoint driver
>>
>> Kishon Vijay Abraham I (3):
>>   PCI: endpoint: Fix ->set_msix() to take BIR and offset as arguments
>>   PCI: dwc: Fix dw_pcie_ep_raise_msix_irq() to get correct MSIX table
>>     address
>>   PCI: keystone: Add AM654 PCIe Endpoint to raise MSIX interrupt
> 
> Trivial nits:
> 
>   - There's a mix of "MSI-X" and "MSIX" in the subjects, commit logs,
>     and comments.  I prefer "MSI-X" to match usage in the spec.
> 
>   - "Fixes:" tags need not include "commit".  It doesn't *hurt*
>     anything, but it takes up space that could be used for the
>     subject.
> 
>   - Commit references typically use a 12-char SHA1.  Again, doesn't
>     hurt anything.

I'll fix all this in my next revision.

Xiaowei, Gustavo,

The issues we discussed in  [1] should be fixed with this series. Can
you help test this in your platforms?

[1] -> https://lkml.org/lkml/2019/11/6/678

Thanks
Kishon
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
