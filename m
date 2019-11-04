Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C548EDA54
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzZChR1kdmm8CZNrSqbRHrLuFfWSY5gKMan99E4x9TY=; b=o6z7gssF9Vi4me
	+rS+kdnBX3ZKP9+G3ok0xTi7kl8gyAnYKfeBLXx98UIYx2OtM6H6sM4HAinAVN9rxS47DwLAX+M4A
	6HrQ/3gZpfJedDR3tDHYlRCm8wwZN561dE/AgVeLhgzp9RoVqo1DNRpFAjsLO/HH2H6yqjtO5NTjr
	hNLTfXc1btc8axUDevSOK8nlDvaDKP1Gyc+pGWsbalm+Umq4uBvbC8vCj+ihKR3Om5nZn3gA5sNFr
	fNtrMYUMzVGtZ/24vC9p1EG4Ayc0qJhrANA6w2K7HRCttW/1mWcHxR+iUC4cFPNwnGHhpsvPYtnAp
	Q5lmmRpt0L0gJxWbhk/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXNZ-0000hI-3I; Mon, 04 Nov 2019 08:06:25 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXNP-0000gU-Qe
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:06:17 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id ECF1B60C223;
 Mon,  4 Nov 2019 09:06:09 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 4 Nov 2019
 09:06:09 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 4 Nov 2019 09:06:09 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 09/11] ARM: dts: imx6ul-kontron-n6x1x-s: Disable the
 snvs-poweroff driver
Thread-Topic: [PATCH v3 09/11] ARM: dts: imx6ul-kontron-n6x1x-s: Disable the
 snvs-poweroff driver
Thread-Index: AQHVj/bnGF5WcKYgcUiKBHtcAgBib6d6ln2AgAAGP4A=
Date: Mon, 4 Nov 2019 08:06:09 +0000
Message-ID: <626ad87a-eb1d-4dca-7cd3-8c5f38025aec@kontron.de>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-10-frieder.schrempf@kontron.de>
 <20191104074346.GT24620@dragon>
In-Reply-To: <20191104074346.GT24620@dragon>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <F8B15234843B51418DD790C4DE2879E7@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: ECF1B60C223.A27C5
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_000616_194681_F46451E5 
X-CRM114-Status: GOOD (  25.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On 04.11.19 08:43, Shawn Guo wrote:
> On Thu, Oct 31, 2019 at 02:24:27PM +0000, Schrempf Frieder wrote:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> The snvs-poweroff driver can power off the system by pulling the
>> PMIC_ON_REQ signal low, to let the PMIC disable the power.
>> The Kontron SoMs do not have this signal connected, so let's remove
>> the node.
>>
>> This seems to fix a real issue when the signal is asserted at
>> poweroff, but not actually causing the power to turn off. It was
>> observed, that in this case the system would not shut down properly.
> 
> I do not quite follow on this.  How does disabling snvs_poweroff fix the
> issue?  The root cause of system not shut down properly seems to be that
> PMIC doesn't shut down power.  This looks like a clean-up rather than
> bug fix.

I don't know the exact reasons, but we had issues on these boards when 
doing a "poweroff". The kernel would print something like the log below.
Disabling the snvs-poweroff solved this.

But note that this has last been reproduced on v4.14. So I'm not sure if 
this is still a problem with the current kernel.

#######
reboot: Power down
Unable to poweroff system

====================================
WARNING: halt/675 still has locks held!
4.14.104-exceet #1 Not tainted
------------------------------------
1 lock held by halt/675:
  #0:  (reboot_mutex){+.+.}, at: [<c0145a98>] SyS_reboot+0x14c/0x1dc
#######

> 
>>
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")
> 
> If you think this is really a bug fix, it should be applied to the file
> before renaming rather than the one after renaming.

I will try to reproduce the issue with the current kernel and depending 
on the results either drop the Fixes tag or move the patch before the 
renaming.

Thanks for reviewing,
Frieder

> 
> Shawn
> 
>> ---
>>   arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 4 ----
>>   1 file changed, 4 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> index e18a8bd239be..4682a79f5b23 100644
>> --- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> @@ -158,10 +158,6 @@
>>   	status = "okay";
>>   };
>>   
>> -&snvs_poweroff {
>> -	status = "okay";
>> -};
>> -
>>   &uart1 {
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&pinctrl_uart1>;
>> -- 
>> 2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
