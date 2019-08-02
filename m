Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14697EAD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 05:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcSW5Dp9Icw+kTiwAxrviLwcB/CVO3/6fZGHqBQOtaI=; b=PLCZX371ro9Chg
	Pp5ie6HMlBqhjsgxpwW94/MsOfAfU4d9o3H2QZxwKZaOp7SXZ2Kdn9bMBO1laky1kBqdhJ1ozZUYY
	2JUIHXAeErYh6nYxxcr/HH6Y4Lag5oiBYys1Wbx51mtpZqHES4reMn/RpYsKzU+6k5ptw/aV222lo
	mZOA8gtbSrgCPJyQDmNWXRo0iC0f6n7pKykndXiqQJoRbW4KBlNV/akBkv68Gpv6Gxb34KQb0ptyw
	WYBB1E6SXTM5mOJ/+SxIUnf0Nk1upO8ZylYTEhde3YrbMh0hqC5+e0uM1TjN6W6EPFp1Wi3O2vquj
	ZgqNEec48gs55pr3xIFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htOgE-0004i5-Tr; Fri, 02 Aug 2019 03:56:35 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htOg3-0004hh-V9
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 03:56:25 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x723rlTR032724;
 Thu, 1 Aug 2019 20:56:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=sXk/BhDqpt0zAE3MWFSO13lT5fIw3cQ6XjOQ0ucVNe8=;
 b=H1l3+qAL8UxHhzcy/G/Dv7Tp5WTKgzq9Ll+FaUM9w2vem1g7PtjqemLVbjKD6Hgo1vto
 LU4LynJA1DFj9WqdH8UNja4nI+dOq8t6SDVObV12j+Pgfq3UCMjWpExr9wO1maIVLK29
 M0VAQrj3GKmZiqN5yuTH+6q4edPgbk9SK+M= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by m0089730.ppops.net with ESMTP id 2u43h7t3v5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 01 Aug 2019 20:56:14 -0700
Received: from ash-exhub202.TheFacebook.com (2620:10d:c0a8:83::6) by
 ash-exhub104.TheFacebook.com (2620:10d:c0a8:82::d) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 20:56:13 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.103) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 1 Aug 2019 20:56:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3TGNajDZ8wdK9oviHpV3vdaOr72CczY3+7Z+4hlsZ00ygmWwDBnfxOoIMAJNQ5xXETVlykSJE0USzgt+hrJfXPApr3rE/6RVmQvgbIIZbcocn94+oWH1ODIHSn1iLt8O4DLUtWSVUhWQBWjqCtZsL4b/l5j7/QS1d9yfTn4eHMx20Y795cMW9HLROqFu51V2g5tOPBf6sUuBx6Z2NzD/NmsEWSL6ILXYlMjrqPrHLA64XsAedNkcIytBzBFGloTKKdU2cmTmaZb6hL0qlT0/21+kJ6nckIo6yZxxBIMsWKKFf8R6AhPJgS8ME3Bqr7CW57A30ZnDUGZJ5ytpmw4Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXk/BhDqpt0zAE3MWFSO13lT5fIw3cQ6XjOQ0ucVNe8=;
 b=d2TgZK2FVz7i8uVnZs2a7BkQAg056N9Q2as1sH6Cd++jiJpgFyWZ4aVaWl20t+rmd1Iqd6tIGSGtNmaUI0kNAmIJ+obyyYdhFBTw1gJ5XWkcdp8h+mx6UatIKVbrEq6H397HPvxjR6jUOWYM4DhwvtnVy4gf+t+mazVYsno0ulqHOBlds9QhA1zyEPTCxSaUuSbNCXQsgMmGpJovqnOKxf13/wsWQcUCmyxJdPhmkmWIJqeYB3KfW0MnMciIzBuO/VU5LV2Qk9PuFeTf5Strps3Uq2ssYZd2Rn6zsSUCTBSuISeYTw3CJTrJfcrSdWBpE0cCWRG9PtGb1d1ysr9Fuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXk/BhDqpt0zAE3MWFSO13lT5fIw3cQ6XjOQ0ucVNe8=;
 b=LbkXig/cT86XwPkUDwA9PC1WJkH4prAIfbg2je/YBxrfEHvlASn0vlpujn4mbgaPMDsfF2vwDX293pJsdFbqLfZoV++HSJLDVyVpaOj1f4dRNyBBbAUBSQpqclo/YpV3flvYemRVB4JTYl3mt9HfFXQRLPtlMGtt8Wvu2GK+Yok=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1197.namprd15.prod.outlook.com (10.175.7.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 03:56:11 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::c66:6d60:f6e5:773c]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::c66:6d60:f6e5:773c%8]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 03:56:11 +0000
