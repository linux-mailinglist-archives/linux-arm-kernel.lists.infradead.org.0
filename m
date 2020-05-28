Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7011E52A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5cGaKCD/ucvpgk1GEIUnPndvgCGIJrmgB6+Wd11e4G0=; b=WMJ+PyqebQ/DSTdONRJzFEy3V
	K2loj6zQ2C8UvZdR89rzmjKADORR8vP2wJM+Um7a/AOWPs2o2xX1FFy1+3vDFIpLhRKvD7Y3d8cwQ
	/fEPbFT+SV6K7ge8BPQ6zxzPYMCWa9WPzWmVwxmackZEq8UVtQV7iERHLKPlugStIhGVjDU/VxhiB
	W2rfkMLM2un4AiM2i96YUoYDLgy+nX61wmGcPEjMjyrcd7FMS4q/eVzM7DrhjuZDCS+e87pCJXVGL
	GSP/uFvBfmtQzpxj9qlCyEDHXXF+PsbvSpwAn1FgvXZWYmYSAaomv+0gILQCnGFUUiSbrWMl3o+6V
	LFiJG7ooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je70A-0003UD-7Q; Thu, 28 May 2020 01:06:30 +0000
Received: from mail-dm6nam12on2051.outbound.protection.outlook.com
 ([40.107.243.51] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6zx-0003Tf-6i
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:06:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQ0U9Jbz4sFlfJBtvXCE9eYbY8naLLDBjlvp7CRlqyyK5BdSVjEF9dbr6kIx2tG7mJRAq0IkxxPl2hfbbDXrCxy/K3/TYeZoJz8mw7WEW/lnA12UlyLfIxm9kIY29U9o3EzFaGWJ781uF3Zaim7YJ1gDZjsmjIWeVvdCwoEaakiW794KR7rkErfa8i8a+jMs0ecSEZXtzpAXqudEkCCk/LVvg+CmmU1g/mCKCICo5ImFesaTU5OEOd0h0kOSt89t1BLLgERlbWl3q5KAV8GcJo6yqqWe8f3wGcHLk5234sXntkUEK3YnjQOk+9OxrYLsPH+NEykL8ap7LSSQALVjLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxQjNhveOMGg433wXXc5LqatrAnxfbcJPZMN3e7CucM=;
 b=Yb25nGWt70kt/FDPWnJoNO1UbTVTg1KmPyAPxubfFHrBsSY2RaRol7krwLMddpiehRXfPxkPN+3NwOdnSYXJdpPuFq1dt6Ti2fxmAd2r9L8nPmuGPSHG4qMab++vOHB3ZlF8aT2J9vurrEt/SkyV2FABkdraSxdnVz8UpKlVblp/4XNV2vkuMl4aE0uIlZTx/J5CmOhYvB/6KorIVPi5p5UOr0zG+1hVzRyL1dVgA56v5t2lcUo2f6dyf9lUXYDJgJtZPBuHa1MpCLXvEZLsD4wtvEaIl3NK98K2DlB+1AWFN6KXq9L1K0YVtUqo5K1TqMUJE/bVbCBzsL+WxfrXQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxQjNhveOMGg433wXXc5LqatrAnxfbcJPZMN3e7CucM=;
 b=PwOlE+5Lu+yc0lh+VNeZM0l37FLBsCoimOlvLktQAGJJUC33tCs43QLPRaQ01XWZnisjpTGaha4+zy94BJpsHRSueSthLB1SKp2AU+H1fxHA4LLU7SZnZVKzb9LqBtqCHeCW+efSn/gR0ahj3Hi2mP+zYKq+PZRsmq+4LEe01Gc=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2747.namprd11.prod.outlook.com (2603:10b6:5:c6::22) by
 DM6PR11MB4235.namprd11.prod.outlook.com (2603:10b6:5:205::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Thu, 28 May 2020 01:06:15 +0000
Received: from DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8]) by DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8%4]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 01:06:14 +0000
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
To: Mark Rutland <mark.rutland@arm.com>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
 <1e57ec27-1d54-c7cd-5e5b-6c0cc47f9891@windriver.com>
 <20200527151928.GC59947@C02TD0UTHF1T.local>
