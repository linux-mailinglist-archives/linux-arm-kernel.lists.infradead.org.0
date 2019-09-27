Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA6BC0C48
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 21:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ol43HwOthLfXqM1dEIwGw7sGNr0luzuXuZP4HkUldjI=; b=e3eDgz/AIbHnuj
	SN9PDXEohqCLUzQxXyjeTPmWeaPALppIGf9/QlO1mABsP/TRZHGUTilD/VqvGpgAyDhq7/lsgLKAp
	O8orsgCNA+v+DI8vB3n8hu1Je/JB3viLSiG0SsYgIYArxIF9NmnC8sZqpPT+hHXUEOxoACNd+Sj36
	NSV9Vdw5kWrsAg4KOvpVYop+und5owKOvByyiL+jp2by2K0Cy4T5S9useLMqBgTTRq9jHojcdD7SD
	btZETasv6ZpvoukGSHqCbqqOr25x7kPZuE//0Wb5RxOQXF6eKVQAb+RGFVlE6bxsNG9dnVIiAa6SZ
	KU9yNlwZsfRV49olLcRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDwMb-0006pI-92; Fri, 27 Sep 2019 19:57:13 +0000
Received: from mail-eopbgr80083.outbound.protection.outlook.com ([40.107.8.83]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDwMS-0006of-6L
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 19:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u093li5a1Va3hMKyZDMTfqCdOjV/tvlKFjd+XbRoNt0=;
 b=f0VoI4g5vS8Pj3FJoIvoqF2U9f5EZALthcMxCkjUiIo4+kKvDd12tDx1iCJuVupzx1RwRnhbXGmYB8shAhjjpVuptC43TQuXLYVX0kAR1TsTsJMs5lM88nDPjKAtnPfKn3+yp/aCsY2bTon0P03H5vuPyx+EjNKvkiWl3S7f7T8=
Received: from DB7PR08CA0020.eurprd08.prod.outlook.com (2603:10a6:5:16::33) by
 AM6PR08MB3702.eurprd08.prod.outlook.com (2603:10a6:20b:8e::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Fri, 27 Sep 2019 19:56:58 +0000
Received: from VE1EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by DB7PR08CA0020.outlook.office365.com
 (2603:10a6:5:16::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2284.18 via Frontend
 Transport; Fri, 27 Sep 2019 19:56:57 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT052.mail.protection.outlook.com (10.152.19.173) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 27 Sep 2019 19:56:56 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Fri, 27 Sep 2019 19:56:54 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dedcd36852df050e
X-CR-MTA-TID: 64aa7808
Received: from 4d4fb69ffbd8.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.0.58]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 12E72008-0544-453E-A604-2501806E3068.1; 
 Fri, 27 Sep 2019 19:56:48 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2058.outbound.protection.outlook.com [104.47.0.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4d4fb69ffbd8.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Fri, 27 Sep 2019 19:56:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oaEXKOGJh1S9Fz+7yw6uigreMhxzCV/gaWPW5ywg5zBQO37FwAcg2ronns0B/+hdrOUBb5sBdjkqTAnXKnGL9E/Z+NhAUmnc7sX7FM7TgBGckfeevCojhkJaflOK3FmF8UHt9/DsA4dYAy9ypj9zXKYq9LMldvUs3wPraHUlirQXG8Y6fGagRvhZs4YCQ/DS39OLD/ck3ZZsC3W8pRxNKPHBde66I8jKBuhrxVgbGRUfW1cwWhax2exr4GOiQyPVYtId+j6rM1HpurOgn6BqPTV9lYEpxzcTiNAn7W9doaJFd/JPP7xLa3Ymywh5PZpGsC3SHACIgPUOkPX4TXOuwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u093li5a1Va3hMKyZDMTfqCdOjV/tvlKFjd+XbRoNt0=;
 b=C640pq06ThNDKJFmYJNPUIFn0zrIqloE38QIw75ssC3SmKwKHzVqpx0OlTqQswHmlSTS+PuaLU3/v2TdSgtqCboRt9MBLnh2hQ8XixTCTBEobqFhziJEoe1bYIXW+4fOYqELR7dieObtchNjIdD5Nrzwli6elnnnJz4CO6YGe5hxkQW9S2T7qMvRkeS7T1/6n0VytrptSwN7RxHTZucHzyyvFKiB5Uxjt+2PKQga+rT57H/MzpmJ4KRvesjYMNUJ+IJzELP9Ja77PACq4HwZ4p0CU6slZllSQWq6quxyXD8wQU3wOfAwcLMdSNHNLmOX11801yKDOzkGvaDE0EQt0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u093li5a1Va3hMKyZDMTfqCdOjV/tvlKFjd+XbRoNt0=;
 b=f0VoI4g5vS8Pj3FJoIvoqF2U9f5EZALthcMxCkjUiIo4+kKvDd12tDx1iCJuVupzx1RwRnhbXGmYB8shAhjjpVuptC43TQuXLYVX0kAR1TsTsJMs5lM88nDPjKAtnPfKn3+yp/aCsY2bTon0P03H5vuPyx+EjNKvkiWl3S7f7T8=
Received: from VI1PR0802MB2431.eurprd08.prod.outlook.com (10.175.20.10) by
 VI1PR0802MB2606.eurprd08.prod.outlook.com (10.175.26.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Fri, 27 Sep 2019 19:56:46 +0000
Received: from VI1PR0802MB2431.eurprd08.prod.outlook.com
 ([fe80::90c8:81ed:114e:146d]) by VI1PR0802MB2431.eurprd08.prod.outlook.com
 ([fe80::90c8:81ed:114e:146d%12]) with mapi id 15.20.2284.023; Fri, 27 Sep
 2019 19:56:46 +0000
From: Julien Grall <Julien.Grall@arm.com>
To: Dave P Martin <Dave.Martin@arm.com>, Masayoshi Mizuma
 <msys.mizuma@gmail.com>
Subject: Re: [PATCH v2] arm64/sve: Fix wrong free for task->thread.sve_state
Thread-Topic: [PATCH v2] arm64/sve: Fix wrong free for task->thread.sve_state
Thread-Index: AQHVdUnT6kLOnDoFJEmArT+xaTSxYKc/swMAgAA9xgA=
Date: Fri, 27 Sep 2019 19:56:45 +0000
Message-ID: <62ebb12a-1b83-7755-6f0e-8c38ac5fad3b@arm.com>
References: <20190927153949.29870-1-msys.mizuma@gmail.com>
 <20190927161535.GS27757@arm.com>
In-Reply-To: <20190927161535.GS27757@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0045.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::33) To VI1PR0802MB2431.eurprd08.prod.outlook.com
 (2603:10a6:800:af::10)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Julien.Grall@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.96.140]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: e364fe6d-0d8a-4393-7f7d-08d74384d9c0
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: VI1PR0802MB2606:|VI1PR0802MB2606:|AM6PR08MB3702:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB370216DF5977F29A6C3D9D4980810@AM6PR08MB3702.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:5236;OLM:5236;
x-forefront-prvs: 0173C6D4D5
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(376002)(136003)(189003)(199004)(11346002)(7736002)(71200400001)(71190400001)(476003)(66476007)(99286004)(66446008)(64756008)(66556008)(66946007)(2616005)(446003)(26005)(31696002)(31686004)(86362001)(4326008)(186003)(6246003)(66066001)(54906003)(256004)(14444005)(25786009)(110136005)(305945005)(6512007)(102836004)(44832011)(36756003)(8676002)(6116002)(3846002)(81156014)(81166006)(52116002)(8936002)(14454004)(229853002)(486006)(76176011)(5660300002)(316002)(6436002)(478600001)(6506007)(53546011)(386003)(2906002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2606;
 H:VI1PR0802MB2431.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: CQzMIgL8syP/x48z2u8ZD6u9P6+n0fwgRVhRhAIFhL4EK5L6KzAtGFn6vTmd5FqW3fxLNb3+mjtdNgVnuCjQBE83+8eGwHiLR5IBjB4Mks2Z4Ko8THuxYrVpgXIrUSMCCy/HFtd5psVrJQ2ZG6mQ03wKOrvu2+g8UepPs//nBVgmKGmvUubmf/Wg0rBDqZQCd1rRgoqoYLQirUy6TQbvkHkXd0Hfpaazs7ViexpEKxBAgQrxy+zT/MI/82DEJys4BTpVSGFBM7IoRn2onpEFFwBhuEBTGgqhFqma6OsTaCjtses8QWSw9E2OQE/vXIpp9CfanvhORuZUM/9i2zttJSYlJw14J3LKV1eiU1xvsaPjo2eY+AVYqMf5gJ5D1VR6lmo4MIX5n6ZfGcm5wIdiWLqzELhblrnNeTeqGXcPdc0=
Content-ID: <2934AFA1B5171F418135C47E56F63E4B@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2606
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Julien.Grall@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(376002)(346002)(189003)(199004)(76130400001)(99286004)(186003)(446003)(76176011)(36756003)(81166006)(102836004)(36906005)(8936002)(8676002)(2486003)(26826003)(107886003)(81156014)(53546011)(14454004)(66066001)(6506007)(386003)(26005)(50466002)(4326008)(305945005)(14444005)(25786009)(356004)(23676004)(6246003)(63350400001)(11346002)(6486002)(336012)(2906002)(86362001)(229853002)(7736002)(126002)(5660300002)(22756006)(2616005)(436003)(47776003)(476003)(31696002)(486006)(70206006)(478600001)(316002)(31686004)(54906003)(6512007)(3846002)(110136005)(6116002)(70586007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3702;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b705efd8-799c-4d80-066f-08d74384d335
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR08MB3702; 
NoDisclaimer: True
X-Forefront-PRVS: 0173C6D4D5
X-Microsoft-Antispam-Message-Info: wnmIb60xSzFuevHtEvBVz4q+bHAmifDkv/p0spw0b7921OjlmkFVZwL6DNHmbF7eDZI4NZARa29XLlZTfIJVwpPgvrWCxNXKPU+0vWLqm529kmDdjUsBclG3E75pVuf6DrqW0A7V4l10BAJQQC1Ui1dIYmb39ntImdiI8HoAQNzGhph/1mvIdsH9UwRzZOTw+HH48xNBnWNwpgbAJQKg3zCGBUCH1fyjgTvWCIGPHdZ3k104sq50MJoK83usPNH5cNHHxXcvwdnYD+LAoO+O8/ehO8QI/o3Ftq6enuMOwYCBx/jPQg7L+PV0k8DNxmHJ3UJCLeusQzOo75ZFhPO4shozDDMRCBV1dq1YqC52CShoQ8zBTp3IXPbyMnqZTm6tftY34IA5ZMkZuvYR1hpQFo9Oqt/dzp2h/BbFYIcL4MM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2019 19:56:56.3169 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e364fe6d-0d8a-4393-7f7d-08d74384d9c0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_125704_285293_EC69D688 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.83 listed in list.dnswl.org]
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 27/09/2019 17:15, Dave Martin wrote:
> On Fri, Sep 27, 2019 at 11:39:49AM -0400, Masayoshi Mizuma wrote:
>> From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
>>
>> The system which has SVE feature crashed because of
>> the memory pointed by task->thread.sve_state was destroyed
>> by someone.
>>
>> That is because sve_state is freed while the forking the
>> child process. The child process has the pointer of sve_state
>> which is same as the parent's because the child's task_struct
>> is copied from the parent's one. If the copy_process()
>> fails as an error on somewhere, for example, copy_creds(),
>> then the sve_state is freed even if the parent is alive.
>> The flow is as follows.
>>
>> copy_process
>>          p = dup_task_struct
>>              => arch_dup_task_struct
>>                  *dst = *src;  // copy the entire region.
>> :
>>          retval = copy_creds
>>          if (retval < 0)
>>                  goto bad_fork_free;
>> :
>> bad_fork_free:
>> ...
>>          delayed_free_task(p);
>>            => free_task
>>               => arch_release_task_struct
>>                  => fpsimd_release_task
>>                     => __sve_free
>>                        => kfree(task->thread.sve_state);
>>                           // free the parent's sve_state
>>
>> Move child's sve_state = NULL and clearing TIF_SVE flag
>> to arch_dup_task_struct() so that the child doesn't free the
>> parent's one.
> 
> You could also add:
> 
> --8<--
> There is no need to wait until copy_process() to clear TIF_SVE for
> dst, becuase the thread flags for dst are initialized already by
> copying the src task_struct.
> 
> This change simplifies the code, so get rid of comments that are no
> longer needed.
> -->8--
> 
>>
>> Cc: stable@vger.kernel.org
> 
> Since SVE only exists from v4.15, it may be helpful to specify that,
> i.e., replace that Cc line with:
> 
> Cc: <stable@vger.kernel.org> # 4.15.x-
> 
> 
> Otherwise, I'm happy to see this applied, but I'd like somebody to
> confirm that this change definitely fixes the bug.

I am working on a reproducer for this. So I should be able to test it.

Cheers,

-- 
Julien Grall
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
