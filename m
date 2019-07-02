Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E2C5C655
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 02:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0NF3hM6PwS41fhhznvoMr1paGEoxdi5pXrAonjyZdU=; b=Iw7+mrj4z0OyJ8
	11RJxF8hrtMITrbbwUg0BCMEXobLKwglG6c44xzmh/1V4XJg6lsbMtWbj0zEK3Bhc1zhG7eWRu87N
	3Q0GToUF/NjQRT3kkwrEL41pZ8mo9nZc6Acf+6+Fl41jNKyOp9+sx6Xb9bZyR0kb5FArobCDrgLZg
	H8PTWTyiAU9s7OEcte6jNQGY9qh0/FVk9gymIvcC6iRzpjR6fzafJLpLPKxx7Yhz/rVeK1fz9WNBo
	eh7kYMBNsV3FVG4LuU5wtLGaIWwDePIuxILIfff/WzaAsQUlO3MO8XCjnZfom71sI6uINTp6jfeho
	92xFIEm4wFH7ioUAYfcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi6iF-0001iB-Q7; Tue, 02 Jul 2019 00:32:00 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi6ht-0001hF-Ka
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 00:31:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 17:31:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,441,1557212400"; d="scan'208";a="163847232"
Received: from pgsmsx111.gar.corp.intel.com ([10.108.55.200])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2019 17:31:34 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.145]) by
 PGSMSX111.gar.corp.intel.com ([169.254.2.124]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 08:31:33 +0800
From: "Ong, Hean Loong" <hean.loong.ong@intel.com>
To: Dinh Nguyen <dinguyen@kernel.org>, "Thayer, Thor" <thor.thayer@intel.com>
Subject: RE: [PATCHv1] ARM64: defconfig: Add LEDS_TRIGGERS_TIMER for
 blinking leds
Thread-Topic: [PATCHv1] ARM64: defconfig: Add LEDS_TRIGGERS_TIMER for
 blinking leds
Thread-Index: AQHVLK+Aoy1pYiDkPUSpIA+rs0+23aa1axUAgAEWfIA=
Date: Tue, 2 Jul 2019 00:31:32 +0000
Message-ID: <FB1B748C9B55D647AEE382CBB370D20F46F6E600@PGSMSX109.gar.corp.intel.com>
References: <20190627140709.707-1-hean.loong.ong@intel.com>
 <20190627140709.707-2-hean.loong.ong@intel.com>
 <722335f6-1c39-5f1e-d5f5-8aa32626dc6c@kernel.org>
In-Reply-To: <722335f6-1c39-5f1e-d5f5-8aa32626dc6c@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODU4MzIyZDgtZjZlMy00ZDYzLTk2ZjUtOWQ1ZGFiNjFiNjcyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaXJmQ3BERDUzS0pTN00yaHQ4a1NuSEZ6SGFHUXlSbjlJazVPVHJXaE9nN2w4empTZWc2ME9LalNaM2Z4azE1ZiJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_173137_688357_DDF96C63 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: "See, Chin Liang" <chin.liang.see@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thank you Dinh

Best Regards,

Hean Loong
Internal Global Dial: 2 701 6773
Direct Line: +60 4 636 6773


>-----Original Message-----
>From: Dinh Nguyen <dinguyen@kernel.org>
>Sent: Monday, July 1, 2019 11:55 PM
>To: Ong, Hean Loong <hean.loong.ong@intel.com>; Thayer, Thor
><thor.thayer@intel.com>
>Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; See,
>Chin Liang <chin.liang.see@intel.com>
>Subject: Re: [PATCHv1] ARM64: defconfig: Add LEDS_TRIGGERS_TIMER for
>blinking leds
>
>
>
>On 6/27/19 9:07 AM, Ong, Hean Loong wrote:
>> Adding LED Triggers Timers for LED blinking support on ARM devices
>>
>> Signed-off-by: Ong, Hean Loong <hean.loong.ong@intel.com>
>> ---
>>  arch/arm64/configs/defconfig |    1 +
>>  1 files changed, 1 insertions(+), 0 deletions(-)
>>
>> diff --git a/arch/arm64/configs/defconfig
>> b/arch/arm64/configs/defconfig index 4d58351..6fbd651 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -595,6 +595,7 @@ CONFIG_LEDS_TRIGGER_HEARTBEAT=y
>> CONFIG_LEDS_TRIGGER_CPU=y  CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
>> CONFIG_LEDS_TRIGGER_PANIC=y
>> +CONFIG_LEDS_TRIGGER_TIMER=y
>>  CONFIG_EDAC=y
>>  CONFIG_EDAC_GHES=y
>>  CONFIG_RTC_CLASS=y
>>
>
>I've applied this patch with this change:
>
>--- a/arch/arm64/configs/defconfig
>+++ b/arch/arm64/configs/defconfig
>@@ -590,6 +590,7 @@ CONFIG_LEDS_CLASS=y
> CONFIG_LEDS_GPIO=y
> CONFIG_LEDS_PWM=y
> CONFIG_LEDS_SYSCON=y
>+CONFIG_LEDS_TRIGGER_TIMER=y
> CONFIG_LEDS_TRIGGER_DISK=y defconfig
> CONFIG_LEDS_TRIGGER_HEARTBEAT=y
> CONFIG_LEDS_TRIGGER_CPU=y
>
>Also, the commit header should be "arm64: defconfig".
>
>Dinh
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
