Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C860E84314
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 06:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTHgNmjSQd1zC3POGDNK4KnxNRITcQaaDAOHwB7GL1U=; b=GfdOJIwYfgo1aG
	y4iZQoYIEbHbva+/PeQwE8FnwI9sjDc51RtPvUXhpAH0JYagzro1DIoy13/sPCNGb/0fchwFDOWn2
	W+B7h+PM7chIpOBt3v+xBLleQjiV50Un+CT+D3xGrgINkDMQfLVi6oXPBVo7qLKmulsFsKEh8oxrZ
	+XfXKxvSJzK9Vfw2IK1ccOXKCE5Ik9J7vwvWlwPpoT6Wrm6CjObkQoR6LLrqgWJmZz9JqjtBMf21+
	X8xrGEX0DE0SY1PthxLt0JZfMu9oepfiAQumvL+L8Yzo4PenPV53wWKUoSSLSJ9lYs2+TJQnYP1mH
	7A2om9OsvCn88XLQy+BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvD7E-0003gP-OP; Wed, 07 Aug 2019 03:59:56 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvD74-0003g6-Bq
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 03:59:48 +0000
Received: from pps.filterd (m0050095.ppops.net [127.0.0.1])
 by m0050095.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x773vCjJ002913; Wed, 7 Aug 2019 04:58:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=MRls4N2dGzckHsmBjNOt1S9UiLe2EUerWUpvhZxoU7Q=;
 b=ibSrKJOqItB1pi+U+1H/ch/GQ2T45R4byR35stmmVOtxdFiJXfJ4F6oCcHFj4/285YLN
 DZVJ6RI6IwlWKMqAJFYQTRjdtFWI1uinsMqgkG8gYglF+urM4yy/8EC/Ahr/LVLXBo2/
 dTm6mjCYE9P0Xe75juKj2rweaEaq7DkcAtggWXbTKOtTHlF6d+oW5wa697PptUl6Y/UT
 lTeqVKP4I+8u3ZBtJW3SGAPAdk/ffL/4VD9D3tuBfPNupqCAYh67IKe3LBToFxtn5j6c
 NRcR8eH5mg/gq4+LcuoOSWkwwhJp9XapdkjXb48jvMpYOZiJev/LmTFct32yWWl2Z3fR Tg== 
Received: from prod-mail-ppoint7 (prod-mail-ppoint7.akamai.com [96.6.114.121]
 (may be forged))
 by m0050095.ppops.net-00190b01. with ESMTP id 2u51t4hh84-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 04:58:35 +0100
Received: from pps.filterd (prod-mail-ppoint7.akamai.com [127.0.0.1])
 by prod-mail-ppoint7.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x773lAfs002688; Tue, 6 Aug 2019 23:58:34 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.53])
 by prod-mail-ppoint7.akamai.com with ESMTP id 2u55kvh546-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 06 Aug 2019 23:58:34 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) by
 usma1ex-dag1mb4.msg.corp.akamai.com (172.27.123.104) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 6 Aug 2019 23:58:33 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) by
 usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) with mapi id
 15.00.1473.005; Tue, 6 Aug 2019 23:58:33 -0400
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Jiri Olsa
 <jolsa@redhat.com>
Subject: RE: [PATCH 1/3] perf: Add capability-related utilities
Thread-Topic: [PATCH 1/3] perf: Add capability-related utilities
Thread-Index: AQHVMTPGnf3CWkvPCkGRtIeitk962abNV2aAgAJg2ICAACz8AIAfXzFA
Date: Wed, 7 Aug 2019 03:58:33 +0000
Message-ID: <cad08a5b8706443eb43d9c3ec13e1ad0@usma1ex-dag1mb6.msg.corp.akamai.com>
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
x-originating-ip: [172.19.37.52]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-07_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908070037
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-07_01:2019-08-05,2019-08-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 priorityscore=1501
 mlxscore=0 mlxlogscore=999 spamscore=0 clxscore=1015 adultscore=0
 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908070039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_205946_416893_78DBF86D 
X-CRM114-Status: GOOD (  27.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, July 17 at 2019 7:47 PM  Arnaldo Carvalho de Melo wrote:
> Em Wed, Jul 17, 2019 at 06:05:51PM -0300, Arnaldo Carvalho de Melo
> escreveu:
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
> > > >  7 files changed, 47 insertions(+), 1 deletion(-)  create mode
> > > > 100644 tools/perf/util/cap.c  create mode 100644
> > > > tools/perf/util/cap.h
> > > >
> > > > diff --git a/tools/perf/Makefile.config
> > > > b/tools/perf/Makefile.config index 85fbcd265351..21470a50ed39
> > > > 100644
> > > > --- a/tools/perf/Makefile.config
> > > > +++ b/tools/perf/Makefile.config
> > > > @@ -259,7 +259,7 @@ CXXFLAGS += -Wno-strict-aliasing  # adding
> > > > assembler files missing the .GNU-stack linker note.
> > > >  LDFLAGS += -Wl,-z,noexecstack
> > > >
> > > > -EXTLIBS = -lpthread -lrt -lm -ldl
> > > > +EXTLIBS = -lpthread -lrt -lm -ldl -lcap
> > >
> > > I wonder we should detect libcap or it's everywhere.. Arnaldo's
> > > compile test suite might tell
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
> So we need to have a feature test and fail if that is not installed, i.e. libcap
> becomes a hard req for building perf, which I think is reasonable, one more
> shouldn't hurt, right?
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
> 	libpython2.7.so.1.0 => /lib64/libpython2.7.so.1.0
> (0x00007f7be4690000)
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
> 	libbabeltrace.so.1 => /lib64/libbabeltrace.so.1
> (0x00007f7be44ed000)
> 	libpopt.so.0 => /lib64/libpopt.so.0 (0x00007f7be44dd000)
> 	libuuid.so.1 => /lib64/libuuid.so.1 (0x00007f7be44d3000)
> 	libgmodule-2.0.so.0 => /lib64/libgmodule-2.0.so.0
> (0x00007f7be44cd000)
> 	libglib-2.0.so.0 => /lib64/libglib-2.0.so.0 (0x00007f7be43a9000)
> 	libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f7be4335000)
> [acme@quaco perf]$
> 
> ;-)
> 
> So, please check tools/build/feature/ and check how this is done and add a
> test and the warning in tools/perf/Makefile.config so that we get an error
> message stating that libcap-dev or libcap-devel should be installed.

I have just posted v2 of the series (https://lkml.kernel.org/lkml/cover.1565146171.git.ilubashe@akamai.com).

Instead of making libcap is "hard req", I made it as "soft" one. We can still build a useful tool w/o libcap. It will just have to assume that perf is running with no capabilities, since we cannot query them.

Many thanks for the pointers on how to go about build feature checking.

- Igor

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
