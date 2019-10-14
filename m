Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE325D69CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEYni8e/mq52x5L/5Gevggv0ko7TLYURmWxUc8p2P48=; b=n75JH3Gvd/lAwq
	SuhHMEK+z2jRvwUpSMIcNa3yBEcvIbQ1bSWluc1koPipjmEjUhE+q6YIy4uXFB/ZuRMlX/Z0EFnS4
	vRHrentY3DMsy1fJJlS/07DcVKkEBVgpVFSO54n+rOcDpcgsiD/uyf3MGgXFgVoEpjylTVs7vK27y
	c/qj4d6Podv5drr58ByI8C3vS6NDKqrfH68NIocHtt9Ux7KO5qN30Us5tLitI/0GNciAj3dB68Vnu
	A3oLvDnIKjFaVgdjbeXUP/blTcnrmq/HI+umo6iGn1eAwKK1M5emxRRgSJdXwsJtg1D9WVWjYormm
	Xq+6fw4fhQX7A9Z3Sq2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK5Xo-0007YX-Hv; Mon, 14 Oct 2019 18:58:12 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK5Xd-0007Y2-LF
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 18:58:03 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9EItWGj014321; Mon, 14 Oct 2019 11:57:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=y9ImJwK1EkmmUeP11xgenDg0um5dorDDEjquPiO/wSI=;
 b=FVv2MrkLZP6CwrC/qjLVSY5K5iClPzKQDITZkF7/Y3q9Ou2//5ZwETRv6Pq3f1dumnZK
 WNdyWqIjHFONmQbYSP9+Rdw3Ywu3HGwEq0rbkTabrS+vdTH5QXAXw9CTdSigU07qT2WK
 MlYquazm9/j/RWOGLKZdV9c8mBxUVUKQP/V4xB3fhaB+sZJotukpZgPiwtKqLfwpGJFw
 bonHj03Rv1ClorPf3ZZi/wrTQJWnlMBoptlHYx2AWxSX5dSInhHQbegbAL9HWfCmJKJ1
 F52TuyVOD1MiTbg63zQiwM+HsIrHIIKmhCHLRwgMJSY42eOvYhymE3YyRxsT80fkZIKS Mw== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 2vkc6r7peu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 14 Oct 2019 11:57:57 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Mon, 14 Oct
 2019 11:57:56 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.54) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 14 Oct 2019 11:57:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h+GCIggCYp9JxqAEp0BK7OA01rROoGnhUDmO3FmROxaQyhLPnwtlFtkdnTOcXIs9QTN9KgdktPcl2VtBnnBV83lUkOHg93NPuMQbzUf4EWbeFx5AGxQHqtknh1N08ArZTvGVA84CVYBSKsErdbCgzsKfiUfL8X6/gqJ3JyvOoyETS+PdM0QOtYutpXlhhX45VFaq7g3/ulrsNUQ2LhA0cCgasw9DQXnfNX7PNl9EgFhwSM42hNIl9w7Caake0S9QnDEgoYGcnCXCqRQpQIw9ZaQ+Rn9ncT1vWK2mcXiTbjEahqM2FeRzD2fN4T1M1mHG/x7LoJy/9Oolq/cx59eBLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y9ImJwK1EkmmUeP11xgenDg0um5dorDDEjquPiO/wSI=;
 b=hGXM3BqAD2WB8svflnlAcQwvbb8wHZ/CVh0XCip+393oqJyFiY3IMtF6EdtMsATygxTaDSU67TG+LnPK144TiJn1jAOhXTs7Mpb69Isi6nzYNHbSJqhSVkZJANZErytfDyudMLlh4zr1edXGkysDVNRpds7UDfPcP5iXvbbL1uP9m9SYcdl1ZIjXGt0aAoC8tqRiN3qXXs40804MmQz9Vb0ahRiQ3EdC/htVFsdccZl4soV9nx8sJgyoM4bAE52jAg6qQHYjcsC/4Z5Tm8FNeIR3bcauCV5dtzTvd32Mxvk6kfxUVfqV0VhdxiB1LT0jaQy7avunsSJh6nWc+tsvJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y9ImJwK1EkmmUeP11xgenDg0um5dorDDEjquPiO/wSI=;
 b=djigitPNlfrI7LlBoi/VRFZErlzrN4ZgBuWWg4aUb/RZcNoeYxcUYQk0skN4YT62Gqg34W/DsnqsFL0Re0sNRoyp1E9VhBooesvf3yIBf88VHrI8f1QS4Vzmcyk4myFnWLFdUOB80pKPxQIM77M+QgzhogxgBf+yVwnRuwP9uUk=
Received: from BYAPR18MB2438.namprd18.prod.outlook.com (20.179.91.207) by
 BYAPR18MB2536.namprd18.prod.outlook.com (20.179.93.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Mon, 14 Oct 2019 18:57:55 +0000
Received: from BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::fc70:ffee:bbab:36aa]) by BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::fc70:ffee:bbab:36aa%3]) with mapi id 15.20.2347.023; Mon, 14 Oct 2019
 18:57:55 +0000
