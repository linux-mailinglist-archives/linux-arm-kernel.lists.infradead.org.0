Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926E1EB0C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=obL0lMosBQEMIA9AkIksf23KMC1aVKVZ8Iy8fXqxxC4=; b=Ik2xeC/CEe8F8P
	WQHEMMFSWWN7+OO0W0aizapMGcXnjIjurkOtabMgSo0xnS3qiq34/3dULWvdGVKc8l6VyEGVc+aAY
	Uzu5l3Xko3jzuOy/7OCxRhRH4RlTsvVE2J7wHfyZdLIXiXmBTzGOuE+K6opSGmynvIrhcFg92CWv6
	jlzmSbfkrOel/ioa+BaeZZBTiP5s4OY5a5arBaRr8+Xq+y11GSJ29FVvnfKtEIfrIf7Gq1ohnfzDn
	LT0W0OQmol95oGu6lGb7j4YIoVtCTcgE+bLXtOGB1zHf5zK22Pyqr0l1zwQi/hB8y2Neq6oN912tZ
	BXwiRpVG0jOQLfKSPEcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQA5G-0003Vu-LE; Thu, 31 Oct 2019 13:01:50 +0000
Received: from mail-he1eur01on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::606]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQA53-0003TQ-F0
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:01:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BNKL8cMVak8wplDmvxsplmxnslRLPe0t3Xd1C7s/NgR/K4hgruyFL0WTxwlaB1vOutfyH1E5ZWuoCcuWJa9tyO1lcbaaBJA/5mS3mJkrTMj3WX1FOWc0nTHgGFPj8nAacJ6zkG3NfxlSP5L+EU2EzA2bas3gPS+D8nlMfkN6hTKOdu+ObzYjEsEivtRYK0TIh2/5t4j5AU2MsmZ2X4iZvLGSti0F0r+Oo5FsOfj+AZCwDMDoxq+eFVBNo8wnvh5WZJHJo7JmUr6F07SZXI0V/MWnphz8Wwm5rHIzs7kCK+zoz0yzQNd1lJgknVVDR0Db/hIfcjZccVA5KhRjIl9hMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B92p04MP/A8Yl8gV1Y5+1sTbFN8RPAa4Oo+q6mvAtOw=;
 b=ETjmy7fHPRN4r1g+wmzBSo01nSNc/4CaWw2EShDb45D1496VyUCtCrOxZsqERRnsQJ1cPW+7ri4dCC1WMp+XXIyLDWBqZZHWpe245/9CNfSn8oU1AVI1Z0032tTY6p3wnvx9v1pySUBc+IJWyW652TvRyHcpxU/VX+RIzaDPVlHY8m63pmSgG2GsWjED0iZ0Cpq+CmURuHtUbUuMI66N9RjhlO5SNqk5wN2PAK0TP+SAXwzs6YKKdcyI9JxsRJSGZ3s8MaWTJYU+IrOI+c3nCGPrEJs45zW4PZ83i0UltlF6q2IlLvcW6VlHbNz2VCeZ+1wGZClcAzatDFgw5HdYUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B92p04MP/A8Yl8gV1Y5+1sTbFN8RPAa4Oo+q6mvAtOw=;
 b=KMHPrdumaoxRBch3BOG7rwudCQz8uUSH/cwGc4kxDb+6LCTmNoXiToRe0eZtWi5kpjAyUM+aMFLRPykGM24hfGYq8yM3U+aPapEKuKxQZnqNGK/E/q2nKDPE0TMioc6tzyzGbiq+1I8Q5s73ajToodj/xBm2cSuUR5q8wnkQm6w=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3149.eurprd04.prod.outlook.com (10.170.229.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Thu, 31 Oct 2019 13:01:31 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 13:01:31 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH] cpufreq: Add user_min/max_freq
Thread-Topic: [PATCH] cpufreq: Add user_min/max_freq
Thread-Index: AQHVj9VhgSJamFWQXUuwZXqKbPPg4A==
Date: Thu, 31 Oct 2019 13:01:31 +0000
Message-ID: <VI1PR04MB702337E37DF8E57A754C1DC5EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <c222deda79ad334ff4edcbd49ddda248685c4ee1.1572395990.git.leonard.crestez@nxp.com>
 <3169109.BFaCN5124U@kreacher>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6693aa8d-8518-4484-f837-08d75e02736f