From: Jiping Ma <Jiping.Ma2@windriver.com>
Message-ID: <cd66a2e4-c953-8b09-b775-d982bb1be47a@windriver.com>
Date: Thu, 28 May 2020 09:06:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
In-Reply-To: <20200527151928.GC59947@C02TD0UTHF1T.local>
Content-Language: en-US
X-ClientProxiedBy: HK2PR04CA0076.apcprd04.prod.outlook.com
 (2603:1096:202:15::20) To DM6PR11MB2747.namprd11.prod.outlook.com
 (2603:10b6:5:c6::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.195] (60.247.85.82) by
 HK2PR04CA0076.apcprd04.prod.outlook.com (2603:1096:202:15::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17 via Frontend Transport; Thu, 28 May 2020 01:06:12 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3edd565b-18a0-4046-8f5b-08d802a351b9
X-MS-TrafficTypeDiagnostic: DM6PR11MB4235:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB4235C17C44EB37BFEC711696D88E0@DM6PR11MB4235.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0417A3FFD2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Edz4V8kjW8k3WF2Z1pNX7+v+BP5JpgDqKiqZsHueFOl79u36XXRfHaR823hKinghuVOtTIG5VqskE9ZRFvwxVBcT2qc0kbPSC94pgwIolbH0eCzvG4Dsa7hN7Ps91yekyg6BJUSKvpOQVeeumPWzpbjCmTjZCfZTu19RZFGykTU2mmAJmEZWhjcY09KwRbvxM71WNc6tHe80NVMesLk6CUcoJ6asv1MFptTyLbYxPVE9x0alKM6m981JfFljaaOenEF0pBu5HqvmgBX0jBIA7KsDVnDLssOVvwoUNquuam/bxzWVvDmOONfX1t+CMa60kmvkqeLa2lbBYDUyyonniBW3YM0vFNh1bIiaB4T16Chi5I0pB94gwL1tQssPT5RTzJODhOKQVyjR9zX3SGCgTvNBMsuvSQpHZbTtSybieocECARhtys+E6PC5T7QHhigUJYwKDCQHk7fRsP1LMbxNQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2747.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(346002)(366004)(39850400004)(396003)(6706004)(66946007)(16576012)(316002)(66476007)(956004)(66556008)(478600001)(6666004)(4326008)(107886003)(6486002)(8676002)(16526019)(86362001)(2616005)(8936002)(5660300002)(31686004)(31696002)(36756003)(186003)(26005)(2906002)(53546011)(52116002)(6916009)(78286006)(15583001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: q7wWw697TNg6fUA+zVSwxODi5tMR+H0/20XznNO12kQKpyLkJOo1tGI6/vxd4kW6K9QPnA9iSBJ/DhIOZB8toVkXCXdyGDDfwqfWnk8SUBulSCbLjgsLzoazO3eWuDkAF0HTjV1FagSbamO04bVpQx93FmXGYXENHyGF/g56UBOsjI5NxuTJ6XV4skx30Dtec/z0yYMgdn5tFbpPTxxA92WYZqhcAe0DoefiFPkAVcdtKjlZNJy8Na/fPquOKoIFSYQUvcQid1Ouc4qP4SZoib8pcfC5ZYq5DpfiThvXZ+rriJJ+rEtcOVTXvKmXoqeIDeR5XKyZrWyA+kRh2T+Pwvv61iiWlwwOjbLA3rfrDO+NHHfXEXiMaSTfdPjngwNDVp8/QOg4OgtcRIK/xWLbN+14mrHPv0CEiYDpZbnKp+Zt7zzzi7cKbs36QfH30wYZ9JTNpT8yLR2LZVVb/X8QKhFbS1K+PqtsGUnqentpgMc=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3edd565b-18a0-4046-8f5b-08d802a351b9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2020 01:06:14.9383 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mFdv1umwvCCxNBkYi8asKnQfrvIOjqliiy1LhH32xqOb9SCeywHSuP/bjwkryzVfBFz0wBAUX2hhwim/b/Lwuu5z5IqjWo7JM5sW3kVCpys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_180617_308134_48B9FFCA 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.51 listed in wl.mailspike.net]
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
Cc: zhe.he@windriver.com, bruce.ashfield@gmail.com, yue.tao@windriver.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 paul.gortmaker@windriver.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8yNy8yMDIwIDExOjE5IFBNLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4gT24gV2VkLCBN
YXkgMjcsIDIwMjAgYXQgMDk6MzM6MDBBTSArMDgwMCwgSmlwaW5nIE1hIHdyb3RlOgo+Pgo+PiBP
biAwNS8yNi8yMDIwIDA2OjI2IFBNLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+PiBPbiBNb24sIE1h
eSAxMSwgMjAyMCBhdCAxMDo1MjowN0FNICswODAwLCBKaXBpbmcgTWEgd3JvdGU6Cj4+Pj4gTW9k
aWZpZWQgdGhlIHBhdGNoIHN1YmplY3QgYW5kIHRoZSBjaGFuZ2UgZGVzY3JpcHRpb24uCj4+Pj4K
Pj4+PiBQQyB2YWx1ZSBpcyBnZXQgZnJvbSByZWdzWzE1XSBpbiBSRUdTX0FCSV8zMiBtb2RlLCBi
dXQgY29ycmVjdCBQQwo+Pj4+IGlzIHJlZ3MtPnBjKHJlZ3NbUEVSRl9SRUdfQVJNNjRfUENdKSBp
biBhcm02NCBrZXJuZWwsIHdoaWNoIGNhdXNlZAo+Pj4+IHRoYXQgcGVyZiBjYW4gbm90IHBhcnNl
ciB0aGUgYmFja3RyYWNlIG9mIGFwcCB3aXRoIGR3YXJmIG1vZGUgaW4gdGhlCj4+Pj4gMzJiaXQg
c3lzdGVtIGFuZCA2NGJpdCBrZXJuZWwuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKaXBpbmcg
TWEgPGppcGluZy5tYTJAd2luZHJpdmVyLmNvbT4KPj4+IFRoYW5rcyBmb3IgdGhpcy4KPj4+Cj4+
Pgo+Pj4+IC0tLQo+Pj4+ICAgIGFyY2gvYXJtNjQva2VybmVsL3BlcmZfcmVncy5jIHwgNCArKysr
Cj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3BlcmZfcmVncy5jIGIvYXJjaC9hcm02NC9rZXJuZWwv
cGVyZl9yZWdzLmMKPj4+PiBpbmRleCAwYmJhYzYxLi4wZWYyODgwIDEwMDY0NAo+Pj4+IC0tLSBh
L2FyY2gvYXJtNjQva2VybmVsL3BlcmZfcmVncy5jCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9rZXJu
ZWwvcGVyZl9yZWdzLmMKPj4+PiBAQCAtMzIsNiArMzIsMTAgQEAgdTY0IHBlcmZfcmVnX3ZhbHVl
KHN0cnVjdCBwdF9yZWdzICpyZWdzLCBpbnQgaWR4KQo+Pj4+ICAgIAlpZiAoKHUzMilpZHggPT0g
UEVSRl9SRUdfQVJNNjRfUEMpCj4+Pj4gICAgCQlyZXR1cm4gcmVncy0+cGM7Cj4+Pj4gKwlpZiAo
cGVyZl9yZWdfYWJpKGN1cnJlbnQpID09IFBFUkZfU0FNUExFX1JFR1NfQUJJXzMyCj4+Pj4gKwkJ
JiYgaWR4ID09IDE1KQo+Pj4+ICsJCXJldHVybiByZWdzLT5wYzsKPj4+IEkgdGhpbmsgdGhlcmUg
YXJlIHNvbWUgbW9yZSBpc3N1ZXMgaGVyZSwgYW5kIHdlIG1heSBuZWVkIGEgbW9yZQo+Pj4gc3Vi
c3RhbnRpYWwgcmV3b3JrLiBGb3IgYSBjb21wYXQgdGhyZWFkLCB3ZSBhbHdheXMgZXhwb3NlCj4+
PiBQRVJGX1NBTVBMRV9SRUdTX0FCSV8zMiB2aWEgcGVyX3JlZ19hYmkoKSwgYnV0IGZvciBzb21l
IHJlYXNvbgo+Pj4gcGVyZl9yZWdfdmFsdWUoKSBhbHNvIG11bmdlcyB0aGUgY29tcGF0IFNQL0xS
IGludG8gdGhlaXIgQVJNNjQKPj4+IGVxdWl2YWxlbnRzLCB3aGljaCBkb24ndCBleGlzdCBpbiB0
aGUgMzItYml0IHNhbXBsZSBBQkkuIFdlIGFsc28gZG9uJ3QKPj4+IHplcm8gdGhlIHJlZ3MgdGhh
dCBkb24ndCBleGlzdCBpbiAzMi1iaXQgKGluY2x1ZGluZyB0aGUgYWxpYXNpbmcgUEMpLgo+Pj4K
Pj4+IEkgcmVja29uIHdoYXQgd2Ugc2hvdWxkIGRvIGlzIGhhdmUgc2VwZXJhdGUgZnVuY3Rpb25z
IGZvciB0aGUgdHdvIEFCSXMsCj4+PiB0byBlbnN1cmUgd2UgZG9uJ3QgY29uZmxhdGUgdGhlbSwg
ZS5nLgo+Pj4KPj4+IHU2NCBwZXJmX3JlZ192YWx1ZV9hYmkzMihzdHJ1Y3QgcHRfcmVncyAqcmVn
cywgaW50IGlkeCkKPj4+IHsKPj4+IAlpZiAoKHUzMilpZHggPiBQRVJGX1JFR19BUk0zMl9QQykK
Pj4+IAkJcmV0dXJuIDA7Cj4+PiAJaWYgKGlkeCA9PSBQRVJGX1JFR19BUk0zMl9QQykKPj4+IAkJ
cmV0dXJuIHJlZ3MtPnBjOwo+Pj4gCQo+Pj4gCS8qCj4+PiAJICogQ29tcGF0IFNQIGFuZCBMUiBh
bHJlYWR5IGluLXBsYWNlCj4+PiAJICovCj4+PiAJcmV0dXJuIHJlZ3MtPnJlZ3NbaWR4XTsKPj4+
IH0KPj4+Cj4+PiB1NjQgcGVyZl9yZWdfdmFsdWVfYWJpNjQoc3RydWN0IHB0X3JlZ3MgKnJlZ3Ms
IGludCBpZHgpCj4+PiB7Cj4+PiAJaWYgKCh1MzIpaWR4ID4gUEVSRl9SRUdfQVJNNjRfTUFYKQo+
Pj4gCQlyZXR1cm4gMDsKPj4+IAlpZiAoKHUzMilpZHggPT0gUEVSRl9SRUdfQVJNNjRfU1ApCj4+
PiAJCXJldHVybiByZWdzLT5zcDsKPj4+IAlpZiAoKHUzMilpZHggPT0gUEVSRl9SRUdfQVJNNjRf
UEMpCj4+PiAJCXJldHVybiByZWdzLT5wYzsKPj4+IAkKPj4+IAlyZXV0cm4gcmVncy0+cmVnc1tp
ZHhdOwo+Pj4gfQo+Pj4KPj4+IHU2NCBwZXJmX3JlZ192YWx1ZShzdHJ1Y3QgcHRfcmVncyAqcmVn
cywgaW50IGlkeCkKPj4+IHsKPj4+IAlpZiAoY29tcGF0X3VzZXJfbW9kZShyZWdzKSkKPj4+IAkJ
cmV0dXJuIHBlcmZfcmVnX3ZhbHVlX2FiaTMyKHJlZ3MsIGlkeCk7Cj4+PiAJZWxzZQo+Pj4gCQly
ZXR1cm4gcGVyZl9yZWdfdmFsdWVfYWJpNjQocmVncywgaWR4KTsKPj4+IH0KPj4gVGhpcyBtb2Rp
ZmljYXRpb24gY2FuIG5vdCBmaXggb3VyIGlzc3VlLMKgIHdlIG5lZWQKPj4gcGVyZl9yZWdfYWJp
KGN1cnJlbnQpID09IFBFUkZfU0FNUExFX1JFR1NfQUJJXzMyIHRvIGp1ZGdlIGlmIGl0IGlzIDMy
LWJpdAo+PiB0YXNrIG9yIG5vdCwKPj4gdGhlbiByZXR1cm4gdGhlIGNvcnJlY3QgUEMgdmFsdWUu
Cj4gSSBtdXN0IGJlIG1pc3Npbmcgc29tZXRoaW5nIGhlcmUuCj4KPiBUaGUgY29yZSBjb2RlIHBl
cmZfcmVnX2FiaSh0YXNrKSBpcyBjYWxsZWQgd2l0aCB0aGUgdGFzayBiZWluZyBzYW1wbGVkLAo+
IGFuZCB0aGUgcmVncyBhcmUgZnJvbSB0aGUgdGFzayBiZWluZyBzYW1wbGVkLiBGb3IgYSB1c2Vy
c3BhY2Ugc2FtcGxlIGZvcgo+IGEgY29tcGF0IHRhc2ssIGNvbXBhdF91c2VyX21vZGUocmVncykg
c2hvdWxkIGJlIGVxdWl2YWxlbnQgdG8gdGhlCj4gaXNfY29tcGF0X3RocmVhZCh0YXNrX3RocmVh
ZF9pbmZvKHRhc2spKSBjaGVjay4KPgo+IFdoYXQgYW0gSSBtaXNzaW5nPwpUaGlzIGlzc3VlIGNh
dXNlZCBieSBQQyB2YWx1ZSBpcyBub3QgY29ycmVjdC4gcmVncyBhcmUgc2FtcGxlZCBpbiAKZnVu
Y3Rpb24gcGVyZl9vdXRwdXRfc2FtcGxlX3JlZ3MsIHRoYXQgY2FsbCBwZXJmX3JlZ192YWx1ZShy
ZWdzLCBiaXQpIHRvIApnZXQgUEMgdmFsdWUuClBDIHZhbHVlIGlzIHJlZ3NbMTVdIGluIHBlcmZf
cmVnX3ZhbHVlKCkgZnVuY3Rpb24uIGl0IHNob3VsZCBiZSByZWdzWzMyXS4KCnBlcmZfb3V0cHV0
X3NhbXBsZV9yZWdzKHN0cnVjdCBwZXJmX291dHB1dF9oYW5kbGUgKmhhbmRsZSwKIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHB0X3JlZ3MgKnJl
Z3MsIHU2NCBtYXNrKQp7CiDCoMKgwqDCoMKgwqDCoCBpbnQgYml0OwogwqDCoMKgwqDCoMKgwqAg
REVDTEFSRV9CSVRNQVAoX21hc2ssIDY0KTsKCiDCoMKgwqDCoMKgwqDCoCBiaXRtYXBfZnJvbV91
NjQoX21hc2ssIG1hc2spOwogwqDCoMKgwqDCoMKgwqAgZm9yX2VhY2hfc2V0X2JpdChiaXQsIF9t
YXNrLCBzaXplb2YobWFzaykgKiBCSVRTX1BFUl9CWVRFKSB7CiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdTY0IHZhbDsKCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFs
ID0gcGVyZl9yZWdfdmFsdWUocmVncywgYml0KTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBwZXJmX291dHB1dF9wdXQoaGFuZGxlLCB2YWwpOwogwqDCoMKgwqDCoMKgwqAgfQp9Cgo+
Cj4gVGhhbmtzLAo+IE1hcmsuCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
