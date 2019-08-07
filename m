Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9A084F3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIEzRkYvPjyoDirJFASa1wI5sIWnztT66d2Dmks0754=; b=Wgu7VyXqOVqM7M
	/iXRDjaHWnzZsEwRo7JkzbsPAkrmVxFk7Rt+HJAFrGNl2pytFkpwB3JtIMepVwfsurEj0doOKR2Z0
	KFb/c7WBHejYbPPp+AATx2dB+NsoYa6S4FXYgBDqL2S0fqqtXU4BMOdDTHZeAB/w4lFoi/FDxnMl3
	L1Hx+rzrpYRmcmY12w+V4+9OKlzCKHvjThQs9anCSA5yKm5w323EWNQM4m7iM/XoMN269LcMhzCGX
	O6iHj7a+DJyy5iFl54mn8wJLCCIjPfCjZPvcp4twd9CGcqKumidVeQZl9gTeWqmw3+XWDzVHNpwXN
	zTnlGxQEXC+l5lwYAfOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNNM-00088b-Ut; Wed, 07 Aug 2019 14:57:17 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNN8-00088G-KZ
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:57:04 +0000
Received: from pps.filterd (m0122330.ppops.net [127.0.0.1])
 by mx0b-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x77ErAVF027634; Wed, 7 Aug 2019 15:56:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=WxrDZfrPFE+RvJaiBPECJUVgzxPWUEvRSCLWbbN/jLk=;
 b=T48ll+CdytcVMYVJht4s5V/Qo58ccg6Saf61fFUqb7kioyMPCy7QTcrFwn2J51JV5HKM
 b21otkH0kD9m18HPCv/AtH8Qo04YnRUNj5FJ1Ep9iSFnB4t3xSaq66pPSpmvJ34O2dLI
 3by81euhHtYjvYhqe4TOQ/JIysuCRHSnxtGK5WF53eTwtVEkGVwA+zvtU7HMi6FKV2iI
 CUAK8DobFVgnrFyxdBUnNY1SlBFeczgjMeBmiUsmcs7oI8eI6xhDi3z18o9SdiGA4qB7
 754UjvgtIDgU4TU0ZmlzOlLBoX9YWD2zjyT85Vlr4jLEQB3znHoGPFrrZiwx4XvRg88U jg== 
Received: from prod-mail-ppoint6 (prod-mail-ppoint6.akamai.com [184.51.33.61]
 (may be forged))
 by mx0b-00190b01.pphosted.com with ESMTP id 2u51wv18qb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 15:56:50 +0100
Received: from pps.filterd (prod-mail-ppoint6.akamai.com [127.0.0.1])
 by prod-mail-ppoint6.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x77ElwIP032212; Wed, 7 Aug 2019 10:56:50 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.33])
 by prod-mail-ppoint6.akamai.com with ESMTP id 2u55kw7b2a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 10:56:50 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) by
 usma1ex-dag1mb3.msg.corp.akamai.com (172.27.123.103) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Wed, 7 Aug 2019 10:56:49 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) by
 usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) with mapi id
 15.00.1473.005; Wed, 7 Aug 2019 10:56:49 -0400
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Jiri Olsa <jolsa@redhat.com>, Alexey Budankov
 <alexey.budankov@linux.intel.com>
Subject: RE: [PATCH v2 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Thread-Topic: [PATCH v2 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Thread-Index: AQHVTNFKCXp+3LpVfE2FoOm2P/P8Y6bv1MsA///vEXA=
Date: Wed, 7 Aug 2019 14:56:49 +0000
Message-ID: <dac01704fb6847ebbc08bea4115d52df@usma1ex-dag1mb6.msg.corp.akamai.com>
References: <cover.1565146171.git.ilubashe@akamai.com>
 <70ce92d9c252bbafa883a6b5b3c96cf10d1a5b31.1565146171.git.ilubashe@akamai.com>
 <20190807114602.GB9605@krava>
In-Reply-To: <20190807114602.GB9605@krava>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.34.37]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-07_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908070158
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-07_03:2019-08-07,2019-08-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 bulkscore=0
 mlxlogscore=999 priorityscore=1501 adultscore=0 lowpriorityscore=0
 mlxscore=0 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1908070159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_075702_994893_F113AE10 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9005:57f:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Arnaldo
 Carvalho de Melo <acme@kernel.org>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ingo
 Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, August 7 at 2019 7:46 AM Jiri Olsa wrote:
> On Tue, Aug 06, 2019 at 11:35:55PM -0400, Igor Lubashev wrote:
> > The kernel is using CAP_SYS_ADMIN instead of euid==0 to override
> > perf_event_paranoid check. Make perf do the same.
> >
> > Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> > ---
> >  tools/perf/arch/arm/util/cs-etm.c    | 3 ++-
> >  tools/perf/arch/arm64/util/arm-spe.c | 4 ++--
> > tools/perf/arch/x86/util/intel-bts.c | 3 ++-
> > tools/perf/arch/x86/util/intel-pt.c  | 2 +-
> >  tools/perf/util/evsel.c              | 2 +-
> >  5 files changed, 8 insertions(+), 6 deletions(-)
> >
SNIP
> > --- a/tools/perf/arch/arm64/util/arm-spe.c
> > +++ b/tools/perf/arch/arm64/util/arm-spe.c
> > @@ -12,6 +12,7 @@
> >  #include <time.h>
> >
> >  #include "../../util/cpumap.h"
> > +#include "../../util/event.h"
> >  #include "../../util/evsel.h"
> >  #include "../../util/evlist.h"
> >  #include "../../util/session.h"
> > @@ -65,8 +66,7 @@ static int arm_spe_recording_options(struct
> auxtrace_record *itr,
> >  	struct arm_spe_recording *sper =
> >  			container_of(itr, struct arm_spe_recording, itr);
> >  	struct perf_pmu *arm_spe_pmu = sper->arm_spe_pmu;
> > -	struct evsel *evsel, *arm_spe_evsel = NULL;
> 
> wouldn't this removal break the compilation on arm?
> 
> jirka
> 
> > -	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
> > +	bool privileged = perf_event_paranoid_check(-1);
> >  	struct evsel *tracking_evsel;
> >  	int err;
> 
> SNIP

Mea culpa!  (An artifact of a bad rebase.)  Just learned to cross-compile.  Thanks, Alexey and Jirka!

The v3 with the fix has been posted (https://lkml.kernel.org/lkml/cover.1565188228.git.ilubashe@akamai.com).

- Igor

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
