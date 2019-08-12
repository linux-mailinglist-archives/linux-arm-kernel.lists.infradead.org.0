Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1518AA75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 00:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uK+RFood+lgZjsoaWU26TO8ATbLGsSeH7hMeHNyBzjY=; b=dPhmX8xF642fkG
	dPucMj44weuDkoP5DreEyM36/0zdNjZ1lxjaSnLVRyeIyK83XPMsDswWJuIB9cXY2Ni9d1e/kdZjK
	8mWDkT+FbNwM/IGuaE4E37zkw02q7Hj0mdkbmYhNWcqKozKO8I8XI6bxanCxR1jwX1EduMjowJZTT
	NNazxkR6pzU0sKwiXTAPuFsttOISd/V7Q6SAMwyQY31ilnjPoKUfpyXyU4+WH+WA8YAwVvM8YDYoE
	VeJ8VESc+Wrp+vNr24Lztiq7CECmHQI4DcC1dtM0eVSmmq3Isuyn8f1dWvV6cSym6MjKR70yxUbsY
	SPPujyWx0LxlT7mVPcsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIsn-0000Wc-6F; Mon, 12 Aug 2019 22:33:41 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIsZ-0000WA-4b
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 22:33:28 +0000
Received: from pps.filterd (m0122333.ppops.net [127.0.0.1])
 by mx0a-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7CMVrin004996; Mon, 12 Aug 2019 23:33:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=h0LVmZptY3RxOpHXUCSrEDRNcipSZb2uNc3syHLZIKc=;
 b=H3CVYj300Dv/RnDQWiUCDs/mdwJLLmB6+gfPLJrALW9pKJ2ghQrlwE5vT94UsdzH2yxs
 fKnWbL752L/I3x+LM4xNZwQMr+pmV8gTd9n9/xOqccB76+se1uOF1RlXgGGg0G2kr9tt
 PsKzTu0iL65cpEBfSVoIem4Q0+3AV1BuXV1O+2OFwZ/6e25Xk+sMYs4iL1XQlh52vgqK
 bpu4YphEBMVamkdP+wYI7FOtCibBWLBM0i4NeJLc+qDQSyzl2PsRa24ihtjRB33MoGuO
 KI7zN4jh49krBWjKLFwDQpkHFRq45B+0yrHj9AY9inSE+jsFBd/me7qkGqGXb0tSLnH0 pw== 
Received: from prod-mail-ppoint8 (prod-mail-ppoint8.akamai.com [96.6.114.122]
 (may be forged))
 by mx0a-00190b01.pphosted.com with ESMTP id 2ubf8hgavk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 12 Aug 2019 23:33:10 +0100
Received: from pps.filterd (prod-mail-ppoint8.akamai.com [127.0.0.1])
 by prod-mail-ppoint8.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x7CMVxmL023325; Mon, 12 Aug 2019 18:33:09 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.32])
 by prod-mail-ppoint8.akamai.com with ESMTP id 2u9s8vs7qy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 12 Aug 2019 18:33:08 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) by
 usma1ex-dag1mb3.msg.corp.akamai.com (172.27.123.103) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 12 Aug 2019 18:33:07 -0400
