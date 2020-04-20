Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2305D1B0998
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=91XWvezEH5NsXFeYvKXp5NL/5QENVBzidUO0tsS2eIE=; b=lYQ5ryAdRpKoGvkiM4n2Jyl8a
	BhOpirlIW/mCPDLsqfg3lkvSc2hx8FsLMdiymQFJ4Z0A8M+vKSEF/L7ZqdaB+X8ISlilfN8+H8/6L
	IgUQyHAWgd88m/o0UM5FXZ2jOB6bZ5Rx2XAu8NW86+G6av0oP1Uok6eftplk+cb/Tck+eWtz3K713
	K6Cm/jQkox/VqO/QE0LZFM92JyFSEjDUjKQ8oySbW2l1RRunvxA8KbRddW6kjGbz2S6abTNW+M7Xi
	zJFgyjU28CJYp6puZMKvgntim+z6q95Q08vFeGp9PeUevNqErTik+AyUvqsVzl84LWcYhVvX/im9H
	hxTUsf53g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQViv-0000nT-TW; Mon, 20 Apr 2020 12:40:29 +0000
Received: from mail-eopbgr750054.outbound.protection.outlook.com
 ([40.107.75.54] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVij-0000kL-KN
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:40:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iuTKzlnaAap+PflC6UNAwkdWbAWWFO2/3KH9FCLvLa+GLvZhjopdtrgjxLgKjQO1nlcjpMv+xVHXbZgMKrSP7rdMN5pkZ5JhOXKMkPiRHvzhfg1Ew83yS6kIpJFJr6106wqHuTUug+WShyYdpsj3VnIjQazAXH4LH/pdATxRSsZVu28+hxym5UoGdST8pd3vvothd1qYT7d0QZBN3mdOoyEqM2IvKYV0RwePiMw9aiWA0YS34RdQf5nwSI9tRz9lsyj28b+dP5OVf7rhJUw4Gq2GjnAg1KHrjirxGnZMGPE9jGqDJFxfuAypySxloulj0lK3YdtB/UzaodSm0BFvMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15a3GnumC19u3Q448ZVTc3UIlKkPdASCim+iBINpgck=;
 b=dm7BUTQd+Q8hswrlvXDCnelShlNDThMXjvUHn26eOBiOLjFDnnGwen2y1+7KrsJ8EP+TCvk/1NSD4D6J8hUd8+Itx5I9qM2r1paYgVg35XfyudykXwDfOpxR+hEX3fWtxKumkGde/kIxFNaGv2WWS9njJ+L2WbaUTQSKdNCdp6wy04PMxblpcvDQDL2f3BWo8wdnoALO+5gXxHwOli9fr2zMh+mMBZQ95Nu07M9+NnIb1DxOkvQahxjrqu3bKkDdDpSRdfaFSCXkMA5iNY8XwoTMFoNOm/HbdaMZm+PlkrjYD+2kzKnyDtlXOI7WflSxXl6xbdFSDJB5g4ZW8PXEnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15a3GnumC19u3Q448ZVTc3UIlKkPdASCim+iBINpgck=;
 b=e0rZAY+roCY7STiIrQzPPJ3S9wAFMI1ewTIPYqd7VwVA8yzvYOKr/RMXyVaYqKfhqexWYmcIRf5MtWJjRW5wcjGeVrUDQgfAMm577wU9jsF3mCTwaq0tbhrP7MlDgJTO/Lq8DSXqCoSZKc0LX0gQs+7r1YNQhs/hV1fv3DF6xOU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
Received: from DM6PR12MB4401.namprd12.prod.outlook.com (2603:10b6:5:2a9::15)
 by DM6PR12MB3098.namprd12.prod.outlook.com (2603:10b6:5:11c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Mon, 20 Apr
 2020 12:40:14 +0000
Received: from DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::7949:b580:a2d5:f766]) by DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::7949:b580:a2d5:f766%3]) with mapi id 15.20.2921.030; Mon, 20 Apr 2020
 12:40:14 +0000
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
To: Christoph Hellwig <hch@infradead.org>,
 Felix Kuehling <felix.kuehling@amd.com>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org> <20200416085402.GB1286150@myrica>
 <20200416121331.GA18661@infradead.org> <20200420074213.GA3180232@myrica>
 <20200420081034.GA17305@infradead.org>
 <6b195512-fa73-9a49-03d8-1ed92e86f607@amd.com>
 <20200420115504.GA20664@infradead.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <966e190e-ca9f-4c64-af05-43b0f0d8d012@amd.com>