From: Tao Ren <taoren@fb.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] ARM: dts: aspeed: Add Facebook Wedge100 BMC
Thread-Topic: [PATCH] ARM: dts: aspeed: Add Facebook Wedge100 BMC
Thread-Index: AQHVSM30ETEfWfMZJUqrVG+0/3Oi9abnK9UA//+ZpYA=
Date: Fri, 2 Aug 2019 03:56:11 +0000
Message-ID: <0862C896-35D3-4032-8DA8-E4B7632CC333@fb.com>
References: <20190802010155.489238-1-taoren@fb.com>
 <CACPK8XdS4m9+74oxK0-ed3ZLr_QCh--AsFgGcF-OpLw24v9g4Q@mail.gmail.com>
In-Reply-To: <CACPK8XdS4m9+74oxK0-ed3ZLr_QCh--AsFgGcF-OpLw24v9g4Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1a.0.190609
x-originating-ip: [2620:10d:c090:180::1:d664]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4562b18f-720d-4793-6f6b-08d716fd5bba
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR15MB1197; 
x-ms-traffictypediagnostic: MWHPR15MB1197:
x-microsoft-antispam-prvs: <MWHPR15MB11975C795835019B40318628B2D90@MWHPR15MB1197.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(376002)(346002)(39850400004)(366004)(47680400002)(189003)(199004)(186003)(8936002)(7736002)(54906003)(86362001)(8676002)(25786009)(6512007)(71190400001)(71200400001)(316002)(305945005)(6486002)(76176011)(6436002)(53546011)(99286004)(102836004)(6916009)(6246003)(256004)(6116002)(58126008)(2906002)(229853002)(76116006)(66946007)(66446008)(53936002)(64756008)(66556008)(66476007)(14454004)(6506007)(33656002)(5660300002)(446003)(11346002)(36756003)(476003)(81156014)(2616005)(68736007)(46003)(486006)(81166006)(478600001)(4744005)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1197;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3yTmegSwWutMzeGxP0iRdL3bWxT63Kp5dTkSQhZf/s/vAc8nWZKHlWZPK2rbE0TTplerInk0CdQIXqDi8uE91Ex97em4SBCWMG90tZhifVV/fSjtrJ93oe4QF1mOqA3ng4bVMTglQrv1cjKX+27AGrYfBIMpN4gppv+XW8kBYxWliZnukxx0xIxL8RbOS2kd/NNBlBsNKaEzd11n3UUDEvhc1t+EJ/nt+LsjzviRG6kZ9eoLOFwyluVOppbgEEfKvRowYubf6UxEC/YQA/SDjBhcVvjZX6ZCdwt6WOUrHs+XBp8VoJh2s2f9eUy1nhg/PXsWC1XDoFH+at74bBR/vGBB77hOiImULRSQegYuIEV3HKZk8hwCnw2hICjynWVNYrA9jeY9O6XsC6Up7ScdLDXS+fbfccozsEVD+0d5+CQ=
Content-ID: <84D26974C03CED42B63C839A5C734926@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4562b18f-720d-4793-6f6b-08d716fd5bba
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 03:56:11.4964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1197
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908020039
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_205624_170809_9B58019C 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/1/19, 8:02 PM, "Joel Stanley" <joel@jms.id.au> wrote:

>  On Fri, 2 Aug 2019 at 01:02, Tao Ren <taoren@fb.com> wrote:
>> +
>> +       chosen {
>> +               stdout-path = &uart3;
>> +               bootargs = "debug console=ttyS2,9600n8 root=/dev/ram rw";
>  
>  Are you sure you want 'debug' in your boot arguments?
> 
> The rest lgtm. I can remove debug when applying, or leave it there if
> it was intentional.

Ahh, I copied bootargs from "/proc/cmdline" on my machine (running old kernel) but I don't think I need it.

Thank you for pointing it out. Let me send out v2 patches in a few minutes (so you could apply without extra changes).


Cheers,

Tao
    

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
