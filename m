Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAE417D216
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 07:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VD+H8zvIbe4NpPSpnydncQXL8Jm9eBY7sa5gJqGsEk=; b=u+kw5AZoiPCLP8
	DPgt1MHAfP5VnZeQc53g2/LdAwhtgeW0Cj+St1SmU0kFiR9dKki6sg1wdXWfburlBb9XtEYeHuqYY
	z7oYxzMz9hsGPAmGtpK5ca4aQl5aBTEiD13IB5xaQ6Zuc3AsX42vr/51pwa3mLuEFInGj533sotZY
	74kXWxwDCtwbpXr6cKEKr1JdmIwjVl3+gebrAaZu5wvMv4YgH4VhbOLuuT+RB8faIjBj2NvbA84ZM
	nyZ5hfgzUkmuXO5dz0VDr3UpxmB0KeY07eVp2n8U0r5k2FeQm2BbSfywOijc1hl/432csAwEcJzF0
	xPvh1EBxAvizVaf4w2Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jApkn-0007hN-La; Sun, 08 Mar 2020 06:49:37 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jApkg-0007gs-1N
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 06:49:31 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0286m28Q007156; Sat, 7 Mar 2020 22:48:47 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=s4z9kenL1VV3XzFpz/6OLODlErTPSoqQOqrlDcSRtMY=;
 b=wcMMYbfTHUQsctV/iJzcRHYyogQR3npcLhIp51zQbes3Q8geQyZQ/tb9zBkNGnW+G9G+
 FP38iJHSPxlnWyqRR/rTEeVvEtLENV/vbBSt+jDqTOb1esF2elvv5lDZIZnb3WV19+M+
 d26K1OjPtpNAnee8134BR95OSimGGi1DZLrOjUnOQMFTXtGtGb7fIFKn2uM6YR2AihKP
 RyePul2S+wT0LS/WU2xzQuue7UWVvshUfns1X+C0hgOPf1L6P+x7tPjp6s4Ir5fnlfdF
 Ei7w9Zu226MeQuXo6ZPdwOuxuPcORnOIGU7dCcXp3Pe8/NX9qE9vD4SHFh31NukjTRcO PA== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ym9uwb6qt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 22:48:47 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 22:48:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 22:48:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jp3McjKBtCiI3b5Qh08YTohlR+zqMeR8WhyCO1s+35n7v7z6VFaYgDQrGGKqVwfFj+IAkJ93r5bvI9bhd7yLn6xj0NQVU+KAANfM0eT6kUA5NWOiiQNqEBAi9FFFtpfjOkAO6fuV1a3BMhExW7E61mjW53XfW3WWyIyXTbfA4f6ekh88JoduU3WXi8cWMxz0R3z9uUc+jOymM8tegHOz2YZ+iF2mC6utLXchT2plSglid9FhKCs2xu5mkW9uiPSZYMduryGAYrQ5V6fypB/tBCyFAOOPAUqy8pRoMzCRo5rEWzy2fSYvyvFODVJTqqmLbUbrX3wGNudjKyXZBhuhfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s4z9kenL1VV3XzFpz/6OLODlErTPSoqQOqrlDcSRtMY=;
 b=B7zBEMEBmLxjRgU22k07tNdUtVqzVSB5HCkggpczWzxsiBLdbbB5HZvMQPMSlkXHuKHAf0xe2uZXvk2z+WGER+nTLfmDn3stkrg4BgxLaKwCgJN9Gqj71A2Xt98qcpjiDMSFbE6GH1bKrSuA3aarBfMu55eveYeR6irW+cDA99QY5YQDli7USzziNongNxKLO0CG7iAEQ0LsnKohWJ8wMdv+p6M4hiInvbOkP2P3I0FyE8Z6INHoeYVc0aKEULcPdv7Io7BuVkPXOauylmQT1mWaAAHNhDU9fXpq7HJBrTaPdSrMS4zk6em79Nr36M1CQ4Fs1+PJPFu1MRLe+x4aUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s4z9kenL1VV3XzFpz/6OLODlErTPSoqQOqrlDcSRtMY=;
 b=O/rw3P28RRLnlR6OWBVwgeA9mcltXiWahg0Dgl86koicRiYoDRVkCF1e4ws+8L/SDi+JC06TBirpqs52iVLdiZeZr353Zg7+YlTMyiI/CUDdZxf14AriEfZNKFWGuNwXzhbEdFGetUuzVXZMC22B2qpmOOqYAS4mmrP56qYvPko=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2613.namprd18.prod.outlook.com (2603:10b6:a03:135::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Sun, 8 Mar
 2020 06:48:43 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 06:48:43 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>
Subject: Re: [EXT] Re: [PATCH 11/12] task_isolation: kick_all_cpus_sync: don't
 kick isolated cpus
Thread-Topic: [EXT] Re: [PATCH 11/12] task_isolation: kick_all_cpus_sync:
 don't kick isolated cpus
Thread-Index: AQHV8kAcdftBA0b3gky17yT7q2R3yKg7tQiAgAKRrQA=
Date: Sun, 8 Mar 2020 06:48:43 +0000
Message-ID: <7e0ce8988f4811e7453859e22654d2618557d9ab.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <dfa5e0e9f34e6ff0ef048c81bc70496354f31300.camel@marvell.com>
 <20200306153446.GC8590@lenoir>
In-Reply-To: <20200306153446.GC8590@lenoir>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57c1474a-4bd7-43da-2fbe-08d7c32cbe50
x-ms-traffictypediagnostic: BYAPR18MB2613:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB26139D4B383E9E6AB3DA9A4EBCE10@BYAPR18MB2613.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(39840400004)(376002)(396003)(199004)(189003)(186003)(5660300002)(36756003)(2906002)(478600001)(4326008)(6486002)(8936002)(6506007)(26005)(316002)(8676002)(81166006)(81156014)(6916009)(6512007)(71200400001)(76116006)(2616005)(66446008)(64756008)(66476007)(86362001)(54906003)(66556008)(66946007)(7416002)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2613;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZcH71kvqcABkWLDgO1Dxs1vZBLODsHrycCAHVAJjyQJlD8p7BoHcbPPJsp2iIzBmtkO87GLL5uRxZHoRmr3gsHRlGxklSCoEGtjuGam5NpIMO3PdiQu2wiL28m4gyEfzIfEFSP5Tl0n2EV+t3kTsn5oDY2sWoEtctBAH4FHs79l7GlhMjnTLHL8VxlNyo0V1P/apPGB4SVt7UdSj+LLdqWe+nDyaxOAplfJ/fWiKVCEJvDOhhYRjqQJ/+fNxoeQ757Sny3TbCd5Q5L914Gfj5r3wOK3wOITCksxVcgkYE2XdVUtwt2WnU2eURiWlUNemUZwfn9U3y0RPDMYEz+32EMAfRSUHGhlYK2pIjXkzb0MBfhvJfi+x8SKIzugb3XSlSIvKuGocBWxngKffTodkj3E9N7GMtWOO1RuOjy08lKE4EvTFV98jbhkZbUvdmY6l
x-ms-exchange-antispam-messagedata: p78Ku4XlFrN7TqILS4DhP94TlQMtu47F4hgrh2IDEyZRuWNxlz/qJs/VYfl7yBGkEMhQaEWak43j229GmpXK9Ep1RAMsVND/JTTd+r4i4X0JXpacvHnXYTYM5+h3jjxum5gLXbyeY6N3Bw7FHSfkyQ==
Content-ID: <22B91EB6759F5E429B9A26A5E13F7A1A@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 57c1474a-4bd7-43da-2fbe-08d7c32cbe50
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 06:48:43.3319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 21N+fSkdxORmQGT7Q4tZZfWOXRbt1wYHwM8F95LtV3wtC7dA63rIoIu6tX3un7yvV4NZbvcS/yOKzdubbFef0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2613
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-08_01:2020-03-06,
 2020-03-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_224930_089731_FA478547 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>, Prasun
 Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-06 at 16:34 +0100, Frederic Weisbecker wrote:
> On Wed, Mar 04, 2020 at 04:15:24PM +0000, Alex Belits wrote:
> > From: Yuri Norov <ynorov@marvell.com>
> > 
> > Make sure that kick_all_cpus_sync() does not call CPUs that are
> > running
> > isolated tasks.
> > 
> > Signed-off-by: Alex Belits <abelits@marvell.com>
> > ---
> >  kernel/smp.c | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/kernel/smp.c b/kernel/smp.c
> > index 3a8bcbdd4ce6..d9b4b2fedfed 100644
> > --- a/kernel/smp.c
> > +++ b/kernel/smp.c
> > @@ -731,9 +731,21 @@ static void do_nothing(void *unused)
> >   */
> >  void kick_all_cpus_sync(void)
> >  {
> > +	struct cpumask mask;
> > +
> >  	/* Make sure the change is visible before we kick the cpus */
> >  	smp_mb();
> > -	smp_call_function(do_nothing, NULL, 1);
> > +
> > +	preempt_disable();
> > +#ifdef CONFIG_TASK_ISOLATION
> > +	cpumask_clear(&mask);
> > +	task_isolation_cpumask(&mask);
> > +	cpumask_complement(&mask, &mask);
> > +#else
> > +	cpumask_setall(&mask);
> > +#endif
> > +	smp_call_function_many(&mask, do_nothing, NULL, 1);
> > +	preempt_enable();
> >  }
> 
> That looks very dangerous, the callers of kick_all_cpus_sync() want
> to
> sync all CPUs for a reason. You will rather need to fix the callers.

All callers of this use this function to synchronize IPIs and icache,
and they have no idea if there is anything special about the state of
CPUs. If a task is isolated, this call would not be necessary because
the task is in userspace, and it would have to enter kernel for any of
that to become relevant but then it will have to switch from userspace
to kernel. At worst it is returning to userspace after entering
isolation or back in kernel running cleanup after isolation is broken
but before tsk_thread_flags_cache is updated. There will be nothing to
run on the same CPU because we have just left isolation, so task will
either exit or go back to userspace.

Is there any reason for a race at that point?

> Thanks.
> 
> >  EXPORT_SYMBOL_GPL(kick_all_cpus_sync);
> >  
> > -- 
> > 2.20.1
> > 

-- 
Alex
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
