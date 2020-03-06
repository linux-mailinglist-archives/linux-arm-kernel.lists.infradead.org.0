Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC77F17B2FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 01:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRDXQGRiWrVu78ISRbE7jVC3GFLHDl18UBBEWF3ahgo=; b=St2tTXd3bQNnDP
	eqGjyWkVL8lDEBYTq/ELZ+ahjpipBzgXMZ9S8sxcTxvMy0e1RSDstr6qzPN0J36irDHyR68l6SFHW
	xeeCjsAGLd6y9r0+aqslNvmLwHD4CoQypCu3VI/1gqHbOqbxB82k14YvTBwnX/RKU7J9DkCN01CG7
	hyPxNTyFuxIVL1kJOlqDzhJr04Xa9hIrptHG0G98gH+iptTPVaP8OmQ2JIhLwmB3/t+N+S3uW0LSB
	U7tdVygquGtLS7fD3FRxrVa2zsPXdccesDo+SV/rfGXNbcHZu8MW4WNocGoovpxfYwI+z2HgUOKu2
	smTzx/bvXhbIA1Vk5YKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA0t8-0003dm-4k; Fri, 06 Mar 2020 00:30:50 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA0t0-0003dD-0K
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 00:30:43 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0260TlG3004717;
 Thu, 5 Mar 2020 18:29:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583454587;
 bh=MM2TeeUzDkVH6Jaz3FdkOyWt+8KGCQgxym5sFOmIbNs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GdI9kNUeGDoFFbibWxDSVaNzrnMVGFT/xtGPZBrcWLPKJxInG3mPNOMNoigiSxOXv
 G/bKnj3DQmj+jGX9fFSWJbGDq7UsbYzvXp1CMKMoRINYiR2MKOg/wBxDVrT4zLgUS6
 btNdiIem06vdcaTKvZhjlRymM0MrljUjKN3KarKw=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0260TlFw126586
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 5 Mar 2020 18:29:47 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 5 Mar
 2020 18:29:47 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 5 Mar 2020 18:29:47 -0600
Received: from [128.247.81.254] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0260Tlg3085113;
 Thu, 5 Mar 2020 18:29:47 -0600
Subject: Re: [PATCH v2] mfd: syscon: Use a unique name with regmap_config
To: Lee Jones <lee.jones@linaro.org>, Arnd Bergmann <arnd@arndb.de>
References: <20200127231208.1443-1-s-anna@ti.com> <20200224100037.GK3494@dell>
From: Suman Anna <s-anna@ti.com>
Message-ID: <5efbb3c4-044d-0a8e-630a-0dd559f20669@ti.com>
Date: Thu, 5 Mar 2020 18:29:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200224100037.GK3494@dell>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_163042_090644_453A93FD 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Lechner <david@lechnology.com>, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/24/20 4:00 AM, Lee Jones wrote:
> On Mon, 27 Jan 2020, Suman Anna wrote:
> 
>> The DT node full name is currently being used in regmap_config
>> which in turn is used to create the regmap debugfs directories.
>> This name however is not guaranteed to be unique and the regmap
>> debugfs registration can fail in the cases where the syscon nodes
>> have the same unit-address but are present in different DT node
>> hierarchies. Replace this logic using the syscon reg resource
>> address instead (inspired from logic used while creating platform
>> devices) to ensure a unique name is given for each syscon.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>> v2: Fix build warning reported by kbuild test bot
>> v1: https://patchwork.kernel.org/patch/11346363/
>>
>>  drivers/mfd/syscon.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> Waiting for Arnd to review.
> 

Hi Arnd,

Gentle ping, any comments?

regards
Suman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
