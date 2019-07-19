Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BE66E497
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILcA8E9JzQ7uIS9ylhmbtLfJODeOnIZnM/t2e4T9t+Y=; b=hti+qUQ7NTWlDV
	TYlC0LxL0SmuzT1mAHu2lK53w4Fp49tR0o09GililFMcSjOWPOj/Cjhpty090IvMUXiTE/palNpiw
	r5c+upOOol3IRBP/Tu/QBvCwRQhic0SsCWwh4J3GgB0KCeJzAu9J+Cuhpp1rHC0Ehv09WpRwSUfE/
	+bnPB48ZVxSARDy9bSSbLfY4fNZnqv2XjM6durDDtg0GrueghjjP658ZOgUzt0IoxZx+lHsiyYED0
	Ue+5plgRa9CV0PCfjG9gcS9Ie+kFUt8EoCPqVNdGsukZwGtj5s1FD+T3x8dSRI9z4ayC0k0Tx3l8c
	RcPApVp9muN7bvlx+23w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQaG-0007I5-DD; Fri, 19 Jul 2019 10:57:52 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQa4-0007GC-Di; Fri, 19 Jul 2019 10:57:41 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6JAvNAx059571;
 Fri, 19 Jul 2019 05:57:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563533843;
 bh=e9BGRW2+AOOjzCcl3h71zGtY2pYY0ecnAlgV2kvpSCc=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=WV7GmmB2tn+MyIA2xtlbs49BX1bLYllkU/9wBq75rO+4M1bphWMbv+v6UrRvaoGkL
 bLZTqoIOnXz9vKXqExq0oDfVYRT/zDlMD0xGfG/OK1+zOZUvq629+2oUSgpctwyoi0
 J+QWJRYxbD2lPOqto+JGPHcaDtJEuTYUSZzVr/VM=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6JAvNco063487
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jul 2019 05:57:23 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 19
 Jul 2019 05:57:22 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 19 Jul 2019 05:57:22 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6JAvGr8021490;
 Fri, 19 Jul 2019 05:57:17 -0500
Subject: Re: [RFC PATCH 23/30] of/platform: Export
 of_platform_device_create_pdata()
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
References: <20190604131516.13596-1-kishon@ti.com>
 <20190604131516.13596-24-kishon@ti.com>
 <CAL_JsqJ5gsctd7L3VOhTO1JdUqmMmSJRpos1XQyfxzmGO7wauw@mail.gmail.com>
 <a80c7c33-7091-70d9-cd86-a19fe43d3bc6@ti.com>
Message-ID: <f9034a1d-1906-54e8-62f0-cdacf95c42ab@ti.com>
Date: Fri, 19 Jul 2019 16:25:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <a80c7c33-7091-70d9-cd86-a19fe43d3bc6@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_035740_542820_D939F767 
X-CRM114-Status: GOOD (  18.62  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pci@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lorenzo,

On 11/06/19 10:08 AM, Kishon Vijay Abraham I wrote:
> Hi Rob,
> 
> On 10/06/19 11:13 PM, Rob Herring wrote:
>> On Tue, Jun 4, 2019 at 7:19 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>>
>>> Export of_platform_device_create_pdata() to be used by drivers to
>>> create child devices with the given platform data. This can be used
>>> by platform specific driver to send platform data core driver. For e.g.,
>>> this will be used by TI's J721E SoC specific PCIe driver to send
>>> ->start_link() ops and ->is_link_up() ops to Cadence core PCIe driver.
>>
>> NAK
>>
>> of_platform_device_create_pdata() is purely for legacy handling of
>> auxdata which is something I hope to get rid of someday. Or to put it
>> another way, auxdata use is a sign of platforms not fully converted to
>> DT.
> 
> All right. Thanks for letting me know your thoughts.
> 
> Lorenzo,
> 
> We've modeled Cadence PCIe core as a separate driver and for some of the
> functionalities (for example starting LTSSM or checking link status) it has to
> invoke the wrapper driver functions (The registers for these are present in
> wrapper and not in Cadence Core). In the case of Designware, we modeled DWC
> core as a library which provided APIs to be used by wrapper driver. Now that
> Rob is not inclined for passing platform data from one driver to another (in
> this case TI specific J721E driver to Cadence PCIe driver), should we model
> Cadence core also as a library? If you agree, I can prepare patches for making
> Cadence PCIe core as a library. Please let me know your thoughts.

Can you share your thoughts on this?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