From: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [EXT] Re: scmi sensor
Thread-Topic: [EXT] Re: scmi sensor
Thread-Index: AdWCUsSwuLCCh2snQAyop/dm84ppFwAX0g+AAAPI1zA=
Date: Mon, 14 Oct 2019 18:57:54 +0000
Message-ID: <BYAPR18MB24382003835852104E493E7EAF900@BYAPR18MB2438.namprd18.prod.outlook.com>
References: <BYAPR18MB2438D5CE74FADE66F1EEFC66AF900@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20191014170851.GB323@bogus>
In-Reply-To: <20191014170851.GB323@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ad778ac-6559-4755-7610-08d750d86c11
x-ms-traffictypediagnostic: BYAPR18MB2536:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR18MB253674CC0993E8510887608EAF900@BYAPR18MB2536.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01901B3451
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(396003)(346002)(366004)(189003)(199004)(13464003)(33656002)(99286004)(186003)(9686003)(6306002)(26005)(7736002)(8936002)(7696005)(25786009)(229853002)(53546011)(6506007)(76176011)(2906002)(55016002)(6436002)(102836004)(86362001)(11346002)(256004)(14444005)(8676002)(4326008)(446003)(6916009)(71190400001)(478600001)(71200400001)(81166006)(305945005)(81156014)(74316002)(52536014)(66556008)(64756008)(66446008)(966005)(66066001)(76116006)(316002)(66946007)(66476007)(5660300002)(6116002)(476003)(486006)(3846002)(14454004)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2536;
 H:BYAPR18MB2438.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pJP5DOckcn1Iv9wZ0QEuSqjpZXEJNMiE3LGaC0hRn5Vq1HSVhGrnk6MumYVIFX5poB7colPt9VIajZRR1yceNiwGwBVEtfmRdRNZm+F//++Tk1dKJ7Gh++W3C/htoI5BJ7rG1aPixuENEdku0PsUS0EE8/49oSsk3F14atYcM/UqhrKAuBx9B0PmLxDnzIWLDExXlVJ+YUFaJ+YsUl1b/CJCaBNlbL4xpjLetNYBM1iwHWLXhxQ7w2o3Bb+a0BF31tdbhb2xYEkHMTFVM3MVSgUtU+UowMcPlloqMPr8puiAynLegdutCGU0MqELGT/wm5+JGP6vdsvShgEZ/RO+ECxFneR/tMT5Rb94JPaoMFUyTFVoDnLx9u2jbuoVcUQ0UnTC9nK8Vf7H8pgK17Ghwd5BGb34NNdUXZGS1q9WUd3MlmqStOwBfmYFGyjpeDd956zYzF9glZEr/yxTOACJJA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad778ac-6559-4755-7610-08d750d86c11
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2019 18:57:54.9597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jx2HpHcvZmIpkbYAQVI0sDp8ik8YWpDMz+9PYD5CSg7OG9zZED9TvkvJ5+L0l3e+RSRd57igcIMBJI1ZktQ+Mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2536
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-14_09:2019-10-11,2019-10-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_115801_848217_78B581D4 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for your kind response.
Appreciate it.

Regards
Sujeet
-----Original Message-----
From: Sudeep Holla <sudeep.holla@arm.com> 
Sent: Monday, October 14, 2019 10:09 AM
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Cc: linux-arm-kernel@lists.infradead.org; Sudeep Holla <sudeep.holla@arm.com>
Subject: [EXT] Re: scmi sensor

External Email

----------------------------------------------------------------------
On Mon, Oct 14, 2019 at 06:26:57AM +0000, Sujeet Kumar Baranwal wrote:

> Hi Sudeep,

>

> In order to use scmi sensor TRIP_POINT_NOTIFY part, the protocol only

> specifies trip points to be configured, and it doesn't have any handler

> associated that shall be invoked upon those points being violated on agent.

> After registering the trip points for a sensor, how does the linux scmi

> sensor driver ever comes to know any violations reported by SCP?!



The notification part is not yet implemented. It's yet another work

in progress feature.



>

> In the scmi_rx_callback() in ISR context, I only see complete(xfer->done)

> which would only let a blocked thread know it could proceed but that means

> some application needs to be initiated and permanently stalled, listening

> to this event?

>



Yes we need to set up Rx channel, buffers and then handle the event.

Rx channel support was added in v5.4, I have posted patch for setting up

buffers[1] but didn't merge without the user. I am still debating on how

to add notification APIs from SCMI for it's users.



> My requirement is that some how I register a call back in linux's scmi senor

> protocol that would be called when trip values are violated and it shall be

> initiated by platform to the agent. It doesn't appear to be a possibility

> looking at the current implementation and msg ids of scmi sensor protocol.

> Am I missing something?

>



As I mentioned earlier all these are WIP. Without platform to test, I am

not actively developing these. I can share patches when it's in good shape.



--

Regards,

Sudeep



[1] https://urldefense.proofpoint.com/v2/url?u=https-3A__lore.kernel.org_lkml_20190708154730.16643-2D6-2Dsudeep.holla-40arm.com_&d=DwIBAg&c=nKjWec2b6R0mOyPaz7xtfQ&r=Hm1-XVU8b25YycWEs8mdXj-gi8TNI3X8J_X-2d6NuSA&m=3lG5ngBf9psdnYka42PZCdTc2VAJTACpUl2Q9B0Ncwk&s=aO8GKsDB1VVNuIyzJtZPPSglRWrlYoNa3W1jhhnOYLw&e= 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
