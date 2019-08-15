Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974AC8F6F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 00:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXlDQLEq4Zg3IcgfeR4wH7E59rOc/27aaLwnZFzd16A=; b=Su+YbohqwnC1fY
	+2ufmE3kEq/WD+Jg7in6//fihav93FLFFzzEDXioZUz84GBMteCQXEmitlc0IodBZ3A+jU8Y/oh1V
	NgORzSUE+lB/XdEjyPeH8lzZKPwkstfdIytksp5Epj8GTVVXhLPv/dl9iljNtA2VkuzEv/Pqn6Rnj
	ns3/+vI6h0DOfkPBWmojeRPQRpRc1z18MMnfbfveenkq9n6p9cqeJKU9crPbmYcKmOduo7e7OUjj2
	P3pnY07633xPiSh+hRAukE1Z5Ae+1qmrvmozFDr278XoFSeaMtg7dNnkkGYbDAs/xeIUo8KkJoUEv
	Iafz0DDaPoVMiKssTWOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyOF1-0004Xg-LM; Thu, 15 Aug 2019 22:29:07 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyOEn-0004X1-GK
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 22:28:55 +0000
Received: from pps.filterd (m0122332.ppops.net [127.0.0.1])
 by mx0a-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7FMQsrX024284; Thu, 15 Aug 2019 23:27:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=eNGkOMmlGAHQ4O+Bd+HCbMMkrJlmJlqVe+wt+fkp6Tg=;
 b=ZKTxSefYzNDdwyp8HlbBjB34sYPYXnFzud8P8VMuzN9LZ6zpN8syxx3r//Z2Rqzvh3xz
 55/Gf3yB/E8mBZoEPUnUG/RgMtSzG2GxIVQ5W62CW2emYNG3IDF+oei6t4vpIGfOWsMT
 WgJaBNgBYf3kZR9Vxaq0IXdP4HIgYjJrBz81kABBm/XOIB1mFzWFhX+TSmpRVLMf6S3g
 SCuFq7LTtCI3P4SHO/MFPYmaG9vkEmugpoD0TcUAdqM3AjAE4L0HqjzbMj06dKa3XxOd
 Syq5fmTRyMocvuOlS8yBPqPH/fRtSd6Vta0RyXDxYqXMrzIPRyXen1nW56BKqEE986y0 Gg== 
Received: from prod-mail-ppoint5 (prod-mail-ppoint5.akamai.com [184.51.33.60]
 (may be forged))
 by mx0a-00190b01.pphosted.com with ESMTP id 2ubf94g83n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 15 Aug 2019 23:27:24 +0100
Received: from pps.filterd (prod-mail-ppoint5.akamai.com [127.0.0.1])
 by prod-mail-ppoint5.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x7FMHbXA024377; Thu, 15 Aug 2019 15:27:22 -0700
Received: from email.msg.corp.akamai.com ([172.27.123.34])
 by prod-mail-ppoint5.akamai.com with ESMTP id 2u9uw9hdyh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 15 Aug 2019 15:27:21 -0700
Received: from USMA1EX-DAG1MB5.msg.corp.akamai.com (172.27.123.105) by
 usma1ex-dag3mb4.msg.corp.akamai.com (172.27.123.56) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Thu, 15 Aug 2019 18:27:21 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) by
 usma1ex-dag1mb5.msg.corp.akamai.com (172.27.123.105) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Thu, 15 Aug 2019 18:27:21 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) by
 usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) with mapi id
 15.00.1473.005; Thu, 15 Aug 2019 18:27:20 -0400
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: RE: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Thread-Topic: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Thread-Index: AQHVTS6ohXVeHma7aEyJ5mLyFs0geab7PiSAgAAMNACAAAEdgP//yqiwgAHfTwD//80DsA==
Date: Thu, 15 Aug 2019 22:27:20 +0000
Message-ID: <930a59730c0d495f8c5acf4f99048e8d@usma1ex-dag1mb6.msg.corp.akamai.com>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org> <20190814185213.GN9280@kernel.org>
 <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
 <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
In-Reply-To: <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.36.150]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-15_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908150210
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-15_10:2019-08-14,2019-08-15 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 lowpriorityscore=0
 adultscore=0 clxscore=1011 malwarescore=0 mlxlogscore=999 phishscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908150212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_152853_557259_DE1366F3 
