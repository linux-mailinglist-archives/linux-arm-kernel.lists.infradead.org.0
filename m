Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEF31C8650
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SGRxKOeVcca3R1OfehNYqKQpPW0QcePjpxj7PPGIJ+o=; b=WCo+zJXAX0d1kf5U+gBG83NzF
	4fFUVYGbeQi2reqr/G1pHH/eFUpPCx1qSDRWkxGk9Qe0LG3GuCrT2jaff66Py/bLBevTf4YoBpQ0I
	e+k26M+rndThq4Hs0EatkV7pem9E5MSVhj0DsYhuuxiMSAq3VEYlwQX+CMmIfkaAGg6gZosHJ0Xap
	yswesTOLd8ME2bwNWVNHIT7VBlxr6mVSirKYu0Klq5Ov5A81e38t+ZVHbsYU2v60yZeyRZ5vwE3pV
	k4qzxiWW9qtlhi6Dl9YshDmh2gLJxBJbmLiMy0quaeZUlJdVNQq9sWkBij2vewzJEAwkjWaCMNW1C
	ue0DN6tJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdNE-0008Vw-4r; Thu, 07 May 2020 10:03:24 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdN1-0008Se-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588845791; x=1620381791;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=igCCKMJbhqYeOoGE+sQmu6rCvyg1z00o31S2SkbWHs4=;
 b=C+z3V5HA5iScKDWWnhxLVdUG75hxp7AJKRwez785+AB+XvwZLrP5AdD+
 lWXHEYwFAfvnP9QLQTWj1893cGp8PhPQY7bC9YeQi9jaW79CozXV/fcOH
 5mooHB+jSL2ye6f2dHGcJUDwi2KNRn11+Q0p1zcOcrX8ZDAY/nA0pgRez
 y+YS/k4sz5BhBarx6G+zT/6gYZM1vAkSnUbmWVznjHe8cu+8W1QPY4WSI
 2FxCLbzG1boKnFBuzGeTGih9JDaPivVZdx9XnqsKrtSTKCiesWYHKGcu/
 dTp73q37z3FRVU3DJHuzBpDun6UmOpFwgseVRhHNAGCNCPQpqPL4UOXAh A==;
IronPort-SDR: KiGC/Nbaj7CKs/uXQhNZzQ0gtCXZnf5CMmQNdcCvp6mTdIoPwsnOXx/5zJGR9eg65Lbu9v4wrs
 wisJ1JXL1nneY0JJDEeSQLWvo8hayE50Le8vhK1ntku/RGzBNhKBIukj0kICCBm2Z31AF/pDMc
 KcEC+sxSU3dRkSk8D7P9/4M6acSrRltj4IxfbDwYBCWWp6DmbU0M6CbRWHMJqlnHqkiB7A+r3V
 vP5bKgiY3JgncsHMmT2eNsVqlgWEgykswRAIk+6SRaXCu5/P5Ed3BMOFqBaDqJZHw8em1rk4Uj
 jeI=
X-IronPort-AV: E=Sophos;i="5.73,363,1583218800"; d="scan'208";a="72706941"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 May 2020 03:03:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 May 2020 03:03:10 -0700
Received: from [10.205.29.55] (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 7 May 2020 03:03:06 -0700
Subject: Re: [PATCH v4 1/5] net: macb: fix wakeup test in runtime
 suspend/resume routines
To: Jakub Kicinski <kuba@kernel.org>, <netdev@vger.kernel.org>, "David S.
 Miller" <davem@davemloft.net>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
 <dc30ff1d17cb5a75ddd10966eab001f67ac744ef.1588763703.git.nicolas.ferre@microchip.com>
 <20200506131843.22cf1dab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <347c9a4f-8a01-a931-c9d5-536339337f8a@microchip.com>
Date: Thu, 7 May 2020 12:03:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200506131843.22cf1dab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_030311_654211_7EDC32FD 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 antoine.tenart@bootlin.com, linux-kernel@vger.kernel.org,
 harini.katakam@xilinx.com, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/05/2020 at 22:18, Jakub Kicinski wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Wed, 6 May 2020 13:37:37 +0200 nicolas.ferre@microchip.com wrote:
>> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>>
>> Use the proper struct device pointer to check if the wakeup flag
>> and wakeup source are positioned.
>> Use the one passed by function call which is equivalent to
>> &bp->dev->dev.parent.
>>
>> It's preventing the trigger of a spurious interrupt in case the
>> Wake-on-Lan feature is used.
>>
>> Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
> 
>          Fixes tag: Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
>          Has these problem(s):
>                  - Target SHA1 does not exist

Indeed, it's:
Fixes: d54f89af6cc4 ("net: macb: Add pm runtime support")

David: do I have to respin or you can modify it?

Thanks. Regards,
   Nicolas
>> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
>> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
>> Cc: Harini Katakam <harini.katakam@xilinx.com>
>> ---
>>   drivers/net/ethernet/cadence/macb_main.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
>> index 36290a8e2a84..d11fae37d46b 100644
>> --- a/drivers/net/ethernet/cadence/macb_main.c
>> +++ b/drivers/net/ethernet/cadence/macb_main.c
>> @@ -4616,7 +4616,7 @@ static int __maybe_unused macb_runtime_suspend(struct device *dev)
>>        struct net_device *netdev = dev_get_drvdata(dev);
>>        struct macb *bp = netdev_priv(netdev);
>>
>> -     if (!(device_may_wakeup(&bp->dev->dev))) {
>> +     if (!(device_may_wakeup(dev))) {
>>                clk_disable_unprepare(bp->tx_clk);
>>                clk_disable_unprepare(bp->hclk);
>>                clk_disable_unprepare(bp->pclk);
>> @@ -4632,7 +4632,7 @@ static int __maybe_unused macb_runtime_resume(struct device *dev)
>>        struct net_device *netdev = dev_get_drvdata(dev);
>>        struct macb *bp = netdev_priv(netdev);
>>
>> -     if (!(device_may_wakeup(&bp->dev->dev))) {
>> +     if (!(device_may_wakeup(dev))) {
>>                clk_prepare_enable(bp->pclk);
>>                clk_prepare_enable(bp->hclk);
>>                clk_prepare_enable(bp->tx_clk);
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
