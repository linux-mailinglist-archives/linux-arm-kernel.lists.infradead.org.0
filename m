Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F0F1C6681
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 05:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXJEHMYr55G6gorQCEeXunaHRukkGt/Am2TYwVHIWO0=; b=jiajkMzHMYIa0V
	+xhqCOvBh42EZnWBBy85CnF8ze4hZDHFkfy/GMM2MmE8EF6OM8ilh7QQMbzrH3LemtL3ZMnENJayB
	pxZ8nNXQzRLcdSQ/Fe/6CYttXF3FAkFyjIDQtCbJgvBT9m9VNyPVJoVCXrgAlC1jsuNlnB0YbKt9C
	oJ/SkWWtQUpW4ySN9VYlk6HmraLN8vUCluTlPqjj/ciyomGcV3cRZTMJ4UC3JEIieFQH6zA6kjJC6
	6CUj4BtXLva3V+XwS5igw2XtKicyOBtUVW/o2p4wbNBbmkP2/bowbCPSt077bjg/3HpjBETCEapg1
	k2MMGLxeY4HQczLOiOow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWB9U-00075M-Qp; Wed, 06 May 2020 03:55:20 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWB9L-0006EK-0I
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 03:55:12 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0463swqG026651;
 Tue, 5 May 2020 22:54:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588737298;
 bh=dP9vIylGch3mfYOoHduGYa4fpVr1vxqy1GWoA3PI0aY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HqoN+g1f6QCF8y1A1LVthP/mExB8HaQXALSKQCtVsTK94opB6EDbI0nH8XuZi15M0
 L313zb0cQUc3vZE/yksWkkzf5kegyvfFcFHnRPdyWPTEQGm2dxcdysoiLpKkGwHNmK
 jiJGC43/GgNWMbBJGRfiOgU9qOruxlcTwTImygDw=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0463swt9020345
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 May 2020 22:54:58 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 22:54:58 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 22:54:58 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0463ssDu004336;
 Tue, 5 May 2020 22:54:55 -0500
Subject: Re: [PATCH v3 14/14] MAINTAINERS: Add Kishon Vijay Abraham I for TI
 J721E SoC PCIe
To: Joe Perches <joe@perches.com>, Tom Joseph <tjoseph@cadence.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Andrew Murray
 <amurray@thegoodpenguin.co.uk>
References: <20200417125753.13021-1-kishon@ti.com>
 <20200417125753.13021-15-kishon@ti.com>
 <ee72cdce1c487f7d0fd089f59fb92422ef2d9396.camel@perches.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <d4ca70be-0beb-f1a3-2c70-54df976c2983@ti.com>
Date: Wed, 6 May 2020 09:24:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ee72cdce1c487f7d0fd089f59fb92422ef2d9396.camel@perches.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_205511_131546_172977B3 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joe,

On 4/17/2020 8:49 PM, Joe Perches wrote:
> On Fri, 2020-04-17 at 18:27 +0530, Kishon Vijay Abraham I wrote:
>> Add Kishon Vijay Abraham I as MAINTAINER for TI J721E SoC PCIe.
> []
>> diff --git a/MAINTAINERS b/MAINTAINERS
> []
>> @@ -12968,13 +12968,15 @@ S:	Maintained
>>  F:	Documentation/devicetree/bindings/pci/designware-pcie.txt
>>  F:	drivers/pci/controller/dwc/*designware*
>>  
>> -PCI DRIVER FOR TI DRA7XX
>> +PCI DRIVER FOR TI DRA7XX/J721E
>>  M:	Kishon Vijay Abraham I <kishon@ti.com>
>>  L:	linux-omap@vger.kernel.org
>>  L:	linux-pci@vger.kernel.org
>> +L:	linux-arm-kernel@lists.infradead.org
>>  S:	Supported
>>  F:	Documentation/devicetree/bindings/pci/ti-pci.txt
>>  F:	drivers/pci/controller/dwc/pci-dra7xx.c
>> +F:	drivers/pci/controller/cadence/pci-j721e.c
> 
> Please keep file patterns in alphabetic order by
> moving this new cadence line up one line above dwc.

Sure, will fix this up in my next revision.

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
