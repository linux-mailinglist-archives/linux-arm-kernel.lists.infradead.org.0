Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1846AD4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 19:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmkXp/v3VZDf5k9BIXhSOsFvDayMx4yNhSifXqAsSj8=; b=bAReto+SdsmfaI
	/0Kd05VrM/mFHC46RxlM/9c5otkfjzHQUg3/h5n3G6WNB46JEJF/PlJ9ByuMLlMs5a7DlM/dnCPQ4
	fvEazrM85fIDg2EqEBc5WSH+5d9cm1+nSRE4B5l08pLuW6G0SCnPM9fbTJk0tCnm2yzJy28rx11M1
	fJYMkoTUx0Gic0LGcZ3dvg02+EUsFwEHoPGQ65tuqP05Zgo/qQ/iaEQTlpohPJxw0L9J1pYv7lFPT
	MQILBLwZhxsGhn6ogsCHjag9alxqnltkMo850Qs/W+XrYLQKxJ8oblBWHyPeOdwQz3lJi2QEpOaOz
	LCgXskDcaEgL3tb9qaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQq9-0008I0-VA; Tue, 16 Jul 2019 17:02:10 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQpu-0008HT-K6
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 17:01:56 +0000
Received: from pps.filterd (m0050093.ppops.net [127.0.0.1])
 by m0050093.ppops.net-00190b01. (8.16.0.27/8.16.0.27) with SMTP id
 x6GGvuZl014604; Tue, 16 Jul 2019 18:01:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=7gQqMuNYWO+yEB9XDR6J/mWwz7karJedcXgTGFaBj84=;
 b=VX6iIDn8xzLvk/DFMGBI/Pf2vc6gETpH7tFvZLiQHwQUsB480t3s7GxiPHDdH2WRhrtI
 M//hfdwWHFZK+uVA4up2v7UdEvj6lhFXSjxPbF9MR2YTmJQaQ6kYkqpKBCOMgyJSFNR/
 Hp1VdTIA76oe/X+y5ScZ/WCh9JSW59+fj1HFUiTr77WpCaveA/LYyi+MDZpW9vEjM7ng
 UjI8LBvp0omxFp6/XpRlO7LHbTiekQgqz/+i+hPSiYU3zbywu+NfWWcK8B1/GDzgWAp7
 DjR+XGGwXkklw9/LdRCaAy3aLVc5DvmKP+qdF8fLpqwrIAavx//VJxXTfZ3YG9GQXAhk mA== 
Received: from prod-mail-ppoint1 (prod-mail-ppoint1.akamai.com [184.51.33.18]
 (may be forged))
 by m0050093.ppops.net-00190b01. with ESMTP id 2tsa7j1tpj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jul 2019 18:01:29 +0100
Received: from pps.filterd (prod-mail-ppoint1.akamai.com [127.0.0.1])
 by prod-mail-ppoint1.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x6GGknvk006091; Tue, 16 Jul 2019 13:01:28 -0400
Received: from email.msg.corp.akamai.com ([172.27.25.31])
 by prod-mail-ppoint1.akamai.com with ESMTP id 2tqamw5b42-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 16 Jul 2019 13:01:28 -0400
Received: from USTX2EX-DAG1MB5.msg.corp.akamai.com (172.27.27.105) by
 ustx2ex-dag1mb5.msg.corp.akamai.com (172.27.27.105) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 16 Jul 2019 12:01:27 -0500
Received: from USTX2EX-DAG1MB5.msg.corp.akamai.com ([172.27.27.105]) by
 ustx2ex-dag1mb5.msg.corp.akamai.com ([172.27.27.105]) with mapi id
 15.00.1473.004; Tue, 16 Jul 2019 12:01:27 -0500
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Jiri Olsa <jolsa@redhat.com>
Subject: RE: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Thread-Topic: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Thread-Index: AQHVMTPFo1SW8Ha07Ua7MbRsBb5FgabNV64AgAAy/wA=
Date: Tue, 16 Jul 2019 17:01:26 +0000
Message-ID: <cd2b162a59804cdaa7f4de18c3337aa8@ustx2ex-dag1mb5.msg.corp.akamai.com>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
 <1562112605-6235-3-git-send-email-ilubashe@akamai.com>
 <20190716084744.GB22317@krava>
In-Reply-To: <20190716084744.GB22317@krava>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.37.140]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-16_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907160206
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-16_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907160209
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_100154_970184_D56B712C 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Peter
 Zijlstra <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Arnaldo
 Carvalho de Melo <acme@kernel.org>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I could add another patch to the series for that.  Any suggestion for what capability to check for here?

(There is always an alternative to not check for anything and let the kernel refuse to perform actions that the user does not have permissions to perform.)

- Igor

-----Original Message-----
From: Jiri Olsa <jolsa@redhat.com> 
Sent: Tuesday, July 16, 2019 4:48 AM
Subject: Re: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid checks

On Tue, Jul 02, 2019 at 08:10:04PM -0400, Igor Lubashev wrote:
> The kernel is using CAP_SYS_ADMIN instead of euid==0 to override
> perf_event_paranoid check. Make perf do the same.

I see another geteuid check in __cmd_ftrace,
perhaps we should cover this one as well

jirka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
