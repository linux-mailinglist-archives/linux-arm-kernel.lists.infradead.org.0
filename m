Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9231BAE1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBtxQonYAGQSHdIQSqRaikMhh4PG5xOLwHlujl5gP9s=; b=M4ie8e+r0Wrk8v
	GlsYyVQOB7+QVCDvRIhcFekWAzlmpb/G/Qpz5ZoG85Jg/52TZx4NTG6S71xstzQBMlKZD1m+B+Rzm
	IXuku6J3fiifpZfP6PvcvqLGVMmYMIEbboxXhm0tCMzcuBDMCrtKe06adJlikduEj8IYpihZmmJ9I
	3KaQ3UbvAEUAVJ6LBM8ltKsOIhXNiHSV7vxHQaAtmK72vWoDX8lUSmseKxN8xQuWE2KFCrMxCHByg
	JZeceaImDQhOJtRJDhKWOc0uwK6xbDcrYqJeExgSSzn5ffv+FYlkNSF17W987L9ioD4pNuNAyilyy
	2qk6PITqL9yzmHepKe1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9c1-0007zh-NU; Mon, 27 Apr 2020 19:40:17 +0000
Received: from mail-eopbgr1410137.outbound.protection.outlook.com
 ([40.107.141.137] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9bf-0007z3-AY
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 19:39:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OsgcstNs9+EqU2Q5a2KTZ+TKxrIMmRKxVA5vgOEjkerzwBamCIEm55G/oZLF50nhql3x3xokpeITiBpNrJo1mQRZgEHThfqM/un7lh+OTijrUdSI0aaWrGPAouCU7uPWX2MGmQ7Zb7kTo7nBYt9sbu2XJNZwpOnw9dfwBXaS308rPJg9MIUQ08uBz0xZlc63XfnU9/ssTNRb54nIQ3h00RBnGovGpM83bftNStuzYOL3jNDrBWPWZ55qKW/97gyovD2aUU+ENr9UnEkn9HqG6ko+2X25U7feup/+ggrVGpNTrZzRr86nDY+yw6bqj5sUebfR4+rj2k9RL8LDXibGgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lkAAfum7nxhqKxzkQYYZZSU8x8hjAVXIPkN0NEzfE7k=;
 b=J4l//PugsoB7WsgRRSyHWTpPTM8NqtJ2FtxdcCzxDXguBIfdSoTY73ce3JwO6x8/E8ADffvKx+Z58GvlocK6/ZcqjJD95LESFc6OAQroJVJZSl83+YLOwQULq9p6QHtljHtqNowzmhKhUIyGxUcnFKHyOKHFLydoCBMrF7uoyNc34O1Z4iyzJGQ6UP46LmJdCAOort7Jv6sAOXQjPTC+Etb2bAVRI2/JjMz05Jev8b8jEOhBnTy79jHemiuUfEEXEVE0nK5g9l1lqd7gKDtG5EJX4j7wYBbYyS205i/iJiR6b6seiOE0c6emCM7aodTPa0SWr17H0HhQagkJRNYOHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lkAAfum7nxhqKxzkQYYZZSU8x8hjAVXIPkN0NEzfE7k=;
 b=TVtxIr1I9Q+UcuJfadR8tBAwDTa/FDpDwivkNdoucmsxtIO9ZOkXZqs6DPNJEs4qWugkirDorD/hxHJrpQ+cfdl6zvzKKSMP6QG76i2UZhF6PftnPsPsd4moNcLK7k1wl8MLAUNWqIYsDqlM8QHHgk5luLN49MAnagY0S7I35l0=
Received: from TY1PR01MB1562.jpnprd01.prod.outlook.com (52.133.163.12) by
 TY1PR01MB1770.jpnprd01.prod.outlook.com (52.133.163.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.22; Mon, 27 Apr 2020 19:39:50 +0000
Received: from TY1PR01MB1562.jpnprd01.prod.outlook.com
 ([fe80::9582:9902:5907:49e7]) by TY1PR01MB1562.jpnprd01.prod.outlook.com
 ([fe80::9582:9902:5907:49e7%5]) with mapi id 15.20.2937.023; Mon, 27 Apr 2020
 19:39:50 +0000
From: Chris Brandt <Chris.Brandt@renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
 <magnus.damm@gmail.com>
Subject: RE: [PATCH] ARM: dts: r7s9210: Remove bogus clock-names from OSTM
 nodes
Thread-Topic: [PATCH] ARM: dts: r7s9210: Remove bogus clock-names from OSTM
 nodes
Thread-Index: AQHWHMozll9O00sfrUC6FttMgK1D46iNW/mQ
Date: Mon, 27 Apr 2020 19:39:50 +0000
Message-ID: <TY1PR01MB156288DE1BC4C56E88FF06418AAF0@TY1PR01MB1562.jpnprd01.prod.outlook.com>
References: <20200427192932.28967-1-geert+renesas@glider.be>
In-Reply-To: <20200427192932.28967-1-geert+renesas@glider.be>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcY2JyYW5kdDAxXGFwcGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEyOWUzNWJcbXNnc1xtc2ctZGE1MzYwMTMtODhiZS0xMWVhLWFhNjMtOTRlNmY3Njc5M2FlXGFtZS10ZXN0XGRhNTM2MDE0LTg4YmUtMTFlYS1hYTYzLTk0ZTZmNzY3OTNhZWJvZHkudHh0IiBzej0iNjMwIiB0PSIxMzIzMjQ4OTk4ODcwNjAzMTUiIGg9Iml4ckpZOE1ORklpWkdwSjlnZ3h3US9qdzE0az0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-dg-rorf: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chris.Brandt@renesas.com; 
x-originating-ip: [75.60.247.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a86e917f-76c9-4ea7-55f0-08d7eae2c083
x-ms-traffictypediagnostic: TY1PR01MB1770:
x-microsoft-antispam-prvs: <TY1PR01MB1770AAA3B47DDDA2521D55D08AAF0@TY1PR01MB1770.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TY1PR01MB1562.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(376002)(396003)(366004)(346002)(4744005)(478600001)(76116006)(52536014)(8936002)(55016002)(4326008)(186003)(86362001)(9686003)(8676002)(81156014)(26005)(6506007)(7696005)(2906002)(316002)(66476007)(110136005)(54906003)(66556008)(66446008)(5660300002)(64756008)(33656002)(66946007)(71200400001);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fSgEgv09Nl8jx2r22K5PL1LE989v1Svedv3vvh1IYXmXmRvmCfUrlOUeUOgB9I4HW0WhVfOjpm8x5/VXozLOdKsRt1ekQHwKX7hAYAvELwqq0FFxSRSsgmuNKwkSvYZJf9vvVSiSRIPLQWbnlk45wZbngXfyVQXHgH9G54+kIJDj5Ni2MJ2tYEryN2Vp/9mpgAjylXOsrgvdIplJIwr64/8xHT0dYIKuxe10BpmBxYun/Prtggo1KOxFwCY1c54ML/+C4wDPfTgUtOIqIUEqoOFhW7+PW36zOI1atAajxB/mt/ZEdLvxleZpZpsh4PHKKDV3swzjE5XEipbY58WTdyz0alYzOQUhLW8Slp6N5g9L8rWDbD2ngMFYGnie5WfWYctohYQwzOT7Dntko4fLYFJDndRK3yxpUXqRigeGHOcy7BESywLJd9h/jvHh+iFY
x-ms-exchange-antispam-messagedata: nu8fqVTDsleos4njlTFXxBB1Yppkh1ArAEixjCsjKdXXSfZ0LQSNI0pL1ramtbhvnfo7Hw7HJiSwPJEmrKCgZyORgw/fOUIjYp5kA6Ozdo0oMQr5yufM0RpRleMUZTEYr8+Ehrxs3HLo+Qd1nnhTbP8EGFM4Jvlb5sC/cFUan+r7/b+GuT+MjSz7x1pa6C+db+N4ae875o+4roKR9FhrKnmhkOVmRck6+ggu1N87CWbRRrAz/NPg8XX1mQoLavEUcuvFaajwmblCUsJLx1UNHVxRu+1xb+r578DzIPhIzj7emypdA9cBv4H3Pl/YIn2XYFcw03gtSAMRGkVCMR4iPGsCbvMuH1dHfOpi1hp4gzJ9+VguRbf7Y7JH4adz1wFleuJb9MiEO3nhha+LPV21U0MezNe2+EAk6AMJI9i0ZIOcMcy1R1t/3Y0c4wxcYunKLXTTr+J7N0xqOX324DngrZeETsIe57dT7AaoQB9xRBrISemc3JhjmerTtn0/iDm+ru6tUBlqknwQ+vJYEmifKbcZk3iBW5+s9wo2u1PRL0sUaPQbvCPne1oRzjeTLcoqxXr+H7jsHTo1vICP1kMsO4DMXNNL6Jpqxt7lgk47PON5RiRg8CT4Ei9RQ9nj9VclqgiOVbCurFAsJw4ReCSTrsfZIC6Hm/pr06XyF6e2NNKuXGtWwcfBGDA6IQtxwh0r8tKvRAXHVfdY9sCeT/n9zyXnupaX5VkZTfmIuaoxSAsRbjS1M667T0hvw6at2m/SFB2f1AHtVZ9E94qWSyoYQfDDhpQRDiBUwvEZriJ+CcQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a86e917f-76c9-4ea7-55f0-08d7eae2c083
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 19:39:50.8716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BJL2VmStLTqgsBMfglayvKHDf/WkY+nKKuy5t+Rj3xNWONK6kXjhuObcEcmKV/awQj9rfE5MNKvTpfX1vY7FuJuawHCOIZ9qWa+/8Qift4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PR01MB1770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123955_414543_760B1519 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.141.137 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Mon, Apr 27, 2020, Geert Uytterhoeven wrote:
> However, the actual clock names for the OS Timer nodes are not fixed,
> but contain the indices of the consumer instances.  Hence they cannot
> easily be used by a driver, without scanning for all possible indices.
> 
> Remove them, as the OSTM DT bindings do not specify clock-names anyway.

> ---
> To be queued in renesas-fixes for v5.7, to avoid the json-schema OSTM DT
> bindings conversion introducing a regression.
> ---

OK. Thank you.

Chris

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
