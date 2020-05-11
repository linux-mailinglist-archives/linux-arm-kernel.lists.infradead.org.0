Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546821CDB50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OUctH8czqCOqoxqeTzxayRSuoY+olFW4jCjw3gRZHlc=; b=GU5KFWiRq+hI2Hu/1hQ2aL2Dnm
	8jDlOWiINJgKGMIbMp8WpKyDROQJSnBnQfn/YRDeYEOFZ+SQFWTkC3DPqLL68UsD6QfJsoEkfExad
	ta/+x0SU4rexKykrQmAQSCCC3BUq1JwnK6DQOrYqsAvUzPpICI4gq7JDCOZUdjy7JrlFV1x78GO6y
	DkiGhZ5t1QyKWI8fV1SxBdmumtaEanG/bqfJqrzjVUUcR+uuVIDAQr1NCaUVN3ykENjtyeFS0en5c
	nm+YAV2GMZlUs7VMR9itDa0h9vApFpDi1Ml1xX6lpInIsMGjopFadM4qyepX93X3HX8O8b/8uffyV
	IBL4W3DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8bP-0005sS-T8; Mon, 11 May 2020 13:36:15 +0000
Received: from mail-dm6nam10on2082.outbound.protection.outlook.com
 ([40.107.93.82] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8b5-0005hs-Jx
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:35:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AfvbPahEaklgcy2Ct14UCz8hhb/R1L3T2GSl6+aeYtlXIrsnKbQpFH0tVvK72TCQnU3nRqQBb8fdojrivjU07mZ9+Aru4JEIFJtOOZQlAMCoPYlm7Pq4GSaXfCqW1yFjdN0IYv6HJkPNmN8L5cg5MsPp6U5y1aCA2u0jCS9gQHltxed7z/esZxq0cWpo3logBW56odaD4zJUv74wgqcw84yPEwMPSQjW4EbIWgfci5kAl8WYK5kAXfu3jQ0X734288NVXZ8pIsxRrunVp/3UdWoYrdVCFa3jQKLb00UzVZ04kZLzi1LBhJivA4y1zWeS4ZTjdO4amDQJkD5P+HbFXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dflejfvhuOBN+DL3FkCbGO5Ivetq1tFbX3DPvytpa3M=;
 b=VgdHeaJKWpVLTTvoGaA23TN2KsIlVNkYxUcndmXJIkxKZ9YqbAKRowWy6zxcq6MBXOZRmdMCiBF1Y0Jg4nKNeR5fHUo47azJBCHcP78W71XRydyh+LTraVhKphe8KZhRBKDhqJ+Fx3PQl7KcGvUL1h0rYk/Z5OQX06hD+gynXc2YwMivGw3dMjcfxE4Rox8JMCbVlFGc6kAutPvAr/BpPg/RQIMh+jb20AN1crVz5RW7nEMHYLkWZmlJVJKxE0FqIe/nW6gMNNTAzmMrYKyoWjjc1jHcmHkKbLdGhiJhWit+xlMapKh/gvNKlaeSq9tuLCpflsgsMBD8H1NoN61z+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dflejfvhuOBN+DL3FkCbGO5Ivetq1tFbX3DPvytpa3M=;
 b=cj5fp7/oE50WkS2tl2san3IkU8rvvOtTVmdg7cb0YVZTacrPbsXkdvjWD7KPKYB+DuDRvlucv8LtToyPwJMkoUCObgBzKA5tpBMT0EfpvI4Zy76RRTFIqa4w6PAAT0I06CihYsabd0V5IAaIlQPekG1gF/CBr3ij2OoCwrgZEf4=
Received: from CY4PR13CA0034.namprd13.prod.outlook.com (2603:10b6:903:99::20)
 by BYAPR02MB5608.namprd02.prod.outlook.com (2603:10b6:a03:96::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.35; Mon, 11 May
 2020 13:35:53 +0000
Received: from CY1NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:99:cafe::e4) by CY4PR13CA0034.outlook.office365.com
 (2603:10b6:903:99::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.11 via Frontend
 Transport; Mon, 11 May 2020 13:35:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT008.mail.protection.outlook.com (10.152.75.59) with Microsoft SMTP
 Server id 15.20.2979.29 via Frontend Transport; Mon, 11 May 2020 13:35:52
 +0000
Received: from [149.199.38.66] (port=58594 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jY8an-0004YE-1F; Mon, 11 May 2020 06:35:37 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jY8b1-00074x-Vi; Mon, 11 May 2020 06:35:52 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 04BDZlqL027781; 
 Mon, 11 May 2020 06:35:47 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jY8ax-00073g-Ah; Mon, 11 May 2020 06:35:47 -0700
Subject: Re: [PATCH v2] ARM: dts: zynq: Fix ethernet PHY for v5 schematics
To: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/ZYNQ ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 Anton Gerasimov <tossel@gmail.com>
References: <752db40d-5aed-4a97-a050-bc1376547f87@xilinx.com>
 <20200428100350.12699-1-matwey@sai.msu.ru>
 <CAJs94Eb0k-Yf7FrOJwyusBqnYvnxsbD=2vxybbSAvLg0ZJ210w@mail.gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <d836ad5a-051f-96e7-d0cd-1d53848b32b7@xilinx.com>
Date: Mon, 11 May 2020 15:35:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAJs94Eb0k-Yf7FrOJwyusBqnYvnxsbD=2vxybbSAvLg0ZJ210w@mail.gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(39860400002)(376002)(346002)(46966005)(33430700001)(70586007)(36756003)(186003)(70206006)(356005)(81166007)(2616005)(426003)(316002)(110136005)(31686004)(33440700001)(5660300002)(44832011)(82310400002)(31696002)(82740400003)(47076004)(966005)(6666004)(2906002)(8936002)(336012)(478600001)(8676002)(9786002)(26005)(130900200001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3d1ced1-295b-4262-5397-08d7f5b03970
X-MS-TrafficTypeDiagnostic: BYAPR02MB5608:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5608DE8B6DBF6650186C2B00C6A10@BYAPR02MB5608.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dl4gG6zW6T5tFApACj8JNWVaBktRpXuIpsooLkZfm/Qs5BCC4v0haaXzApVSrTJ6BxLw+FTduQA70suP97WS/8R9RrZHN3NbLZuR3uwlwuM5uV6QxW2xw7FbffvEkXmldK20sIscZIqv4anPj3ywVjwOboCsVx/OxMcONbjOQOnHfPZq3rvHManNu5EPEhayayrYGAjz4Qc6R3am2vyJN0fEMoT1k1xR9aJf1ww/uRkUd0lfmciYcy4oFGz8GK3B44UWo9R1CVVQdo9W46oHcU0jE3GgpetGnCgGBgHen3PVwp/UM0Tqm7xGNidNFVmQaJ77hHF7VmlDFA8PCo/g5bbEYCSF8F/w0k6xF8ASwcOdIuyU8zCxKe898EAjpaFXnxiPO7ffNBXaBhQMDCJ3P0pFGL/Ys8Sq8UCE8LPqponWUBfc9JhNP0UjK7RtaHKj6OEy5tHbn/g4GLD2+AUGRVfy5+rMuVJMoXA1vfvPf2VMgEiKC/4+VEaD57FxWeiNU9X/dK/rphmtc0lOEzHXOt32Jydi8BfQ8r0FxzrR8EiOjjhMtoVgmsR9LPYxWI0jBopwLtuIOQLjDF9ESpPJVdQ4gyWU/8Y88IS0nwkiv6vSD/vu4cgJOES7DVI3MYgq/1nnwACfu+hg69kFOBZklcjpNqEpLBXCbb1jl9G4yQox5ntmLObHeOxOM3acS5zXne293x5qOyEpt2GWrLO/COuc+o1AqoAIF0svLTwqlbE=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:35:52.2836 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3d1ced1-295b-4262-5397-08d7f5b03970
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_063555_702779_2E44CBDF 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.82 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAwMS4gMDUuIDIwIDE4OjEwLCBNYXR3ZXkgVi4gS29ybmlsb3Ygd3JvdGU6Cj4gSGkg
QW50b24sCj4gCj4gSSBob3BlIHlvdSBhcmUgZG9pbmcgZ29vZC4gQ291bGQgeW91IHBsZWFzZSBj
aGVjayB0aGlzIHBhdGNoLCBzaW5jZQo+IHlvdSBhcmUgaW5pdGlhbCBhdXRob3Igb2YgenlucS16
dHVybi5kdHMgYW5kIEkgc3VwcG9zZSB5b3UgZG8gaGF2ZSB0aGUKPiAidjQiIGJvYXJkIHZhcmlh
bnQgdG8gdGVzdC4KPiAKPiDQstGCLCAyOCDQsNC/0YAuIDIwMjAg0LMuINCyIDEzOjA0LCBNYXR3
ZXkgVi4gS29ybmlsb3YgPG1hdHdleUBzYWkubXN1LnJ1PjoKPj4KPj4gVGhlcmUgYXJlIGF0IGxl
YXN0IHR3byBkaWZmZXJlbnQgdmVyc2lvbnMgZXhpc3RpbmcgZm9yIE1ZSVIgWnR1cm46Cj4+Cj4+
ICAqIHY0IHNjaGVtYXRpY3MgaGFzIEF0aGVyb3MgQVI4MDM1IFBIWSBhdCAwYjAwMAo+PiAgICAg
IGh0dHA6Ly93d3cubXlpcnRlY2guY29tL2Rvd25sb2FkL1p5bnE3MDAwL1otVFVSTkJPQVJEX3Nj
aGVtYXRpYy5wZGYKPj4gICogdjUgc2NoZW1hdGljcyBoYXMgTWljcmVsIEtTWjkwMzEgUEhZIGF0
IDBiMDExCj4+ICAgICAgdjUgc2NoZW1hdGljcyBhdmFpbGFibGUgYXQgRFZEIGRpc2sgc3VwcGxp
ZWQgd2l0aCB0aGUgYm9hcmQKPj4KPj4gU3BlY2lmeSBib3RoIFBIWXMgdG8gbWFrZSBldGhlcm5l
dCBpbnRlcmZhY2Ugd29ya2luZyBmb3IgYW55IGJvYXJkCj4+IHJldmlzaW9uLiBUaGlzIGNvbW1p
dCByZWxpZXMgb24gb2ZfbWRpb2J1c19yZWdpc3RlcigpIGJlaGF2aW9yLgo+PiBXaGVuIHBoeS1o
YW5kbGUgaXMgbWlzc2VkLCBldmVyeSBuZXN0ZWQgUEhZIG5vZGUgaXMgY29uc2lkZXJlZCwKPj4g
d2hpbGUgRU5PREVWcyBhcmUgaWdub3JlZC4KPj4KPj4gQmVmb3JlIHRoZSBwYXRjaDoKPj4KPj4g
WyAgIDI4LjI5NTAwMl0gbWFjYiBlMDAwYjAwMC5ldGhlcm5ldCBldGgwOiBDb3VsZCBub3QgYXR0
YWNoIFBIWSAoLTE5KQo+Pgo+PiBBZnRlciB0aGUgcGF0Y2g6Cj4+Cj4+IFsgICAyOC4yNTczNjVd
IG1hY2IgZTAwMGIwMDAuZXRoZXJuZXQgZXRoMDogUEhZIFtlMDAwYjAwMC5ldGhlcm5ldC1mZmZm
ZmZmZjowMF0gZHJpdmVyIFtNaWNyZWwgS1NaOTAzMSBHaWdhYml0IFBIWV0gKGlycT1QT0xMKQo+
PiBbICAgMjguMjU3Mzg0XSBtYWNiIGUwMDBiMDAwLmV0aGVybmV0IGV0aDA6IGNvbmZpZ3VyaW5n
IGZvciBwaHkvcmdtaWktaWQgbGluayBtb2RlCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hdHdleSBW
LiBLb3JuaWxvdiA8bWF0d2V5QHNhaS5tc3UucnU+Cj4gCj4gQ2M6IEFudG9uIEdlcmFzaW1vdiA8
dG9zc2VsQGdtYWlsLmNvbT4KPiAKPj4gLS0tCj4+IENoYW5nZXMgc2luY2UgdjE6Cj4+ICAtIHJl
d29yZGVkIGNvbW1pdCBtZXNzYWdlCj4+Cj4+ICBhcmNoL2FybS9ib290L2R0cy96eW5xLXp0dXJu
LmR0cyB8IDEzICsrKysrKysrKystLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
enlucS16dHVybi5kdHMgYi9hcmNoL2FybS9ib290L2R0cy96eW5xLXp0dXJuLmR0cwo+PiBpbmRl
eCA1ZWM2MTZlYmNhMDguLjA3ZGE5Y2Y2MGQwMiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvenlucS16dHVybi5kdHMKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16dHVy
bi5kdHMKPj4gQEAgLTY3LDEwICs2NywxNyBAQAo+PiAgJmdlbTAgewo+PiAgICAgICAgIHN0YXR1
cyA9ICJva2F5IjsKPj4gICAgICAgICBwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4+IC0gICAgICAg
cGh5LWhhbmRsZSA9IDwmZXRoZXJuZXRfcGh5PjsKPj4KPj4gLSAgICAgICBldGhlcm5ldF9waHk6
IGV0aGVybmV0LXBoeUAwIHsKPj4gLSAgICAgICAgICAgICAgIHJlZyA9IDwweDA+Owo+PiArICAg
ICAgIGV0aGVybmV0LXBoeUAwIHsKPj4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZXRo
ZXJuZXQtcGh5LWllZWU4MDIuMy1jMjIiOwo+PiArICAgICAgICAgICAgICAgcmVnID0gPDA+Owo+
PiArICAgICAgICAgICAgICAgbWF4LXNwZWVkID0gPDEwMDA+Owo+PiArICAgICAgIH07Cj4+ICsK
Pj4gKyAgICAgICBldGhlcm5ldC1waHlAMyB7Cj4+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKPj4gKyAgICAgICAgICAgICAgIHJlZyA9
IDwzPjsKPj4gKyAgICAgICAgICAgICAgIG1heC1zcGVlZCA9IDwxMDAwPjsKPj4gICAgICAgICB9
Owo+PiAgfTsKPj4KPj4gLS0KPj4gMi4xNi40Cj4+Cj4gCj4gCgpBbnRvbjogV2FpdGluZyBmb3Ig
eW91ciB0ZXN0aW5nLgoKVGhhbmtzLApNaWNoYWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
