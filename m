Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0814157F9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:23:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m7bH867vgBB7W3da3itJhB0UHGuG3d0rks5/vCe6ijM=; b=XeNi1ueujhUafUC0lYOe4nzQp
	H0tJ9KoBmu48kyz9waQ5MpWpPSM0Q6LlM72SR8PCXd0t4nJEGrapm9CUS3dzDd6381z+TEQlOmqrb
	dsZaWglIquwpZGHYGznuh2VqG3yANeUmVA6XM52N5Cpc4SSb2jz+p5fNTO7L/5b18cM1dmi9dAG2+
	QxHvWWxRbWTeX6QFFzWyiKTfuEpldZhsfxpK7gCksZUt5oi2vEGI1ZwsJ2R8y7KeIE6D/AtDIGeYr
	raWS0Cj3bJwUaawejzz0DbFgY6wE+703xdF0kHV6/y3rgpbrJ4DUCcg91yBaXkLDpieorbClPWRAd
	Odqn4SN9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Bq1-0004i1-HO; Mon, 10 Feb 2020 16:23:09 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Bps-0004hi-Ij
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:23:02 +0000
Received: from lhreml701-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 799985B6A78DA43BBA1D;
 Mon, 10 Feb 2020 16:22:58 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml701-cah.china.huawei.com (10.201.108.42) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 10 Feb 2020 16:22:58 +0000
Received: from [127.0.0.1] (10.202.227.179) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 10 Feb
 2020 16:22:57 +0000
Subject: Re: [PATCH RFC 5/7] perf pmu: Support matching by sysid
To: Jiri Olsa <jolsa@redhat.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-6-git-send-email-john.garry@huawei.com>
 <20200210120759.GG1907700@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <63799909-067b-e5f4-dcf1-9ba1ec145348@huawei.com>
Date: Mon, 10 Feb 2020 16:22:56 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200210120759.GG1907700@krava>
Content-Language: en-US
X-Originating-IP: [10.202.227.179]
X-ClientProxiedBy: lhreml736-chm.china.huawei.com (10.201.108.87) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_082300_764792_7B3CC3A6 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi jirka,

> 
>> +		fclose(file);
>> +		pr_debug("gets failed for file %s\n", path);
>> +		free(buf);
>> +		return NULL;
>> +	}
>> +	fclose(file);
>> +
>> +	/* Remove any whitespace, this could be from ACPI HID */
>> +	s = strlen(buf);
>> +	for (i = 0; i < s; i++) {
>> +		if (buf[i] == ' ') {
>> +			buf[i] = 0;
>> +			break;
>> +		};
>> +	}
>> +
>> +	return buf;
>> +}
>> +

I have another series to add kernel support for a system identifier 
sysfs entry, which I sent after this series:

https://lore.kernel.org/linux-acpi/1580210059-199540-1-git-send-email-john.garry@huawei.com/

It is different to what I am relying on here - it uses a kernel soc 
driver for firmware ACPI PPTT identifier. Progress is somewhat blocked 
at the moment however and I may have to use a different method:

https://lore.kernel.org/linux-acpi/20200128123415.GB36168@bogus/

>> +static char *perf_pmu__getsysid(void)
>> +{
>> +	char *sysid;
>> +	static bool printed;
>> +
>> +	sysid = getenv("PERF_SYSID");
>> +	if (sysid)
>> +		sysid = strdup(sysid);
>> +
>> +	if (!sysid)
>> +		sysid = get_sysid_str();
>> +	if (!sysid)
>> +		return NULL;
>> +
>> +	if (!printed) {
>> +		pr_debug("Using SYSID %s\n", sysid);
>> +		printed = true;
>> +	}
>> +	return sysid;
>> +}
> 
> this part is getting complicated and AFAIK we have no tests for it
> 
> if you could think of any tests that'd be great.. Perhaps we could
> load 'our' json test files and check appropriate events/aliasses
> via in pmu object.. or via parse_events interface.. those test aliases
> would have to be part of perf, but we have tests compiled in anyway

Sorry, I don't fully follow.

Are you suggesting that we could load the specific JSONs tables for a 
system from the host filesystem?

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