X-CRM114-Status: GOOD (  31.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Alexey
 Budankov <alexey.budankov@linux.intel.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, James Morris <jmorris@namei.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, August 15, 2019 at 4:17 PM Mathieu Poirier <mathieu.poirier@linaro.org> wrote:
> On Wed, 14 Aug 2019 at 14:02, Lubashev, Igor <ilubashe@akamai.com>
> wrote:
> >
> > > On Wed, August 14, 2019 at 2:52 PM Arnaldo Carvalho de Melo
> <arnaldo.melo@gmail.com> wrote:
> > > Em Wed, Aug 14, 2019 at 03:48:14PM -0300, Arnaldo Carvalho de Melo
> > > escreveu:
> > > > Em Wed, Aug 14, 2019 at 12:04:33PM -0600, Mathieu Poirier escreveu:
> > > > > # echo 0 > /proc/sys/kernel/kptr_restrict # ./tools/perf/perf
> > > > > record -e instructions:k uname
> > > > > perf: Segmentation fault
> > > > > Obtained 10 stack frames.
> > > > > ./tools/perf/perf(sighandler_dump_stack+0x44) [0x55af9e5da5d4]
> > > > > /lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fd31efb6f20]
> > > > > ./tools/perf/perf(perf_event__synthesize_kernel_mmap+0xa7)
> > > > > [0x55af9e590337]
> > > > > ./tools/perf/perf(+0x1cf5be) [0x55af9e50c5be]
> > > > > ./tools/perf/perf(cmd_record+0x1022) [0x55af9e50dff2]
> > > > > ./tools/perf/perf(+0x23f98d) [0x55af9e57c98d]
> > > > > ./tools/perf/perf(+0x23fc9e) [0x55af9e57cc9e]
> > > > > ./tools/perf/perf(main+0x369) [0x55af9e4f6bc9]
> > > > > /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7)
> > > > > [0x7fd31ef99b97]
> > > > > ./tools/perf/perf(_start+0x2a) [0x55af9e4f704a] Segmentation
> > > > > fault
> > > > >
> > > > > I can reproduce this on both x86 and ARM64.
> > > >
> > > > I don't see this with these two csets removed:
> > > >
> > > > 7ff5b5911144 perf symbols: Use CAP_SYSLOG with kptr_restrict
> > > > checks d7604b66102e perf tools: Use CAP_SYS_ADMIN with
> > > > perf_event_paranoid checks
> > > >
> > > > Which were the ones I guessed were related to the problem you
> > > > reported, so they are out of my ongoing perf/core pull request to
> > > > Ingo/Thomas, now trying with these applied and your instructions...

SNIP

> I isolated the problem to libcap-dev - if it is not installed a segmentation fault
> will occur.  Since this set is about using capabilities it is obvious that not
> having it on a system should fail a trace session, but it should not crash it.
> 
> If libcap-dev is not installed function symbol__restricted_filename() will
> return true, which in turn will prevent symbol_name to be set in
> machine__get_running_kernel_start().  That prevents function
> map__set_kallsyms_ref_reloc_sym() from being called in
> machine__create_kernel_maps(), resulting in kmap->ref_reloc_sym being
> NULL in _perf_event__synthesize_kernel_mmap() and a segmentation fault.

Thank you, great find.

> I am not sure how this can be fixed.  I counted a total of 19 instances where
> kmap->ref_reloc_sym->XYZ is called, only 2 of wich care to check if kmap-
> >ref_reloc_sym is valid before proceeding.  As such I must hope that in the
> 17 other cases, kmap->ref_reloc_sym is guaranteed to be valid.  If I am
> correct then all we need is to check for a valid pointer in
> _perf_event__synthesize_kernel_mmap().
> Otherwise it will be a little harder.

I also see 19 instances in 5 files, but by my inspection all cases but one are ok (the code checks for NULL earlier in the function or in a helper function).

The not ok case is __perf_event__synthesize_kermel_mmap(), which simply checks symbol_conf.kptr_restrict.

==== Option 1 =====
Fix __perf_event__synthesize_kermel_mmap().  This probably should be done regardless.

