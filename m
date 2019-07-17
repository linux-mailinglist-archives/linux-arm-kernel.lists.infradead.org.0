Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2456C109
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 20:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKN/vPzYVXQrufQ2Xh9oh656DXHC08ihhfJxgUi3g74=; b=dpw/VY/T3AE3An
	lLT4XRW2uY3ZkYbsZsTgXsIwjU4eQH/spEa5ecD4HMxCDDeiqW4u+ZEXXYysWRbDCuARJ8bik9q3Z
	h3RIg752P2vdFH9H3y31WzG6SBby598G1rtGcTUnLXSmOO+xvpmJ5euoPF7fAD8x34a8YfisCWR/L
	czOpMKAjFfzTfoOaK61seu4fdsAABxYDLcqzYeLUKD/4Hu9BCCy18PP0eoOM/cU46pYkMXv8fqssk
	0e7UBcNBdQvnnsePni2kuEkb+YJY8XkU7rTsjjM+z3OWY6gDyKwYb2S+qqiXIlWXNSMfou6HePt4z
	UGTr4l/4dIzOjxrx8njQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnolD-0001ir-Rw; Wed, 17 Jul 2019 18:34:40 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnokv-0001hu-39
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 18:34:23 +0000
Received: from pps.filterd (m0050102.ppops.net [127.0.0.1])
 by m0050102.ppops.net-00190b01. (8.16.0.27/8.16.0.27) with SMTP id
 x6HIVgsu011513; Wed, 17 Jul 2019 19:34:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=4qMDk6GdYd6oIMIaSO7765g7DBUTGEZb/qDIz2MM7vk=;
 b=Yft2/SB4FXRQYN7RXB5BW8+5XnkS7SWdGWNDJlJGxJgTj7ukxHbNo5d9WCWfNUwGVFFu
 hOHfJpvcyolcPGCuJN6HKluOZvJYusxn3m51LdGbE5wnOx8lLmDTiD+jWpE83ZE+l8Lh
 FwN+hlI7kUBNU4Eqmka2iYoZASxpxvxSlDWfCShA5VTY1omSiUlBlytFXiUTZ7qiKh0D
 lJolQOpSaR0w6OkxeTh+BnIy8plA8JOPUq6XdcFnMYUSVmOHt/Ss0kbtHncz/FlC68Bb
 I1h0ktAphNHtePAUZvu2/F5364awrjhkTPZe8jB6dsiZsYKhwtPXo+POjndweL/87hoK wQ== 
Received: from prod-mail-ppoint8 (prod-mail-ppoint8.akamai.com [96.6.114.122]
 (may be forged))
 by m0050102.ppops.net-00190b01. with ESMTP id 2try9prxa3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Jul 2019 19:34:02 +0100
Received: from pps.filterd (prod-mail-ppoint8.akamai.com [127.0.0.1])
 by prod-mail-ppoint8.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x6HIWIYD001630; Wed, 17 Jul 2019 14:34:01 -0400
Received: from email.msg.corp.akamai.com ([172.27.27.21])
 by prod-mail-ppoint8.akamai.com with ESMTP id 2tqamwnfd5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 17 Jul 2019 14:33:59 -0400
Received: from USTX2EX-DAG1MB5.msg.corp.akamai.com (172.27.27.105) by
 ustx2ex-dag1mb1.msg.corp.akamai.com (172.27.27.101) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Wed, 17 Jul 2019 13:33:58 -0500
Received: from USTX2EX-DAG1MB5.msg.corp.akamai.com ([172.27.27.105]) by
 ustx2ex-dag1mb5.msg.corp.akamai.com ([172.27.27.105]) with mapi id
 15.00.1473.004; Wed, 17 Jul 2019 13:33:58 -0500
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Jiri Olsa <jolsa@redhat.com>
Subject: RE: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Thread-Topic: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Thread-Index: AQHVMTPFo1SW8Ha07Ua7MbRsBb5FgabNV64AgAAy/wCAAUQogIAAamrQ
Date: Wed, 17 Jul 2019 18:33:58 +0000
Message-ID: <4693ccba52114913afaafd498ae284de@ustx2ex-dag1mb5.msg.corp.akamai.com>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
 <1562112605-6235-3-git-send-email-ilubashe@akamai.com>
 <20190716084744.GB22317@krava>
 <cd2b162a59804cdaa7f4de18c3337aa8@ustx2ex-dag1mb5.msg.corp.akamai.com>
 <20190717071027.GG28722@krava>
In-Reply-To: <20190717071027.GG28722@krava>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.33.211]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-17_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907170210
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-17_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907170210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_113421_512750_50215208 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9005:57f:0:0:0:1 listed in] [list.dnswl.org]
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

> On Wednesday, July 17, 2019 3:10 AM Jiri Olsa wrote:
> On Tue, Jul 16, 2019 at 05:01:26PM +0000, Lubashev, Igor wrote:
> > I could add another patch to the series for that.  Any suggestion for what
> capability to check for here?
> 
> it's:
> 
> 	if (geteuid() != 0) {
> 		pr_err("ftrace only works for root!\n");
> 		return -1
> 	}
> 
> so I think check for CAP_SYS_ADMIN should be fine in here

Thanks.  Added the [PATCH 4/3] to this series (https://lore.kernel.org/lkml/1563387359-27694-1-git-send-email-ilubashe@akamai.com/).
Let me know if you'd rather I reroll a V2 of this series.

- Igor


> 
> jirka
> 
> >
> > (There is always an alternative to not check for anything and let the kernel
> refuse to perform actions that the user does not have permissions to perform.)
> >
> > - Igor
> >
> > -----Original Message-----
> > From: Jiri Olsa <jolsa@redhat.com>
> > Sent: Tuesday, July 16, 2019 4:48 AM
> > Subject: Re: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
> checks
> >
> > On Tue, Jul 02, 2019 at 08:10:04PM -0400, Igor Lubashev wrote:
> > > The kernel is using CAP_SYS_ADMIN instead of euid==0 to override
> > > perf_event_paranoid check. Make perf do the same.
> >
> > I see another geteuid check in __cmd_ftrace,
> > perhaps we should cover this one as well
> >
> > jirka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
