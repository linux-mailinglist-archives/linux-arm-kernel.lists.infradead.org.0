Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD4F1BE342
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8It+AcUYasBau81JpOfeLcazHv8S8BSKm0XsAIqPTRo=; b=H85wn+zt033H8q
	ps2I+Cj85GeHXyhn67okwskHLdQrr4A3oP3iLv7Bd5gwZyR7QiX2fmYuzyr8pG0fspSkoGeJmtddi
	FhZHVpG3Trq2HZTlRnLl7WFN4TN4s/vBa1PPjb72Yo5+SWLXOilnUhJxjt9UL7c2sGDqqBeGgsiLT
	cDu7HAUy7+y4hT+0M25y+n/eiIEninOdEpe6M79NDQ3qXSX6KguB1jd/LHUwLhuYVY8jDIhLrhjyU
	qgCzoj1afM9oEAMr+mQsJKjP7arBUPxwzTvqHT3dB5hgpo3gacM63nSvBbXQ0GLGYZs/nRd69QpPF
	Dh1ZLCSWocdXe3XLJXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTp7i-0007CN-0E; Wed, 29 Apr 2020 15:59:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTp5e-0005Us-7D
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:57:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TFuuIM025268; Wed, 29 Apr 2020 17:57:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=eCkbsHOC25FPIY1TTTZpD48jm9gXnoWIY4Y9Jr6sfic=;
 b=e53jiOwYKO+LkzbBqboM45RGmMiiNkfaPP7dB0FnECk37XNxJDKYXKJMGbOfKFUYwjSE
 8dP5SR4YDXAyTNwQ4NxhiLrUCZAJF+Zafkjf+cRlDYacMCuo4H+eonM8wdy2r+K550a2
 3nFsUM0ABpsrSC4gLE9tnea1Xbm7+7dUF43as0cNgn5S7Xi728/+i69xr9UFwX2suOkI
 WPeluJ/H57/IfWNpu8ApMehPvf06gWc96+I9LdK3rupRqwMHzisCxjgqIJXAyKIkLWgo
 hWxeqVIMJtMv8osZYnjXx5lT84OGwDv95LYkAsV05mYwPN18/i2JqFczglp3t7YKtgLm rA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhq67a5f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 17:57:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 579AF100034;
 Wed, 29 Apr 2020 17:57:22 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1E9D52AD2DB;
 Wed, 29 Apr 2020 17:57:22 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Apr
 2020 17:57:21 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Wed, 29 Apr 2020 17:57:21 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
Thread-Topic: [RFC 0/3] Introduce cpufreq minimum load QoS
Thread-Index: AQHWGi06wBgeAQBseECYOK/U7Qvw76iQJdAAgAACCYA=
Date: Wed, 29 Apr 2020 15:57:21 +0000
Message-ID: <30cdecf9-703a-eb2b-7c2b-f1e21c805add@st.com>
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
 <7657495.QyJl4BcWH5@kreacher>
In-Reply-To: <7657495.QyJl4BcWH5@kreacher>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <C0367D8B3A5F0840A331F12D91CA5561@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_08:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_085738_771355_C5996638 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "len.brown@intel.com" <len.brown@intel.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>, "pavel@ucw.cz" <pavel@ucw.cz>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/29/20 5:50 PM, Rafael J. Wysocki wrote:
> On Friday, April 24, 2020 1:40:55 PM CEST Benjamin Gaignard wrote:
>> When start streaming from the sensor the CPU load could remain very low
>> because almost all the capture pipeline is done in hardware (i.e. without
>> using the CPU) and let believe to cpufreq governor that it could use lower
>> frequencies. If the governor decides to use a too low frequency that
>> becomes a problem when we need to acknowledge the interrupt during the
>> blanking time.
>> The delay to ack the interrupt and perform all the other actions before
>> the next frame is very short and doesn't allow to the cpufreq governor to
>> provide the required burst of power. That led to drop the half of the frames.
>>
>> To avoid this problem, DCMI driver informs the cpufreq governors by adding
>> a cpufreq minimum load QoS resquest.
> This seems to be addressing a use case that can be addressed with the help of
> utilization clamps with less power overhead.
Do mean clamping the policy frequencies ? I may have miss the API to do 
that...
>
> Thanks!
>
>
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
