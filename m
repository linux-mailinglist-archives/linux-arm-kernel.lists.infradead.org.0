Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E827F1E0529
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08qomHKMGouaGAGm2rMcooZ3nouUSNxOh1feN71djEw=; b=Uqgp+Bp8w83Nzu
	1MR8vwn7dWuKoT9DyI5qt0JW/GrHJaY+wh8rplpTEKu7Ovsc/HnTbVV7lxrollGVANKji+j+z18qN
	iR/GykDL/0Euko3IFkLMFKkmj5DDeZbVN/yQfsWAQDxLucZqcRhjyh6d9WVXOW/1LrzhbWpf2wCEZ
	sriD3WTIIrOgmTrNQTpEjNBrLGVptZQSVr8KdBdXe7rkciPDSOlmrfTVOTaREXySRzvvZVhOdEKAE
	eDGmu/ENpHniZeU5QHF+65RJqu6JwfBgiPYZNV/4W0rbDE6CFEb6iD/WXIs2t/6SqD9ZCVAmeOIIg
	JBsQwDtIU6F9j/Th+8vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd3pW-00053c-Rt; Mon, 25 May 2020 03:31:10 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3pO-00052s-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:31:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04P3Uesi113639;
 Sun, 24 May 2020 22:30:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590377440;
 bh=9cexhtub3y0goU+WxGAF1+hYEGx59cbcY4t24Ede1Qk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HPCy/TGnaj9AFsCDRYeU4e8AbQKzxIv+Ulz6d4L0iD75o0+7AFtzurQl+H6ZE6cDv
 wYIDMBOtwch3ToHPnkYhLM5/Dr08XIPnZ7TLOX4Nj8LTnFwj/SruOqHPSNA2ijY+Xt
 ullPKfZ6kT/C8faITmUgokmBqbEeO/mHNimFxkQo=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04P3UeK1037735
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 24 May 2020 22:30:40 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sun, 24
 May 2020 22:30:40 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sun, 24 May 2020 22:30:40 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04P3UaY4024489;
 Sun, 24 May 2020 22:30:37 -0500
Subject: Re: [PATCH v5 03/14] PCI: cadence: Convert all r/w accessors to
 perform only 32-bit accesses
To: Rob Herring <robh@kernel.org>
References: <20200522033631.32574-1-kishon@ti.com>
 <20200522033631.32574-4-kishon@ti.com>
 <CAL_JsqJjXUUgTbSAi83w4Eie-sVTrkLLMGh_PRQsd8k2vuua4Q@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <df29309d-8401-4040-eb1e-90bb3af93a82@ti.com>
Date: Mon, 25 May 2020 09:00:36 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJjXUUgTbSAi83w4Eie-sVTrkLLMGh_PRQsd8k2vuua4Q@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_203103_050794_D230E518 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, PCI <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 5/22/2020 9:24 PM, Rob Herring wrote:
> On Thu, May 21, 2020 at 9:37 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> Certain platforms like TI's J721E using Cadence PCIe IP can perform only
>> 32-bit accesses for reading or writing to Cadence registers. Convert all
>> read and write accesses to 32-bit in Cadence PCIe driver in preparation
>> for adding PCIe support in TI's J721E SoC.
> 
> Looking more closely I don't think cdns_pcie_ep_assert_intx is okay
> with this and never can be given the PCI_COMMAND and PCI_STATUS
> registers are in the same word (IIRC, that's the main reason 32-bit
> config space accesses are broken). So this isn't going to work at

right, PCI_STATUS has write '1' to clear bits and there's a chance that it
could be reset while raising legacy interrupt. While this cannot be avoided for
TI's J721E, other platforms doesn't have to have this limitation.
> least for EP accesses. And maybe you need a custom .raise_irq() hook
> to minimize any problems (such as making the RMW atomic at least from
> the endpoint's perspective).

This is to make sure EP doesn't update in-consistent state when RC is updating
the PCI_STATUS register? Since this involves two different systems, how do we
make this atomic?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