Received: from usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) by
 usma1ex-dag1mb6.msg.corp.akamai.com ([172.27.123.65]) with mapi id
 15.00.1473.005; Mon, 12 Aug 2019 18:33:07 -0400
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: RE: [PATCH v3 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Thread-Topic: [PATCH v3 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Thread-Index: AQHVTS6omT1rjBdROkC0v0885SRG3Kb4OiwAgAAEBYD//9oaUA==
Date: Mon, 12 Aug 2019 22:33:07 +0000
Message-ID: <735aabdfa76f4435bdaff2c63d566044@usma1ex-dag1mb6.msg.corp.akamai.com>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <ad56df5452eeafb99dda9fc3d30f0f487aace503.1565188228.git.ilubashe@akamai.com>
 <20190812200134.GE9280@kernel.org> <20190812201557.GF9280@kernel.org>
In-Reply-To: <20190812201557.GF9280@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.36.134]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-12_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908120219
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-12_09:2019-08-09,2019-08-12 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 priorityscore=1501
 phishscore=0 adultscore=0 clxscore=1015 mlxscore=0 mlxlogscore=999
 suspectscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908120219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_153327_358730_C9AAC204 
X-CRM114-Status: GOOD (  24.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, August 12, 2019 at 4:16 PM Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com> wrote:
> Em Mon, Aug 12, 2019 at 05:01:34PM -0300, Arnaldo Carvalho de Melo
> escreveu:
> > Em Wed, Aug 07, 2019 at 10:44:15AM -0400, Igor Lubashev escreveu:
> > > +++ b/tools/perf/util/evsel.c
> > > @@ -279,7 +279,7 @@ struct evsel *perf_evsel__new_idx(struct
> > > perf_event_attr *attr, int idx)
> >
> > >  static bool perf_event_can_profile_kernel(void)
> > >  {
> > > -	return geteuid() == 0 || perf_event_paranoid() == -1;
> > > +	return perf_event_paranoid_check(-1);
> > >  }
> >
> > While looking at your changes I think the pre-existing code is wrong,
> > i.e. the check in sys_perf_event_open(), in the kernel is:
> >
> >         if (!attr.exclude_kernel) {
> >                 if (perf_paranoid_kernel() && !capable(CAP_SYS_ADMIN))
> >                         return -EACCES;
> >         }
> >
> > And:
> >
> > static inline bool perf_paranoid_kernel(void) {
> >         return sysctl_perf_event_paranoid > 1; }
> >
> > So we have to change that perf_event_paranoit_check(-1) to pass 1
> > instead?

Indeed.  This seems right.  It was a pre-existing problem.


> > bool perf_event_paranoid_check(int max_level) {
> >         return perf_cap__capable(CAP_SYS_ADMIN) ||
> >                         perf_event_paranoid() <= max_level; }
> >
> > Also you defined perf_cap__capable(anything) as:
> >
> > #ifdef HAVE_LIBCAP_SUPPORT
> >
> > #include <sys/capability.h>
> >
> > bool perf_cap__capable(cap_value_t cap);
> >
> > #else
> >
> > static inline bool perf_cap__capable(int cap __maybe_unused)
> > {
> >         return false;
> > }
> >
> > #endif /* HAVE_LIBCAP_SUPPORT */
> >
> >
> > I think we should have:
> >
> > #else
> >
> > static inline bool perf_cap__capable(int cap __maybe_unused) {
> >         return geteuid() == 0;
> > }
> >
> > #endif /* HAVE_LIBCAP_SUPPORT */
> >
> > Right?

You can have EUID==0 and not have CAP_SYS_ADMIN, though this would be rare in practice.  I did not to use EUID in leu of libcap, since kernel does not do so, and therefore it seemed a bit misleading.  But this is a slight matter of taste, and I do not see a problem with choosing to fall back to EUID -- the kernel will do the right thing anyway.

Now, if I were pedantic, I'd say that to use geteuid(), you need to #include <unistd.h> .


> > So I am removing the introduction of perf_cap__capable() from the
> > first patch you sent, leaving it with _only_ the feature detection
> > part, using that feature detection to do anything is then moved to a
> > separate patch, after we finish this discussion about what we should
> > fallback to when libcap-devel isn't available, i.e. we should use the
> > previous checks, etc.
> 
> So, please take a look at the tmp.perf/cap branch in my git repo:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git/log/?h=tmp.p
> erf/cap
> 
> I split the patch and made perf_cap__capable() fallback to 'return
> geteuid() == 0;' when libcap-devel isn't available, i.e. keep the checks made
> prior to your patchset.

Thank you.  And thanks for updating "make_minimal". 


> 
> Jiri, can I keep your Acked-by?
> 
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
