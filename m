Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107C5157D5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGrYNKDdSTvo7pTht2DNXaBevGWpifTzkXIcIe7Wqjk=; b=QjNuP8ybFegLqr
	PN50ODIu8L4A7k6VTuSTGrUgYs8x5PbsQsk1hcvkUw6Z+bH5befnWR6HrcEt6FiTMurkoVOem1hmj
	G5OqTzLc+somU307cLTbHFMhhbY3tAIBHS0o4fOgzeWnfVd4wzX85TGSsA57noi1AuMBJfQNM+o+D
	t760rP854FB+s1txDcqsg9Nrmx+PCLKnoZ2JRRX0g2DtNbgzU+/RN8hRBHE8tMZU8bxnCI1Yl6nUH
	NBNnIb+pXG8JX2rtqx3cHKPTl3OMkmdapetElnTgNkxK98vnb9YLFmnnvP2WxhejW6RsHuvkG1JVN
	DQJIhCSaACBuoEacRllg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1A1m-0001DR-SE; Mon, 10 Feb 2020 14:27:10 +0000
Received: from mail-bn8nam11on2079.outbound.protection.outlook.com
 ([40.107.236.79] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1A1e-0001D3-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:27:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AsUy3IQaOEwfwDHCxkPvHB1swFIbYNMmdq1fj5DrU805hqXexwWyXnBueQ6TJhlLigZ0GPzNQfWK3w1c3SLhUy9u2mZ6IPzSTAPLwfG+/lsIK1j612m9bAeQj+1hHWo4nVVDcn46CKMxbFkVi5Eg8j/BWnD80ypEw28T4XpC6B7syrpwzPI8pQtlnNu7QqdOaAr83VRFTOWeeQHgu4CETlhWYZ+NJL7noyUUK0F9Qh7gGRULF/QeDQwkzBrVIO5MXfCeV5EbvciJn9m0lyeaL7uJnoTWp7XUy5QbSiFbH/PYTik2Tf09kwvQ4nXcxq0UhMNq6hgu2o0SLciU8axHow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B2jghlmnoNzrIgJWVj8VB0g1zUmeOH1JbRpIjKkvJy8=;
 b=dIkSDDuGmjlU4U322VdzEcFpaBxBum64AUfFcy8wSMKDpRBoKqyusUR9nADtIHpbXndLKcANF632v1C98qv6n0ZbRgUtBS0ObHTmObgtDKFZES2AAWnSWYTdAws7/im53egMOC9+9UbDH7hBBEYtGw2kW0tmWZHt/SwQp8JCATrbvVr1HsmCIUuN42A5m/JzZtAm2e4QeVPMnewXZIq6ncmdeNslDebpZ9DrxRVlfCPjsTt/MCoskukZbrKG+SrY+XwKhwBmQhuiQ3Ay98okYce4zrqIoSxFZNzAFOTIQfYdvdOVay7wCLfCHmAIm6+/eGrc2aTtp54m9jm7HPlP+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B2jghlmnoNzrIgJWVj8VB0g1zUmeOH1JbRpIjKkvJy8=;
 b=jxWK6JMZnsjj5lROJkFC5y7qLvP+A5kHRzdxhkX038+RuTNrM9xtFSCf7/bOz2u0bU7z5aat0n/cOyMxp6+7ngwV+h2IkHJ7KT2GjdM9QDQtHaRq3qnbaLa5asv9wxG5v1zwPKHZy9nzKZq0YOAFr3OrTealbj6Enp06dcCTNI0=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6037.namprd02.prod.outlook.com (52.132.229.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Mon, 10 Feb 2020 14:26:59 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2707.030; Mon, 10 Feb 2020
 14:26:58 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH v3 -next 3/4] net: emaclite: Fix arm64 compilation warnings
Thread-Topic: [PATCH v3 -next 3/4] net: emaclite: Fix arm64 compilation
 warnings
Thread-Index: AQHV2CxSaDCeJb8y0kOpuFNYK2kDbKgExuAAgA/AohA=
Date: Mon, 10 Feb 2020 14:26:58 +0000
Message-ID: <CH2PR02MB7000E00674D836639F371E35C7190@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
 <1580471270-16262-4-git-send-email-radhey.shyam.pandey@xilinx.com>
 <20200131133742.GD9639@lunn.ch>
In-Reply-To: <20200131133742.GD9639@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5c9f6bf1-630b-4aae-df56-08d7ae35496c
x-ms-traffictypediagnostic: CH2PR02MB6037:|CH2PR02MB6037:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB60374800D590E1B0D155A289C7190@CH2PR02MB6037.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(346002)(39860400002)(376002)(199004)(189003)(76116006)(66446008)(33656002)(64756008)(2906002)(52536014)(55016002)(66556008)(9686003)(66476007)(66946007)(6916009)(5660300002)(478600001)(7696005)(81156014)(54906003)(186003)(71200400001)(81166006)(8936002)(8676002)(316002)(26005)(53546011)(6506007)(86362001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6037;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sL1z/s1BqQfbl2YR+xlApDs5BGr+/sOQRmb+8F5fjCfnYMdfg0DGPfpcMU824RssTbFcf2Wl+dwiWK4cMPHEEpAjX6qsz391OubkkIz7WKxrERHnJ2WShhwjZ/3SFls3B1lw3iI5mN7ecGnefniP1Kz71y5EniJAqP1Ylc3VheDfLY0n571G5BvzcGPPESV5UO1kxW9HGgnyHo7wc+xAUQuj2AO+1aacpDr2FOJK4ZR8PFYtYB3twPF4u8XhBEn+w14Cq6eV5egtjZ4XNoLgQMaxprHbJQLrgu/QJO+AgniWhXhiyJj/+jiIN2WBHFsvlNFYqOc6Om6HmXpLpn5UMgHGE3rA+ZGs9hG/Kkxcc0K8ydtV663ETm+3woy6oAPMEm8OJxq3ESvLNMroti7YIZrGxVNLXVOb+X5EDIDVMeotczauy7BnELbf6EQp/Kc+
x-ms-exchange-antispam-messagedata: HG0pT4yE+O3yw7ArxvNiLFGJlzR1T3UOySS/Q2Ewj4KY6i36+/PqGsdrq/Q1W38P4B4kQOzx5r1CqEFTSo7sDDzcKcbhn94jkKXRjUjjpOWlWiuDLVMqsviboIIaJqM7WWlnk1pklJu3V/eCQtmLqg==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c9f6bf1-630b-4aae-df56-08d7ae35496c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 14:26:58.3341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AAYmJptx/L6rrAFX8PIdPgcCcO0zj5Wr+CKQawSaame7W9oIM3jltlTCD/PL4lH6vL7fxYLx+48VuvsywsolFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_062702_438183_035635EC 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 John Linn <linnj@xilinx.com>, Michal Simek <michals@xilinx.com>,
 Anirudha Sarangi <anirudh@xilinx.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Andrew Lunn <andrew@lunn.ch>
> Sent: Friday, January 31, 2020 7:08 PM
> To: Radhey Shyam Pandey <radheys@xilinx.com>
> Cc: davem@davemloft.net; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Anirudha Sarangi <anirudh@xilinx.com>; Michal Simek
> <michals@xilinx.com>; gregkh@linuxfoundation.org;
> mchehab+samsung@kernel.org; John Linn <linnj@xilinx.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [PATCH v3 -next 3/4] net: emaclite: Fix arm64 compilation warnings
> 
> On Fri, Jan 31, 2020 at 05:17:49PM +0530, Radhey Shyam Pandey wrote:
> >
> >  /* BUFFER_ALIGN(adr) calculates the number of bytes to the next alignment.
> */
> > -#define BUFFER_ALIGN(adr) ((ALIGNMENT - ((u32)adr)) % ALIGNMENT)
> > +#define BUFFER_ALIGN(adr) ((ALIGNMENT - ((ulong)adr)) % ALIGNMENT)
> 
> Hi Radhey
> 
> linux/kernel.h has a few interesting macros, like
> 
> #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
> 
> These are more likely to be correct across all architectures than
> anything you role yourself.
> 
Thanks for the review. I agree using a kernel macro is preferred. However,
as a second thought it seems we can get rid of this custom BUFFER_ALIGN
macro and simply calling skb_reserve(skb, NET_IP_ALIGN) will make the
protocol header to be aligned on at least a 4-byte boundary.

> 	 Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
