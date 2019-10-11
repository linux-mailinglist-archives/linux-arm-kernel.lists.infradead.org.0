Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E68D4AE1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 01:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gm01Ywtvziq0OSoPFoGLykaspEhHRIMTmJx4oQ0ZPV4=; b=h88Lp4BI2tzwxh
	5NtqnB0A9+8Balys+vFer7uRPKDTigmy9tIWHNlzhaXY3Ib6XLtxeY1I5vsc+qQrsl/oXXXApCXNv
	kQBxdeIfm1yx6huQTCV56lNyEkToQs81xlm0y4O419icUKpbd4gJqC/1QtbanFVaIdqdWu/umte/W
	PUt8OZ8opcqXNpHBsL7esEAYfe+sL5TWfQl4ZLdEFEmFGeP4uCANNjXBV7Azf3qy53Drgd+zDJXNL
	q2HzjjZX+0iVsxIwGiavRFHLRIrsAMJm/GZItU3iyVtMmN7sXVAYlWA5iMYYU4ISPpQGMLEXzm7ih
	sW9AGN+xwkLpmHwihXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ4DX-0001I6-Vk; Fri, 11 Oct 2019 23:21:03 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ4DP-0001HS-9j
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 23:20:57 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BNFOs1004069; Fri, 11 Oct 2019 16:20:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=9vllEG0H9R5sECqHUAeaiZZCiAY7+VTkpraJnjiQ1U0=;
 b=ZyNTtrw6PCHW3kS4w6TxisjPoBFRo2XPCtzLutJhpTrxFk4hkn8X/HSsttO8CFKChG2f
 yG4dy4sCS/PImO5UUE1hZWah5NeCjPNQdL9oymmVtY5dz07oJT5y6BCiEyq69PobJ8+A
 u7dzseAwmWIrhPDjNElfWIHFrwd1xrnuzLPyCaj+jFEtIUdB5Uff7war265kta0BGW3I
 noAc/iHm0PxTsYR4BCmkPXYP3KDOFEaAeAsiggdisdV6oGDI2o5/bAkQFYGkEZ78bQes
 DeAPEqBEFIfm084+q+qzjEX8tMdi6ShRvxZ5mQFxpd948Hiv9B8tMJXnIdxAa5ukypLo GA== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2vhdxc3t3e-3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 16:20:44 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 11 Oct
 2019 16:20:43 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (104.47.48.53) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 11 Oct 2019 16:20:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R9ctJWPjknorMcI/iOJCmUK/Gtvi2EUH5+BaW8GRIit5Y5svz/QTy94cGJ+7W0NYmphRsmg/z9pg8OgqclU7Jq8aGpcVkseEOdAyBdBiZOP8d6Fh5/YpWJG876/mjXJrLTDGn4fLjJJ/tglXdKiqERZ2veYezC68QPfe92pA3X4ZOTPFJjTyo2uwG9lW7RtTBlarDx+TvWZHEr7CjbnI69GVY4YowxFRAZjCIAMiwgLzDqjDm4YBlYRJwbQh5stEhZ5fJosjWxjffmQ0coALYqgYOPCpWXZv99IxEOS4VCoASqXWL5ST2jmVSoBpSjuub6avy1dSTUAYLMFqCc/UyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9vllEG0H9R5sECqHUAeaiZZCiAY7+VTkpraJnjiQ1U0=;
 b=DG4x3zoaH7nxT6XNvzTq/2ccPUSnzRwnPAyjk5VAs7SnxMPfGC5VrrKJCeW2n171XOqhpYUWSpm60yHs1e5LTwlQOggmElV1mVMh+R1qxg4KlbaEtPYl+Jy/x/7yuwTdXVuQ9XOuo3Xp4l/sS7CYMVxyCHeSq51lLrXap9pwIxOqlAfFKIzE3gQD7xyLt8E4AlOXeJQEzhRMfMCT6rqVcKIGRUfvobpI7WSr2r2EdA0d+9Qmr0LSfkkGIWm7Y22WLWi1JaxbZygy26f9inGFaVrVk3/G8WVwZ4NzcOnDtQFbTMlMtfX7FDJz56kCMhUZQxE+ZSbyecut5iIbyNnHTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9vllEG0H9R5sECqHUAeaiZZCiAY7+VTkpraJnjiQ1U0=;
 b=GKd3wuchE3SN+4zNNw61lRDerhUAJFEQz/NNjWKII4xwFZXOH620U78UfHB8jvaT0jRZi4ind/k6v4xlkcMehF+kZfQ3s2rdjOTyiJuGiAg1yzBII7YrDbCyku/YqyuuS2GAM17eJ+SKq+bgHjKSvYPURHNR5mGoZBpIrAp+SrQ=
