Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC011C0EC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 09:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QA+fl8jZCUT3l1mG+wwy6QIUY64BXrj/7CzTJ7vZfvo=; b=Hbw/esXeS1EGnQaoyz2aQanoP
	rpT8kd39Tzwig0woEhk+Ba4sYUJB/FrBTbloZvG3rHGRRGe8FKsSa72AL0UdyO55H1y2ehgDER4Ty
	JO4SLdNsWEtxLwocOjVqVSRsoZ2EvLCVjJjsHqYdyDwAMtXJU30YlgHLJkmUySF+Y3j/poueUvS8u
	wx6wOz109XonFYOdBMghbwGaSbYO4JLP/KdYTdbAtuALdRgoVNV2pfuc3ltyoLCtz2fJDiCC1+6Bs
	d7PfysXbu0aUre1RlVJ213x/xp6nb6vc1a/w6c+/alQksgnRyqYoRTs0yTD75e3gnzYkvybGsCu2G
	8Hq+AzGfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQ1s-0003ov-R1; Fri, 01 May 2020 07:24:12 +0000
Received: from mail-dm6nam12on2050.outbound.protection.outlook.com
 ([40.107.243.50] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQ1l-0003o0-7v; Fri, 01 May 2020 07:24:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GhHyX0AZyiHPCXk9R3pmj/uiae8fe/Bn13mWY5sH4+fY3pGYX6yapW/A6pk6YaLF3NvCqE6YLHMNPtwkrDmE0NNeD7o9fBZmucPJVNMbDmoYz+QUpew7LxHEJ+CoXXGFNPzxzNztPplCbH/bQd8Et13/b11JAClMQcWeC6/1rmPuyMMAhun7DEXlj/q/uA6zcX4B2xFxpl8CnY9i4czevO7H4Qso8ZvMTp46OttmnEZCNWv/BOm2fhw6YdbdSjrUzgUb1U+XRMGRdAUww1mqduoyPHrdSy3FRkkKDigSJwmxdB+lKpTjFUIFEHGfc30vIo8HvMgkoqPBM5CQkxbL1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B93eGUqhSJcb/TxU5eKTKZDpn/uaqVQIktI/i8Ka48s=;
 b=S54E3edlcgZzLqlAaZ5grBsK5DIsVZzYnKju7MAZQJH9Stn0KVI9Drxk4Jn1sMgJpkPITqMSnIBzrjniaAEck6bJ0scUP7b/L1CkZXT7QQhTd5FUWTZd8pxYjIApXCVfAMSfh5RKLiQAuokENaQ1iguQOK5r183g/4T3EzRkZfb+ARR686eJUbjNkq77Hy6PQD99Ighymwe1ZDu3wEyrKRBspmYC71CwAfS6sJ0GMClZ2zPn7479uDyFgrHmQV2oR7conbhUjGs/RcD5RLWQoALXh3jw31b7+bfAdCW1AOxQmAgCB0JMzgpkfA+qpjnINCEmzZLo4k3Prnbtp2Pw7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B93eGUqhSJcb/TxU5eKTKZDpn/uaqVQIktI/i8Ka48s=;
 b=ikYYZhIzk+9S/WSt07t8RL5R4j/H1MIZm+1jm94s0mfSnIjHtm13v+YHONwsYXB9XCVOp3uJBTIYflx09go0NpBJ/0mMGPKYexFWj+jrus93UkIObwrDvGGz3+heFSQImEA1xPCer8cEuxUE0mMYP4WAK5vsZ3+YYNiPf0rgq88=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
Received: from DM6PR12MB4401.namprd12.prod.outlook.com (2603:10b6:5:2a9::15)
 by DM6PR12MB3979.namprd12.prod.outlook.com (2603:10b6:5:1cd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Fri, 1 May
 2020 07:24:00 +0000
Received: from DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::7949:b580:a2d5:f766]) by DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::7949:b580:a2d5:f766%3]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 07:24:00 +0000
Subject: Re: [PATCH V1 10/10] drm: Remove drm specific kmap_atomic code
To: ira.weiny@intel.com, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Huang Rui <ray.huang@amd.com>
References: <20200430203845.582900-1-ira.weiny@intel.com>
 <20200430203845.582900-11-ira.weiny@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <d6d5ab74-5e16-6541-391b-63d993041fb8@amd.com>
