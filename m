Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D32E1DB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 16:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=tfLZLwSvdpZRtMrmLRcMCeGLD6BPE05PM3DdF1W2nTo=; b=rlcxr3WThWjLtH
	hq0/ExlMwd4EN8A032AnQVi0meWFb0dS1oT4eJu0xlkidXzmyEqmxq9JxmSst3/pMYW6BEsQx2Nf8
	natQhfKZ7ntqFOnUyqJiqRoDWm0m5p1liwUCJpqPIWndWJzPkCmdn6af9myoQ6Ext4nV2lGV3T7XS
	Q04weaTMGwmZul9qAVqPTARRUbjxZTepPI74d0dAbd0nZ3two9JC5H/8e0wa0NJemgNfW+H7cyxUZ
	YBHkZ1HetNZ/dDal6ogMHmLOyJhFOfjuDKdRoqjLos/c6lXoAninY0jGjY1xZf5463E3kBlvhJiI0
	iOjpjPzI6DQafT3zVaMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNHHv-0005Pt-Uy; Wed, 23 Oct 2019 14:07:00 +0000
Received: from mail-eopbgr30079.outbound.protection.outlook.com ([40.107.3.79]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNHHg-0005PD-Ce
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 14:06:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b3GXOFmGqfM0tBDZ7wZ5EPLqlh6l5E8Jn6JjKj4LLwUkDE8agqbo7M1P1Gt/7vexcyYxqb+AXHZe8CFQBGuSJMJVt6Ezo8xTVU3P5V+aatgrAoD5kQcYwOYaaY+4JXJEHERzLtpm28nK6h+nIufnEFtY+E6QMqFizO3zUjdlPc4P9GsvCfgcn+PukQZCjXkyhEgquixvIKoZF2SKeBALiDwoulqEvJTUDFY6g3BEsnOC8Bh60TAuhbdhBDjyZ4Bwf4MUpFfp1nqtAk4QKl7qj4Axbhmhdj/oMEpWVwWM1NYFlrfmjt1Y5LNDiQ6ZLW0jTCCugpjh/nn4BkCAflJb1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rBej+x1VBKMGu0cXYJJanBXdOoMNnawUUbmBpvDmc0w=;
 b=Mpmuo8y5XWOS6q7OyCCgNNUKjEQJs9aFXqdf3jF9dcyldN9JSS77ug7TIs+tK4jyvLnu23x6T/YT8TM2Mt3EcagyMGCMd0US0nHue71EmT5BvWfX4gwE585E4CQQ67q/Np3dg5NkyQE1SN/GzciexOLcDnxi4njA6RgWpyC6R8E9yPK5vl2JRkYgpaI0kbvgaPg9TDeDd4ViKReJ4rYkNFqLSX2kSQgbGUggfEHoErO8iD3Supeb0Pps7x3fWfsWFu3fg2Q1H34iPUvOkLPQQsgCxkAgSrMwcFxPiSExwP/seBWnmKaoKuNuz8UgpSfkbBKueXUzZlF97p6teX/1kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rBej+x1VBKMGu0cXYJJanBXdOoMNnawUUbmBpvDmc0w=;
 b=CGaTjMWesygoYFlSquzn0apY08J5/5zyOKnTh6zLmSx5A2OJcp7XvJbdTuwGt7efpexn9GoNfbNw+8O0eBOss2MQVuatuANezZ1FcqPx3eGNrX5J/ES+y6GslUF1JrZAa+rQezCaoQynEkGCJUdziULHaRd2H6jKVbsXnkCQ6gQ=
Received: from AM7PR04MB7015.eurprd04.prod.outlook.com (52.135.57.19) by
 AM7PR04MB6855.eurprd04.prod.outlook.com (10.141.173.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Wed, 23 Oct 2019 14:06:41 +0000
Received: from AM7PR04MB7015.eurprd04.prod.outlook.com
 ([fe80::3924:7adb:47f2:2ece]) by AM7PR04MB7015.eurprd04.prod.outlook.com
 ([fe80::3924:7adb:47f2:2ece%7]) with mapi id 15.20.2367.022; Wed, 23 Oct 2019
 14:06:40 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH v9 0/8] PM / devfreq: Add dev_pm_qos support
Thread-Topic: [PATCH v9 0/8] PM / devfreq: Add dev_pm_qos support
Thread-Index: AQHVeVcfE84n3PyghE+MA+tYDqGMmw==
Date: Wed, 23 Oct 2019 14:06:40 +0000
Message-ID: <AM7PR04MB70154D3BA0D6402A9C9BE6A0EE6B0@AM7PR04MB7015.eurprd04.prod.outlook.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3ca47231-75ff-4b6e-b226-08d757c23a52
x-ms-traffictypediagnostic: AM7PR04MB6855:|AM7PR04MB6855:
x-ms-exchange-purlcount: 11
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB685517937604CFE06B7AE1F2EE6B0@AM7PR04MB6855.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(346002)(136003)(199004)(189003)(33656002)(256004)(14444005)(6506007)(316002)(102836004)(53546011)(99286004)(446003)(7736002)(26005)(7696005)(76176011)(6116002)(186003)(66066001)(476003)(3846002)(486006)(305945005)(44832011)(71190400001)(2906002)(71200400001)(110136005)(54906003)(966005)(14454004)(6436002)(64756008)(25786009)(76116006)(55016002)(9686003)(229853002)(6306002)(66476007)(91956017)(66446008)(86362001)(66946007)(66556008)(7416002)(74316002)(5660300002)(8936002)(81166006)(478600001)(8676002)(81156014)(52536014)(45080400002)(6246003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR04MB6855;
 H:AM7PR04MB7015.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wSDPiSgVbtJLLlQT/f7yaFvb+rCqHqBY62482lv7PHvHg0fCHWHTcFhhdiyMLeS70woeRVKm/GEvvwIRT+n7MOLTa55paMagoYdjQ4+Cw2dJ3RojqIHUFyqvlpoBt6Zl6DZ53Sow7rANNrPWbxPa0AoZQz6QkvP/vyKzlvgsVS13lb0Z3xVRHMzWcNe1CCxAGEwtRoxU5i0fz8Yc2Da7SUEBSGBBHWl+2UQr4I89147Wvmpj1ASvy330KGZ+ryj0qXHetyOL67luyIO69IwLj+U6p/G1uykTNNf1VHwZqwPcavfPvgIQUb/SdGysEBictmIpYz1zZtx3qNwkTZnUE8xXoQ26X6rfzC7r9UC3Paitj58mvf5I6QCVcenT6Gojck/vj9kDx+rrTefOqfPPIrSfC2vZvKa5b/kyHNI53X1LclAdiCUJ64FRpiXQq+2aZLO/0urreXMtPLMDi06IeNfF8RR37gAbWr9SILaQC3w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ca47231-75ff-4b6e-b226-08d757c23a52
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 14:06:40.8859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yqtio9gMsBFSneTByYGClpmX0vZevIK7Nu/yIyp4c/1zyaH2a+5zMLV9wgtvq7wKDkLsxwk/ispXM3Sc6ZpHgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_070644_583580_A6266F64 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-02 10:25 PM, Leonard Crestez wrote:
> Add dev_pm_qos notifiers to devfreq core in order to support frequency
> limits via dev_pm_qos_add_request.
> 
> Unlike the rest of devfreq the dev_pm_qos frequency is measured in Khz,
> this is consistent with current dev_pm_qos usage for cpufreq and
> allows frequencies above 2Ghz (pm_qos expresses limits as s32).
> 
> Like with cpufreq the handling of min_freq/max_freq is moved to the
> dev_pm_qos mechanism. Constraints from userspace are no longer clamped on
> store, instead all values can be written and we only check against OPPs in a
> new devfreq_get_freq_range function. This is consistent with the design of
> dev_pm_qos.
> 
> Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
> need to take devfreq->lock. Notifier registration takes the same dev_pm_qos_mtx
> so in order to prevent lockdep warnings it must be done outside devfreq->lock.
> Current devfreq_add_device does all initialization under devfreq->lock and that
> needs to be relaxed.
> 
> Some of first patches in the series are bugfixes and cleanups, they could be
> applied separately.

Hello,

This series was posted a few ago and all patches have been 
reviewed/tested-by multiple people. Possible minor hangups:

1) Matthias found it confusing that min/max_freq in sysfs changes 
on-the-fly. This is not a behavior change and I believe a decent 
workaround would be to implement separate user_min/max_freq files from 
which userspace will always read back the contraints it has written.

2) There was an objection to removing devm from two allocs in PATCH 4. I 
believe current solution is acceptable but a possible alternative would 
be to split device_register into device_initialize and device_add: this 
should allow devm sooner.
Link: https://patchwork.kernel.org/patch/11158385/#22902151

