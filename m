Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFBB185AD2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 08:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTriTEq8tlbBZe2zmNyd8kJ0Fkd6Ho15LT52kI8pkx4=; b=Pl2BQpequjZoTm
	H0t9M/VaV7NcIX4lw5Wc7ekHApcuTqOjx0cPm5Lm4L4fhADPjIJYxnJAdqozaGVP8lSIOp5cj1Qjt
	xPPlEE9BqvwodD11WF6/UNZ3EmGwv3T+ImJC2IVUKEdrDe7+CtMgfKwHZCYWoas1Jlhd1jYKXOIs0
	eYz29YfXq1hbDSxBN2bZDQdjlBCD9dhC1zbx7qZq2n2aBzRvU7UWQQ7nDR5bO1DKUCVkUEGsF3mhY
	RxetIg0Tu4poz3CkeBeDz5pe8M8mJzGuYul/xL4Doke1P7JUrnL812JiqMeYFpwHtJKlc9y0Jp0ci
	aGDsRI2LvOKPvcxgc8Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDNHu-0001vy-3Q; Sun, 15 Mar 2020 07:02:18 +0000
Received: from mail-mw2nam12on2116.outbound.protection.outlook.com
 ([40.107.244.116] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDNHk-0001vX-QN; Sun, 15 Mar 2020 07:02:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PKdXWzeaFGyUHPYLK5OuEzcEZz/+2N/423b0/PfYA0bzKEFiLf9aKOt6xmxVxRAks17AgCZZFbJatsGd/VCk0JcmtPvteQg7HjqoL33CKa4sLQ+FLO/qqvTWi6GvQw0uqRCtY4nGRZWP6QyOoRl4/V0UtJSgoqJU7S29q7h8QFcThheQmDCsh41z/y/s5LX6qtt+hZ7V7PjuLbFKMP2gvqXAPLciAyVTQHxwz59n65uzAJgeaRPwyMXUFkBBC53OUJuvkL9q+LqHvkLsg+Pcj7/Stc4dW8K8aXEfIPpPaOL73lyGEkdXYbASD+C+vWI6guNoyHyKM4xoQpi+imq0Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h9WoTsGQOec+Ymlu/AP6xL9/hB7Cu6aVaHRhlCsVpeY=;
 b=CojuebvTEB2LIf9n1CavzSLYXVvwUnJFpY/lJerzfnh7gAoXJNPO5ShLDGl0GWDEcIxIPGqbTSo/vl+42E9U0qfQ5j6jfYn004Bsvkt8NiY6PVq5pO49/r79iAicMx62hWrx2SRc3CoJC//UiWFFFTlQPMlYIgaEzHXlKeRhgW2ZfhzhAEUaHoa7CQRs4VBwaY1eY0ppJvOB0xRmyomuChBPki3tsBrpDgmWA9rtTaM+KlpRH14jj4ztFOcs53EK/PfutGT6akxJ5bbFzVkp4X3pObO0EcNR5bDqv0CCCITJJY5MrEK0MTnzzdIlj5Q0Kx8FwNvR6NCCp0tT5egyKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cypress.com; dmarc=pass action=none header.from=cypress.com;
 dkim=pass header.d=cypress.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cypress.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h9WoTsGQOec+Ymlu/AP6xL9/hB7Cu6aVaHRhlCsVpeY=;
 b=Qja87oXSNOyhU72xzIqujEfPmwS3o0MvCL7mXjQAruvQ3yKyxsaXvbEPhvJRe/d6YLRVY6cBUpCDAdEJCkYnN7rg19qLqllHAe8FcaWIuANqi0fNESXBQOvWE4qdGysZGLD8p7CcEJyaH0sKeCbXAcFFlIuK0ka/qesNdWOb14Y=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Chi-Hsien.Lin@cypress.com; 
Received: from DM6PR06MB4906.namprd06.prod.outlook.com (2603:10b6:5:56::11) by
 DM6PR06MB5851.namprd06.prod.outlook.com (2603:10b6:5:1a8::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Sun, 15 Mar 2020 07:02:01 +0000
Received: from DM6PR06MB4906.namprd06.prod.outlook.com
 ([fe80::a964:a78d:ec3:c4c]) by DM6PR06MB4906.namprd06.prod.outlook.com
 ([fe80::a964:a78d:ec3:c4c%3]) with mapi id 15.20.2814.021; Sun, 15 Mar 2020
 07:02:01 +0000
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
To: Soeren Moch <smoch@web.de>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <20191211235253.2539-1-smoch@web.de>
 <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
 <22526722-1ae8-a018-0e24-81d7ad7512dd@web.de> <2685733.IzV8dBlDb2@diego>
 <d7b05a6c-dfba-c8e0-b5fb-f6f7f5a6c1b7@cypress.com>
 <09d6c2d7-b632-3dd1-2c9d-736ccc18d4a9@web.de>
From: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Message-ID: <e3431452-7cfc-7e2c-c93f-977cfd21b46b@cypress.com>
Date: Sun, 15 Mar 2020 15:01:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
In-Reply-To: <09d6c2d7-b632-3dd1-2c9d-736ccc18d4a9@web.de>
Content-Language: en-US
X-ClientProxiedBy: BYAPR05CA0081.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::22) To DM6PR06MB4906.namprd06.prod.outlook.com
 (2603:10b6:5:56::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.9.112.143] (61.222.14.99) by
 BYAPR05CA0081.namprd05.prod.outlook.com (2603:10b6:a03:e0::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.6 via Frontend Transport; Sun, 15 Mar 2020 07:01:58 +0000
X-Originating-IP: [61.222.14.99]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9d08e458-f59e-4e50-c23c-08d7c8aec260
X-MS-TrafficTypeDiagnostic: DM6PR06MB5851:|DM6PR06MB5851:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR06MB5851D973DC5247CC432D686DBBF80@DM6PR06MB5851.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0343AC1D30
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(396003)(39860400002)(346002)(136003)(199004)(31696002)(5660300002)(2906002)(16526019)(186003)(8676002)(31686004)(4326008)(3450700001)(26005)(8936002)(316002)(110136005)(54906003)(16576012)(52116002)(53546011)(6666004)(66946007)(956004)(66476007)(66556008)(6486002)(81166006)(81156014)(2616005)(478600001)(66574012)(86362001)(36756003)(55004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR06MB5851;
 H:DM6PR06MB4906.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: cypress.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mCfff8y7jfQKGeZP0oci5L2UiEHgpOIpqdXBEJfm0vqlNm/q3GGe3TRn6pNDuLbuc9GQc2n47lOZy42j3wiGWGxbks5gs88Dl41EthKu7NzLQH5l6jFS95KsfFOaSiPW3Wso0upb57NcfRyzxhS0QgCQNMGq5AYhw39wB38zo6RpXykIwL0rSegnWH/SXfvjlJXe3IvOIasBJUW6H3sl01drex2Qccuh1t/YUWYNR/0n4lTD/Ky3XDeHLbGbOmcOxhxN3bR7qK+5oXFeIzKwy3ew0etze+jZkxgbJx/L4fM/z+ktXiSKHqPueQqcesZpJ20knlR50VXzt9iGjJp5nDZOGrUml9z9CO4qr2jGPz4fT7M0DDxaBgNc5VCWJcfuKFCAmS9NdONhXTozXyR0WqqmGwj/zi8j0tQI8V3Xue0spxv/zNWIc/ImgW6PVFzaDCN4M0H77fxVc+ZbYSO8FO8LZvjX8YeD0R4JpET+iKjswGZ8V0NcC3UjpIsSqTdy
X-MS-Exchange-AntiSpam-MessageData: zxJscTJRqI00ZCqV5mCnYGsfqIuJoF8zIcrNnhpbrliJlVKEsKBW1TCM1xMXhzsrZ03uF6GZgqgm08lZxlas/ZTfuCeU6aM/0vq/YyXWVQDu9ergaBgLMQxjNwg7f7fRqjk2TaJAkS9pQgrTvyI7ng==
X-OriginatorOrg: cypress.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d08e458-f59e-4e50-c23c-08d7c8aec260
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2020 07:02:01.4935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 011addfc-2c09-450d-8938-e0bbc2dd2376
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lUkHtJk4BAzOBYzhBGFgpkPXmCKV5jiU50qesO9WMKw98jg9m1ZqX2ur2vVkz9x3Uk1A2QSCW3o0nRrEmNTZ1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB5851
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_000209_279655_27595ADC 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.116 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: chi-hsien.lin@cypress.com
Cc: "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMy8xMy8yMDIwIDk6MTcsIFNvZXJlbiBNb2NoIHdyb3RlOgo+IAo+IE9uIDEzLjAzLjIw
IDEyOjAzLCBDaGktSHNpZW4gTGluIHdyb3RlOgo+PiBPbiAxMi8xNi8yMDE5IDc6NDMsIEhlaWtv
IFN0w7xibmVyIHdyb3RlOgo+Pj4gSGkgU29lcmVuLAo+Pj4KPj4+IEFtIFNvbm50YWcsIDE1LiBE
ZXplbWJlciAyMDE5LCAyMjoyNDoxMCBDRVQgc2NocmllYiBTb2VyZW4gTW9jaDoKPj4+PiBPbiAx
Mi4xMi4xOSAxMTo1OSwgU29lcmVuIE1vY2ggd3JvdGU6Cj4+Pj4+IE9uIDEyLjEyLjE5IDEwOjQy
LCBLYWxsZSBWYWxvIHdyb3RlOgo+Pj4+Pj4gU29lcmVuIE1vY2ggPHNtb2NoQHdlYi5kZT4gd3Jp
dGVzOgo+Pj4+Pj4KPj4+Pj4+PiBBZGQgc3VwcG9ydCBmb3IgdGhlIEJDTTQzNTkgY2hpcHNldCB3
aXRoIFNESU8gaW50ZXJmYWNlIGFuZCBSU0RCCj4+Pj4+Pj4gc3VwcG9ydAo+Pj4+Pj4+IHRvIHRo
ZSBicmNtZm1hYyB3aXJlbGVzcyBuZXR3b3JrIGRyaXZlciBpbiBwYXRjaGVzIDEtNy4KPj4+Pj4+
Pgo+Pj4+Pj4+IEVuaGFuY2UgZGV2aWNldHJlZSBvZiB0aGUgUm9ja1BybzY0IGFybTY0L3JvY2tj
aGlwIGJvYXJkIHRvIHVzZSBhbgo+Pj4+Pj4+IEFQNjM1OVNBIGJhc2VkIHdpZmkvYnQgY29tYm8g
bW9kdWxlIHdpdGggdGhpcyBjaGlwc2V0IGluIHBhdGNoZXMKPj4+Pj4+PiA4LTkuCj4+Pj4+Pj4K
Pj4+Pj4+Pgo+Pj4+Pj4+IENodW5nLUhzaWVuIEhzdSAoMSk6Cj4+Pj4+Pj4gIMKgwqAgYnJjbWZt
YWM6IHNldCBGMiBibG9ja3NpemUgYW5kIHdhdGVybWFyayBmb3IgNDM1OQo+Pj4+Pj4+Cj4+Pj4+
Pj4gU29lcmVuIE1vY2ggKDUpOgo+Pj4+Pj4+ICDCoMKgIGJyY21mbWFjOiBmaXggcmFtYmFzZSBm
b3IgNDM1OS85Cj4+Pj4+Pj4gIMKgwqAgYnJjbWZtYWM6IG1ha2UgZXJyb3JzIHdoZW4gc2V0dGlu
ZyByb2FtaW5nIHBhcmFtZXRlcnMgbm9uLWZhdGFsCj4+Pj4+Pj4gIMKgwqAgYnJjbWZtYWM6IGFk
ZCBzdXBwb3J0IGZvciBCQ000MzU5IFNESU8gY2hpcHNldAo+Pj4+Pj4+ICDCoMKgIGFybTY0OiBk
dHM6IHJvY2tjaGlwOiBSb2NrUHJvNjQ6IGVuYWJsZSB3aWZpIG1vZHVsZSBhdCBzZGlvMAo+Pj4+
Pj4+ICDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBSb2NrUHJvNjQ6IGhvb2sgdXAgYmx1ZXRv
b3RoIGF0IHVhcnQwCj4+Pj4+Pj4KPj4+Pj4+PiBXcmlnaHQgRmVuZyAoMyk6Cj4+Pj4+Pj4gIMKg
wqAgYnJjbWZtYWM6IHJlc2V0IHR3byBEMTEgY29yZXMgaWYgY2hpcCBoYXMgdHdvIEQxMSBjb3Jl
cwo+Pj4+Pj4+ICDCoMKgIGJyY21mbWFjOiBhZGQgUlNEQiBjb25kaXRpb24gd2hlbiBzZXR0aW5n
IGludGVyZmFjZSBjb21iaW5hdGlvbnMKPj4+Pj4+PiAgwqDCoCBicmNtZm1hYzogbm90IHNldCBt
YnNzIGluIHZpZiBpZiBmaXJtd2FyZSBkb2VzIG5vdCBzdXBwb3J0IE1CU1MKPj4+Pj4+Pgo+Pj4+
Pj4+ICDCoCAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHPCoMKgwqAg
fCA1MCArKysrKysrKysrKy0tLQo+Pj4+Pj4+ICDCoCAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2Jy
Y21mbWFjL2JjbXNkaC5jwqDCoMKgwqDCoCB8wqAgOCArKy0KPj4+Pj4+PiAgwqAgLi4uL2Jyb2Fk
Y29tL2JyY204MDIxMS9icmNtZm1hYy9jZmc4MDIxMS5jwqDCoMKgIHwgNjgKPj4+Pj4+PiArKysr
KysrKysrKysrKystLS0tCj4+Pj4+Pj4gIMKgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZt
YWMvY2hpcC5jwqDCoMKgwqDCoMKgwqAgfCA1NCArKysrKysrKysrKysrKy0KPj4+Pj4+PiAgwqAg
Li4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9jaGlwLmjCoMKgwqDCoMKgwqDCoCB8wqAg
MSArCj4+Pj4+Pj4gIMKgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvcGNpZS5jwqDC
oMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+Pj4+PiAgwqAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9i
cmNtZm1hYy9zZGlvLmPCoMKgwqDCoMKgwqDCoCB8IDE3ICsrKysrCj4+Pj4+Pj4gIMKgIGluY2x1
ZGUvbGludXgvbW1jL3NkaW9faWRzLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoCAyICsKPj4+Pj4+PiAgwqAgOCBmaWxlcyBjaGFuZ2VkLCAxNzYgaW5zZXJ0aW9ucygrKSwg
MjYgZGVsZXRpb25zKC0pCj4+Pj4+PiBKdXN0IHRvIG1ha2Ugc3VyZSB3ZSBhcmUgb24gdGhlIHNh
bWUgcGFnZSwgSSB3aWxsIGFwcGx5IHBhdGNoZXMKPj4+Pj4+IDEtNyB0bwo+Pj4+Pj4gd2lyZWxl
c3MtZHJpdmVycy1uZXh0IGFuZCBwYXRjaGVzIDgtOSBnbyB0byBzb21lIG90aGVyIHRyZWU/IEFu
ZAo+Pj4+Pj4gdGhlcmUKPj4+Pj4+IGFyZSBubyBkZXBlbmRlbmNpZXMgYmV0d2VlbiB0aGUgYnJj
bWZtYWMgcGF0Y2hlcyBhbmQgZHRzIHBhdGNoZXM/Cj4+Pj4+Pgo+Pj4+PiBZZXMsIHRoaXMgYWxz
byBpcyBteSB1bmRlcnN0YW5kaW5nLiBJJ20gZ2xhZCBpZiB5b3UgYXJlIGZpbmUgd2l0aAo+Pj4+
PiBwYXRjaGVzIDEtNy4KPj4+Pj4gSGVpa28gd2lsbCBwaWNrIHVwIHBhdGNoZXMgOC05IGxhdGVy
IGZvciBsaW51eC1yb2NrY2hpcCBpbmRlcGVuZGVudGx5Lgo+Pj4+PiBBbmQgaWYgd2UgbmVlZCBh
bm90aGVyIHJvdW5kIG9mIHJldmlldyBmb3IgcGF0Y2hlcyA4LTksIEkgdGhpbmsgd2UKPj4+Pj4g
ZG9uJ3QKPj4+Pj4gbmVlZCB0byBib3RoZXIgbGludXgtd2lyZWxlc3Mgd2l0aCB0aGlzLgo+Pj4+
Cj4+Pj4gSGVpa28sCj4+Pj4KPj4+PiBpcyB0aGlzIE9LIGZvciB5b3Ugd2hlbiBwYXRjaGVzIDEt
NyBhcmUgbWVyZ2VkIG5vdyBpbiB3aXJlbGVzcy1kcml2ZXJzLAo+Pj4+IGFuZCB0aGVuIEkgc2Vu
ZCBhIHYzIGZvciBwYXRjaGVzIDgtOSBvbmx5IGZvciB5b3UgdG8gbWVyZ2UgaW4KPj4+PiBsaW51
eC1yb2NrY2hpcCBsYXRlcj8gT3IgZG8geW91IHByZWZlciBhIGZ1bGwgdjMgZm9yIHRoZSB3aG9s
ZSBzZXJpZXMKPj4+PiB3aXRoIG9ubHkgdGhpcyBwZW5kaW5nIGNsb2NrIG5hbWUgdXBkYXRlIGlu
IHBhdGNoIDk/Cj4+Pgo+Pj4gTm9wZSwgbWVyZ2luZyAxLTcgZnJvbSB0aGlzIHYyIGFuZCB0aGVu
IGdldHRpbmcgYSB2MyB3aXRoIG9ubHkgdGhlIGR0cwo+Pj4gc3R1ZmYgaXMgcGVyZmVjdGx5IGZp
bmUgOi0pCj4+Cj4+IFNvZXJlbiwKPj4KPj4gSSBzdXBwb3NlIHBhdGNoIDEtNyBmcm9tIHRoaXMg
c2VyaW91cyBhcmUgYWxsIGdvb2QgZm9yIG1lcmdpbmcuIElzCj4+IHRoYXQgcmlnaHQ/IElmIHNv
LCBjb3VsZCB5b3UgcGxlYXNlIGNyZWF0ZSBhIHJlYmFzZWQgVjM/Cj4gQ2hpLWhzaWVuLAo+IAo+
IFRoYW5rcyBmb3IgYXNraW5nLCBidXQgdGhlc2UgcGF0Y2hlcyBhcmUgYWxyZWFkeSBtZXJnZWQg
aW4KPiB0b3J2YWxkcy92NS42LXJjMSBhcyBjb21taXRzCj4gMWI4ZDJlMGE5ZTQyLi4yNjM1ODUz
Y2U0YWIKPiAKPiBTbyBldmVyeXRoaW5nIGFscmVhZHkgZmluZSB3aXRoIHRoaXMuCgpBaGguLi4g
WW91J3JlIHJpZ2h0LiBUaGV5J3JlIGFsbCBnb29kLiBUaGFua3MgYSBsb3QhIQoKPiAKPiBUaGFu
a3MsCj4gU29lcmVuCj4gCj4+Cj4+Cj4+IFJlZ2FyZHMsCj4+IENoaS1oc2llbiBMaW4KPj4KPj4+
Cj4+PiBIZWlrbwo+Pj4KPj4+Cj4+PiAuCj4+Pgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
