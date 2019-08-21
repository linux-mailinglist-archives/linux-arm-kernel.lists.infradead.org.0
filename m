Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE6A97DCF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fzk4lif/JS5N9JcH7zBLCDIUaUCqVdYxxIpzRT9EE8k=; b=QrH6Shw4MOycIJ
	05yLsMMPqV77iqqUt6T9uK+hirOSODIHU858/dADubhZoTDAvqPMOehW3NP6fCfS0pEyl0PEPi9H+
	F7a/sS9bf64E0qWhf572uBJ8HF9vPGgXXd1cBTIPJGyHjL/mgejjB9rEZCyv6/eWceIAsmDRKynow
	tlyt8fny8C7+kOSQviE4B3Ky2b+Yppz5gj0KLSm8nInvmKdq3MJWyWFogANljnLiKrBROEV1MZ22m
	RFg7Zl6CQ3a37LsGGesN5HlnnnL6NZZlJDIKSigRCLf0PXpZaVMumZSECA7beu9gT8y+mrYsF6Oh6
	N30eWV7ts/h7vGg7+IXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0S4u-0006WH-Rs; Wed, 21 Aug 2019 14:59:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0S4h-0006SH-UF
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:59:01 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7LEfjSi009445; Wed, 21 Aug 2019 16:58:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=STMicroelectronics;
 bh=hvsyhvBbKbAJCgOiIKrRFL9GHm7h8/kewDO4a8D7m+M=;
 b=nuRxovpd/+qFW1wlNN/bYzzek0YmXSQOJu8hRnCXaGbQPZFkqH25FNLxrpE1QvV0e6hH
 E4chC4jVsTfi6reBe642JZ4MoQj+vitpIXW4X7pq1gdfcEGRFFE1O0MOCmJkeo4ZCIny
 TFSrfDO+1CKknh6b7kAd475QqR+SIdDUzhRYQoNcDInf8m/Y87UuV5pMl5HBHWeCvfFm
 ToZE62UY3wbDEGu01MJAdI+LPEcdrstg0i6P1ZtvAP9HqRHugOGSYO2UQ6o63B5aVt5P
 w4KaUGg4hKgjKu0je4+LuGKnixsLzSI/3qJnRCS+EnrN69T8x+RbLgmoveN0bRSLIdAv Tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ue7buye6t-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 21 Aug 2019 16:58:48 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6142838;
 Wed, 21 Aug 2019 14:58:47 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 466B42D6F86;
 Wed, 21 Aug 2019 16:58:47 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 21 Aug
 2019 16:58:47 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Wed, 21 Aug 2019 16:58:46 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "ak@linux.intel.com" <ak@linux.intel.com>,
 "mathieu.poirier@linaro.org" <mathieu.poirier@linaro.org>,
 "peterz@infradead.org" <peterz@infradead.org>, "mingo@redhat.com"
 <mingo@redhat.com>, "acme@kernel.org" <acme@kernel.org>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "jolsa@redhat.com" <jolsa@redhat.com>, "namhyung@kernel.org"
 <namhyung@kernel.org>, "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>
Subject: perf tool issue following 'perf stat: Fix --no-scale' patch
 integration
Thread-Topic: perf tool issue following 'perf stat: Fix --no-scale' patch
 integration
Thread-Index: AdVYMNa4esDp3njlR1KZ0bzgLh2tpg==
Date: Wed, 21 Aug 2019 14:58:46 +0000
Message-ID: <2680dc183a9e45b999be4939cbe67b44@SFHDAG5NODE1.st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_075900_271615_F7787392 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Andi and all perf tool / arm debug =A0experts

This is about the following patch=A0:
       perf stat: Fix --no-scale
       SHA-1=A0: 75998bb263bf48c1c85d78cd2d2f3a97d3747cab

Since it is applied in the kernel, I noticed that perf tool fails on my ARM=
v7 platform (STM32MP1 with Cortex-A7 and NEON) with the following error : =

       root@stm32mp1:~# perf stat --no-scale sleep 1
       [10827.350202] Alignment trap: perf (631) PC=3D0x001139e8 Instr=3D0x=
f4640adf Address=3D0x0021a804 1
       [10827.357704] Alignment trap: not handling instruction f4640adf at =
[<001139e8>]
       [10827.364867] 8<--- cut here ---
       [10827.367875] Unhandled fault: alignment exception (0x001) at 0x002=
1a804
       [10827.374427] pgd =3D 8abc1568
       [10827.377090] [0021a804] *pgd=3Dff2e8835
       Bus error

The same error happens with or without the --no-scale option.
This is to give the context. I do not blame your patch, Andi :)

I analyzed the root cause of this issue, summarized below, but then I need =
your lights to imagine the best correction.

One of the changes in the patch concerns tools/perf/util/stat.c :
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 case AGGR_GLOBAL:
       =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 aggr->val +=3D count->val;
       -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 if (config->scale) {
       -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 aggr-=
>ena +=3D count->ena;
       -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 aggr-=
>run +=3D count->run;
       -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 }
       +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 aggr->ena +=3D count->ena;
       +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 aggr->run +=3D count->run;

The consequence of this new writing is that GCC generates a NEON vectored i=
nstruction to load count->val and count->ena values in 64 bits registers, s=
ince they are sequential in memory and systematically initialized now:
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 f4640adf =A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 vld1.64=A0 {d16-d17}, [r4 :64]

The problem comes from the ':64' specifying that the parameter has to be 8 =
bytes aligned.
The 'count' pointer points inside the 'contents[]' array from the 'struct x=
yarray'.
If I force this field to be 64 bits aligned, then perf works again:
struct xyarray {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 size_t row_size;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 size_t entry_size;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 size_t entries;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 size_t max_x;
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 size_t max_y;
-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 char contents[]=A0;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 char contents[] __attribute__((aligne=
d(64)));
};

But the xyarray structure is generic so I think this patch cannot be the fi=
nal one.
Some GCC versions have a -mgeneral-regs-only option to forbid the generatio=
n of NEON instructions while compiling one file, but this does not seem to =
be mainlined (?).

Well, I am hesitating and don't know what kind of correction I should apply.
I also don't know very well perf tool source code, so this sets some border=
s to my imagination=A0 :)

Can you help me please ?

Best regards

G=E9rald


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
