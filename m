Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C25D1B0E35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=96ZL9TUbAL2QmdCGP0vVPSIgzSVGafUfFFcAJfTJmYQ=; b=RiOu5yfzS3AEF+Pp4Ae8E8+2G
	cjIrDfz+tkZSIWkhht2guzaWZBLuRbMg0tXAMvImsPqnPZXUrT/xyYCL25semfZbH1q0JGJKJmM3E
	8tfvSJVGeUttHHu1rKky6Jo7oV4+Nh1DUgmv+y63nLaOeGpmPLsRasHHCio5LcYd4ViTiaFncSge+
	YqJek28QDIjmYrBd5CrgMM4AxgWO1gpEMBH3qATX95exT9raIH5/AF1PYMMHj3wlBUjcfDNhgGqC4
	fiRg3txsIKYY3zUa89TjLQZyOzvt0WaM8aJs/UrpmgaZN5I74CxHYcghASArUOs2BICyUJ3qiXwrc
	sprglnOcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXIa-0005ju-LF; Mon, 20 Apr 2020 14:21:24 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXIO-0005dK-5O
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:21:13 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 192BD9884BA559044F1C;
 Mon, 20 Apr 2020 15:21:05 +0100 (IST)
Received: from [127.0.0.1] (10.47.7.108) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Mon, 20 Apr
 2020 15:21:03 +0100
Subject: Re: [RFC PATCH v2 09/13] perf vendor events: Add JSON metrics for
 imx8mm DDR Perf
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "peterz@infradead.org"
 <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "acme@kernel.org" <acme@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, "will@kernel.org"
 <will@kernel.org>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-10-git-send-email-john.garry@huawei.com>
 <DB8PR04MB67959336311C0CF525BB24ADE6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <3486ee3b-7240-d5a7-5a3c-952133a5e9f0@huawei.com>
 <DB8PR04MB679576DAC6EBFFD13F129488E6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <d54e6c6b-0fe6-0cda-e93e-151ce50d0f66@huawei.com>
Date: Mon, 20 Apr 2020 15:20:29 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB8PR04MB679576DAC6EBFFD13F129488E6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.47.7.108]
X-ClientProxiedBy: lhreml715-chm.china.huawei.com (10.201.108.66) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_072112_354305_AFD15214 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>, Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/04/2020 12:25, Joakim Zhang wrote:
>>> imx8_ddr.write_cycles: 13153 1000495125 1000495125
>>> #           time             counts unit events
>>>        1.000476625              13153      imx8_ddr.write_cycles
>> #    205.5 MB  imx8mm_ddr_write.all
>>> imx8_ddr.write_cycles: 3582 1000681375 1000681375
>>>        2.001167750               3582      imx8_ddr.write_cycles
>> #     56.0 MB  imx8mm_ddr_write.all
>>>
>>> 8QM:
>>> root@imx8qmmek:~# ./perf stat -v -a -I 1000 -M imx8qm_ddr_read.all
>> Note: for this example, I don't know why you didn't use imx8mm_ddr_write.all,
>> as for your 8MM test, so we can compare the same.
> Yes, I use the imx8mm_ddr_write.all, I just re-name the metric, change nothing else.

Well it's hard to even keep up - let alone help -  when you're debugging 
QM support, which is not supported in this series (only MM is), and I 
don't know exactly what is in this JSON who have created (for QM).

For a start, the MM json will use "i.mx8mm" compat, which I figure 
should not work for QM. Please explain this.

Thanks,
John

> 
>>> Using CPUID 0x00000000410fd030
>>> metric expr imx8_ddr.read_cycles * 4 * 4 for i


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
