Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1026D62F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 23:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKRi9tp+wS5UHmwygfkg8nTt2eZ6H6flsmkZEPMHw6Q=; b=YjuOHNz0A3CPMG
	yKYbWieJSR2ZIMU2XU/QYPm2O5n2fDyspBxfpQsSgT9jqyrKJiaKbC0Og78AGmF8vlnq9TgfhAdbD
	BU+MyRL6IZsAFMPUDLM7Qsa1rxkkPgTFHhjtPdOccSguXpLnmcI+j0cfhI5TU442PaoJxW/AOqKHF
	Hz6yM5WCCmeV0iS3zOihaG2pMxCNyh8zofq9rSCU6v4TkdBS5qyAhCWfD0XPuC5OLjOY44Z7MDlP5
	mRkcHaz/hm154GJIqxzdiQjwKsV6ulRhLBDywYMgqv4vXsxfTtH/yi4jqCz5ToSREXveT32AxAgPR
	0zaLlQVISwo9lf9vTV7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoDX4-00031T-39; Thu, 18 Jul 2019 21:01:42 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoDWI-00030f-Gi
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 21:00:56 +0000
Received: from pps.filterd (m0050102.ppops.net [127.0.0.1])
 by m0050102.ppops.net-00190b01. (8.16.0.27/8.16.0.27) with SMTP id
 x6IKv4VE021447; Thu, 18 Jul 2019 22:00:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=+ssnnKo+Ny4lHnJ+V/hmqcMG7PzlxwxGyfupOGxa7us=;
 b=EewxxdlHBeCSDA0B0D5Gbk15s6frmPcSPKDE4QlgAikU5wYCdqTRVbYIN8WB49kNOqXb
 07uQW/fIcIBdlj16olLbLu4DGKGqY+Aa++hcY1bndJIdj+uf/jv09BqmSrqBgffmtKF5
 /WTQJ14aSjRDx7UQDzcvCQNsgLCoSjtDm1RjGL5Ka+3iQYbYPr1FruwgrLh2AVRkYDcQ
 xf2ru40YtZk0gfvicTR+rmglM6vR5X8ONGVN6mC+rZJ0FWFB7eSdqZ9h961ZJjnqhq3s
 j6+ffDBCH/VZ02p0stNjkEOc6fe/K21yViFhAL5mp6R4Vt4ID2chzdJ0Tdt5t/+8Lqf6 iA== 
Received: from prod-mail-ppoint7 (prod-mail-ppoint7.akamai.com [96.6.114.121]
 (may be forged))
 by m0050102.ppops.net-00190b01. with ESMTP id 2ttadjvje7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jul 2019 22:00:31 +0100
Received: from pps.filterd (prod-mail-ppoint7.akamai.com [127.0.0.1])
 by prod-mail-ppoint7.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x6IKlF9R011038; Thu, 18 Jul 2019 17:00:30 -0400
Received: from email.msg.corp.akamai.com ([172.27.27.25])
 by prod-mail-ppoint7.akamai.com with ESMTP id 2tqamxcxb2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 18 Jul 2019 17:00:30 -0400
Received: from USTX2EX-DAG1MB5.msg.corp.akamai.com (172.27.27.105) by
 ustx2ex-dag1mb1.msg.corp.akamai.com (172.27.27.101) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Thu, 18 Jul 2019 16:00:29 -0500
Received: from USTX2EX-DAG1MB5.msg.corp.akamai.com ([172.27.27.105]) by
 ustx2ex-dag1mb5.msg.corp.akamai.com ([172.27.27.105]) with mapi id
 15.00.1473.004; Thu, 18 Jul 2019 16:00:29 -0500
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Jiri Olsa
 <jolsa@redhat.com>
Subject: RE: [PATCH 1/3] perf: Add capability-related utilities
Thread-Topic: [PATCH 1/3] perf: Add capability-related utilities
Thread-Index: AQHVMTPGnf3CWkvPCkGRtIeitk962abNV2aAgAJg2ICAACz8AIABDlOg
Date: Thu, 18 Jul 2019 21:00:29 +0000
Message-ID: <61675e9064e14ee9ab8d3d25912a917a@ustx2ex-dag1mb5.msg.corp.akamai.com>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
 <1562112605-6235-2-git-send-email-ilubashe@akamai.com>
 <20190716084643.GA22317@krava> <20190717210551.GI3624@kernel.org>
 <20190717234652.GJ3624@kernel.org>
