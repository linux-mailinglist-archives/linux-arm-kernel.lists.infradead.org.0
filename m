Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1A73C265
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 06:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kE2Yp8r4yfncRucIEmBzo+qd7Wlo5M/SYA4kt0NdoaU=; b=bMMOo6lwGGnGJZ
	TV3RjiG9xLMyEUQgDBovl7vcw5UCR3wFg7U/YS3yf+5AyzJ6wEmfvbEDQY4WpSiLkZ/jCdB3rt/PR
	Rok4dhHAwM896LUja+P1jmv5ANvApB+OezbJp2EEQDwI5aJ/SG88QwQejbyBL0hSgb0rWDdJHEmLB
	kXxHFLkJI7bM3rY039d01KZWBmYA6oy14VzO3eTMcxAqq7fvEXBnoogvhFsFhaEatQElqtBsalmdK
	NFfDheClouzZXyTQTpSDoXGnP2l2ZhE8RYVbR2HzYYgZzK7VNNLq+X3ZG6+ZgYs2AMoRYTjkjBQhJ
	HyFAclTWTiAk6sR0O5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haYa9-0002hD-PK; Tue, 11 Jun 2019 04:40:25 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haYZr-000224-DG; Tue, 11 Jun 2019 04:40:08 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5B4druO021816;
 Mon, 10 Jun 2019 23:39:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560227993;
 bh=4CSDiP1xLUzAxuQfz4ZRA31r4GwtzqiVasSISApjHu4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=PtUYWVLx1XD5jnus/WobdTrHYWH38XwEd6RhBdD4d9ID+gD//I2BIe2INKAip1XwE
 21KPjF8ghgsEjgj7ZTvAKKjT0Sg9P2PDJp6defIHu6/JyQo1Vjh+P6Md6TX/KZhfTY
 B2bml38ZGyAf1Zmtb/u8LU5lTIk9xdQLHEFvGNFg=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5B4dr8j018697
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 10 Jun 2019 23:39:53 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 10
 Jun 2019 23:39:53 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 10 Jun 2019 23:39:53 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5B4dmJ6034860;
 Mon, 10 Jun 2019 23:39:49 -0500
Subject: Re: [RFC PATCH 23/30] of/platform: Export
 of_platform_device_create_pdata()
To: Rob Herring <robh+dt@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
References: <20190604131516.13596-1-kishon@ti.com>
 <20190604131516.13596-24-kishon@ti.com>
 <CAL_JsqJ5gsctd7L3VOhTO1JdUqmMmSJRpos1XQyfxzmGO7wauw@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <a80c7c33-7091-70d9-cd86-a19fe43d3bc6@ti.com>
Date: Tue, 11 Jun 2019 10:08:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJ5gsctd7L3VOhTO1JdUqmMmSJRpos1XQyfxzmGO7wauw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_214007_563289_83D77D3D 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

Hi Rob,

On 10/06/19 11:13 PM, Rob Herring wrote:
> On Tue, Jun 4, 2019 at 7:19 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> Export of_platform_device_create_pdata() to be used by drivers to
>> create child devices with the given platform data. This can be used
>> by platform specific driver to send platform data core driver. For e.g.,
>> this will be used by TI's J721E SoC specific PCIe driver to send
>> ->start_link() ops and ->is_link_up() ops to Cadence core PCIe driver.
> 
> NAK
> 
> of_platform_device_create_pdata() is purely for legacy handling of
> auxdata which is something I hope to get rid of someday. Or to put it
> another way, auxdata use is a sign of platforms not fully converted to
> DT.

All right. Thanks for letting me know your thoughts.

Lorenzo,

We've modeled Cadence PCIe core as a separate driver and for some of the
functionalities (for example starting LTSSM or checking link status) it has to
invoke the wrapper driver functions (The registers for these are present in
wrapper and not in Cadence Core). In the case of Designware, we modeled DWC
core as a library which provided APIs to be used by wrapper driver. Now that
Rob is not inclined for passing platform data from one driver to another (in
this case TI specific J721E driver to Cadence PCIe driver), should we model
Cadence core also as a library? If you agree, I can prepare patches for making
Cadence PCIe core as a library. Please let me know your thoughts.

Thanks
Kishon


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