x-ms-traffictypediagnostic: VI1PR04MB3149:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1PR04MB3149858AD1BDF75CD3201A66EE630@VI1PR04MB3149.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(366004)(346002)(39860400002)(396003)(136003)(376002)(189003)(199004)(53546011)(99286004)(6506007)(102836004)(76176011)(7696005)(8676002)(8936002)(81166006)(26005)(33656002)(81156014)(186003)(229853002)(316002)(71190400001)(71200400001)(54906003)(6436002)(86362001)(66066001)(478600001)(3846002)(6116002)(45080400002)(966005)(5660300002)(6246003)(14454004)(25786009)(7736002)(446003)(91956017)(66946007)(305945005)(74316002)(4326008)(2906002)(52536014)(5024004)(14444005)(256004)(9686003)(7416002)(6306002)(55016002)(486006)(66446008)(44832011)(64756008)(66556008)(66476007)(76116006)(6916009)(476003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3149;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SNdtppzeSEQIaQHZth0z1jHH7hhrVwQL8Juek/lbu1oVSju9COm1QN96wqWC+8l/9yE+0zFBk7HMJNVfvvHn1hVvU/wX2exizeSj2ZUDBcITxA1Se2e1d6w2GyaEdybjt2qBOxGYN8UvKYimyThpKE8NYm4mBvQKwbIJose95NT1ALzHQbWapHsvDzVqP8nGNcDXaNZYTH4+xHRn8MmW8wzP8R0jx0p77VvAkgbenOw2RchHcaOOmdsQI9vFFEwbOUZ/+adw9LRr6NPRzHNLV5AjHPAbUbynuV0rZIdYIhgzVO62GIX2vk7B7BrbWqw8+KlkiGYm9tKE1aWdmP/teqaHafoqx4c3oruDqXebHF7p2XurVWUXaaDHlsIb7hV4M1OAGRzLoLMKhvQJsYun4//GrIyUuphCp2P1CriCA7yESjLvOrLnDUN1qcZbM2gmVzcSrmDRxkoJCjkkPH4HvEhENRyNWhcG43TUEKqIayA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6693aa8d-8518-4484-f837-08d75e02736f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 13:01:31.5021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hOMNoWQ/eTZfL2OkEMFRBWGmBX2MclBwBWRLddJxGvw+MGPIalZ8Rx9t62oUBVTn4YcUIWlnIViRrkdQNIygYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060137_555982_1D0ABA89 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:606 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31.10.2019 12:24, Rafael J. Wysocki wrote:
> On Wednesday, October 30, 2019 1:41:49 AM CET Leonard Crestez wrote:
>> Current values in scaling_min_freq and scaling_max freq can change on
>> the fly due to event such as thermal monitoring.
> 
> Which is intentional.
> 
>> This behavior is confusing for userspace and because once an userspace
>> limit is written to scaling_min/max_freq it is not possible to read it back.
> 
> That can be argued both ways.
> 
> It is also useful to know the effective constraints and arguably the ability
> to read back the values that you have written is mostly needed for debugging
> the code.
> 
> Also arguably, if there are multiple sources of frequency limits in user space,
> there needs to be a user space arbiter deciding on which value to use and in
> that case it needs to store the last value chosen by it anyway.

If an userspace tool needs to temporarily adjust min/max_freq it has no 
way of reliably restoring the old value.

>> Introduce two new user_min/max_freq files which only contain the limits
>> imposed by userspace, without any aggregation.
> 
> I'm not sure how useful that is except for the debugging use case to be honest.
> 
> Do you have any specific use cases beyond debugging in mind?

No. I guess it would be useful for userspace cpufreq daemons but I'm not 
familiar with any. Maybe somebody else could chime in?

Honestly it's not very useful for debugging: what you would want is a 
debugfs files which can enumerate all QoS requests in the system.

>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>> This was motivated by these discussions:
>>
>> * https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F11078475%2F%2322805379&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C9935807314f14a73eb9d08d75dec8695%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637081142759735597&amp;sdata=G0JDLEytUKMCDN2x7ccXmRHBFktPOJBbPsY52A0ppxY%3D&amp;reserved=0
>> * https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F11171817%2F%2322917099&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C9935807314f14a73eb9d08d75dec8695%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637081142759735597&amp;sdata=FLP0%2FoMMubhPMyDt2xTL%2F3xlLfR%2FK9CWIcDA6T14MFw%3D&amp;reserved=0
>>
>> Those threads are about devfreq but same issue applies to cpufreq as
>> well. Let me know if this solution seems reasonable?
>>
>> An alternative would be to make scaling_min/max_freq always read back
>> the configured value and introduce new effective_min/max_freq files for
>> the aggregate values. That might break existing users (though I'm not
>> familiar with any).
>>
>>   Documentation/admin-guide/pm/cpufreq.rst | 27 ++++++++++++++++++------
>>   drivers/cpufreq/cpufreq.c                | 19 +++++++++++++++++
>>   include/linux/pm_qos.h                   |  4 ++++
>>   3 files changed, 44 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/admin-guide/pm/cpufreq.rst b/Documentation/admin-guide/pm/cpufreq.rst
>> index 0c74a7784964..734c01c1040e 100644
>> --- a/Documentation/admin-guide/pm/cpufreq.rst
>> +++ b/Documentation/admin-guide/pm/cpufreq.rst
>> @@ -309,21 +309,36 @@ are the following:
>>   
>>   ``scaling_max_freq``
>>   	Maximum frequency the CPUs belonging to this policy are allowed to be
>>   	running at (in kHz).
>>   
>> -	This attribute is read-write and writing a string representing an
>> -	integer to it will cause a new limit to be set (it must not be lower
>> -	than the value of the ``scaling_min_freq`` attribute).
>> +	This attribute is read-write: writing an integer will set a new limit
>> +	(just like ``user_max_freq``) while reading will show the current
>> +	limit (potentially affected by other system contraints such as thermal
>> +	throttling).
>>   
>>   ``scaling_min_freq``
>>   	Minimum frequency the CPUs belonging to this policy are allowed to be
>>   	running at (in kHz).
>>   
>> -	This attribute is read-write and writing a string representing a
>> -	non-negative integer to it will cause a new limit to be set (it must not
>> -	be higher than the value of the ``scaling_max_freq`` attribute).
>> +	This attribute is read-write: writing an integer will set a new limit
>> +	(just like ``user_min_freq``) while reading will show the current
>> +	limit (potentially affected by other system contraints).
>> +
>> +``user_max_freq``
>> +	Userspace contraint for the maximum frequency the CPUs belonging to
>> +	this policy are allowed to be running at (in kHz).
>> +
>> +	This attribute is read-write: writing an integer will set a new limit
>> +	and reading will show the last limit set by userspace.
> 
> Making these read-write is not useful IMO.  Make them read-only.
> 
>> +
>> +``user_min_freq``
>> +	Userspace contraint for minimum frequency the CPUs belonging to this
>> +	policy are allowed to be running at (in kHz).
>> +
>> +	This attribute is read-write: writing an integer will set a new limit
>> +	and reading will show the last limit set by userspace.
>>   
>>   ``scaling_setspeed``
>>   	This attribute is functional only if the `userspace`_ scaling governor
>>   	is attached to the given policy.
>>   
>> diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
>> index 48a224a6b178..caefed0dac43 100644
>> --- a/drivers/cpufreq/cpufreq.c
>> +++ b/drivers/cpufreq/cpufreq.c
>> @@ -722,13 +722,28 @@ static ssize_t store_##file_name					\
>>   									\
>>   	ret = freq_qos_update_request(policy->object##_freq_req, val);\
>>   	return ret >= 0 ? count : ret;					\
>>   }
>>   
>> +store_one(user_min_freq, min);
>> +store_one(user_max_freq, max);
>>   store_one(scaling_min_freq, min);
>>   store_one(scaling_max_freq, max);
> 
> I don't agree with duplicating functionality like this.

OK. My logic was that a tool which doesn't want to deal with the 
"effective" limits would switch to always reading/writing 
user_min/max_freq if they're present.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