Date: Mon, 20 Apr 2020 14:40:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200420115504.GA20664@infradead.org>
Content-Language: en-US
X-ClientProxiedBy: AM3PR07CA0103.eurprd07.prod.outlook.com
 (2603:10a6:207:7::13) To DM6PR12MB4401.namprd12.prod.outlook.com
 (2603:10b6:5:2a9::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM3PR07CA0103.eurprd07.prod.outlook.com (2603:10a6:207:7::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.5 via Frontend Transport; Mon, 20 Apr 2020 12:40:10 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3160d303-c6c8-49d9-d749-08d7e527f913
X-MS-TrafficTypeDiagnostic: DM6PR12MB3098:|DM6PR12MB3098:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB309823358CB495CF0C01E1B683D40@DM6PR12MB3098.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03793408BA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4401.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(366004)(36756003)(52116002)(186003)(6636002)(31696002)(16526019)(31686004)(478600001)(6486002)(5660300002)(86362001)(8936002)(4326008)(6666004)(2906002)(66946007)(66556008)(66476007)(81156014)(66574012)(8676002)(110136005)(7416002)(316002)(2616005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: efugUPiNs5RHrr8Fj8C6f0/P8LmMrLf2vPMppXcgf8/x+emZxErQj68ajkrim60Ulpb7qLE7LgBvbgLH13UAiIXWGoLg9pgJCzu0D/ZzSfSuwWme/HD4d0IonMJFyubAtJ1Z7O0jYCz9790mAdtjruuJZxiVqLmUIUvEXJnx0jTgA4/rIgjCTnid9zBvjJXZglX4VwCR9R0hwfFJ4/VQlPkUEUGlZ56TKT1yKbsw7JWitZ9APwWistmp4I9WpE4QA3SRwOGLGKrvpLhwXolul07HxKXtt9Xtz2P9CuzsqFqA8NhpyVstXSu9UYgJSs3nMaWNazZGzqXHYyO4kQw6AMtVOvRRs32t/5ken+izZSoogZk2s+IiIi2r03JRuJJseYTVd0+6KITqKIV7MVwsCcwnqu5LAny7jSbuMyg9S9RXeHEJ4hKddzKdV+XMwlyz
X-MS-Exchange-AntiSpam-MessageData: KGs7kskpLNZ814rjWPchfm2aEHQ3igHquB9ZfeHHXrFwe5S1nbTlRlqffdCyBNlvi2n6LzlEz9t9H8c4uy5AGa9haNu1tijutkEc3c60iMf6Fzt1dxc3bJMz8Aec4XKdEckkSaBifunslbzINGBnyOmLWvguV/N2s9bbkloJNgVSfb9blMRBQ29Nv9AMKMHDVhxjbkuuMt/QE9urDKh+SP+csHys4opdb0jRSeyu1c/CujtrM+ZRcD4wkE2BUlPTme0IxlGHcZGtXiPlCJ41pDdceKCFZ1ae8cJnyzJBwdiuWfs2PqHM3aCzB+QYFL/86l60HC/jkzkvouoVfSK++Ld2sibAiSqhvn0n2ZA8SUoMX6r+Fo86ZRupmuQLEb/D0MX+NL8K1nMb+TFFJS7tmQoMBkP0/kx4z4MBXAxQMnFTa+54fxamjln6+XBIpkYIoKFCOxvr1/0ie1PFkmB8vPPFTcPqoJVDtn4w7oCwBmmKJ7pcQzgMQdrIUJOGGXwX4Tj+QBr3U+c2ouseHkQgn0rwwY1tDIuvnAryi5MuV3wASLbjmHd0qNlGfLeOzZtmBoGylsdKWfdNF3tw1azS9BPDRUMNTrdJe1kuGEcWIlTSUUC/twEIz0zv8nmG0oHkGY1r2DlyZuo+wXFKd1xMFiQAQoLhgEYFexJd5F7z10/wJzBfIIxDq79c03elTmlV3HBCiOvMgZxZcl4ujZtiK35Dm0dDE/ETc006B4Rbmfg8BTUN9kiKlprj4CSUL96HtX/YRSahuGyvVVWT/oyYoupEpHB9H/ooUJZIRdKDunxf7kO6Wup7pWKnVJF4nPVHs26wxzQghyaw2gTlMcZPAiCkV70shxW/j7ZhlLEdPHg=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3160d303-c6c8-49d9-d749-08d7e527f913
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 12:40:14.4055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0c6qHkoa3ugzEHQmd3AsEsoI3JBDwiO4toqkxqk5offu+fcrlzTpGdMPiFL5Ci6D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054017_674274_027B444D 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.54 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, devicetree@vger.kernel.org, jgg@ziepe.ca,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 catalin.marinas@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 xuzaibo@huawei.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAuMDQuMjAgdW0gMTM6NTUgc2NocmllYiBDaHJpc3RvcGggSGVsbHdpZzoKPiBPbiBNb24s
IEFwciAyMCwgMjAyMCBhdCAwMTo0NDo1NlBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+PiBBbSAyMC4wNC4yMCB1bSAxMDoxMCBzY2hyaWViIENocmlzdG9waCBIZWxsd2lnOgo+Pj4g
T24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMDk6NDI6MTNBTSArMDIwMCwgSmVhbi1QaGlsaXBwZSBC
cnVja2VyIHdyb3RlOgo+Pj4+IFJpZ2h0LCBJIGNhbiBzZWUgdGhlIGFwcGVhbC4gSSBzdGlsbCBs
aWtlIGhhdmluZyBhIHNpbmdsZSBtbXUgbm90aWZpZXIgcGVyCj4+Pj4gbW0gYmVjYXVzZSBpdCBl
bnN1cmVzIHdlIGFsbG9jYXRlIGEgc2luZ2xlIFBBU0lEIHBlciBtbSAoYXMgcmVxdWlyZWQgYnkK
Pj4+PiB4ODYpLiBJIHN1cHBvc2Ugb25lIGFsdGVybmF0aXZlIGlzIHRvIG1haW50YWluIGEgaGFz
aHRhYmxlIG9mIG1tLT5wYXNpZCwKPj4+PiB0byBhdm9pZCBpdGVyYXRpbmcgb3ZlciBhbGwgYm9u
ZHMgZHVyaW5nIGFsbG9jYXRpb24uCj4+PiBHaXZlbiB0aGF0IHRoZSBQQVNJRCBpcyBhIHByZXR0
eSBnZW5lcmljIGFuZCBpbXBvcnRhbnQgY29uY2VwdCBjYW4KPj4+IHdlIGp1c3QgYWRkIGl0IGRp
cmVjdGx5IHRvIHRoZSBtbV9zdHJ1Y3QgYW5kIGFsbG9jYXRlIGl0IGxhemlseSBvbmNlCj4+PiB3
ZSBmaXJzdCBuZWVkIGl0Pwo+PiBXZWxsIHRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIFBBU0lEIG1p
Z2h0IGFzIHdlbGwgYmUgZGV2aWNlIHNwZWNpZmljLiBFLmcuCj4+IHNvbWUgZGV2aWNlcyB1c2Ug
MTZiaXQgUEFTSURzLCBzb21lIDE1Yml0LCBzb21lIG90aGVyIG9ubHkgMTJiaXQuCj4+Cj4+IFNv
IHdoYXQgY291bGQgKGF0IGxlYXN0IGluIHRoZW9yeSkgaGFwcGVuIGlzIHRoYXQgeW91IG5lZWQg
dG8gYWxsb2NhdGUKPj4gZGlmZmVyZW50IFBBU0lEcyBmb3IgdGhlIHNhbWUgcHJvY2VzcyBiZWNh
dXNlIGRpZmZlcmVudCBkZXZpY2VzIG5lZWQgb25lLgo+IFRoaXMgZGlyZWN0bHkgY29udHJhZGlj
dHMgdGhlIHN0YXRlbWVudCBmcm9tIEplYW4tUGhpbGlwcGUgYWJvdmUgdGhhdAo+IHg4NiByZXF1
aXJlcyBhIHNpbmdsZSBQQVNJRCBwZXIgbW1fc3RydWN0LiAgSWYgd2UgbWF5IG5lZWQgZGlmZmVy
ZW50Cj4gUEFTSURzIGZvciBkaWZmZXJlbnQgZGV2aWNlcyBhbmQgY2FuIGFjdHVhbGx5IHN1cHBv
cnQgdGhpcyBqdXN0Cj4gYWxsb2NhdGluZyBvbmUgcGVyIFtkZXZpY2UsIG1tX3N0cnVjdF0gd291
bGQgbWFrZSBtb3N0IHNlbnNlIG9mIG1lLCBhcwo+IGl0IGRvZXNuJ3QgY291cGxlIG90aGVyd2lz
ZSBkaXNqb2ludCBzdGF0ZS4KCldlbGwgSSdtIG5vdCBhbiBleHBlcnQgb24gdGhpcyB0b3BpYy4g
RmVsaXggY2FuIHByb2JhYmx5IHRlbGwgeW91IGEgYml0IAptb3JlIGFib3V0IHRoYXQuCgpNYXli
ZSBpdCBpcyBzdWZmaWNpZW50IHRvIGtlZXAgdGhlIGFsbG9jYXRlZCBQQVNJRHMgYXMgc21hbGwg
YXMgcG9zc2libGUgCmFuZCByZXR1cm4gYW4gYXBwcm9wcmlhdGUgZXJyb3IgaWYgYSBkZXZpY2Ug
Y2FuJ3QgZGVhbCB3aXRoIHRoZSAKYWxsb2NhdGVkIG51bWJlci4KCklmIGEgZGV2aWNlIGNhbiBv
bmx5IGRlYWwgd2l0aCAxMmJpdCBQQVNJRHMgYW5kIG1vcmUgdGhhbiAyXjEyIHRyeSB0byAKdXNl
IGl0IHRoZXJlIGlzbid0IG11Y2ggZWxzZSB3ZSBjYW4gZG8gdGhhbiByZXR1cm5pbmcgYW4gZXJy
b3IgYW55d2F5LgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
