Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8511C1A36A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2k+0QMbwJcXUFBj+32JWHM7wJZ6LzEUWruZywM6wNwk=; b=YN7rzQj6azblBv
	5GwLvvN0q53CBbvu2hGwtM1hghztkUt6ET2g2ccesIMEb80twkQzyfQT+1b2sUWPsbI6Hgqq8WXB+
	J20LHgz2NBsDclE3m8hT50xn2OJDxRwQMzm5p1ByPDmUmaxd4XXlR0vSAb1W8YkxWclHJojcIbMhM
	r7w3gxsJB0N7vxFm74crQWXG3VReFX0XLgMsvFf9SupBLnzXkflCdIO0GhgladJlC4nlKRq3vNUDv
	UQYhdubHxot31BVCsu4fnU2DblyBLUO2UVwdjTzf618V+bJcjMSdWCRgBQa0fqmvXCKCOPoOhNIJb
	X5MeizkHSpK7Rjw19mNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYpT-0001VB-AO; Thu, 09 Apr 2020 15:10:55 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYpL-0001Ua-CV
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:10:49 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039F0oQa003361; Thu, 9 Apr 2020 08:09:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=IZR7gkHqzvR90VO/3aEWPCv+sOYf9nIOLnPpldXk30c=;
 b=CYtvKPjOUPaeebc9IyH+IXpFaS5ct/yRFsyZIW9qRBcq9YtkTwY3uTvd5UYUkPZ9vBsU
 /6ti4nK7XsEpobQby+dzKduGHyqEccPF1LNZK/RiwPiSz7ioWK1isowmPHXjdWLMGQqF
 IAVdiSi2Z+17F3vWj+vtnHBhHM2/2HTdBa1zkBOduNp9AtkoCV7Dg22LNQUWxWsW207G
 UlxlV2DzkZi8yjF4heZ1mQiBZ+hx7ONfT89vqhUvx0HemXBjKFm7PHeBJ+tiIySgHnEy
 mXaIi1uc20zDScqjjuQgnJzQJFHwc2tkeAnKWvNxuyqw6bZSHVkV77HPD4dgmKR/jYpe 4Q== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 3091me8x0u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:09:58 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 9 Apr
 2020 08:09:56 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.57) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:09:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HRR2MfducxfqdgzjJ22sU5zSNliQjON0GcPwkFD960qNsSCrdp3eYRYOK+xto/kf67sjGhS5Rwt35lPLnCAF3+puw0aTo5JuYBW6Rwn+Bmc2/uw+2J+rJroBxK1o24IurwRrwkW65ibGRR9LQmRUVSv/rlyebdPpSgVCGZO5pW7h37bBN9SXkDcE0e0pwhJsr9ZMzCucKbT09zm0QiSkTDOqEreh/4yAvavTQGnhot/GhLNRPeW2Jr5zdv9flFGB9WpvN8sW/uN0SR+Lr6A0I2Eb6ukTkYcj6NQ0eueZ0Slo7LThNurKRJNraIRTZDxk5TsSDBBGtMF/TQa9akHrBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IZR7gkHqzvR90VO/3aEWPCv+sOYf9nIOLnPpldXk30c=;
 b=d8tis7bclgVQQiQjSYskTa4YrLuXnGESGFE6kUBTkk+t1FjOT169eJ/S+VGbUIs1v8CXVqOBqr73xqZatryoUXKHvz9QNMTpYSqm/B22nDZjQWkJoIYzRiR/MtVtYmkM9EERGBovCnNvdGS53TZnC3FBg+ttl9uEYlwVoeAE2Js3XWumAhWaFyvAdZCrH4avK0+ndfMiuT1Vg0aAVszYq+c3er9LCWzSJqyZgPd7IOv9Bo1M1nOPbm5lfQfZYIx5iXkJvYrenaOwAR/eTjGQC3T8GazBtNvT3G9+C0nCGdhmuXX2kCvNAiQlyV/8s9zFmH+2t40GFz4V6NyNJOp2iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IZR7gkHqzvR90VO/3aEWPCv+sOYf9nIOLnPpldXk30c=;
 b=QT/rpUOtJVY36I8y5QxuvDgFaz+duSdKYVAN09+/HxIK74P+XayR+En5AdQg+EGAvzXaDoCtPNer5d7GgW7gfpQEDmgH7Vuv/iSMgaP3MfDOLMZOAnkJGNl9Hc0duC/4Z96yTLDiDsT4Aog2PNOE4eWfvEYLyEFeXpdel6deNqU=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB3749.namprd18.prod.outlook.com (2603:10b6:a03:96::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 15:09:54 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:09:54 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: Re: [PATCH v3 00/13] "Task_isolation" mode
Thread-Topic: [PATCH v3 00/13] "Task_isolation" mode
Thread-Index: AQHWDoDs8YuoS+TFyku4VXyhIUVeNQ==
Date: Thu, 9 Apr 2020 15:09:53 +0000
Message-ID: <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [173.228.7.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bed32cf4-45b8-48ec-ce07-08d7dc980f16
x-ms-traffictypediagnostic: BYAPR18MB3749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB374925A22C219F19A402A1C5BCC10@BYAPR18MB3749.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(86362001)(71200400001)(6486002)(6506007)(66946007)(66556008)(36756003)(5660300002)(6512007)(2906002)(76116006)(8676002)(110136005)(66446008)(81156014)(2616005)(316002)(64756008)(26005)(186003)(54906003)(81166007)(478600001)(8936002)(66476007)(7416002)(4326008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OLlZp9/C6rDdvhJtghH3Y09hOWfZzkQsSHkHlG3obPhwmyy9hCjXP2B2wxqkwfdBPdwKqbFdPTk0Tz0i33u1M3L0+/Y+KyBcubGmpnubMl2f9xE65pMPD5YPV3io93dCQhjtVOQMWAf1eGujyJ04TZX/p02bFF/iMXqEHK96h7507HORw+pKXlJ5lJj41t41g1e839SRUC7feVAODFNxM/JKe9txyUtKIeZFqDEesIV35Wajk+XVpiK0Gc1UHloE0KPGLp5yANHKngYtdq9DRmx717DXasz1Lej4xCXYjd2bRVv4pJkxygwm1ruOz/PneeJm60Kbch9qq1+Jz6BEkGhdOcPz3X0GMUiQ/0Sxlb1GCGmoj+Veu8/BPyAjujMRf4TNbeZhZlxejjkCOnBv6XvNzmBretIAnEfkA2zI3g8uhTWONm5+BaBo/EP+DyA2
x-ms-exchange-antispam-messagedata: fFcO94MlZCOlx0TN7lL5B3Viv42wrDcFNIZLHPiBU8kjGIlZPls27QZGSzJZQyF6l+o6Ger/AZZzO0Ea9eC8FM9OKS/5phwvTpoaeJOICYSrKI3f8kS0U5W3o+pgUI7mMhwY3ZAsTR1k1lbrNdGI5Q==
Content-ID: <CF585B88C94C664FBF9473B31EB6D7BE@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bed32cf4-45b8-48ec-ce07-08d7dc980f16
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:09:54.0497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aBaeDl38khjWFQatad/+vUEg23MiL7CL6xazxKbDssBdsp5eljIbWRnv0lGwtcJeVA3t+pMCQ3WtPZHLhVhZIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB3749
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_04:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_081047_618865_98C5B34A 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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


On Sat, 2020-03-07 at 19:42 -0800, Alex Belits wrote:
> This is the updated version of task isolation patchset.
> 
> 1. Commit messages updated to match changes.
> 2. Sign-off lines restored from original patches, changes listed
> wherever applicable.
> 3. arm platform -- added missing calls to syscall check and cleanup
> procedure after leaving isolation.
> 4. x86 platform -- added missing calls to cleanup procedure after
> leaving isolation.
> 

Another update, addressing CPU state / race conditions.

I believe, I have some usable solution for the problem of both missing
the events and race conditions on isolation entry and exit.

The idea is to make sure that CPU core remains in userspace and runs
userspace code regardless of what is happening in kernel and userspace
in the rest of the system, however any events that results in running
anything other than userspace code will result in CPU core
re-synchronizing with the rest of the system. Then any kernel code,
with the exception of small and clearly defined set of routines that
only perform kernel entry / exit themselves, will run on CPU after all
synchronization is done.

This does require an answer to possible races between isolation entry
/ exit (including isolation breaking on interrupts) and updates that
are normally carried by IPIs. So the solution should involve some
mechanism that limits what runs on CPU in its "stale" state, and
causes inevitable synchronization before the rest of the kernel is
called. This should also include any preemption -- if preemtion
happens in that "stale" state after entering the kernel but before
synchronization is completed, it should still go through
synchronization before running the rest of the kernel.

Then as long as it can be demonstrated that routines running in
"stale" state can safely run in it, and any event that would normally
require IPI, will result in entering the rest of kernel after
synchronization, race would cease to be a problem. Any sequence of
events would result in exactly the same CPU state when hitting the
rest of the kernel, as if CPU processed the update event through IPI.

I was under impression that this is already the case, however after
some closer look it appears that some barriers must be in place to
make sure that the sequence of events is enforced.

There is obviously a question of performance -- we don't want to cause
any additional flushes or add locking in anything
time-critical. Fortunately entering and exiting isolation (as opposed
to events that _potentially_ can call isolation-breaking routines) is
never performance-critical, it's what starts and ends a task that has
no performance-critical communication with kernel. So if a CPU that
has isolated task on it is running kernel code, it means that either
the task is not isolated yet (we are exiting to userspace), or it is
no longer running anything performance-critical (intentionally on exit
from isolation, or unintentionally on isolation breaking event).

Isolation state is read-mostly, and we would prefer RCU for that if we
can guarantee that "stale" state remains safe in all code that runs
until synchronization happen. I am not sure of that, so I tried to
make something more straightforward, however I might be wrong, and
RCU-ifying exit from isolation may be a better way do do it.

For now I want to make sure that there is some clearly defined small
amount of kernel code that runs before the inevitable synchronization,
and that code is unaffected by "stale" state.

I have tried to track down all call paths from kernel entry points
to the call of fast_task_isolation_cpu_cleanup(), and will post those
separately. It's possible that all architecture-specific code already
follows some clearly defined rules about this for other reasons,
however I am not that familiar with all of it, and tried to check if
existing implementation is always safe for running in "stale" state
before everything that makes task isolation call its cleanup. For now,
this is the implementation that assumes that "stale" state is safe for
kernel entry.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
