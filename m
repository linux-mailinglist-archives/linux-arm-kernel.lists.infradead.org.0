Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC8F146727
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwXe/qJ38S1hjyT39Whpok7T4ZYblhrRPxn31mGNsZo=; b=k6Kb+UKmoFwdvA
	wKBITn7JQhVLyjYDbnTVFFoRES+s5inZEB3BWI5acb3dU/HLGS1XAJIuvF1MCZzD2fbkBG5eEUDqI
	QGHl2Rtsot1t7tssuRnAo1e5fw9Pv7w8qGXC7l4B1VuF5oQYNBmIt6Bk/vOcrR6lgkwY+MdYS9+J2
	M7ZcFdmeoR33i1ai+dBh1cJHsVX7UmssM0ytffTpz54E5g/LwHyw8BBtzxvUbxUrE0e8uSPZzh6bJ
	91NJL/TnApw9mgf1MRbWD7yKbu4CkUIAaBjQI7egBrWEA+l8SSxaay0c8bCZgffRB+FtR5hzMqEsp
	hpXhCUvwe4Lml0Mbyh9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuavx-0001zY-2k; Thu, 23 Jan 2020 11:46:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuauu-0000GY-Rq
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:44:58 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00NBijAB129984;
 Thu, 23 Jan 2020 05:44:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579779885;
 bh=QnJ9VUHPpMMd8YUAGeL/71FiTwnavEbizZbc/dCqjBQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=xA6ob+SJdg7zfXn7hlg2ASxYri8hGEOhWPfgeB83gcf3pZOhdMBigo2kRnsAhiTIn
 VfSfH3quOr7/RiJPl70v28p2MY0hvYXEfwVQLJ79oo54UxHGb6Andxc3oUcdUX67V5
 SGrYv56ow2oBNw/v7YNv+bv/yF6EDuQExoEVS+xs=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBiiMB060474;
 Thu, 23 Jan 2020 05:44:44 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 05:44:44 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 05:44:44 -0600
Received: from [172.24.190.4] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBienv047691;
 Thu, 23 Jan 2020 05:44:40 -0600
Subject: Re: [PATCH 0/3] Add Support for MCAN in AM654x-idk
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
References: <20200122080310.24653-1-faiz_abbas@ti.com>
 <e3025ab6-04b5-3eba-5e0d-70caabee26fb@pengutronix.de>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <f6bf75f0-68ea-0b61-ed43-9ad894016cfd@ti.com>
Date: Thu, 23 Jan 2020 17:16:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <e3025ab6-04b5-3eba-5e0d-70caabee26fb@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034456_982303_1FEC987A 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, nm@ti.com, catalin.marinas@arm.com,
 sriram.dash@samsung.com, t-kristo@ti.com, robh+dt@kernel.org, dmurphy@ti.com,
 davem@davemloft.net, wg@grandegger.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marc,

On 23/01/20 4:47 pm, Marc Kleine-Budde wrote:
> On 1/22/20 9:03 AM, Faiz Abbas wrote:
>> This series adds driver patches to support MCAN in TI's AM654x-idk.
>>
>> Faiz Abbas (3):
>>   dt-bindings: net: can: m_can: Add Documentation for stb-gpios
>>   can: m_can: m_can_platform: Add support for enabling transceiver
>>     through the STB line
>>   arm64: defconfig: Add Support for Bosch M_CAN controllers
>>
>>  Documentation/devicetree/bindings/net/can/m_can.txt |  2 ++
>>  arch/arm64/configs/defconfig                        |  3 +++
>>  drivers/net/can/m_can/m_can_platform.c              | 12 ++++++++++++
>>  3 files changed, 17 insertions(+)
> 
> What about adding support for xceiver-supply as done in several other
> drivers (ti_hecc.c, flexcan.c, mcp251x.c)? And using this for the stb line?

Looks like you had given this feedback a long time ago and I forgot
about it. Sorry about that :-)

https://lore.kernel.org/patchwork/patch/1006238/

But now that I think about it, its kinda weird that we are modelling
part of the transceiver as a separate child node
(Documentation/devicetree/bindings/net/can/can-transceiver.txt) and the
other parts as a regulator.

Anyone looking at the transceiver node would figure thats where the
enable gpio/regulator node needs to go instead of the parent node.
Shouldn't we have all transceiver properties under the same node?

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