diff --git a/tools/perf/util/event.c b/tools/perf/util/event.c
index f440fdc3e953..b84f5f3c9651 100644
--- a/tools/perf/util/event.c
+++ b/tools/perf/util/event.c
@@ -913,11 +913,13 @@ static int __perf_event__synthesize_kernel_mmap(struct perf_tool *tool,
        int err;
        union perf_event *event;

-       if (symbol_conf.kptr_restrict)
-               return -1;
        if (map == NULL)
                return -1;

+       kmap = map__kmap(map);
+       if (!kmap->ref_reloc_sym)
+               return -1;
+
        /*
         * We should get this from /sys/kernel/sections/.text, but till that is
         * available use this, and after it is use this as a fallback for older
@@ -940,7 +942,6 @@ static int __perf_event__synthesize_kernel_mmap(struct perf_tool *tool,
                event->header.misc = PERF_RECORD_MISC_GUEST_KERNEL;
        }

-       kmap = map__kmap(map);
        size = snprintf(event->mmap.filename, sizeof(event->mmap.filename),
                        "%s%s", machine->mmap_name, kmap->ref_reloc_sym->name) + 1;
        size = PERF_ALIGN(size, sizeof(u64));
--

==== Option 2 =====
Move the new perf_event_paranoid() check from symbol__restricted_filename() to symbol__read_kptr_restrict().
Other than the use above, kptr_restrict is only used for printing warnings.

diff --git a/tools/perf/util/symbol.c b/tools/perf/util/symbol.c
index 7409d2facd5b..035f2e75728c 100644
--- a/tools/perf/util/symbol.c
+++ b/tools/perf/util/symbol.c
@@ -898,11 +898,7 @@ bool symbol__restricted_filename(const char *filename,
 {
        bool restricted = false;

-       /* Per kernel/kallsyms.c:
-        * we also restrict when perf_event_paranoid > 1 w/o CAP_SYSLOG
-        */
-       if (symbol_conf.kptr_restrict ||
-           (perf_event_paranoid() > 1 && !perf_cap__capable(CAP_SYSLOG))) {
+       if (symbol_conf.kptr_restrict) {
                char *r = realpath(filename, NULL);

                if (r != NULL) {
@@ -2209,6 +2205,12 @@ static bool symbol__read_kptr_restrict(void)
                fclose(fp);
        }

+       /* Per kernel/kallsyms.c:
+        * we also restrict when perf_event_paranoid > 1 w/o CAP_SYSLOG
+        */
+       if (perf_event_paranoid() > 1 && !perf_cap__capable(CAP_SYSLOG))
+               value = true;
+
        return value;
 }

--------- And then update the warnings. -----------

diff --git a/tools/perf/builtin-record.c b/tools/perf/builtin-record.c
index f71631f2bcb5..18505d92ff69 100644
--- a/tools/perf/builtin-record.c
+++ b/tools/perf/builtin-record.c
@@ -2372,7 +2372,7 @@ int cmd_record(int argc, const char **argv)
        if (symbol_conf.kptr_restrict && !perf_evlist__exclude_kernel(rec->evlist))
                pr_warning(
 "WARNING: Kernel address maps (/proc/{kallsyms,modules}) are restricted,\n"
-"check /proc/sys/kernel/kptr_restrict.\n\n"
+"check /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.\n\n"
 "Samples in kernel functions may not be resolved if a suitable vmlinux\n"
 "file is not found in the buildid cache or in the vmlinux path.\n\n"
 "Samples in kernel modules won't be resolved at all.\n\n"
diff --git a/tools/perf/builtin-top.c b/tools/perf/builtin-top.c
index 5970723cd55a..29e910fb2d9a 100644
--- a/tools/perf/builtin-top.c
+++ b/tools/perf/builtin-top.c
@@ -770,7 +770,7 @@ static void perf_event__process_sample(struct perf_tool *tool,
                if (!perf_evlist__exclude_kernel(top->session->evlist)) {
                        ui__warning(
 "Kernel address maps (/proc/{kallsyms,modules}) are restricted.\n\n"
-"Check /proc/sys/kernel/kptr_restrict.\n\n"
+"Check /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.\n\n"
 "Kernel%s samples will not be resolved.\n",
                          al.map && map__has_symbols(al.map) ?
                          " modules" : "");
diff --git a/tools/perf/builtin-trace.c b/tools/perf/builtin-trace.c
index bc44ed29e05a..9443b8e05810 100644
--- a/tools/perf/builtin-trace.c
+++ b/tools/perf/builtin-trace.c
@@ -1381,7 +1381,7 @@ static char *trace__machine__resolve_kernel_addr(void *vmachine, unsigned long l

        if (symbol_conf.kptr_restrict) {
                pr_warning("Kernel address maps (/proc/{kallsyms,modules}) are restricted.\n\n"
-                          "Check /proc/sys/kernel/kptr_restrict.\n\n"
+                          "Check /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.\n\n"
                           "Kernel samples will not be resolved.\n");
                machine->kptr_restrict_warned = true;
                return NULL;


- Igor
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
