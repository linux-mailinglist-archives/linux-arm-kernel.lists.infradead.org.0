Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B821E34CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TC1SIsIZq7Jz3pM8HEqrm7j23CN7unqZgyQ9sRphZak=; b=cM1tBJXLlbLT8MpW7ctmqHpUh
	yFu9Z1ANwwYqVCtC2956OWXE8wrQqL6olg/5o70rhjUua7gJ70erEjYVgSf5q5Pm99Cod0nM6HS0L
	k98SNMf3unZKWCRucFnIjbWJGJKCWL0SftJilCzmrLovSIEHQvf0DcIAjdnBdXum/DExA86o2mIHR
	DED58oGNn69w5MwOE4QnIlXs0VWAxk7FzroFedNzj06qCALW8k7b5incwrWVQ0vS0XoTeJEl8biwf
	4GbgmF34eIREjGfXnG3OM6MaQCGao5B9CDh9gFk14hwMJVvircnTqSK7kWu9G797qJjQDd5oPILPG
	6EX8siU4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkwa-0003Tw-7d; Wed, 27 May 2020 01:33:20 +0000
Received: from mail-co1nam11on2054.outbound.protection.outlook.com
 ([40.107.220.54] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkwR-0003TE-8j
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:33:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QUu8jYoUsgM65ZPFT/brrq722mYHHjNvrFdctaeQ0jxRQzKrzc7gKmI9Z0ICnjGVQvzssFQAgY801MdgK1B8m50LfOGJaJ95v71rX9WVDi+Q6xFIRxxI7UrsiCq24W/7i4OL7VaGnWlU0auhDpvxRQpKXQJooX1F+55aYq1GXx6iskEgZ7fWX2h8DuqrcjeYP8rNUl37TSzEOevv2dTn6NmQ6aEfFLUpFiyHorDdvXbWU8U0niBfp/8rwINHqqCFoP9Cu0bW9O7ucvvpfS2jg3rILbkO9O7odOj10tpiqOTDPJzn2KDry4LipcOD8NK3y/7YQQKn9h1+dOuo584znA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jc4yEdORqFbCoo1t/+tRCJYrax4yWEHmkEOf/cOuOg=;
 b=mxEbMw7060s6c+msnj4eH469ik1hs9f3GL21g4WdXX2pqshK0XKY7ht9jToFQXXyXHVivLsZffzO+x6OyAQRR1dQ813GCDF0OqGV3Y8PboH4W4vW7TgJg8/w0r4YBbNyYwaNrQwo6LwhsZufditREVD+O0Ae8NHBC+BXV+D+zTwQjGgyB121MgKcFXTvodewxRkwXNW4k8Q5erzok1Qw+xjbPS5wmKL0kBjFruYtAcSPE51jCu+AovbVvJuS6D3vh0z6zEIP5QDYXaGtYORAloI5BSVZ7cgcs74CCYtpB7VEPxpAYC8ADsHIX8TRzRGX7oPelZYfvgWKObCD0QxGJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jc4yEdORqFbCoo1t/+tRCJYrax4yWEHmkEOf/cOuOg=;
 b=ng8REdbJPdCUDf+vCmXwRh4r6PUXradRb4mKs4DSc09/T7PgtZfJ+O2OvQMAUe6uDlHl/aIs0nq0+PV0oZkKVcHGcDgjVU3GP4EsAYJsyNhyNk7XigCU4JzxOyay2LDHYp9FnS5373nVrd3102ukTPFX+gkm/RB1zwKRdcsrB/w=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2747.namprd11.prod.outlook.com (2603:10b6:5:c6::22) by
 DM6PR11MB3932.namprd11.prod.outlook.com (2603:10b6:5:194::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Wed, 27 May 2020 01:33:09 +0000
Received: from DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8]) by DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8%4]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 01:33:09 +0000
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
To: Mark Rutland <mark.rutland@arm.com>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
From: Jiping Ma <Jiping.Ma2@windriver.com>
Message-ID: <1e57ec27-1d54-c7cd-5e5b-6c0cc47f9891@windriver.com>
Date: Wed, 27 May 2020 09:33:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
In-Reply-To: <20200526102611.GA1363@C02TD0UTHF1T.local>
Content-Language: en-US
X-ClientProxiedBy: HKAPR04CA0012.apcprd04.prod.outlook.com
 (2603:1096:203:d0::22) To DM6PR11MB2747.namprd11.prod.outlook.com
 (2603:10b6:5:c6::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.195] (60.247.85.82) by
 HKAPR04CA0012.apcprd04.prod.outlook.com (2603:1096:203:d0::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17 via Frontend Transport; Wed, 27 May 2020 01:33:06 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dce7b5be-72bd-4bb9-63f7-08d801dde9bb
X-MS-TrafficTypeDiagnostic: DM6PR11MB3932:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB3932BC9D0B0CDEB4A43C11B4D8B10@DM6PR11MB3932.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04163EF38A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0nM9E3bE3vcbBkI6sUIrHbbiourvfLxXT/qvMF29AVxzbpLtimtpCLLA8y4lLOI8U9oWwji+Eknw6EiqVkeUQsPOl/xCrkFfez7lg0zlfE3KVcCYmzP3qJ5vN2+Nbq6ajh8FHTbAPDLzO7oAoAIAkgVXOYvjHrkxdXJprPlwma2Z8cd2H8HTadVWuawVvnaVo4R38nGd6lu7iIxY5xz7gvLjGRlHo9WBysB31rxHCGriA1fudELoBKQiZQBMzA4kTpPXyKfy+b7kVkBxK2UlNuLEdYGbIvydtRuQ7kWdcjye2UmMrTSmRZCP4TbIKjBC5Jb0plwbKrAl+iXEPkVX+7bSMg5WMUVW4WQCkIveIHiSdQ+tYQGNFLO8fMwRl2/zMdIMkqzaEnycDx5/FiYJ/gA8fZCN5gZ6ilx7KADm37FCoipLa+mCCSjEX4+wWt+eWAc9S9dwa07QZcjRx/nMvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2747.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(366004)(376002)(346002)(39850400004)(6666004)(6916009)(52116002)(956004)(53546011)(6706004)(31696002)(36756003)(478600001)(2616005)(86362001)(186003)(66556008)(66476007)(16526019)(26005)(6486002)(2906002)(66946007)(107886003)(8676002)(8936002)(4326008)(316002)(31686004)(5660300002)(16576012)(78286006)(15583001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: R7z2saHfm9SGaGDshCg+MpXX+XuagJQIx5NJR1bX7kiNrGyWJmUqhaGQko1T9FJXxqqyL190RTsmgzfeClaai8717TJRlk1A/JViL7mX76uGaE0o/f4+yDLubuv9rjFzEOVoITyYaKKAluULnIz7Whi0++KGRyUKW4cJzmiPRXcCFyQFGNfAoTMgJROQWZgXPrNjny9nRAy5m1Aq7jT92EdNny1ZviCJ/fkiOoOehNW6fDqmwsW7s01EYYq/M/zu2S7JTi2ZD50sorocs/D81q6tvBt5ufOUyJStihNe+V3bHapb21oKrYu25xXK/47rVHTPEqSSI1Pf/uP99zLOnphXgSUYa8nZwiOWVOL/Gsm/S6Lu0q38Zk3H0dUwgWBniBZrmMSyltijFo/kDPrqWKy73Hqfk5XCZ57z2LPJTX63As7SVFx9rPQFJetZ7PBkHQ0J4Mm4eEnn9l2x0qVq9YnRlpnxc3vwScS5DE5lCXc=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dce7b5be-72bd-4bb9-63f7-08d801dde9bb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2020 01:33:09.4906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fyG+UQBNpm7C5luc8HPJ9jE3Wcu9l6UYf/9XfcgcL1v6hHZUKMt5QmqfuETbuK602H9BRk3hvK0zbrcC1A0gDrudMIXXBoTRl8cgYOIEqdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_183311_307989_4F582364 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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

CgpPbiAwNS8yNi8yMDIwIDA2OjI2IFBNLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4gT24gTW9uLCBN
YXkgMTEsIDIwMjAgYXQgMTA6NTI6MDdBTSArMDgwMCwgSmlwaW5nIE1hIHdyb3RlOgo+PiBNb2Rp
ZmllZCB0aGUgcGF0Y2ggc3ViamVjdCBhbmQgdGhlIGNoYW5nZSBkZXNjcmlwdGlvbi4KPj4KPj4g
UEMgdmFsdWUgaXMgZ2V0IGZyb20gcmVnc1sxNV0gaW4gUkVHU19BQklfMzIgbW9kZSwgYnV0IGNv
cnJlY3QgUEMKPj4gaXMgcmVncy0+cGMocmVnc1tQRVJGX1JFR19BUk02NF9QQ10pIGluIGFybTY0
IGtlcm5lbCwgd2hpY2ggY2F1c2VkCj4+IHRoYXQgcGVyZiBjYW4gbm90IHBhcnNlciB0aGUgYmFj
a3RyYWNlIG9mIGFwcCB3aXRoIGR3YXJmIG1vZGUgaW4gdGhlCj4+IDMyYml0IHN5c3RlbSBhbmQg
NjRiaXQga2VybmVsLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKaXBpbmcgTWEgPGppcGluZy5tYTJA
d2luZHJpdmVyLmNvbT4KPiBUaGFua3MgZm9yIHRoaXMuCj4KPgo+PiAtLS0KPj4gICBhcmNoL2Fy
bTY0L2tlcm5lbC9wZXJmX3JlZ3MuYyB8IDQgKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3BlcmZfcmVn
cy5jIGIvYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9yZWdzLmMKPj4gaW5kZXggMGJiYWM2MS4uMGVm
Mjg4MCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9yZWdzLmMKPj4gKysr
IGIvYXJjaC9hcm02NC9rZXJuZWwvcGVyZl9yZWdzLmMKPj4gQEAgLTMyLDYgKzMyLDEwIEBAIHU2
NCBwZXJmX3JlZ192YWx1ZShzdHJ1Y3QgcHRfcmVncyAqcmVncywgaW50IGlkeCkKPj4gICAJaWYg
KCh1MzIpaWR4ID09IFBFUkZfUkVHX0FSTTY0X1BDKQo+PiAgIAkJcmV0dXJuIHJlZ3MtPnBjOwo+
PiAgIAo+PiArCWlmIChwZXJmX3JlZ19hYmkoY3VycmVudCkgPT0gUEVSRl9TQU1QTEVfUkVHU19B
QklfMzIKPj4gKwkJJiYgaWR4ID09IDE1KQo+PiArCQlyZXR1cm4gcmVncy0+cGM7Cj4gSSB0aGlu
ayB0aGVyZSBhcmUgc29tZSBtb3JlIGlzc3VlcyBoZXJlLCBhbmQgd2UgbWF5IG5lZWQgYSBtb3Jl
Cj4gc3Vic3RhbnRpYWwgcmV3b3JrLiBGb3IgYSBjb21wYXQgdGhyZWFkLCB3ZSBhbHdheXMgZXhw
b3NlCj4gUEVSRl9TQU1QTEVfUkVHU19BQklfMzIgdmlhIHBlcl9yZWdfYWJpKCksIGJ1dCBmb3Ig
c29tZSByZWFzb24KPiBwZXJmX3JlZ192YWx1ZSgpIGFsc28gbXVuZ2VzIHRoZSBjb21wYXQgU1Av
TFIgaW50byB0aGVpciBBUk02NAo+IGVxdWl2YWxlbnRzLCB3aGljaCBkb24ndCBleGlzdCBpbiB0
aGUgMzItYml0IHNhbXBsZSBBQkkuIFdlIGFsc28gZG9uJ3QKPiB6ZXJvIHRoZSByZWdzIHRoYXQg
ZG9uJ3QgZXhpc3QgaW4gMzItYml0IChpbmNsdWRpbmcgdGhlIGFsaWFzaW5nIFBDKS4KPgo+IEkg
cmVja29uIHdoYXQgd2Ugc2hvdWxkIGRvIGlzIGhhdmUgc2VwZXJhdGUgZnVuY3Rpb25zIGZvciB0
aGUgdHdvIEFCSXMsCj4gdG8gZW5zdXJlIHdlIGRvbid0IGNvbmZsYXRlIHRoZW0sIGUuZy4KPgo+
IHU2NCBwZXJmX3JlZ192YWx1ZV9hYmkzMihzdHJ1Y3QgcHRfcmVncyAqcmVncywgaW50IGlkeCkK
PiB7Cj4gCWlmICgodTMyKWlkeCA+IFBFUkZfUkVHX0FSTTMyX1BDKQo+IAkJcmV0dXJuIDA7Cj4g
CWlmIChpZHggPT0gUEVSRl9SRUdfQVJNMzJfUEMpCj4gCQlyZXR1cm4gcmVncy0+cGM7Cj4gCQo+
IAkvKgo+IAkgKiBDb21wYXQgU1AgYW5kIExSIGFscmVhZHkgaW4tcGxhY2UKPiAJICovCj4gCXJl
dHVybiByZWdzLT5yZWdzW2lkeF07Cj4gfQo+Cj4gdTY0IHBlcmZfcmVnX3ZhbHVlX2FiaTY0KHN0
cnVjdCBwdF9yZWdzICpyZWdzLCBpbnQgaWR4KQo+IHsKPiAJaWYgKCh1MzIpaWR4ID4gUEVSRl9S
RUdfQVJNNjRfTUFYKQo+IAkJcmV0dXJuIDA7Cj4gCWlmICgodTMyKWlkeCA9PSBQRVJGX1JFR19B
Uk02NF9TUCkKPiAJCXJldHVybiByZWdzLT5zcDsKPiAJaWYgKCh1MzIpaWR4ID09IFBFUkZfUkVH
X0FSTTY0X1BDKQo+IAkJcmV0dXJuIHJlZ3MtPnBjOwo+IAkKPiAJcmV1dHJuIHJlZ3MtPnJlZ3Nb
aWR4XTsKPiB9Cj4KPiB1NjQgcGVyZl9yZWdfdmFsdWUoc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIGlu
dCBpZHgpCj4gewo+IAlpZiAoY29tcGF0X3VzZXJfbW9kZShyZWdzKSkKPiAJCXJldHVybiBwZXJm
X3JlZ192YWx1ZV9hYmkzMihyZWdzLCBpZHgpOwo+IAllbHNlCj4gCQlyZXR1cm4gcGVyZl9yZWdf
dmFsdWVfYWJpNjQocmVncywgaWR4KTsKPiB9ClRoaXMgbW9kaWZpY2F0aW9uIGNhbiBub3QgZml4
IG91ciBpc3N1ZSzCoCB3ZSBuZWVkCnBlcmZfcmVnX2FiaShjdXJyZW50KSA9PSBQRVJGX1NBTVBM
RV9SRUdTX0FCSV8zMiB0byBqdWRnZSBpZiBpdCBpcyAKMzItYml0IHRhc2sgb3Igbm90LAp0aGVu
IHJldHVybiB0aGUgY29ycmVjdCBQQyB2YWx1ZS4KPiBUaGFua3MsCj4gTWFyay4KPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