Received: from CY4PR1801MB1895.namprd18.prod.outlook.com (10.171.254.153) by
 CY4PR1801MB1879.namprd18.prod.outlook.com (10.165.90.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Fri, 11 Oct 2019 23:20:41 +0000
Received: from CY4PR1801MB1895.namprd18.prod.outlook.com
 ([fe80::95d8:1a9a:a3b4:616b]) by CY4PR1801MB1895.namprd18.prod.outlook.com
 ([fe80::95d8:1a9a:a3b4:616b%7]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 23:20:41 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/2] Workaround for Cavium ThunderX2 erratum 219
Thread-Topic: [PATCH 0/2] Workaround for Cavium ThunderX2 erratum 219
Thread-Index: AQHVgIp//cHqDQ8PcECADgUsIEdQXA==
Date: Fri, 11 Oct 2019 23:20:41 +0000
Message-ID: <20191011232031.GA29752@dc5-eodlnx05.marvell.com>
References: <1570790105-31829-1-git-send-email-jnair@marvell.com>
 <20191011104454.d7dplgyjcnpfi5p3@willie-the-truck>
In-Reply-To: <20191011104454.d7dplgyjcnpfi5p3@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR11CA0041.namprd11.prod.outlook.com
 (2603:10b6:a03:80::18) To CY4PR1801MB1895.namprd18.prod.outlook.com
 (2603:10b6:910:79::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7bf52eca-51a6-4db9-6175-08d74ea1a240
x-ms-traffictypediagnostic: CY4PR1801MB1879:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1801MB1879E84DC22FD0571D54CBE0A6970@CY4PR1801MB1879.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(366004)(396003)(199004)(189003)(256004)(486006)(26005)(71200400001)(71190400001)(386003)(3846002)(6116002)(86362001)(5660300002)(14444005)(25786009)(476003)(76176011)(54906003)(33656002)(186003)(52116002)(102836004)(6506007)(11346002)(446003)(99286004)(7736002)(316002)(305945005)(2906002)(6512007)(6436002)(6306002)(6486002)(229853002)(66946007)(6916009)(66556008)(66476007)(4326008)(66066001)(478600001)(81156014)(81166006)(8676002)(8936002)(14454004)(6246003)(1076003)(966005)(64756008)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1801MB1879;
 H:CY4PR1801MB1895.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s2xRvm39SOW7jl94zHtns+XIZhhW5vidBo49ju/2hyGgIR4cqgwq8pGPft7wnCfjHCfyJpz1dhaaEPBXQobRsOfkNdS49EQqBsQLfr45KokdnoKhjk9xJEm12xqfgi650Hm3MjOQWTTtdXYkxXclKSgBn3dD+2/nBEW/iqcVKuQIwxG0WgfkcZYngFxgujlV7LmdTjDVe/eXZmUR/foO8Jy6LDh7j0Z0SN/heL4Yc2i7OLT8CEffSRDiFIhtHSJFjmpFyD2ke8WZ01oM5UwjwZ7o9XzWE7K3JTVDyw4jbXfH1WcNVPUH3t5TaaIN63yPrZY3L7MIZ+GMQNQV5TvTQqYPLdd3TrDTRP3ouDBnCaj1FDQURitKxUdK95LMNByZhK2AOAf3BLMD29X1oGnYxNeW3d814ITNsSWJ+azYfuV2d68Pft0nFqwKGWmg9yKSUTa+ZqKWIVsW4wJ0+vTkGg==
Content-ID: <81776BB37715494A909F6FB2F3F79DB1@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bf52eca-51a6-4db9-6175-08d74ea1a240
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 23:20:41.6653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +xMjnRxTtTbTrRhVvXMNvcNOuVn241PwWl9l1ia1ur0e+3XZbMwVO/o/FfFIo2xjfWEJDQum3FsDjYVEpeBQ0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1879
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_11:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_162055_536420_E7AB32C4 
X-CRM114-Status: GOOD (  28.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 11:44:55AM +0100, Will Deacon wrote:
> Hi JC,
> 
> Thanks for posting this.
> 
> On Fri, Oct 11, 2019 at 10:35:21AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > These two patches are based on the work by Marc Zyngier and addresses
> > Cavium ThunderX2 erratum 219.
> > 
> > This erratum (originally reported by ARM folks) is from an interesting
> > use of the prefetch instruction in the KPTI patchset. The prefetch
> > was done between a TTBR change and the corresponding ISB, and this
> > occasionally caused a crash on ThunderX2.
> > 
> > The first patch removes the troublesome prefetch for ThunderX2.
> > The second patch addresses the case where the issue can be triggered
> > from a guest kernel. The workaround in this case is to trap TTBR
> > accesses by setting HCR_EL2.TVM for guests and doing the system
> > register update from EL2 in a fast path.
> 
> FWIW, I was already planning to send the following to Linus:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=errata/tx2-219
> 
> so please base any changes on top of that branch.

Please consider taking my patchset as is, if you don't have
issues with patches.

> > Due to the nature of the erratum, the trap-and-emulate is only
> > needed when SMT is enabled.
> > 
> > The overhead of trap-and-emulate is expected to be negligible on most
> > workloads. A command line option kvm-arm.vm_msr_trap has been
> > provided to override trapping on guest TTBR updates.  This is to
> > address a very limited case where a user wants to run SMT enabled,
> > with a trustworthy guest kernel, and wants to avoid the performance
> > overhead associated with emulating the address translation register
> > changes.
> 
> Do you have any performance data to show the impact of the workaround on
> non-kpti guests? I don't think we can justify the inclusion of a cmdline
> option for this without figures showing that it's really necessary.
> Otherwise, the "very limited case" really is a niche scenario where the
> CONFIG option can simply be disabled.

In my view, you are switching the responsibility here. Even one use
case should be enough reason not to force a performance regression
that cannot be opted out of. You are expected to leave as much policy
as reasonable to the user with safe (and least astonishing) defaults.

A class of guest usecases involve running stock images (linux or
non-linux). The arm64 server ecosystem is still in development, so
we should allow someone evaluating a server system to turn off or
on options as much as possible without forcing a re-compile.

Also, the run-time option is generic enough that it can be switched
on/off for any platform, not just the one affected by this erratum.

So, I disagree with the queued patchset - but I will leave you to make
your call on which way to go.

JC

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