Let me know if you think I should implement the options above and resend.

The bigger problem is that DEV_PM_QOS_MIN/MAX_FREQUENCY was removed from 
pm core because only user (cpufreq) was refactored to use a new 
interface on top of cpufreq_policy. Links to discussion:
     https://patchwork.kernel.org/cover/11193021/
 
https://lore.kernel.org/linux-pm/VI1PR04MB7023DF47D046AEADB4E051EBEE680@VI1PR04MB7023.eurprd04.prod.outlook.com/T/#u

I believe there is still significant value in supporting min/max 
frequency requests on a per-target-device basis. This makes much more 
sense for devfreq that for cpufreq because the whole point of devfreq is 
scaling arbitrary independent devices.

> ---
> Changes since v8:
> * Fix incorrectly reading qos max twice in get_freq_range.
> * Make devfreq_notifier_call set scaling_max_freq to ULONG_MAX instead of 0 on
> error. This avoids special-casing this in get_freq_range.
> * Add a fix for devfreq_notifier_call returning -errno.
> * Replace S32_MAX with PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE. This seems cleaner
> and avoids overflow when multiplying S32_MAX with 1000 on 32bit platforms. It
> overflowed to 0xfffffc18 hz so it was mostly safe anyway.
> * Warn when encountering errors on cleanup (but continue).
> * Incorporate other smaller comment and printk adjustments from review.
> Link to v8:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11158383%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Ca6b53046361642d0fd5708d7476e40e4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637056411174276846&amp;sdata=YKKW1RJl1YArhtjlA859DeRxys4d4iiB%2FQIz3Nl8OtU%3D&amp;reserved=0
> 
> Changes since v7:
> * Only #define HZ_PER_KHZ in patch where it's used.
> * Drop devfreq_ prefix for some internal functions.
> * Improve qos update error message.
> * Remove some unnecessary comments.
> * Collect reviews
> Link to v7: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11157649%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Ca6b53046361642d0fd5708d7476e40e4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637056411174276846&amp;sdata=0s6mH192c3dvDlfrFEVdqdMqoFRM4QJiLZiRg4c89nQ%3D&amp;reserved=0
> 
> Changes since v6:
> * Don't return errno from devfreq_qos_notifier_call, return NOTIFY_DONE
> and print the error.
> * More spelling and punctuation nits
> Link to v6: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11157201%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Ca6b53046361642d0fd5708d7476e40e4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637056411174276846&amp;sdata=6hcaCgESymHhCk5UbFC182FrgFVdJdDoorAJhZXKuTg%3D&amp;reserved=0
> 
> Changes since v5:
> * Drop patches which are not strictly related to PM QoS.
> * Add a comment explaining why devfreq_add_device needs two cleanup paths.
> * Remove {} for single line.
> * Rename {min,max}_freq_req to user_{min,max}_freq_req
> * Collect reviews
> Link to v5: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11149497%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Ca6b53046361642d0fd5708d7476e40e4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637056411174276846&amp;sdata=oDuaTI7bpOlCEs9mFRgY5eUvGX%2FtpP6m0U5t4SYNKaw%3D&amp;reserved=0
> 
> Changes since v4:
> * Move more devfreq_add_device init ahead of device_register.
> * Make devfreq_dev_release cleanup devices not yet in devfreq_list. This is
> simpler than previous attempt to add to devfreq_list sonner.
> * Take devfreq->lock in trans_stat_show
> * Register dev_pm_opp notifier on devfreq parent dev (which has OPPs)
> Link to v4: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11114657%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Ca6b53046361642d0fd5708d7476e40e4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637056411174276846&amp;sdata=ItIVLxJZVOpO2XL2MBqONWLQ1lHFu2gA7GC1yb%2BQgEE%3D&amp;reserved=0
> 
> Changes since v3:
> * Cleanup locking and error-handling in devfreq_add_device
> * Register notifiers after device registration but before governor start
> * Keep the initialization of min_req/max_req ahead of device_register
> because it's used for sysfs handling
> * Use HZ_PER_KHZ instead of 1000
> * Add kernel-doc comments
> * Move OPP notifier to core
> Link to v3: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11104061%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Ca6b53046361642d0fd5708d7476e40e4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637056411174276846&amp;sdata=unedjnBbjVtifB8koQ0B8eOjqwCnnAeqHGI8QYuH%2Fv4%3D&amp;reserved=0
> 
> Changes since v2:
> * Handle sysfs via dev_pm_qos (in separate patch)
> * Add locking to {min,max}_freq_show
> * Fix checkpatch issues (long lines etc)
> Link to v2: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F11084279%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Ca6b53046361642d0fd5708d7476e40e4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637056411174276846&amp;sdata=boHOmdwyUhKlmk7F3X8oYbLq1MvR4dQWlF14I0AXXes%3D&amp;reserved=0
> 
> Changes since v1:
> * Add doxygen comments for min_nb/max_nb
> * Remove notifiers on error/cleanup paths. Keep gotos simple by relying on
> dev_pm_qos_remove_notifier ignoring notifiers which were not added.
> Link to v1: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F11078475%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Ca6b53046361642d0fd5708d7476e40e4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637056411174276846&amp;sdata=DZlQAKLqQc4Q46a7v%2FtEBexsp1jDSLB8yuZcLXPEHl4%3D&amp;reserved=0
> 
> Leonard Crestez (8):
>    PM / devfreq: Don't fail devfreq_dev_release if not in list
>    PM / devfreq: Fix devfreq_notifier_call returning errno
>    PM / devfreq: Set scaling_max_freq to max on OPP notifier error
>    PM / devfreq: Move more initialization before registration
>    PM / devfreq: Don't take lock in devfreq_add_device
>    PM / devfreq: Introduce get_freq_range helper
>    PM / devfreq: Add PM QoS support
>    PM / devfreq: Use PM QoS for sysfs min/max_freq
> 
>   drivers/devfreq/devfreq.c | 310 ++++++++++++++++++++++++++------------
>   include/linux/devfreq.h   |  14 +-
>   2 files changed, 224 insertions(+), 100 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
