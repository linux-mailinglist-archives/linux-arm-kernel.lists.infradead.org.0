Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC3416295B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 16:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GQKJl1pA81E5dSsHi55KGmcEVSiTBmMdYccsjQT/3vg=; b=Yg7MLSo5ZB0yK/Qp/6Ca0v0Ka
	6BsqPE/N378Wuh8pbcIeon/Lo5f/BlJfAWJa7EWvXfk45t+KY93gusLGdYqoUd/Vh/F26drUpRq6N
	MNKI3lQu3O58b/LuDlpXYhGX0r6tDvuO13+zMbZYQjfv7r74GhbTqpgJcuIlsePBl7mXyvMEeS+3u
	TqV8yFzguyN1tuSyUm3vAsCSCUHMTWx9Z98EG+tGRjBIpbOa+2fKjBW0KF2QIbkenTEfi94bld4rk
	w0Tc1q7sqICBJh0MTigE6JDhSwcCB8Jzrrcp54b1lT1p9lBIKrxPyO/4JGrbO037ax1tw/KNwyK9m
	nrkYCMcWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j44jU-0007ez-RZ; Tue, 18 Feb 2020 15:24:20 +0000
Received: from mail-eopbgr20082.outbound.protection.outlook.com ([40.107.2.82]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44jM-0007e9-5W
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 15:24:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GfRN1N0pQPzgP5Fdn6VBaTlUkljwesv//+b2yH9qRNFLpCtTEy84j8dV2CmXcbcgkDmJvNCOlbF7dIar4UHISb1GMmctLoz4zlRWDIMHWiRG8vMiZvWQ7UCF7Y6iW766CDBCXDfo8hYNt2HZGkPAnik3JvAoESYL07WkFnl7Vxl5h8r3deqQ2H9b+nXejqXXReJe++GBx54mDhvPFPNMhJj6XE2wHdn2g63z3atXixEYTktkG5HneyNYBtTH8tuyoOceAP26k85L2Evp+QJ/Hz6utRVLOJmTQiPYKLSnW5jd2WlrJ0cP6cefYtXXIlFSX1IoZbWzjnSk6XU21gt2mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOVkb87yXurJu/NDHR+/f4K9MwtrB6LX0JSkHaZDOoA=;
 b=ml3h+X/Tx5c2f8IaX6jaoYLgSA5amyXeRrBjSWPiGj7iCPSZQW+x2lUrA/BM+h0gKQNDo5+LB637CYoSqTj8CjT/lZfWFrqmRmmAFqFIoa1VEtsVBEcCjDxt4sr6vRD5/An1aX+ZrPk8XSpzTCFOKRsyaJVqeGnbWXiORWLBBbdyey5Uq/AZ1Wc6CqHte4odx37iori88mb7STJM2Or0roLtfTIL1+3rUE6aq9BEWoJAaxdRbRKTmPrbRce9UP85XSBq/2AXCNHHUDRyJ23o975MZEgL3ufoX2xeWzsy8CP+O3lUXTDS9V23GL19NfrVADgS4c7j7D7umQgT562Vhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOVkb87yXurJu/NDHR+/f4K9MwtrB6LX0JSkHaZDOoA=;
 b=OFFqnTCfRCY4903djiILYQjN6LZugqwrg0tNi/88Nt3bsTatuBZOtYWjvih1omQ1t9+BFaJ01S36WDvVeqe7Kg10HOtHuPBN6obvIH4ArvhPVxUlkbS3zWTOOHrRV6q2hk8wmezWaA9KbdD0ENyXPizMwqwnGYTBBMM7FtVNz6Q=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=diana.craciun@oss.nxp.com; 
Received: from VI1PR0402MB2815.eurprd04.prod.outlook.com (10.172.255.144) by
 VI1PR0402MB2879.eurprd04.prod.outlook.com (10.175.24.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Tue, 18 Feb 2020 15:24:07 +0000
Received: from VI1PR0402MB2815.eurprd04.prod.outlook.com
 ([fe80::a8ee:1b0f:6b3e:4682]) by VI1PR0402MB2815.eurprd04.prod.outlook.com
 ([fe80::a8ee:1b0f:6b3e:4682%12]) with mapi id 15.20.2729.032; Tue, 18 Feb
 2020 15:24:06 +0000
Subject: Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Pankaj Bansal (OSS)" <pankaj.bansal@oss.nxp.com>
References: <VI1PR04MB5135D7D8597D33DB76DA05BDB0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
 <615c6807-c018-92c9-b66a-8afdda183699@huawei.com>
 <VI1PR04MB513558BF77192255CBE12102B0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
 <20200218144653.GA4286@e121166-lin.cambridge.arm.com>
From: Diana Craciun OSS <diana.craciun@oss.nxp.com>
Message-ID: <e566692c-9b2e-ab56-29db-465d3232d50d@oss.nxp.com>
Date: Tue, 18 Feb 2020 17:24:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <20200218144653.GA4286@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-ClientProxiedBy: AM5P189CA0028.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:206:15::41) To VI1PR0402MB2815.eurprd04.prod.outlook.com
 (2603:10a6:800:ae::16)
MIME-Version: 1.0
Received: from [10.171.73.123] (212.146.100.6) by
 AM5P189CA0028.EURP189.PROD.OUTLOOK.COM (2603:10a6:206:15::41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24 via Frontend Transport; Tue, 18 Feb 2020 15:24:04 +0000
X-Originating-IP: [212.146.100.6]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8aa3dfd3-52de-4151-aa54-08d7b4869801
X-MS-TrafficTypeDiagnostic: VI1PR0402MB2879:|VI1PR0402MB2879:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB2879BD20249E814F3FF35DD8BE110@VI1PR0402MB2879.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Forefront-PRVS: 031763BCAF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(189003)(199004)(5660300002)(52116002)(54906003)(86362001)(8676002)(4326008)(7416002)(81166006)(81156014)(31696002)(66946007)(110136005)(186003)(8936002)(66556008)(53546011)(16526019)(31686004)(2616005)(66476007)(26005)(956004)(2906002)(6486002)(6636002)(966005)(16576012)(478600001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2879;
 H:VI1PR0402MB2815.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w0HsRxWqJbTuuzZOH9PYA31jCQ2g1WoL4Dzo0FyRpTVq4+5lsZkOo0UXpPkbVn8ixGMrehzOjieRWzk5w1n8dh4cGpoQV1ZvKGIZzhvu9MROKT10xQ9yJ2FnWGzBV0wOhcAF3I23HfRPtJgpCAcyoBnX8I+nwguNUjNYdS5EddNCcqAIiQjES76sjh59EUDq0N0/nGOwJkJlUp0oCkiHWIoGXvJ12ioXbdu2FUyniYSDsGiKvVEzCI5Fpy6dc700n/TQYtoNzSXpoH9YLF4odm1nz5l/Ho50+bJWquIwAiZK4shlgcBcBKdOPZ8SGVh8lmVR+ESR2ctrfpm9Ikxz+FC3gBXq1dlYTlYl8vFd0dLvsO+lZWkvpKExpS2SU/28S7U7BzQPHyurexeIVIZqk+t5TtiXqP0zOvPw7/S5cbE6h6jtW1Dwfy/0HgYpU9pgePrXNJF1Mgzb/OCrbxPipMzAXDz8L4cX4VlmiSPMgnWljOrN0b5pErniIL5FNKrp9ULX4ZkRtHKdhRxOFFmVWA==
X-MS-Exchange-AntiSpam-MessageData: D+3ABepQNKo5212AlTwFc72wwJzqyblz1eRARjqgJv4sJ6QTm2+APQ7ecblzdksds8LWl68sFpPYKhENJFSRLneAvm4cLPjYZO0Faa21BZG1KpOUdJwziPqgRbZ1nCHecHQx1SfJGGXpRRmFVlHo+g==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aa3dfd3-52de-4151-aa54-08d7b4869801
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2020 15:24:06.9056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V4+aR5IHZLwljR2xsIlE4rxTz2vkeL7Df3bpRSXfOJukyT6gr+rk/6QgACQuEIfMmTM2CQDVPPLYlF5ajNRTmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2879
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_072412_425773_66B005F5 
X-CRM114-Status: GOOD (  36.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>,
 "nleeder@codeaurora.org" <nleeder@codeaurora.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "jon@solid-run.com" <jon@solid-run.com>, Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywKCk9uIDIvMTgvMjAyMCA0OjQ2IFBNLCBMb3JlbnpvIFBpZXJhbGlzaSB3cm90
ZToKPiBPbiBUdWUsIEZlYiAxOCwgMjAyMCBhdCAxMjo0ODozOVBNICswMDAwLCBQYW5rYWogQmFu
c2FsIChPU1MpIHdyb3RlOgo+Cj4gWy4uLl0KPgo+Pj4+IEluIERUIGNhc2UsIHdlIGNyZWF0ZSB0
aGUgZG9tYWluIERPTUFJTl9CVVNfRlNMX01DX01TSSBmb3IgTUMgYnVzIGFuZAo+Pj4gaXQncyBj
aGlsZHJlbi4KPj4+PiBBbmQgdGhlbiB3aGVuIE1DIGNoaWxkIGRldmljZSBpcyBjcmVhdGVkLCB3
ZSBzZWFyY2ggdGhlICJtc2ktcGFyZW50Igo+Pj4gcHJvcGVydHkgZnJvbSB0aGUgTUMKPj4+PiBE
VCBub2RlIGFuZCBnZXQgdGhlIElUUyBhc3NvY2lhdGVkIHdpdGggTUMgYnVzLiBUaGVuIHdlIHNl
YXJjaAo+Pj4gRE9NQUlOX0JVU19GU0xfTUNfTVNJCj4+Pj4gb24gdGhhdCBJVFMuIE9uY2Ugd2Ug
ZmluZCB0aGUgZG9tYWluLCB3ZSBjYW4gY2FsbCBtc2lfZG9tYWluX2FsbG9jX2lycXMgZm9yCj4+
PiB0aGF0IGRvbWFpbi4KPj4+PiBUaGlzIGlzIGV4YWN0bHkgd2hhdCB3ZSB0cmllZCB0byBkbyBp
bml0aWFsbHkgd2l0aCBBQ1BJLiBCdXQgdGhlIHNlYXJjaGluZwo+Pj4gRE9NQUlOX0JVU19GU0xf
TUNfTVNJCj4+Pj4gYXNzb2NpYXRlZCB0byBhbiBJVFMsIGlzIHNvbWV0aGluZyB0aGF0IGlzIHBh
cnQgb2YgZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYy4KPj4+PiAoc2ltaWxhciB0byBET01BSU5f
QlVTX1BMQVRGT1JNX01TSSBhbmQgRE9NQUlOX0JVU19QQ0lfTVNJKQo+Pj4gQ2FuIHlvdSBoYXZl
IGEgbG9vayBhdCBtYmlnZW4gZHJpdmVyIChkcml2ZXJzL2lycWNoaXAvaXJxLW1iaWdlbi5jKSB0
byBzZWUgaWYKPj4+IGl0IGhlbHBzIHlvdT8KPj4+Cj4+PiBtYmlnZW4gaXMgYW4gaXJxIGNvbnZl
cnRlciB0byBjb252ZXJ0IGRldmljZSdzIHdpcmVkIGludGVycnVwdHMgaW50byBNU0kKPj4+IChj
b25uZWN0aW5nIHRvIElUUyksIHdoaWNoIHdpbGwgYWxsb2MgYSBidW5jaCBvZiBNU0lzIGZyb20g
SVRTIHBsYXRmb3JtIE1TSQo+Pj4gZG9tYWluIGF0IHRoZSBzZXR1cC4KPj4gVW5mb3J0dW5hdGVs
eSB0aGlzIGlzIG5vdCB0aGUgc2FtZSBjYXNlIGFzIG91cnMuIEFzIEkgc2VlIEhpc2lsaWNvbiBJ
T1JUIHRhYmxlCj4+IElzIHVzaW5nIHNpbmdsZSBpZCBtYXBwaW5nIHdpdGggbmFtZWQgY29tcG9u
ZW50cy4KPj4KPj4gaHR0cHM6Ly9naXRodWIuY29tL3RpYW5vY29yZS9lZGsyLXBsYXRmb3Jtcy9i
bG9iL21hc3Rlci9TaWxpY29uL0hpc2lsaWNvbi9IaTE2MTYvRDA1QWNwaVRhYmxlcy9EMDVJb3J0
LmFzbCNMMzAwCj4+Cj4+IHdoaWxlIHdlIGFyZSBub3Q6Cj4+Cj4+IGh0dHBzOi8vc291cmNlLmNv
ZGVhdXJvcmEub3JnL2V4dGVybmFsL3FvcmlxL3FvcmlxLWNvbXBvbmVudHMvZWRrMi1wbGF0Zm9y
bXMvdHJlZS9QbGF0Zm9ybS9OWFAvTFgyMTYwYVJkYlBrZy9BY3BpVGFibGVzL0lvcnQuYXNsYz9o
PUxYMjE2MF9VRUZJX0FDUElfRUFSMSNuMjkwCj4+Cj4+IFRoaXMgaXMgYmVjYXVzZSBhcyBJIHNh
aWQsIHdlIGFyZSB0cnlpbmcgdG8gcmVwcmVzZW50IGEgYnVzIGluIElPUlQKPj4gdmlhIG5hbWVk
IGNvbXBvbmVudHMgYW5kIG5vdCBpbmRpdmlkdWFsIGRldmljZXMgY29ubmVjdGVkIHRvIHRoYXQg
YnVzLgo+IEkgaGFkIGEgdGhvcm91Z2ggbG9vayBpbnRvIHRoaXMgYW5kIHN0cmljdGx5IHNwZWFr
aW5nIHRoZXJlIGlzIG5vCj4gKm1hcHBpbmcqIHJlcXVpcmVtZW50IGF0IGFsbCwgYWxsIHlvdSBu
ZWVkIHRvIGtub3cgaXMgd2hhdCBJVFMgdGhlIEZTTAo+IE1DIGJ1cyBpcyBtYXBwaW5nIE1TSXMg
dG8uIFdoaWNoIGJyaW5ncyBtZSB0byB0aGUgbmV4dCBxdWVzdGlvbiAod2hpY2gKPiBpcyBvcnRo
b2dvbmFsIHRvIGhvdyB0byBtb2RlbCBGU0wgTUMgaW4gSU9SVCwgdGhhdCBoYXMgdG8gYmUgZGlz
Y3Vzc2VkCj4gYnV0IEkgd2FudCB0byBoYXZlIGEgZnVsbCBwaWN0dXJlIGluIG1pbmQgZmlyc3Qp
Lgo+Cj4gV2hlbiB5b3UgcHJvYmUgdGhlIEZTTCBNQyBhcyBhIHBsYXRmb3JtIGRldmljZSwgdGhl
IEFDUEkgY29yZSwKPiB0aHJvdWdoIElPUlQgKGlmIHlvdSBhZGQgdGhlIDE6MSBtYXBwaW5nIGFz
IGFuIGFycmF5IG9mIHNpbmdsZQo+IG1hcHBpbmdzKSBhbHJlYWR5IGxpbmsgdGhlIHBsYXRmb3Jt
IGRldmljZSB0byBJVFMgcGxhdGZvcm0KPiBkZXZpY2UgTVNJIGRvbWFpbiAoYWNwaV9jb25maWd1
cmVfcG1zaV9kb21haW4oKSkuCj4KPiBUaGUgYXNzb2NpYXRlZCBmd25vZGUgaXMgdGhlICpzYW1l
KiAoSUlVQykgYXMgZm9yIHRoZQo+IERPTUFJTl9CVVNfRlNMX01DX01TSSBhbmQgSVRTIERPTUFJ
Tl9CVVNfTkVYVVMsIHNvIGluIHByYWN0aWNlCj4geW91IGRvbid0IG5lZWQgSU9SVCBjb2RlIHRv
IHJldHJpZXZlIHRoZSBET01BSU5fQlVTX0ZTTF9NQ19NU0kKPiBkb21haW4sIHRoZSBmd25vZGUg
aXMgdGhlIHNhbWUgYXMgdGhlIG9uZSBpbiB0aGUgRlNMIE1DIHBsYXRmb3JtCj4gZGV2aWNlIElS
USBkb21haW4tPmZ3bm9kZSBwb2ludGVyIGFuZCB5b3UgY2FuIHVzZSBpdCB0bwo+IHJldHJpZXZl
IHRoZSBET01BSU5fQlVTX0ZTTF9NQ19NU0kgZG9tYWluIHRocm91Z2ggaXQuCj4KPiBJcyBteSBy
ZWFkaW5nIGNvcnJlY3QgPwoKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBlZmZvcnQhIFJl
YWxseSBhcHByZWNpYXRlZCEgWWVzLCB0aGUgCnVuZGVyc3RhbmRpbmcgaXMgY29ycmVjdC4gSSBo
YXZlIHByb3RvdHlwZWQgdGhpcyBpZGVhIGZvciBEVCwgc2VlIGJlbG93IFsxXS4KU28sIEkgZ2V0
IHRoZSBmd25vZGUgZnJvbSB0aGUgcGxhdGZvcm0gZGV2aWNlIGRvbWFpbiAoYmVjYXVzZSB0aGV5
IGFyZSAKdGhlIHNhbWUgd2l0aCB0aGUgZGV2aWNlcyB1bmRlcm5lYXRoIHRoZSBNQy1CVVMgYnJp
ZGdlKSBhbmQgdXNlIHRoZSAKZndub2RlIHRvIHJldHJpZXZlIHRoZSBNQy1CVVMgZG9tYWluLgoK
Pgo+IE92ZXJhbGwsIERPTUFJTl9CVVNfRlNMX01DX01TSSBpcyBqdXN0IGFuIE1TSSBsYXllciB0
byBvdmVycmlkZSB0aGUKPiBwcm92aWRlIHRoZSBNU0kgZG9tYWluIC0+cHJlcGFyZSBob29rIChp
ZSB0byBzdGFzaCB0aGUgTUMgZGV2aWNlIGlkKSwgbm8KPiBtb3JlIChpZSBpdHNfZnNsX21jX21z
aV9wcmVwYXJlKCkpLgo+Cj4gVGhhdCdzIGl0IGZvciB0aGUgTVNJIGxheWVyIC0gSSBuZWVkIHRv
IGZpZ3VyZSBvdXQgd2hldGhlciB3ZSAqd2FudCogdG8KPiBleHRlbmQgSU9SVCAoYW5kL29yIEFD
UEkpIHRvIGRlZmluZWQgYmluZGluZ3MgZm9yICJhZGRpdGlvbmFsIGJ1c3NlcyIsCj4gd2hhdCBJ
IHdyaXRlIGFib3ZlIGlzIGEgc3VtbWFyeSBvZiBteSB1bmRlcnN0YW5kaW5nLCBJIGhhdmUgbm90
IG1hZGUgbXkKPiBtaW5kIHVwIHlldC4KPgo+IEFzIGZvciB0aGUgSU9NTVUgY29kZSwgaXQgc2Vl
bXMgbGlrZSB0aGUgb25seSB0aGluZyBuZWVkZWQgaXMKPiBleHRlbmRpbmcgbmFtZWQgY29tcG9u
ZW50cyBjb25maWd1cmF0aW9uIHRvIGNoaWxkIGRldmljZXMsCj4gaGllcmFyY2hpY2FsbHkuCgpM
YXVyZW50aXUgdXNlZCBhIHNpbWlsYXIgYXBwcm9hY2ggZm9yIERNQSBjb25maWd1cmF0aW9uIChh
Z2FpbiAKcHJvdG90eXBlZCBmb3IgRFQpLiBbMl0KSXQgaW52b2x2ZXMgd2lyaW5nIHVwIGEgY3Vz
dG9tIC5kbWFfY29uZmlndXJlIGZvciBvdXIgZGV2aWNlcyBhcyBhbnl3YXksIAppdCBtYWRlIGxp
dHRsZSBzZW5zZSB0byBwcmV0ZW5kIHRoYXQgdGhlc2UgZGV2aWNlcyBhcmUgcGxhdGZvcm0gZGV2
aWNlcyAKYW5kIHRyaWNrIHRoZSBEVCBvciBBQ1BJIGxheWVycyBpbnRvIHRoYXQuIEFzIGEgbmlj
ZSBzaWRlIGVmZmVjdCwgdGhpcyAKd2lsbCBhbGxvdyB0byBnZXQgcmlkIG9mIG91ciBleGlzdGlu
ZyBob29rcyBpbiB0aGUgRFQgZ2VuZXJpYyBjb2RlLgoKPgo+IEFzIE1hcmMgYWxyZWFkeSBtZW50
aW9uZWQsIElPTU1VIGFuZCBJUlEgY29kZSBtdXN0IGJlIHNlcGFyYXRlIGZvcgo+IGZ1dHVyZSBw
b3N0aW5ncyBidXQgZmlyc3Qgd2UgbmVlZCB0byBmaW5kIGEgc3VpdGFibGUgYW5zd2VyIHRvCj4g
dGhlIHByb2JsZW0gYXQgaGFuZC4KPgo+IExvcmVuem8KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKClsxXSBNU0kg
Y29uZmlndXJhdGlvbgoKIMKgZHJpdmVycy9idXMvZnNsLW1jL2ZzbC1tYy1tc2kuYyB8IDExICsr
KysrKysrKy0tCiDCoDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9idXMvZnNsLW1jL2ZzbC1tYy1tc2kuYyAKYi9kcml2
ZXJzL2J1cy9mc2wtbWMvZnNsLW1jLW1zaS5jCmluZGV4IDhiOWM2NmQ3YzRmZi4uNjc0ZjVhNjAx
MDliIDEwMDY0NAotLS0gYS9kcml2ZXJzL2J1cy9mc2wtbWMvZnNsLW1jLW1zaS5jCisrKyBiL2Ry
aXZlcnMvYnVzL2ZzbC1tYy9mc2wtbWMtbXNpLmMKQEAgLTE4MiwxNiArMTgyLDIzIEBAIGludCBm
c2xfbWNfZmluZF9tc2lfZG9tYWluKHN0cnVjdCBkZXZpY2UgCiptY19wbGF0Zm9ybV9kZXYsCiDC
oHsKIMKgwqDCoMKgIHN0cnVjdCBpcnFfZG9tYWluICptc2lfZG9tYWluOwogwqDCoMKgwqAgc3Ry
dWN0IGRldmljZV9ub2RlICptY19vZl9ub2RlID0gbWNfcGxhdGZvcm1fZGV2LT5vZl9ub2RlOwor
wqDCoMKgIHN0cnVjdCBmd25vZGVfaGFuZGxlICpmd25vZGU7CgotwqDCoMKgIG1zaV9kb21haW4g
PSBvZl9tc2lfZ2V0X2RvbWFpbihtY19wbGF0Zm9ybV9kZXYsIG1jX29mX25vZGUsCi3CoMKgwqAg
wqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgwqDCoMKgIERPTUFJTl9CVVNfRlNMX01DX01TSSk7
CivCoMKgwqAgbXNpX2RvbWFpbiA9IGRldl9nZXRfbXNpX2RvbWFpbihtY19wbGF0Zm9ybV9kZXYp
OwogwqDCoMKgwqAgaWYgKCFtc2lfZG9tYWluKSB7CiDCoMKgwqDCoCDCoMKgwqAgcHJfZXJyKCJV
bmFibGUgdG8gZmluZCBmc2wtbWMgTVNJIGRvbWFpbiBmb3IgJXBPRlxuIiwKIMKgwqDCoMKgIMKg
wqDCoCDCoMKgwqDCoMKgwqAgbWNfb2Zfbm9kZSk7CgogwqDCoMKgwqAgwqDCoMKgIHJldHVybiAt
RU5PRU5UOwogwqDCoMKgwqAgfQorwqDCoMKgIGZ3bm9kZSA9IG1zaV9kb21haW4tPmZ3bm9kZTsK
K8KgwqDCoCBtc2lfZG9tYWluID0gaXJxX2ZpbmRfbWF0Y2hpbmdfZndub2RlKGZ3bm9kZSwgRE9N
QUlOX0JVU19GU0xfTUNfTVNJKTsKK8KgwqDCoCBpZiAoIW1zaV9kb21haW4pIHsKK8KgwqDCoCDC
oMKgwqAgcHJfZXJyKCJVbmFibGUgdG8gZmluZCBmc2wtbWMgTVNJIGRvbWFpbiBmb3IgJXBPRlxu
IiwKK8KgwqDCoCDCoMKgwqAgwqDCoMKgwqDCoCBtY19vZl9ub2RlKTsKCivCoMKgwqAgwqDCoMKg
IHJldHVybiAtRU5PRU5UOworwqDCoMKgIH0KIMKgwqDCoMKgICptY19tc2lfZG9tYWluID0gbXNp
X2RvbWFpbjsKIMKgwqDCoMKgIHJldHVybiAwOwogwqB9Ci0tIAoyLjE3LjEKCgoKWzJdIERNQSBj
b25maWd1cmF0aW9uCgogwqBkcml2ZXJzL2J1cy9mc2wtbWMvZnNsLW1jLWJ1cy5jIHwgNDIgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystCiDCoDEgZmlsZSBjaGFuZ2VkLCA0MSBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9idXMvZnNsLW1j
L2ZzbC1tYy1idXMuYyAKYi9kcml2ZXJzL2J1cy9mc2wtbWMvZnNsLW1jLWJ1cy5jCmluZGV4IGY5
YmM5YzM4NGFiNS4uNWM2MDIxYTEzNjEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2J1cy9mc2wtbWMv
ZnNsLW1jLWJ1cy5jCisrKyBiL2RyaXZlcnMvYnVzL2ZzbC1tYy9mc2wtbWMtYnVzLmMKQEAgLTEz
MiwxMSArMTMyLDUxIEBAIHN0YXRpYyBpbnQgZnNsX21jX2J1c191ZXZlbnQoc3RydWN0IGRldmlj
ZSAqZGV2LCAKc3RydWN0IGtvYmpfdWV2ZW50X2VudiAqZW52KQogwqBzdGF0aWMgaW50IGZzbF9t
Y19kbWFfY29uZmlndXJlKHN0cnVjdCBkZXZpY2UgKmRldikKIMKgewogwqDCoMKgwqAgc3RydWN0
IGRldmljZSAqZG1hX2RldiA9IGRldjsKK8KgwqDCoCBzdHJ1Y3QgaW9tbXVfZndzcGVjICpmd3Nw
ZWM7CivCoMKgwqAgY29uc3Qgc3RydWN0IGlvbW11X29wcyAqaW9tbXVfb3BzOworwqDCoMKgIHN0
cnVjdCBmc2xfbWNfZGV2aWNlICptY19kZXYgPSB0b19mc2xfbWNfZGV2aWNlKGRldik7CivCoMKg
wqAgaW50IHJldDsKK8KgwqDCoCB1MzIgaWNpZDsKCiDCoMKgwqDCoCB3aGlsZSAoZGV2X2lzX2Zz
bF9tYyhkbWFfZGV2KSkKIMKgwqDCoMKgIMKgwqDCoCBkbWFfZGV2ID0gZG1hX2Rldi0+cGFyZW50
OwoKLcKgwqDCoCByZXR1cm4gb2ZfZG1hX2NvbmZpZ3VyZShkZXYsIGRtYV9kZXYtPm9mX25vZGUs
IDApOworwqDCoMKgIGZ3c3BlYyA9IGRldl9pb21tdV9md3NwZWNfZ2V0KGRtYV9kZXYpOworwqDC
oMKgIGlmICghZndzcGVjKSB7CivCoMKgwqAgwqDCoMKgIGRldl9lcnIoZGV2LCAiJXM6IG51bGwg
ZndzcGVjXG4iLCBfX2Z1bmNfXyk7CivCoMKgwqAgwqDCoMKgIHJldHVybiAtRU5PREVWOworwqDC
oMKgIH0KK8KgwqDCoCBpb21tdV9vcHMgPSBpb21tdV9vcHNfZnJvbV9md25vZGUoZndzcGVjLT5p
b21tdV9md25vZGUpOworwqDCoMKgIGlmICghaW9tbXVfb3BzKSB7CivCoMKgwqAgwqDCoMKgIGRl
dl9lcnIoZGV2LCAiJXM6IG51bGwgaW9tbXUgb3BzXG4iLCBfX2Z1bmNfXyk7CivCoMKgwqAgwqDC
oMKgIHJldHVybiAtRU5PREVWOworwqDCoMKgIH0KKworwqDCoMKgIHJldCA9IGlvbW11X2Z3c3Bl
Y19pbml0KGRldiwgZndzcGVjLT5pb21tdV9md25vZGUsIGlvbW11X29wcyk7CivCoMKgwqAgaWYg
KHJldCkgeworwqDCoMKgIMKgwqDCoCBkZXZfZXJyKGRldiwgIiVzOiBpb21tdV9md3NwZWNfaW5p
dCBmYWlsZWQgd2l0aCAlZFxuIiwgCl9fZnVuY19fLCByZXQpOworwqDCoMKgIMKgwqDCoCByZXR1
cm4gcmV0OworwqDCoMKgIH0KKworwqDCoMKgIGljaWQgPSBtY19kZXYtPmljaWQ7CivCoMKgwqAg
cmV0ID0gaW9tbXVfZndzcGVjX2FkZF9pZHMoZGV2LCAmaWNpZCwgMSk7CivCoMKgwqAgaWYgKHJl
dCkgeworwqDCoMKgIMKgwqDCoCBkZXZfZXJyKGRldiwgIiVzOiBpb21tdV9md3NwZWNfYWRkX2lk
cyBmYWlsZWQgd2l0aCAlZFxuIiwgCl9fZnVuY19fLCByZXQpOworwqDCoMKgIMKgwqDCoCByZXR1
cm4gcmV0OworwqDCoMKgIH0KKworwqDCoMKgIGlmICghZGV2aWNlX2lvbW11X21hcHBlZChkZXYp
KSB7CivCoMKgwqAgwqDCoMKgIHJldCA9IGlvbW11X3Byb2JlX2RldmljZShkZXYpOworwqDCoMKg
IMKgwqDCoCBpZiAocmV0KSB7CivCoMKgwqAgwqDCoMKgIMKgwqDCoCBkZXZfZXJyKGRldiwgIiVz
OiBpb21tdV9md3NwZWNfYWRkX2lkcyBmYWlsZWQgd2l0aCAlZFxuIiwgCl9fZnVuY19fLCByZXQp
OworwqDCoMKgIMKgwqDCoCDCoMKgwqAgcmV0dXJuIHJldDsKK8KgwqDCoCDCoMKgwqAgfQorwqDC
oMKgIH0KKworwqDCoMKgIGFyY2hfc2V0dXBfZG1hX29wcyhkZXYsIDAsICpkbWFfZGV2LT5kbWFf
bWFzayArIDEsCivCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgaW9tbXVfb3BzLCB0cnVlKTsK
KworwqDCoMKgIHJldHVybiAwOwogwqB9CgogwqBzdGF0aWMgc3NpemVfdCBtb2RhbGlhc19zaG93
KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IApkZXZpY2VfYXR0cmlidXRlICphdHRyLAotLSAK
Mi4xNy4xCgpSZWdhcmRzLApEaWFuYQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