In-Reply-To: <20190717234652.GJ3624@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.37.145]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-18_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907180214
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-18_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907180215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_140054_722239_4D29D28C 
X-CRM114-Status: GOOD (  28.25  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu
 Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for the suggestion!  I'll try to add a test for libcap to the patch series as v2 of the series.  Probably not next week, though (IETF week).

- Igor

> On Wed, July 17, 2019 7:47 PM Arnaldo Carvalho de Melo wrote:
> 
> Em Wed, Jul 17, 2019 at 06:05:51PM -0300, Arnaldo Carvalho de Melo escreveu:
> > Em Tue, Jul 16, 2019 at 10:46:43AM +0200, Jiri Olsa escreveu:
> > > On Tue, Jul 02, 2019 at 08:10:03PM -0400, Igor Lubashev wrote:
> > > > Add utilities to help checking capabilities of the running process.
> > > > Make perf link with libcap.
> > > >
> > > > Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> > > > ---
> > > >  tools/perf/Makefile.config         |  2 +-
> > > >  tools/perf/util/Build              |  1 +
> > > >  tools/perf/util/cap.c              | 24 ++++++++++++++++++++++++
> > > >  tools/perf/util/cap.h              | 10 ++++++++++
> > > >  tools/perf/util/event.h            |  1 +
> > > >  tools/perf/util/python-ext-sources |  1 +
> > > >  tools/perf/util/util.c             |  9 +++++++++
> > > >  7 files changed, 47 insertions(+), 1 deletion(-)
> > > >  create mode 100644 tools/perf/util/cap.c
> > > >  create mode 100644 tools/perf/util/cap.h
> > > >
> > > > diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> > > > index 85fbcd265351..21470a50ed39 100644
> > > > --- a/tools/perf/Makefile.config
> > > > +++ b/tools/perf/Makefile.config
> > > > @@ -259,7 +259,7 @@ CXXFLAGS += -Wno-strict-aliasing
> > > >  # adding assembler files missing the .GNU-stack linker note.
> > > >  LDFLAGS += -Wl,-z,noexecstack
> > > >
> > > > -EXTLIBS = -lpthread -lrt -lm -ldl
> > > > +EXTLIBS = -lpthread -lrt -lm -ldl -lcap
> > >
> > > I wonder we should detect libcap or it's everywhere.. Arnaldo's compile test
> suite might tell
> >
> > I'll add this tentatively and try to build it in my test suite.
> 
> So, not even in my notebook this worked straight away:
> 
>   CC       /tmp/build/perf/util/cap.o
>   CC       /tmp/build/perf/util/config.o
> In file included from util/cap.c:5:
> util/cap.h:6:10: fatal error: sys/capability.h: No such file or directory
>     6 | #include <sys/capability.h>
>       |          ^~~~~~~~~~~~~~~~~~
> compilation terminated.
> mv: cannot stat '/tmp/build/perf/util/.cap.o.tmp': No such file or directory
> 
> 
> I had to first do:
> 
> dnf install libcap-devel
> 
> So we need to have a feature test and fail if that is not installed,
> i.e. libcap becomes a hard req for building perf, which I think is
> reasonable, one more shouldn't hurt, right?
> 
> With all the features enabled:
> 
> [acme@quaco perf]$ ldd ~/bin/perf
> 	linux-vdso.so.1 (0x00007ffe7278a000)
> 	libunwind-x86_64.so.8 => /lib64/libunwind-x86_64.so.8
> (0x00007f7be52f1000)
> 	libunwind.so.8 => /lib64/libunwind.so.8 (0x00007f7be52d7000)
> 	liblzma.so.5 => /lib64/liblzma.so.5 (0x00007f7be52ae000)
> 	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f7be528d000)
> 	librt.so.1 => /lib64/librt.so.1 (0x00007f7be5283000)
> 	libm.so.6 => /lib64/libm.so.6 (0x00007f7be513d000)
> 	libdl.so.2 => /lib64/libdl.so.2 (0x00007f7be5135000)
> 	libcap.so.2 => /lib64/libcap.so.2 (0x00007f7be512e000)
> 	libelf.so.1 => /lib64/libelf.so.1 (0x00007f7be5113000)
> 	libdw.so.1 => /lib64/libdw.so.1 (0x00007f7be50c0000)
> 	libslang.so.2 => /lib64/libslang.so.2 (0x00007f7be4de8000)
> 	libperl.so.5.28 => /lib64/libperl.so.5.28 (0x00007f7be4ac2000)
> 	libc.so.6 => /lib64/libc.so.6 (0x00007f7be48fa000)
> 	libpython2.7.so.1.0 => /lib64/libpython2.7.so.1.0 (0x00007f7be4690000)
> 	libz.so.1 => /lib64/libz.so.1 (0x00007f7be4676000)
> 	libzstd.so.1 => /lib64/libzstd.so.1 (0x00007f7be45d1000)
> 	libnuma.so.1 => /lib64/libnuma.so.1 (0x00007f7be45c3000)
> 	libbabeltrace-ctf.so.1 => /lib64/libbabeltrace-ctf.so.1
> (0x00007f7be456d000)
> 	libgcc_s.so.1 => /lib64/libgcc_s.so.1 (0x00007f7be4551000)
> 	/lib64/ld-linux-x86-64.so.2 (0x00007f7be5331000)
> 	libbz2.so.1 => /lib64/libbz2.so.1 (0x00007f7be453d000)
> 	libcrypt.so.2 => /lib64/libcrypt.so.2 (0x00007f7be4502000)
> 	libutil.so.1 => /lib64/libutil.so.1 (0x00007f7be44fd000)
> 	libbabeltrace.so.1 => /lib64/libbabeltrace.so.1 (0x00007f7be44ed000)
> 	libpopt.so.0 => /lib64/libpopt.so.0 (0x00007f7be44dd000)
> 	libuuid.so.1 => /lib64/libuuid.so.1 (0x00007f7be44d3000)
> 	libgmodule-2.0.so.0 => /lib64/libgmodule-2.0.so.0 (0x00007f7be44cd000)
> 	libglib-2.0.so.0 => /lib64/libglib-2.0.so.0 (0x00007f7be43a9000)
> 	libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f7be4335000)
> [acme@quaco perf]$
> 
> ;-)
> 
> So, please check tools/build/feature/ and check how this is done and add
> a test and the warning in tools/perf/Makefile.config so that we get an
> error message stating that libcap-dev or libcap-devel should be
> installed.
> 
> I'll do it if there is any difficulty, just not right now as I'm busy
> and want to get a pull req out of the door.
> 
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
