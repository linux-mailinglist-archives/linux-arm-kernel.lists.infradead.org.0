Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190F09DB73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 03:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQzcIj5oU4p/vKXKP6P/6S9331i2jeiIHxB672SIjP0=; b=fYaPzD4SbTV74M
	S0m9EPjwqNaopJ5qz10iS9Bb1N/+MdAwHAiT1M+0t4LRrV4JYBJKyXr3Ib3UfdarAvMU55qR1gVg7
	h+9CDyuyy9+Vv552vmZS3sG8ykuGY6SgoRQv0EJoRKjwYSnIouawidiFLFuVIp5Ryyv457uP+5tT6
	VnoGczDev9dI1GjfTuHKGAWqlB4JrZsek5RkXD77uTDHAw47RviPVra6WsmA9kj2/82D4SYen0cCg
	HkyiTehBdupfVTeqGYykdZlHpYBKYe3EZcoWd5AeTFca/zXVu9Yn2DUumbTPZxxLBwQEgog1DFHlA
	PeLsrny56J18pbKzhGGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2QlH-0001F2-IC; Tue, 27 Aug 2019 01:59:07 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Ql1-0001EX-9U
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 01:58:52 +0000
Received: from pps.filterd (m0122330.ppops.net [127.0.0.1])
 by mx0b-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7R1v64g026922; Tue, 27 Aug 2019 02:58:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=z+bPajNU3NgiGWlepe3Am9VgKE88jtNrKSsMqBenzlo=;
 b=euls1GAhGHFur2O3wBy2nvhiEfpfUW/qshrBY7lBEdRJbI7YKfxbVDVSc38PrPBzISEO
 hBQUU3EEPhQil4etzLoUQtx4AFZtFzx6qLpd6J1d01/lyuixU4lqPtw+1T4fY/TEYdX2
 EsPfa53jx2LCsVYUc4EmhLL34MzuKHNyCSMNSLvmjaOwKzo3Jnd1KAtMKZuuRb2iGhpX
 +bFpvAzBHDurWfUwdYNMEXOwID/fdRD9kzUVjulCDu0d++GQmk7CluQHkRpUDmCAENeH
 oXNBNDB4RrwBB8hwnJABOmxQeyTThk8lzv/4Ycy8ldFUC2FWk6IPxzAL0qt1b65yzwvm zg== 
Received: from prod-mail-ppoint4 (prod-mail-ppoint4.akamai.com [96.6.114.87]
 (may be forged))
 by mx0b-00190b01.pphosted.com with ESMTP id 2ujwd5j3mc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 27 Aug 2019 02:58:37 +0100
Received: from pps.filterd (prod-mail-ppoint4.akamai.com [127.0.0.1])
 by prod-mail-ppoint4.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x7R1lcSj001158; Mon, 26 Aug 2019 21:58:36 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.57])
 by prod-mail-ppoint4.akamai.com with ESMTP id 2uk0k0bgba-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 26 Aug 2019 21:58:36 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) by
 usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 26 Aug 2019 21:58:35 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) by
 usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) with mapi id
 15.00.1473.005; Mon, 26 Aug 2019 21:58:35 -0400
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Mathieu Poirier
 <mathieu.poirier@linaro.org>
Subject: RE: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Thread-Topic: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Thread-Index: AQHVTS6ohXVeHma7aEyJ5mLyFs0geab7PiSAgAAMNACAAAEdgP//yqiwgAHfTwCAABf5AIAF9+gAgAASvOCAAYXjAIAJuzjg
Date: Tue, 27 Aug 2019 01:58:35 +0000
Message-ID: <c647400a6c164bdab2cadfb7c0f1b519@usma1ex-dag1mb6.msg.corp.akamai.com>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org> <20190814185213.GN9280@kernel.org>
 <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
 <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
 <20190815214236.GA3929@kernel.org>
 <CANLsYkyPkcJWmBZzyjGj3vJRgEtuaun7HQjN1=5wcOyTPnfhmQ@mail.gmail.com>
 <3f70f6be3a464ca5b4cf563433933245@usma1ex-dag1mb6.msg.corp.akamai.com>
 <20190820171342.GD3929@kernel.org>
In-Reply-To: <20190820171342.GD3929@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.33.70]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908270017
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-26_08:2019-08-26,2019-08-26 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxscore=0 clxscore=1015 priorityscore=1501 phishscore=0 mlxlogscore=999
 bulkscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908270019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_185851_456275_940E28A6 
X-CRM114-Status: GOOD (  21.32  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Peter
 Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Alexander
 Shishkin <alexander.shishkin@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, August 20, 2019 at 1:14 PM Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com> wrote:
> > Arnaldo, once we decide what the right fix is, I am happy to post the
> update (options 1, 1+2) as a patch series.
> 
> I think you should get the checks for ref_reloc_sym in place so as to make the
> code overall more robust, and also go on continuing to make the checks in
> tools/perf/ to match what is checked on the other side of the mirror, i.e. by
> the kernel, so from a quick read, please put first the robustness patches
> (check ref_reloc_sym) do your other suggestions and update the warnings,
> then refresh the two patches that still are not in my perf/core branch:
> 
> [acme@quaco perf]$ git rebase perf/core
> First, rewinding head to replay your work on top of it...
> Applying: perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
> Applying: perf symbols: Use CAP_SYSLOG with kptr_restrict checks
> [acme@quaco perf]$
> 
> I've pushed out perf/cap, so you can go from there as it is rebased on my
> current perf/core.
> 
> Then test all these cases: with/without libcap, with euid==0 and different
> than zero, with capabilities, etc, patch by patch so that we don't break
> bisection nor regress,

All done.  I've posted the update as a new follow-up series: https://lkml.kernel.org/lkml/1566869956-7154-1-git-send-email-ilubashe@akamai.com/ rebased on your perf/core.

I've tested 336 permutations (see the new cover).  In particular, I was able to reproduce the crash on perf/cap and confirm that no permutation can cause such crashes for any of the patches in the series.

> Thanks and keep up the good work!
> 
> - Arnaldo

- Igor

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
