Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB311D4E25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXUg2QGgQludR6GPTS3b2lLcUWS0eGy9P2ENezRmQm8=; b=R2EVRdj8Xoewa8
	6s3q+Q5KxZ8YAE1ZwctPyirXfh6bc6vwOFnhvXsQIuWGw1Y7bXLKeA5hfb8RIj992M/j6W1tjd3eA
	GfWBY4H3dfJTiMpVJKH6d8XQk/fqLF5eUASoxAnA6RjxCROq7nLLS3FxkYKnCTb6RsV6/2kF6xsbs
	Te0O6Vkg7yT24wgKnCXIQyMkpxREGtHbVr/2RmRPXDj7THCYmbwIjk7MCftbaDCK8pFvS22A22gNS
	KSAEnviSXgiMLiFI7KQMm2moB21Je/HoJUz2L6RALO1DCNJr9yvNp3GzwGYO7fsTELfTcuqfbmoHS
	fN7Z3e+4iNbArN/sZQsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZr1-00022v-UM; Fri, 15 May 2020 12:54:19 +0000
Received: from mail-eopbgr30054.outbound.protection.outlook.com ([40.107.3.54]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZqd-0001v0-W1
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:53:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stnUWRg+rnNrzWma3EVekRGQliDkle5EU2+JAanlOO0=;
 b=vOrhozJLUjbB8OP5QYYL/Axc7SoArGrEMy+a54cCbfwd02LV7JpVI+JkW/HfwM4noOoMpVyBuSS/vhLtNA+Jqpp8yB4b3OvYt0pw4O6Q9/SCvAk8fcu+TMxAI86CQg5DqLVyvOJT7ME9L45f71pqkkEdX1L10RyjMmk44FJA/50=
Received: from AM6P192CA0044.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::21)
 by HE1PR0802MB2476.eurprd08.prod.outlook.com (2603:10a6:3:da::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Fri, 15 May
 2020 12:53:53 +0000
Received: from AM5EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:82:cafe::61) by AM6P192CA0044.outlook.office365.com
 (2603:10a6:209:82::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend
 Transport; Fri, 15 May 2020 12:53:53 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT052.mail.protection.outlook.com (10.152.17.161) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.19 via Frontend Transport; Fri, 15 May 2020 12:53:52 +0000
Received: ("Tessian outbound 11763d234d54:v54");
 Fri, 15 May 2020 12:53:52 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: bd20fb0878f121e3
X-CR-MTA-TID: 64aa7808
Received: from 135ebd315029.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 85374A5A-381D-4505-90F0-20AD9B96B8E1.1; 
 Fri, 15 May 2020 12:53:47 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 135ebd315029.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 15 May 2020 12:53:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jTnxrjxFbDjHXO7hiXEANI1RPrc3B6nmagfB6EWtGjlKrazgxKD7Kp6PKx09PtC7CKVlWUZKoWwsfbM4CmKE6JKLIx9Q11+hlERLcgIGXiDNyT4ekrS5QOMN1tfOkoOFPJlfpn8cC1wmYi+tQoqlnUX47UGqACqEWIWPJhcMjhMb3wW+mjdfP0TKjZp8BnXsl9KkmctOj60rs33n22JZ+6bI1c4Lz85DtRAhF85EsLXH+sUmH2j7WffF/2yk11v46LRhEDEC1koMpxIQeW+/xqPMqg2zGYtS4D87NKnsX+1xLByffCGzkpZXxKNcB2Lg38KRS0vvg5K4sG32HIL22Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stnUWRg+rnNrzWma3EVekRGQliDkle5EU2+JAanlOO0=;
 b=DiX4/Ky7LCJQ17pmeXuH6Mr+48G8ni8tAReQTvB+lpasVDz1Xmlu2HKYfYoO9S/eE7v8CHtgwlqazrPB2z1RR59EQ/GzNstkIjyUYRY5dhUeQV8nFOl7dgB9x35gwl9UGHfgJ9FjtjTM4Jm+y2Va/gfAQXxT+fwkikpASYQwSKqWo78PPT7VkPulIERahqVYt2E1WaUsdYegzceis1nNZMZnYurugBoI2KbYh4FYYBl5x0dLMJF41siQpCMEWdwe1yeulzYoXzf1YQBfTc9+RrGjRp9kqyZJF6hOAcmdl1g51imqXw8C8Tt1C05WbMo4EXV/MdHxxJ+y9DEbCzHgSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stnUWRg+rnNrzWma3EVekRGQliDkle5EU2+JAanlOO0=;
 b=vOrhozJLUjbB8OP5QYYL/Axc7SoArGrEMy+a54cCbfwd02LV7JpVI+JkW/HfwM4noOoMpVyBuSS/vhLtNA+Jqpp8yB4b3OvYt0pw4O6Q9/SCvAk8fcu+TMxAI86CQg5DqLVyvOJT7ME9L45f71pqkkEdX1L10RyjMmk44FJA/50=
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com (2603:10a6:209:4c::23)
 by AM6PR08MB3862.eurprd08.prod.outlook.com (2603:10a6:20b:8c::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Fri, 15 May
 2020 12:53:44 +0000
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862]) by AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862%7]) with mapi id 15.20.2979.033; Fri, 15 May 2020
 12:53:44 +0000
