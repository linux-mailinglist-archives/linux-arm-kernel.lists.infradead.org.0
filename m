Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56A2DC4A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3g80zCQ/FGuVHt6DqAuo3/h3r4vLGglEC9khYPtESOg=; b=NRoEGl7x2njp9MboHZzi643Pn
	vtjxuknjsxd9wyQ4nmE9BpBKF5Qq7yKQTGih2dOowy/K7hj+gYDM5ajoHqSZuFv7GB2z/bgRUKv9h
	wAEKZhYPK6Snqg2C8eYxYBUthfCfMX5yaAgSOheQ8+NIQoHNGJqsnqqCeWL1qnbt5B2Gt/9w7mPX7
	ApB6Pgn4q6lR7tt2F/Z1sifaFINiZUwVBD55oA2RyKkYhgx+B3DUQkKBG/u4cSwdBGBkDK8r+HNjY
	EhtQ71PaAa7ArRQ2mXzt4iGP4scssbaOKQj1K9BsDY12+PCbSSgI3WT4c3n80KMEHAniuU4fV0BKj
	FmcTkFV/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRHq-00015G-5X; Fri, 18 Oct 2019 12:23:18 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRHR-0000vN-Q3
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:22:55 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9ICMnuH077834;
 Fri, 18 Oct 2019 07:22:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571401369;
 bh=4iYQo7IvLqWbw0SSz1RqLvclFmxicJcx/8FoZq6ZB9I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QcUswP8a+bYP/LQW+nLcBQNuD2xO/QjoAUfojpc0YGViLhqK9Buy5N+7cw6OFjO+z
 I3iTY7XJFVla74ZkSkdxAQNJNUrxQbhDc267smMs2qn8qN3jwrJ1cNpChFnsjrHOYj
 1KF02I16vlGQm2idI85+CyavUrJdznTeca255buc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9ICMnMm087532
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 18 Oct 2019 07:22:49 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 18
 Oct 2019 07:22:49 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 18 Oct 2019 07:22:49 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9ICMlbs095303;
 Fri, 18 Oct 2019 07:22:47 -0500
Subject: Re: [PATCH 0/2] Add Support for MMC/SD for J721e-base-board
To: Faiz Abbas <faiz_abbas@ti.com>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20190919153242.29399-1-faiz_abbas@ti.com>
 <f176e389-d181-8848-2bce-6680232b8fa8@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <b70ec99a-58af-3969-d32d-202f7aaec33a@ti.com>
Date: Fri, 18 Oct 2019 15:22:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f176e389-d181-8848-2bce-6680232b8fa8@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052253_914593_6CA7C89D 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 12:57, Faiz Abbas wrote:
> Hi,
> 
> On 19/09/19 9:02 PM, Faiz Abbas wrote:
>> The following are dts patches to add MMC/SD Support on TI's J721e base
>> board.
>>
>> Patches depend on Lokesh's gpio patches[1] and device exclusivity patches[2].
>>
>> [1] https://patchwork.kernel.org/cover/11085643/
>> [2] https://patchwork.kernel.org/cover/11051559/
>>
>> Faiz Abbas (2):
>>    arm64: dts: ti: j721e-main: Add SDHCI nodes
>>    arm64: dts: ti: j721e-common-proc-board: Add Support for eMMC and SD
>>      card
>>
>>   .../dts/ti/k3-j721e-common-proc-board.dts     | 34 +++++++++++++
>>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 50 +++++++++++++++++++
>>   2 files changed, 84 insertions(+)
>>
> 
> Gentle ping.

Queuing up towards 5.5, thanks.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