Date: Fri, 1 May 2020 09:23:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200430203845.582900-11-ira.weiny@intel.com>
Content-Language: en-US
X-ClientProxiedBy: AM3PR05CA0117.eurprd05.prod.outlook.com
 (2603:10a6:207:2::19) To DM6PR12MB4401.namprd12.prod.outlook.com
 (2603:10b6:5:2a9::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM3PR05CA0117.eurprd05.prod.outlook.com (2603:10a6:207:2::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 07:23:55 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 92219675-5dce-4296-ab40-08d7eda09de0
X-MS-TrafficTypeDiagnostic: DM6PR12MB3979:|DM6PR12MB3979:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB3979C9274DEE4DD89C8BCFCF83AB0@DM6PR12MB3979.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-Forefront-PRVS: 0390DB4BDA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4401.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(6486002)(5660300002)(66556008)(66946007)(66476007)(478600001)(31696002)(52116002)(4326008)(2616005)(2906002)(36756003)(66574012)(31686004)(186003)(16526019)(7416002)(86362001)(110136005)(54906003)(81156014)(6666004)(8936002)(316002)(8676002)(6636002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lBe402xQIA3Sdt0kEjozEhDG8lvZE+9DoixgZPvN8Ddlhlb8SkD8mW4V/5HqCT+RJYE++a5SAg2wFIrGvGZdfb/11Pk+rLGXoN3/tHrcyIqAISSu6ICWYeMiQe6Xju/CSKmvlFRNTX7AQKZ5sHliIiNaXvSoAXhpFxVf2wz8SSSbC8Cn0a5Xf1WOQyQU+0EjrxIsxT+3Px4gRH2E4KSkKa5xYlJwoTPyiwNYzK5rbI0PjCXhXh22ChkGi6OqgRrjq3nEJS8Wjpc2kaOshY0i+ClRd+LTOFC9vVNOBiT5YUke6dSD/Qeq4F7xA4zVhwx4u7ZoEu0qn8IhjXFTfZPSxy+YshbpmK0gT7Fc6OmV2zBDC5oMu2xaUT7j/gXmD7/0jDD48PrkHIzuer7AXoWcPTbr0r99jSxBQ/RzVlOCo42cyaDoF6uP2UaOL5ABNzlL
X-MS-Exchange-AntiSpam-MessageData: R3DgwwF4U3pMWJRispIyksz600hlqqHayTAcc4rm2kkJMfHN54InhC1wGF/hgyJRIa8uw1qi2SbwWUKq8cet2/iYcZaxN8Rp5H5O29mlAsHrZ8dVzYWUw53pKYso0kvIAj01tpB5AtK8pHmxfI8wRtyymZUAUNtGrNHQKqcBTMc44LyJ2vnBsBnQX80YR+gKPydsbqrGnvoDZuYRGwWARMN7eD1Q7Ra9MPA/3iCIkIO30cfMTpcTU4iiDF2PeAYTWLp4C4CVsAGfAi60NCWttQcZolUZ7W6byloU1M1MUyJKwmeFBa44MkMa4R3OzKfOPOUxOholQeW0govsqipsq0VJyp54/Mni3LYnTNPVjnTOD7+WCmszuNglSU9gcoJEcjrI5nzUvk57Xgp2xujnR6meHC+TqGPxCgoXJqSrbPMJqK0JZzKswudhVp5VldWHS2qyd7/N/Zjt9ClDsk7ecbekgWv6qEcXBu+wVDyPh6f+kRlGu8woHgjmi1E25YdiTnkGnugXEs9af7vGPKj/Lj3EDiZG5qwRFH0DpuhOlf9ZIR5Q5dYDR32DozgXRbB998RU5tgag7WKPdmCv0H6P4iQs1A1Hcie8knszzNyf+Wo8AXZiAdNHP63J+C0fKAojNw1qQLquwPeWjnjWsRU5Nyc6MukzzzGoDW7zSROXiSTSdw5qnpQ0nNMwwTXQQ87H9xS0mNZOOticwjjrXNG8ZHCV3zrvZYX4zxcatwZBKYoFzoIaHgGj98P2iucfmV+8isJWJhFyhDN1xdMuc2/Jbux+x6U4UzoqyiD+SiBx747a7AdtTG7xN3FwDBxObQJDA8eJjH264VNE0hbimcm8UY3HeVTGP9IwtNnIDl+FS8=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92219675-5dce-4296-ab40-08d7eda09de0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 07:23:59.9315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SNdqnq5OanoMQf72+pz+Mg2CMDNf35w+fJuhxCPMSXYrivFeeNc8859SavFAjLI+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_002405_359955_6D04CC14 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.50 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMzAuMDQuMjAgdW0gMjI6Mzggc2NocmllYiBpcmEud2VpbnlAaW50ZWwuY29tOgo+IEZyb206
IElyYSBXZWlueSA8aXJhLndlaW55QGludGVsLmNvbT4KPgo+IGttYXBfYXRvbWljX3Byb3QoKSBp
cyBub3cgZXhwb3J0ZWQgYnkgYWxsIGFyY2hpdGVjdHVyZXMuICBVc2UgdGhpcwo+IGZ1bmN0aW9u
IHJhdGhlciB0aGFuIG9wZW4gY29kaW5nIGEgZHJpdmVyIHNwZWNpZmljIGttYXBfYXRvbWljLgo+
Cj4gU2lnbmVkLW9mZi1ieTogSXJhIFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPgoKQWgsIHll
cyBsb29raW5nIGludG8gdGhpcyBvbmNlIG1vcmUgdGhpcyB3YXMgb24gbXkgVE9ETyBsaXN0IGZv
ciBxdWl0ZSBhIAp3aGlsZSBhcyB3ZWxsLgoKUGF0Y2ggaXMgUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4sIGZlZWwgCmZyZWUgdG8gcHVzaCBp
dCB1cHN0cmVhbSB0aHJvdWdoIHdoYXRldmVyIGNoYW5uZWwgeW91IGxpa2Ugb3IgcGluZyBtZSBp
ZiAKSSBzaG91bGQgcGljayBpdCB1cCBpbnRvIGRybS1taXNjLW5leHQuCgpSZWdhcmRzLApDaHJp
c3RpYW4uCgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jICAgIHwg
NTYgKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3Ztd2dm
eC92bXdnZnhfYmxpdC5jIHwgMTYgKysrKy0tLS0KPiAgIGluY2x1ZGUvZHJtL3R0bS90dG1fYm9f
YXBpLmggICAgICAgICB8ICA0IC0tCj4gICAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDY0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0v
dHRtX2JvX3V0aWwuYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwo+IGluZGV4
IDUyZDJiNzFmMTU4OC4uZjA5YjA5NmJhNGZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS90dG0vdHRtX2JvX3V0aWwuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0
aWwuYwo+IEBAIC0yNTcsNTQgKzI1Nyw2IEBAIHN0YXRpYyBpbnQgdHRtX2NvcHlfaW9fcGFnZSh2
b2lkICpkc3QsIHZvaWQgKnNyYywgdW5zaWduZWQgbG9uZyBwYWdlKQo+ICAgCXJldHVybiAwOwo+
ICAgfQo+ICAgCj4gLSNpZmRlZiBDT05GSUdfWDg2Cj4gLSNkZWZpbmUgX190dG1fa21hcF9hdG9t
aWNfcHJvdChfX3BhZ2UsIF9fcHJvdCkga21hcF9hdG9taWNfcHJvdChfX3BhZ2UsIF9fcHJvdCkK
PiAtI2RlZmluZSBfX3R0bV9rdW5tYXBfYXRvbWljKF9fYWRkcikga3VubWFwX2F0b21pYyhfX2Fk
ZHIpCj4gLSNlbHNlCj4gLSNkZWZpbmUgX190dG1fa21hcF9hdG9taWNfcHJvdChfX3BhZ2UsIF9f
cHJvdCkgdm1hcCgmX19wYWdlLCAxLCAwLCAgX19wcm90KQo+IC0jZGVmaW5lIF9fdHRtX2t1bm1h
cF9hdG9taWMoX19hZGRyKSB2dW5tYXAoX19hZGRyKQo+IC0jZW5kaWYKPiAtCj4gLQo+IC0vKioK
PiAtICogdHRtX2ttYXBfYXRvbWljX3Byb3QgLSBFZmZpY2llbnQga2VybmVsIG1hcCBvZiBhIHNp
bmdsZSBwYWdlIHdpdGgKPiAtICogc3BlY2lmaWVkIHBhZ2UgcHJvdGVjdGlvbi4KPiAtICoKPiAt
ICogQHBhZ2U6IFRoZSBwYWdlIHRvIG1hcC4KPiAtICogQHByb3Q6IFRoZSBwYWdlIHByb3RlY3Rp
b24uCj4gLSAqCj4gLSAqIFRoaXMgZnVuY3Rpb24gbWFwcyBhIFRUTSBwYWdlIHVzaW5nIHRoZSBr
bWFwX2F0b21pYyBhcGkgaWYgYXZhaWxhYmxlLAo+IC0gKiBvdGhlcndpc2UgZmFsbHMgYmFjayB0
byB2bWFwLiBUaGUgdXNlciBtdXN0IG1ha2Ugc3VyZSB0aGF0IHRoZQo+IC0gKiBzcGVjaWZpZWQg
cGFnZSBkb2VzIG5vdCBoYXZlIGFuIGFsaWFzZWQgbWFwcGluZyB3aXRoIGEgZGlmZmVyZW50IGNh
Y2hpbmcKPiAtICogcG9saWN5IHVubGVzcyB0aGUgYXJjaGl0ZWN0dXJlIGV4cGxpY2l0bHkgYWxs
b3dzIGl0LiBBbHNvIG1hcHBpbmcgYW5kCj4gLSAqIHVubWFwcGluZyB1c2luZyB0aGlzIGFwaSBt
dXN0IGJlIGNvcnJlY3RseSBuZXN0ZWQuIFVubWFwcGluZyBzaG91bGQKPiAtICogb2NjdXIgaW4g
dGhlIHJldmVyc2Ugb3JkZXIgb2YgbWFwcGluZy4KPiAtICovCj4gLXZvaWQgKnR0bV9rbWFwX2F0
b21pY19wcm90KHN0cnVjdCBwYWdlICpwYWdlLCBwZ3Byb3RfdCBwcm90KQo+IC17Cj4gLQlpZiAo
cGdwcm90X3ZhbChwcm90KSA9PSBwZ3Byb3RfdmFsKFBBR0VfS0VSTkVMKSkKPiAtCQlyZXR1cm4g
a21hcF9hdG9taWMocGFnZSk7Cj4gLQllbHNlCj4gLQkJcmV0dXJuIF9fdHRtX2ttYXBfYXRvbWlj
X3Byb3QocGFnZSwgcHJvdCk7Cj4gLX0KPiAtRVhQT1JUX1NZTUJPTCh0dG1fa21hcF9hdG9taWNf
cHJvdCk7Cj4gLQo+IC0vKioKPiAtICogdHRtX2t1bm1hcF9hdG9taWNfcHJvdCAtIFVubWFwIGEg
cGFnZSB0aGF0IHdhcyBtYXBwZWQgdXNpbmcKPiAtICogdHRtX2ttYXBfYXRvbWljX3Byb3QuCj4g
LSAqCj4gLSAqIEBhZGRyOiBUaGUgdmlydHVhbCBhZGRyZXNzIGZyb20gdGhlIG1hcC4KPiAtICog
QHByb3Q6IFRoZSBwYWdlIHByb3RlY3Rpb24uCj4gLSAqLwo+IC12b2lkIHR0bV9rdW5tYXBfYXRv
bWljX3Byb3Qodm9pZCAqYWRkciwgcGdwcm90X3QgcHJvdCkKPiAtewo+IC0JaWYgKHBncHJvdF92
YWwocHJvdCkgPT0gcGdwcm90X3ZhbChQQUdFX0tFUk5FTCkpCj4gLQkJa3VubWFwX2F0b21pYyhh
ZGRyKTsKPiAtCWVsc2UKPiAtCQlfX3R0bV9rdW5tYXBfYXRvbWljKGFkZHIpOwo+IC19Cj4gLUVY
UE9SVF9TWU1CT0wodHRtX2t1bm1hcF9hdG9taWNfcHJvdCk7Cj4gLQo+ICAgc3RhdGljIGludCB0
dG1fY29weV9pb190dG1fcGFnZShzdHJ1Y3QgdHRtX3R0ICp0dG0sIHZvaWQgKnNyYywKPiAgIAkJ
CQl1bnNpZ25lZCBsb25nIHBhZ2UsCj4gICAJCQkJcGdwcm90X3QgcHJvdCkKPiBAQCAtMzE2LDEz
ICsyNjgsMTMgQEAgc3RhdGljIGludCB0dG1fY29weV9pb190dG1fcGFnZShzdHJ1Y3QgdHRtX3R0
ICp0dG0sIHZvaWQgKnNyYywKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gICAKPiAgIAlzcmMgPSAo
dm9pZCAqKSgodW5zaWduZWQgbG9uZylzcmMgKyAocGFnZSA8PCBQQUdFX1NISUZUKSk7Cj4gLQlk
c3QgPSB0dG1fa21hcF9hdG9taWNfcHJvdChkLCBwcm90KTsKPiArCWRzdCA9IGttYXBfYXRvbWlj
X3Byb3QoZCwgcHJvdCk7Cj4gICAJaWYgKCFkc3QpCj4gICAJCXJldHVybiAtRU5PTUVNOwo+ICAg
Cj4gICAJbWVtY3B5X2Zyb21pbyhkc3QsIHNyYywgUEFHRV9TSVpFKTsKPiAgIAo+IC0JdHRtX2t1
bm1hcF9hdG9taWNfcHJvdChkc3QsIHByb3QpOwo+ICsJa3VubWFwX2F0b21pYyhkc3QpOwo+ICAg
Cj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gQEAgLTMzOCwxMyArMjkwLDEzIEBAIHN0YXRpYyBpbnQg
dHRtX2NvcHlfdHRtX2lvX3BhZ2Uoc3RydWN0IHR0bV90dCAqdHRtLCB2b2lkICpkc3QsCj4gICAJ
CXJldHVybiAtRU5PTUVNOwo+ICAgCj4gICAJZHN0ID0gKHZvaWQgKikoKHVuc2lnbmVkIGxvbmcp
ZHN0ICsgKHBhZ2UgPDwgUEFHRV9TSElGVCkpOwo+IC0Jc3JjID0gdHRtX2ttYXBfYXRvbWljX3By
b3QocywgcHJvdCk7Cj4gKwlzcmMgPSBrbWFwX2F0b21pY19wcm90KHMsIHByb3QpOwo+ICAgCWlm
ICghc3JjKQo+ICAgCQlyZXR1cm4gLUVOT01FTTsKPiAgIAo+ICAgCW1lbWNweV90b2lvKGRzdCwg
c3JjLCBQQUdFX1NJWkUpOwo+ICAgCj4gLQl0dG1fa3VubWFwX2F0b21pY19wcm90KHNyYywgcHJv
dCk7Cj4gKwlrdW5tYXBfYXRvbWljKHNyYyk7Cj4gICAKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYmxpdC5jIGIvZHJpdmVy
cy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYmxpdC5jCj4gaW5kZXggYmI0NmNhMGM0NThmLi45NGQ0
NTZhMWQxYTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYmxp
dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYmxpdC5jCj4gQEAgLTM3
NCwxMiArMzc0LDEyIEBAIHN0YXRpYyBpbnQgdm13X2JvX2NwdV9ibGl0X2xpbmUoc3RydWN0IHZt
d19ib19ibGl0X2xpbmVfZGF0YSAqZCwKPiAgIAkJY29weV9zaXplID0gbWluX3QodTMyLCBjb3B5
X3NpemUsIFBBR0VfU0laRSAtIHNyY19wYWdlX29mZnNldCk7Cj4gICAKPiAgIAkJaWYgKHVubWFw
X3NyYykgewo+IC0JCQl0dG1fa3VubWFwX2F0b21pY19wcm90KGQtPnNyY19hZGRyLCBkLT5zcmNf
cHJvdCk7Cj4gKwkJCWt1bm1hcF9hdG9taWMoZC0+c3JjX2FkZHIpOwo+ICAgCQkJZC0+c3JjX2Fk
ZHIgPSBOVUxMOwo+ICAgCQl9Cj4gICAKPiAgIAkJaWYgKHVubWFwX2RzdCkgewo+IC0JCQl0dG1f
a3VubWFwX2F0b21pY19wcm90KGQtPmRzdF9hZGRyLCBkLT5kc3RfcHJvdCk7Cj4gKwkJCWt1bm1h
cF9hdG9taWMoZC0+ZHN0X2FkZHIpOwo+ICAgCQkJZC0+ZHN0X2FkZHIgPSBOVUxMOwo+ICAgCQl9
Cj4gICAKPiBAQCAtMzg4LDggKzM4OCw4IEBAIHN0YXRpYyBpbnQgdm13X2JvX2NwdV9ibGl0X2xp
bmUoc3RydWN0IHZtd19ib19ibGl0X2xpbmVfZGF0YSAqZCwKPiAgIAkJCQlyZXR1cm4gLUVJTlZB
TDsKPiAgIAo+ICAgCQkJZC0+ZHN0X2FkZHIgPQo+IC0JCQkJdHRtX2ttYXBfYXRvbWljX3Byb3Qo
ZC0+ZHN0X3BhZ2VzW2RzdF9wYWdlXSwKPiAtCQkJCQkJICAgICBkLT5kc3RfcHJvdCk7Cj4gKwkJ
CQlrbWFwX2F0b21pY19wcm90KGQtPmRzdF9wYWdlc1tkc3RfcGFnZV0sCj4gKwkJCQkJCSBkLT5k
c3RfcHJvdCk7Cj4gICAJCQlpZiAoIWQtPmRzdF9hZGRyKQo+ICAgCQkJCXJldHVybiAtRU5PTUVN
Owo+ICAgCj4gQEAgLTQwMSw4ICs0MDEsOCBAQCBzdGF0aWMgaW50IHZtd19ib19jcHVfYmxpdF9s
aW5lKHN0cnVjdCB2bXdfYm9fYmxpdF9saW5lX2RhdGEgKmQsCj4gICAJCQkJcmV0dXJuIC1FSU5W
QUw7Cj4gICAKPiAgIAkJCWQtPnNyY19hZGRyID0KPiAtCQkJCXR0bV9rbWFwX2F0b21pY19wcm90
KGQtPnNyY19wYWdlc1tzcmNfcGFnZV0sCj4gLQkJCQkJCSAgICAgZC0+c3JjX3Byb3QpOwo+ICsJ
CQkJa21hcF9hdG9taWNfcHJvdChkLT5zcmNfcGFnZXNbc3JjX3BhZ2VdLAo+ICsJCQkJCQkgZC0+
c3JjX3Byb3QpOwo+ICAgCQkJaWYgKCFkLT5zcmNfYWRkcikKPiAgIAkJCQlyZXR1cm4gLUVOT01F
TTsKPiAgIAo+IEBAIC00OTksOSArNDk5LDkgQEAgaW50IHZtd19ib19jcHVfYmxpdChzdHJ1Y3Qg
dHRtX2J1ZmZlcl9vYmplY3QgKmRzdCwKPiAgIAl9Cj4gICBvdXQ6Cj4gICAJaWYgKGQuc3JjX2Fk
ZHIpCj4gLQkJdHRtX2t1bm1hcF9hdG9taWNfcHJvdChkLnNyY19hZGRyLCBkLnNyY19wcm90KTsK
PiArCQlrdW5tYXBfYXRvbWljKGQuc3JjX2FkZHIpOwo+ICAgCWlmIChkLmRzdF9hZGRyKQo+IC0J
CXR0bV9rdW5tYXBfYXRvbWljX3Byb3QoZC5kc3RfYWRkciwgZC5kc3RfcHJvdCk7Cj4gKwkJa3Vu
bWFwX2F0b21pYyhkLmRzdF9hZGRyKTsKPiAgIAo+ICAgCXJldHVybiByZXQ7Cj4gICB9Cj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmggYi9pbmNsdWRlL2RybS90dG0v
dHRtX2JvX2FwaS5oCj4gaW5kZXggMGE5ZDA0MmUwNzVhLi5kZTFjY2RjZDU3MDMgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL3R0
bS90dG1fYm9fYXBpLmgKPiBAQCAtNjY4LDEwICs2NjgsNiBAQCBpbnQgdHRtX2JvX21tYXBfb2Jq
KHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLCBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJv
KTsKPiAgIGludCB0dG1fYm9fbW1hcChzdHJ1Y3QgZmlsZSAqZmlscCwgc3RydWN0IHZtX2FyZWFf
c3RydWN0ICp2bWEsCj4gICAJCXN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2KTsKPiAgIAo+IC12
b2lkICp0dG1fa21hcF9hdG9taWNfcHJvdChzdHJ1Y3QgcGFnZSAqcGFnZSwgcGdwcm90X3QgcHJv
dCk7Cj4gLQo+IC12b2lkIHR0bV9rdW5tYXBfYXRvbWljX3Byb3Qodm9pZCAqYWRkciwgcGdwcm90
X3QgcHJvdCk7Cj4gLQo+ICAgLyoqCj4gICAgKiB0dG1fYm9faW8KPiAgICAqCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
