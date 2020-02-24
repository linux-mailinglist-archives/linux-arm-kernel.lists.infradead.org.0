Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1822216ACB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYIx1v4DuFeNTurG9Bn8oC5BjBPDuEK5tqWedLBaZUU=; b=eBXQTKexTdzu+Q
	9ZuSlfiNYVDfv1TWLaOmeD5+nOZ0sruECu7WdiVJsKHUsvDObim65YzTIbRlg38lcS6U2c6PVC263
	lvx0ABbYDAcwVgYzuRwBPgMhvEcKmbVkxgmVmIPyKR0EFbsn5Yxdnu9Z2FOurTQ72S+3zahNnSVjx
	xBkYnONJZSh13pACk541VeB8IbwAKPddFKEGufnPxSqu12UNVeEElcaFdmHTMMeQK2981vnTpWChp
	S29GOvpW1YWdo3FqbMtTG0zj3idnsu3iCdFJM4A/NehgTYSJP6/B8SevJMNa8/djmG15W6/ceJzK/
	DFmdQPu15G/hyPYQTjHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HDz-0000cC-7Y; Mon, 24 Feb 2020 17:08:55 +0000
Received: from mail-eopbgr20081.outbound.protection.outlook.com ([40.107.2.81]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HDm-0000be-FV
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:08:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5j5EbNtXhjI/xzwoRPqJRnzcOInSJH93pw/2oaS7uNI=;
 b=UPMuqG9XjhTXkutYlN1FexM74XaFWAQ/PzjtVtdMo7Hyzmv/XX78CeqCsxkOsvtdc4IuTymPV84GkBXEAR9H8canMZdUQaJRHe2v0sNLaOzOls2NP9CMpArq0htae1aYXhOBZZHaFN0F9qov+SY1DVUTIqoPGU1XaAnZj+IlIF8=
Received: from VI1PR08CA0195.eurprd08.prod.outlook.com (2603:10a6:800:d2::25)
 by AM4PR0802MB2257.eurprd08.prod.outlook.com (2603:10a6:200:61::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Mon, 24 Feb
 2020 17:08:36 +0000
Received: from AM5EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by VI1PR08CA0195.outlook.office365.com
 (2603:10a6:800:d2::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Mon, 24 Feb 2020 17:08:36 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT032.mail.protection.outlook.com (10.152.16.84) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17 via Frontend Transport; Mon, 24 Feb 2020 17:08:36 +0000
Received: ("Tessian outbound d1ceabc7047e:v42");
 Mon, 24 Feb 2020 17:08:35 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 00ba86d25ee069a5
X-CR-MTA-TID: 64aa7808
Received: from cbbe8957c54d.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 5B71721C-5EB2-41BD-AE96-11CC6B3453B3.1; 
 Mon, 24 Feb 2020 17:08:30 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cbbe8957c54d.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 24 Feb 2020 17:08:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cPvm5GUlh/9u85VOLTje7QRTac82iQ7ZNE8OOjomN4LKKGU3Acig6PoaXz5WabPTriw+OUuubghTYIWbax4On2cpHA1dev4S64mdOoJzFf7c1i9G0OPWjDEuCfVUaVH0aQySdXlTRNcRahqwOw+accIqBXMlV1oFsi64RBZCZFNbG9b27K66HS0hbuQ8TbEc8jr/U2ZEbtt2kvDIOcJzrw+FDZ3zTwUPh6nOqZTXHKcBQmIyPyc9VEwUqAwsvHxYuJm8H9pO7PmEF/qU6wxuKXo1oZAPw7kwsN/J7C7YtMnqqx6pSyu0xanhdr4TvMvBXwfM03Fe1D0nIXjB+5DyrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5j5EbNtXhjI/xzwoRPqJRnzcOInSJH93pw/2oaS7uNI=;
 b=G0ymCWXsK0c4GSzf6U6Nn4JRC9VAJ85j+ASg9m9Z0/WssYMb/unDxVkwygoqLi++P00ORCYdcQJPQWQGwIlWmaFPNdG4BeIbPbecfYsDVMYLESPJ2icOGFRGphpLSxS49lnG0Lwon1LjwDwAJJhfnTro1CL1mzvJHKJpOKkel43BlLjLNG0/aIJLvxxhVIuU0gsgtZA3yytwi8ZuOSx/QweWCJ5qUECyar5ry7qFlxzqc+4ME4gLd5ioVr6u5Qx5qx21ewIwB0dKSyf27s4cMyKd0e4iLFf8LKNUVEHcfIZVYeaT/qAD5MedWE90R5qVOz7zQnoJ8S9AwNaGH732zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5j5EbNtXhjI/xzwoRPqJRnzcOInSJH93pw/2oaS7uNI=;
 b=UPMuqG9XjhTXkutYlN1FexM74XaFWAQ/PzjtVtdMo7Hyzmv/XX78CeqCsxkOsvtdc4IuTymPV84GkBXEAR9H8canMZdUQaJRHe2v0sNLaOzOls2NP9CMpArq0htae1aYXhOBZZHaFN0F9qov+SY1DVUTIqoPGU1XaAnZj+IlIF8=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=James.Clark@arm.com; 
Received: from DB6PR0802MB2519.eurprd08.prod.outlook.com (10.172.251.18) by
 DB6PR0802MB2198.eurprd08.prod.outlook.com (10.172.227.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Mon, 24 Feb 2020 17:08:29 +0000
Received: from DB6PR0802MB2519.eurprd08.prod.outlook.com
 ([fe80::1d47:e75a:d449:605c]) by DB6PR0802MB2519.eurprd08.prod.outlook.com
 ([fe80::1d47:e75a:d449:605c%6]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 17:08:28 +0000
Subject: Re: [PATCH v4 4/4] perf tools: Support "branch-misses:pp" on arm64
To: Adrian Hunter <adrian.hunter@intel.com>, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200210122509.GA2005279@krava>
 <20200211140445.21986-1-james.clark@arm.com>
 <20200211140445.21986-5-james.clark@arm.com>
 <3114ea3a-5d9b-2c25-af41-cead352b6a02@intel.com>
From: James Clark <james.clark@arm.com>
Message-ID: <96a814b2-23b8-2ac0-9dc5-0a4b70ddf895@arm.com>
Date: Mon, 24 Feb 2020 17:08:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <3114ea3a-5d9b-2c25-af41-cead352b6a02@intel.com>
Content-Language: en-US
X-ClientProxiedBy: LO2P123CA0015.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::27) To DB6PR0802MB2519.eurprd08.prod.outlook.com
 (2603:10a6:4:a0::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.32.36.33] (217.140.106.40) by
 LO2P123CA0015.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:a6::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Mon, 24 Feb 2020 17:08:28 +0000
X-Originating-IP: [217.140.106.40]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fce13a75-c705-46da-7f3c-08d7b94c2f79
X-MS-TrafficTypeDiagnostic: DB6PR0802MB2198:|DB6PR0802MB2198:|AM4PR0802MB2257:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM4PR0802MB225738BBE15588FE94400178E2EC0@AM4PR0802MB2257.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;OLM:4941;
X-Forefront-PRVS: 032334F434
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(189003)(199004)(53546011)(81156014)(66946007)(66476007)(4326008)(66556008)(44832011)(186003)(16526019)(16576012)(6486002)(81166006)(7416002)(54906003)(8936002)(36756003)(8676002)(5660300002)(2906002)(31696002)(31686004)(316002)(2616005)(956004)(26005)(86362001)(52116002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2198;
 H:DB6PR0802MB2519.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 48L+5rSr2sWjEdKsVXhE+Nk09UMySIAdf9Bbf+G6WcGHSUcyMamyXX+IKh71KkMxYdZYZqzBCKbTc721KfPdnA1wYDp4DaWdx/RgLAo6//NNH6jxX2Vrv4lESGH2liEDevbYVof831viJhS4YRnegVBHh71YeudCm3lwudHfHUx5bFGtZT9rUnLfgiktx9oIWa0k/5Xt/6+FCnKOh/aI4t47c2lI12m0OqpIuhA7rNcR4REEyL4Bwjd7dtbwCoVTNjgbi9eGZ7GVrS3cqWBwjMY829FpNTB/qXyxBBCor/0TYPAxSNFsj5AoqA1e4WxVjPZYBfYDLnpQJYfXAtHVb3ircSdHqoMXsuwQNDF/s/NIk2YRWc1+UcMTQ44EFCqpv1kN8mOKs8QxE6zk+vRhyapUd3OENmEpepnASlSZidizHG44lzjgGIeC8yRKpn/f
X-MS-Exchange-AntiSpam-MessageData: bnXmvizNkUB8Zghv/mcmEddA6V3icJPVXzfeSPN+SaQg2iExOoPtdplccSBwrk3eDuL/mCTuf4KKE748A8nlDpcI++ylzcjdzhhsrJUXslxbjHwufE+vE/XIH+jg6f76yqnZqjeUeyrmCzBFu+o5fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2198
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=James.Clark@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(39860400002)(346002)(189003)(199004)(316002)(53546011)(54906003)(107886003)(4326008)(26005)(336012)(2616005)(956004)(16576012)(44832011)(8676002)(81166006)(81156014)(31696002)(8936002)(70586007)(2906002)(36756003)(36906005)(31686004)(186003)(26826003)(478600001)(6486002)(5660300002)(86362001)(356004)(16526019)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2257;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 3affae31-d935-4dce-d8f2-08d7b94c2aeb
X-Forefront-PRVS: 032334F434
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1cPL2usDHikFYG0hL/pvEpudBQ9WwHzLf1SPhqqjAiTijLO71dF632w2+xx2cbdEp+U3G0h619tJXd/9jVGGS0ZS5OShMgq7ur0gB/eD21wzelFclxeb7n6ReleEqvZix8HoFRhD0bCMLHkVXwPd8XRAr32KHENJrGqulWZMJIgaFjOZte3zymw0h+pd5zxZtlmNcU8sn6qNUd36tVdvL20dvev31PazEtwB3+Jh+Iy/QARCrYtyOj2BkMRbgL5p6uI0SG4AmIy7IJCPkEqOOU9DwQDvCkizX6k1Ir4YmlibDl+Tyusq9C8SBiqeq7ZSceEoaUCROny4lu7xX2PmC2iJkXaQE/ltwXQ8SLzQPATwc6T+E/2ygPLR6v04Uy9wsv3L2UhHMhS7eqaJnj8NKag9TEzgnxO42vipOc06OZ+/Xp9XpLL9buf4ySFBCQrv
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 17:08:36.0658 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fce13a75-c705-46da-7f3c-08d7b94c2f79
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2257
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_090842_728674_4C62EA71 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>, nd@arm.com,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On 2/17/20 11:42 AM, Adrian Hunter wrote:
> On 11/02/20 4:04 pm, James Clark wrote:
>> From: Tan Xiaojun <tanxiaojun@huawei.com>
>>
>> At the suggestion of James Clark, use spe to support the precise
>> ip of some events. Currently its support event is:
>> branch-misses.
>>
>> Example usage:
>>
>> $ ./perf record -e branch-misses:pp dd if=/dev/zero of=/dev/null count=10000
>> (:p/pp/ppp is same for this case.)
>>
>> $ ./perf report --stdio
>> ("--stdio is not necessary")
>>
>> --------------------------------------------------------------------
>> ...
>>  # Samples: 14  of event 'branch-misses:pp'
>>  # Event count (approx.): 14
>>  #
>>  # Children      Self  Command  Shared Object      Symbol
>>  # ........  ........  .......  .................  ..........................
>>  #
>>     14.29%    14.29%  dd       [kernel.kallsyms]  [k] __arch_copy_from_user
>>     14.29%    14.29%  dd       libc-2.28.so       [.] _dl_addr
>>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] __free_pages
>>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] __pi_memcpy
>>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] pagecache_get_page
>>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] unmap_single_vma
>>      7.14%     7.14%  dd       dd                 [.] 0x00000000000025ec
>>      7.14%     7.14%  dd       ld-2.28.so         [.] _dl_lookup_symbol_x
>>      7.14%     7.14%  dd       ld-2.28.so         [.] check_match
>>      7.14%     7.14%  dd       libc-2.28.so       [.] __mpn_rshift
>>      7.14%     7.14%  dd       libc-2.28.so       [.] _nl_intern_locale_data
>>      7.14%     7.14%  dd       libc-2.28.so       [.] read_alias_file
>> ...
>> --------------------------------------------------------------------
>>
>> Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
>> Suggested-by: James Clark <James.Clark@arm.com>
>> Tested-by: Qi Liu <liuqi115@hisilicon.com>
>> Signed-off-by: James Clark <james.clark@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Peter Zijlstra <peterz@infradead.org>
>> Cc: Ingo Molnar <mingo@redhat.com>
>> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
>> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>> Cc: Jiri Olsa <jolsa@redhat.com>
>> Cc: Tan Xiaojun <tanxiaojun@huawei.com>
>> Cc: Al Grant <al.grant@arm.com>
>> Cc: Namhyung Kim <namhyung@kernel.org>
>> ---
>>  tools/perf/arch/arm/util/auxtrace.c | 38 +++++++++++++++++++++++++++++
>>  tools/perf/builtin-record.c         |  5 ++++
>>  tools/perf/util/arm-spe.c           |  9 +++++++
>>  tools/perf/util/arm-spe.h           |  3 +++
>>  tools/perf/util/auxtrace.h          |  6 +++++
>>  5 files changed, 61 insertions(+)
>>
>> diff --git a/tools/perf/arch/arm/util/auxtrace.c b/tools/perf/arch/arm/util/auxtrace.c
>> index 0a6e75b8777a..18f0ea7556e7 100644
>> --- a/tools/perf/arch/arm/util/auxtrace.c
>> +++ b/tools/perf/arch/arm/util/auxtrace.c
>> @@ -10,11 +10,25 @@
>>  
>>  #include "../../util/auxtrace.h"
>>  #include "../../util/debug.h"
>> +#include "../../util/env.h"
>>  #include "../../util/evlist.h"
>>  #include "../../util/pmu.h"
>>  #include "cs-etm.h"
>>  #include "arm-spe.h"
>>  
>> +#define SPE_ATTR_TS_ENABLE		BIT(0)
>> +#define SPE_ATTR_PA_ENABLE		BIT(1)
>> +#define SPE_ATTR_PCT_ENABLE		BIT(2)
>> +#define SPE_ATTR_JITTER			BIT(16)
>> +#define SPE_ATTR_BRANCH_FILTER		BIT(32)
>> +#define SPE_ATTR_LOAD_FILTER		BIT(33)
>> +#define SPE_ATTR_STORE_FILTER		BIT(34)
>> +
>> +#define SPE_ATTR_EV_RETIRED		BIT(1)
>> +#define SPE_ATTR_EV_CACHE		BIT(3)
>> +#define SPE_ATTR_EV_TLB			BIT(5)
>> +#define SPE_ATTR_EV_BRANCH		BIT(7)
>> +
>>  static struct perf_pmu **find_all_arm_spe_pmus(int *nr_spes, int *err)
>>  {
>>  	struct perf_pmu **arm_spe_pmus = NULL;
>> @@ -108,3 +122,27 @@ struct auxtrace_record
>>  	*err = 0;
>>  	return NULL;
>>  }
>> +
>> +void auxtrace__preprocess_evlist(struct evlist *evlist)
>> +{
>> +	struct evsel *evsel;
>> +	struct perf_pmu *pmu;
>> +
>> +	evlist__for_each_entry(evlist, evsel) {
>> +		/* Currently only supports precise_ip for branch-misses on arm64 */
>> +		if (!strcmp(perf_env__arch(evlist->env), "arm64")
> 
> Isn't config ambiguous unless you also check type i.e.
> 
> 			&& evsel->core.attr.type == PERF_TYPE_HARDWARE
> 

Yes you're right I will add this.

>> +			&& evsel->core.attr.config == PERF_COUNT_HW_BRANCH_MISSES
>> +			&& evsel->core.attr.precise_ip)
>> +		{
>> +			pmu = perf_pmu__find("arm_spe_0");
>> +			if (pmu) {
> 
> Changing the event seems a bit weird.
> 

This is because there is no support in the kernel for the precise_ip attribute on Arm.
SPE can give you precise ip data for the same event, but changing the event is required.
 
>> +				evsel->pmu_name = pmu->name;
>> +				evsel->core.attr.type = pmu->type;
>> +				evsel->core.attr.config = SPE_ATTR_TS_ENABLE
>> +							| SPE_ATTR_BRANCH_FILTER;
>> +				evsel->core.attr.config1 = SPE_ATTR_EV_BRANCH;
>> +				evsel->core.attr.precise_ip = 0;
>> +			}
>> +		}
>> +	}
>> +}
>> \ No newline at end of file
>> diff --git a/tools/perf/builtin-record.c b/tools/perf/builtin-record.c
>> index 4c301466101b..3bc61f03d572 100644
>> --- a/tools/perf/builtin-record.c
>> +++ b/tools/perf/builtin-record.c
>> @@ -2451,6 +2451,11 @@ int cmd_record(int argc, const char **argv)
>>  
>>  	argc = parse_options(argc, argv, record_options, record_usage,
>>  			    PARSE_OPT_STOP_AT_NON_OPTION);
>> +
>> +	if (auxtrace__preprocess_evlist) {
>> +		auxtrace__preprocess_evlist(rec->evlist);
>> +	}
>> +
>>  	if (quiet)
>>  		perf_quiet_option();
>>  
>> diff --git a/tools/perf/util/arm-spe.c b/tools/perf/util/arm-spe.c
>> index 4ef22a0775a9..b21806c97dd8 100644
>> --- a/tools/perf/util/arm-spe.c
>> +++ b/tools/perf/util/arm-spe.c
>> @@ -778,6 +778,15 @@ arm_spe_synth_events(struct arm_spe *spe, struct perf_session *session)
>>  	attr.sample_id_all = evsel->core.attr.sample_id_all;
>>  	attr.read_format = evsel->core.attr.read_format;
>>  
>> +	/* If it is in the precise ip mode, there is no need to
>> +	 * synthesize new events. */
>> +	if (!strncmp(evsel->name, "branch-misses", 13)) {
>> +		spe->sample_branch_miss = true;
>> +		spe->branch_miss_id = evsel->core.id[0];
>> +
>> +		return 0;
>> +	}
>> +
>>  	/* create new id val to be a fixed offset from evsel id */
>>  	id = evsel->core.id[0] + 1000000000;
>>  
>> diff --git a/tools/perf/util/arm-spe.h b/tools/perf/util/arm-spe.h
>> index 98d3235781c3..8b1fb191d03a 100644
>> --- a/tools/perf/util/arm-spe.h
>> +++ b/tools/perf/util/arm-spe.h
>> @@ -20,6 +20,8 @@ enum {
>>  union perf_event;
>>  struct perf_session;
>>  struct perf_pmu;
>> +struct evlist;
>> +struct evsel;
>>  
>>  struct auxtrace_record *arm_spe_recording_init(int *err,
>>  					       struct perf_pmu *arm_spe_pmu);
>> @@ -28,4 +30,5 @@ int arm_spe_process_auxtrace_info(union perf_event *event,
>>  				  struct perf_session *session);
>>  
>>  struct perf_event_attr *arm_spe_pmu_default_config(struct perf_pmu *arm_spe_pmu);
>> +void arm_spe_precise_ip_support(struct evlist *evlist, struct evsel *evsel);
>>  #endif
>> diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
>> index 80617b0d044d..4f89a3a31ab2 100644
>> --- a/tools/perf/util/auxtrace.h
>> +++ b/tools/perf/util/auxtrace.h
>> @@ -584,6 +584,7 @@ void auxtrace__dump_auxtrace_sample(struct perf_session *session,
>>  int auxtrace__flush_events(struct perf_session *session, struct perf_tool *tool);
>>  void auxtrace__free_events(struct perf_session *session);
>>  void auxtrace__free(struct perf_session *session);
>> +void auxtrace__preprocess_evlist(struct evlist *evlist) __attribute__((weak));
>>  
>>  #define ITRACE_HELP \
>>  "				i:	    		synthesize instructions events\n"		\
>> @@ -728,6 +729,11 @@ void auxtrace__free(struct perf_session *session __maybe_unused)
>>  {
>>  }
>>  
>> +static inline
>> +void auxtrace__preprocess_evlist(struct evlist *evlist __maybe_unused)
>> +{
>> +}
>> +
>>  static inline
>>  int auxtrace_index__write(int fd __maybe_unused,
>>  			  struct list_head *head __maybe_unused)
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
