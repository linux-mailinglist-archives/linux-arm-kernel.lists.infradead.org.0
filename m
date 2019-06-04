Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6FD33EFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sb+kcDb1tvtQNu5G3AiL9xMUW9WYaJHemN1bEmF7wP0=; b=PXGO4NZXTcPzzB
	A/lYgWJNQAGz31ESnMRYqVHdTwvH2YPTN4IuqHAsscJ1lXcrrbWVfdH+Umy3nnWl9PwTmBWVg+qt0
	gt7rcV/9UBVhLv+LANqYQyqihn2KaBnYoeM9mh66qFchgk+88mXZO+QwUgHW4CfxclwmrcJjNYWNp
	x+f1EsgYQZLBZNeJBZsRy1wFx94NQ9Z2sccqvsV3R9NJzGLBQNxV0dgAL7nfK1K2e1bCKm2xQpLUx
	KXU5sxJjDnVbc1TFW02SGhfdP3HpdtH/351WldvAKOsJci8cYFKrwUrnlIh88O8uuhOBQFR8OqIaP
	/X6fY1blG6Sv3m0lGUEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2yP-00028d-JQ; Tue, 04 Jun 2019 06:31:05 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2y9-00028J-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:30:51 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x546Ujqd013637;
 Tue, 4 Jun 2019 01:30:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559629845;
 bh=HvPPDN0cohzBbGAXyF4zGYsuRz1yAnxG8709uSbSji4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=xnWCrXf7BHBVW2yOydeLPyUBriHoeCa7BGBJoWlfWg8QnehRuBX/5WGXRMKlA+/RF
 EVeV1f5iMn7+clIJA+P7Lc0mDKgOh6wXS7a9Hc3Fq6O/eSFcCRcUQxFt04mO+vSDeM
 uuvz9oQb7rcLs/xaXcJLP9AfmUNKbOAqHBAdkklo=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x546UjTj047896
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 01:30:45 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 01:30:44 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 01:30:44 -0500
Received: from [172.24.190.215] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x546Uf9I091770;
 Tue, 4 Jun 2019 01:30:41 -0500
Subject: Re: [PATCH 0/4] Add Support for MMC in J721E
To: Sekhar Nori <nsekhar@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>
References: <20190604060914.10886-1-faiz_abbas@ti.com>
 <2f45cef2-c4ca-0404-b205-fabbb92a40fb@ti.com>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <93ba4b6d-c878-fe62-2835-366167554ef5@ti.com>
Date: Tue, 4 Jun 2019 12:01:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2f45cef2-c4ca-0404-b205-fabbb92a40fb@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_233049_939129_90B2AB50 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, ulf.hansson@linaro.org, robh+dt@kernel.org,
 adrian.hunter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 04/06/19 11:48 AM, Sekhar Nori wrote:
> On 04/06/19 11:39 AM, Faiz Abbas wrote:
>> The following patches add driver support for MMC SDHCI interfaces on
>> TI's J721E devices. The 8 bit and 4 bit instances have phys which are
>> different from the am65x interfaces as well as different from each
>> other which leads to 3 different compatibles and a bunch of flags for
>> indicating the differences.
>>
>> Depends on Nishanth's initial J721E patches here:
>> https://lore.kernel.org/patchwork/cover/1077382/
> 
> This dependency is only for testing, not for applying these, right?
> 

Yes. The dependency is only for testing.

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