Date: Fri, 15 May 2020 13:53:32 +0100
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200515125332.GF27289@arm.com>
References: <20200430162316.GJ2717@gaia> <20200504164617.GK30377@arm.com>
 <20200511164018.GC19176@gaia> <20200513154845.GT21779@arm.com>
 <20200514113722.GA1907@gaia> <20200515103839.GA22393@gaia>
 <20200515111359.GC27289@arm.com> <20200515112740.GB22393@gaia>
 <20200515120433.GE27289@arm.com> <20200515121343.GC22393@gaia>
Content-Disposition: inline
In-Reply-To: <20200515121343.GC22393@gaia>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: SN6PR08CA0021.namprd08.prod.outlook.com
 (2603:10b6:805:66::34) To AM6PR08MB3047.eurprd08.prod.outlook.com
 (2603:10a6:209:4c::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 SN6PR08CA0021.namprd08.prod.outlook.com (2603:10b6:805:66::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20 via Frontend Transport; Fri, 15 May 2020 12:53:39 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a8b1ee11-cd21-4fa0-2a01-08d7f8cf056a
X-MS-TrafficTypeDiagnostic: AM6PR08MB3862:|HE1PR0802MB2476:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0802MB2476CD0C21094FDDA11DCCC0EDBD0@HE1PR0802MB2476.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 04041A2886
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: hLzO3fSMBPbkP8zlp0v4LdsUj4l2Y7AZcDdRIi5ln16z7ovj07LSh2yhEuAw98XNDbiR4KXNI/s9zBELVNmNqp9EpKDxXtbNgnZB4k0opLLxgDy872BXXHpVHgk1r7tZAqQJWwqozG8stHGZlri5V5YgB5VHv8eZYsFjJNfWtHAMcH2wXpeIHIX3XHUTSWWuoSNpzHzj0ZFvQhqA6qI4SD6FwWZ5JnFSC0rXXAS9kJ2drhD9rRsPn8GBgRkqyKGKENnqHgP3RcdIOWdZXKJDtOtyuNWzHXU/mk4h7ibIah4cBX1tCs9F4uwfQxwQlYF2V2m/p9YIe8wRE58gjDcA4gzyhO3toI2Nm0ZwUcW6/3PS3jftiUSIpbELhGTzNSGFAr4Wg9JNfgemrQtk7+DFRwHhl0OZrBKN/ieNg6/ciNWf1goDMJGeIDwy5k+bLiok
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB3047.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(366004)(39860400002)(396003)(6636002)(478600001)(66946007)(6666004)(54906003)(26005)(66476007)(186003)(316002)(66556008)(2906002)(2616005)(44832011)(16526019)(956004)(8886007)(6862004)(55016002)(4326008)(36756003)(8676002)(5660300002)(8936002)(86362001)(1076003)(37006003)(33656002)(52116002)(7696005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: r+8TzCJLJ2NVDtsHL4aDbrFoaDNU2yupok/9DttLOZsNCAodscMqBBlk+PK7dRuSXgjfNJrQHmZx4rE8fS54ilDKWl1m84O9PBY2UTALsx1aGneLm9zp4vhU72bh+hpbW2NFjmz4WZBvNJv5AZyzd1lLYoT3UCl3TkT1LUNkPDGGthO0Uzwxg0zvYKliv7dVSkrQuqxBbcqm3F4jBrilYImKRP6hiOsGi7NdpQGjYNN2Pv9V3SrPKD+3d3VB0pjzSGVDBk2F8061bRd3uAR9BsKNbV8/F6cuYnbQZFBN0mper0HLHX4/W0bPACb3eVcZtQbNfyfsT2Hmb2NM57/Mei9LJfM/UFLjK1EPZZV0FPQ2r8S3kKusQwHJk5p4aBv8CT4KJqnCtvbcATK117FN1/gIGo+CV1kiZjak0DougawCXi/iS3hp9f8z6bmgHvrO/8JaC1gcy0u8h8x6O6zHFuJQtfH7mkgokpQVm5iiuO9ZMYJeYiSKGLMnpYqsu+fK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3862
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(136003)(39860400002)(376002)(396003)(46966005)(8936002)(36906005)(6862004)(2906002)(82740400003)(316002)(16526019)(8676002)(7696005)(6636002)(956004)(186003)(54906003)(2616005)(37006003)(86362001)(336012)(26005)(44832011)(70586007)(356005)(1076003)(82310400002)(36756003)(55016002)(5660300002)(81166007)(70206006)(6666004)(478600001)(4326008)(8886007)(47076004)(33656002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 25cafa1f-93e1-42ed-c2eb-08d7f8cf0027
X-Forefront-PRVS: 04041A2886
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aQyY9p5wocCSEYEOOt8O37I0bug1kqlli8NA4z0jQ7lGCp/BIGlkEh4Zs0Z3u9FwpgT72NMRRT/HDBj9169WhePR2xMwmq4AAWYbsqe7oEH1rCrMFmQCzMjhQK+PhrA9gS1wUrqXyWd5ErRRjIzm3O70aEj8dYQhSy+EvSBNGQo10VURS7vpy16BRFdPUXjZIMJi0QiFAOqNC4JOsx6cJWHAmbMunVPjT0Pr4sLwi8bRX0bO+ldZ30d66TX3uB8FHBItElEMwA/vDDWeeTZXoH7v+NRm2msIk8Hg3H9CV3a8OtdcCUnBjqWyv+c+orXQhYk+w9siBzZsXJCe5wBNNwZAxABJjenUxdFcyVAKtpxfdbTlizkeDQITFIYF10QiE6Sc14RgF2hxUbnrHlFn5L5ooylmSWgsM3CLFVntT4zowNoOhxfzHkuMuOC3EicfrkxGrRKpbGyhAv5DFa39v6SG4a/Qus5a9CPKz9eWtzIGXmInoBOwbTD5Z8ZpNOfa88Aq0tHfHV5kesxJChVcLg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2020 12:53:52.8357 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b1ee11-cd21-4fa0-2a01-08d7f8cf056a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2476
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_055356_051982_4BD95E56 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.54 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 nd@arm.com, Will Deacon <will@kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 05/15/2020 13:13, Catalin Marinas wrote:
> On Fri, May 15, 2020 at 01:04:33PM +0100, Szabolcs Nagy wrote:
> > The 05/15/2020 12:27, Catalin Marinas wrote:
> > > Thanks Szabolcs. While we are at this, no-one so far asked for the
> > > GCR_EL1.RRND to be exposed to user (and this implies RGSR_EL1.SEED).
> > > Since RRND=1 guarantees a distribution "no worse" than that of RRND=0, I
> > > thought there isn't much point in exposing this configuration to the
> > > user. The only advantage of RRND=0 I see is that the kernel can change
> > 
> > it seems RRND=1 is the impl specific algorithm.
> 
> Yes, that's the implementation specific algorithm which shouldn't be
> worse than the standard one.
> 
> > > the seed randomly but, with only 4 bits per tag, it really doesn't
> > > matter much.
> > > 
> > > Anyway, mentioning it here in case anyone is surprised later about the
> > > lack of RRND configurability.
> > 
> > i'm not familiar with how irg works.
> 
> It generates a random tag based on some algorithm.
> 
> > is the seed per process state that's set up at process startup in some
> > way? or shared (and thus effectively irg is non-deterministic in
> > userspace)?
> 
> The seed is only relevant if the standard algorithm is used (RRND=0).

i wanted to understand if we can get deterministic
irg behaviour in user space (which may be useful
for debugging to get reproducible tag failures).

i guess if no control is exposed that means non-
deterministic irg. i think this is fine.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
