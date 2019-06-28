Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C185967B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYRLyFIbG0ObWWHH9W0ryneKue5BURHojlS9RiQGx30=; b=q9z/Ow5HlQtuVf
	5O9BylRGw6rSAGrmMT5GeqZqImBtCF6lk/W7tsYsVkPZPGaYb06SlwTeoz5Si5aX5EYtStIZmtw3/
	NDY+2U4APWp58kMwm3772VwNzTSMn/i7+mpGJc1Mr6/QBZkaHGB5Q8EHFeC4cbovaHe+fXdmx3SBx
	O0ms16q+H3PaMZmPoDveGsM1qG1HNXiOL46ZaiDldFtgVlq6EfH1LnW1Sw/Fut2p4y7t+e1GAHEWG
	wuHPZ1eWZcT6jmpIur3WqLTeJgz1gji+dU366iYyQFUUnmyPEG1H5kt8vKOOPKECqPgTgyrtB0Xeg
	vyxNi4DjeYjxVwdkXs5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmdB-0000Wk-L5; Fri, 28 Jun 2019 08:53:18 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmcu-0000W5-3V
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 08:53:01 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S8qwtl090825;
 Fri, 28 Jun 2019 03:52:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561711978;
 bh=s6Qrrrvm1pvduF1jVmT3oz+jOvVyYBP1mFLaUgRMnC4=;
 h=From:Subject:To:CC:References:Date:In-Reply-To;
 b=MR7Z+Uer5CDQ9n+64R3MyDIMIQkCO9iM2mXvw1RmdkDc2ATZ2PRIPhSsc3Mk4a4Yl
 nrl0opxBKlNvwBLcwO+R6yxaYRQFJYp9irqxKb+BdJJO0C1j4JAGYZwniLvg6YfL8h
 +/hAnwc4POka+MpGaUVNktkKtYcG2a18Vf5BlOAM=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S8qvkd007561
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 03:52:58 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 03:52:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 03:52:57 -0500
Received: from [172.24.145.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S8qtjw050681;
 Fri, 28 Jun 2019 03:52:55 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH] dt-bindings: i2c: omap: Add new compatible for J721E SoCs
To: Wolfram Sang <wsa@the-dreams.de>
References: <20190605084504.2777-1-vigneshr@ti.com>
 <20190626134302.GM801@ninjato>
Message-ID: <a6cc4e71-e717-2f6e-5662-84067e1b979f@ti.com>
Date: Fri, 28 Jun 2019 14:22:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190626134302.GM801@ninjato>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_015300_226612_1684E055 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 26/06/19 7:13 PM, Wolfram Sang wrote:
> On Wed, Jun 05, 2019 at 02:15:04PM +0530, Vignesh Raghavendra wrote:
>> From: Peter Ujfalusi <peter.ujfalusi@ti.com>
>>
>> J721E SoCs have same I2C IP as OMAP SoCs. Add new compatible to
>> handle J721E SoCs.
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> 
> Applied to for-next, thanks!
> 

Thanks!

> Sorry for the delay, I was waiting for an ack to show up. I totally
> missed you are the maintainer :( Won't happen again!
> 

No worries :)

Regards
Vignesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
