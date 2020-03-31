Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38473199B5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7XlS1Vvk/5sS6j3Fylvqiwos7fLEgARTruQK3aAmGY=; b=Ms67H7L9DVihFH
	Ciu7NCk/4M9exVENd+20BvoY/xyUltSGBN6vjTR5SkCp9Uqh1hC38zT1jtnVKFoGpWDNclJAYxPlL
	PdXGb/TjNcaEumrL955CpJ3OGeyZg4aa+G2872XJQcvV+fJURC7tFwMF6rGEDikNf1lh/TRtM33Qs
	dVOe0Efib4s4LL2nb08rRUwrCgno1CLvvv+mkmg+Gs+VP+Wfv7QxRpJXYPWJyKJCD1PaJDZNf42fp
	wZpoay8APgKG64BFhU+77gOl+/08UXyiheaDkXdsHbgrgxzC7Ohh2JFKa/42y5IDplPdFH2iFIgSw
	CPIO36JURrrWwAdJLaxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJg7-0002W4-2g; Tue, 31 Mar 2020 16:23:51 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJfN-00023n-JT
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:23:07 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48s9b304K1z1rv9q;
 Tue, 31 Mar 2020 15:46:07 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48s9b26TY8z1r0cL;
 Tue, 31 Mar 2020 15:46:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id nMgCC_CPG4VM; Tue, 31 Mar 2020 15:46:05 +0200 (CEST)
X-Auth-Info: QFKlbrzgLisLCXWudA2nKbbSJdwvQfKKmtA9G/hcDsU=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 15:46:05 +0200 (CEST)
Subject: Re: [PATCH V2 00/22] ARM: dts: stm32: Repair AV96 board
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331040736.GA14274@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <7dc86fa9-504c-cbc3-9a24-29644d66f9e3@denx.de>
Date: Tue, 31 Mar 2020 15:44:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200331040736.GA14274@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_092305_804571_16B7D812 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/31/20 6:07 AM, Manivannan Sadhasivam wrote:
> Hi Marek,

Hi,

> Thanks for the series. 
> 
> On Tue, Mar 31, 2020 at 02:56:39AM +0200, Marek Vasut wrote:
>> The AV96 board device tree is completely broken and does not match the
>> hardware. This series fixes it up.
>>
> 
> Completely broken?

The board didn't even boot.

> The patch submitted previously was an initial one and there
> were many interfaces not enabled. I agree that there are few _obvious_ things
> like SDMMC1/Ethernet pinmux, LED naming were wrong. This was due to the fact the
> board was on early bringup stage and I couldn't test Ethernet due to my setup
> issue at that time (yeah I know it is bad). Also, I don't get access to DHCOR
> schematics as well for things like PMIC. Do you have access to it?

Yes, I do have access.

> If possible can you share a link to that if available publicly?

The SoM schematic is not available in public, no, sorry.

> I will test this series and also the uboot one on my board and give my
> Tested-by tag soon.
> 
> Anyway, I think the patchset subject could be something like,
> "Improve AV96 support" :)

I think if something doesn't work, "Repair" is the right word for it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
