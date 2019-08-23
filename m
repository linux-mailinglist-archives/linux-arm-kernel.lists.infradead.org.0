Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD569AD20
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SOTa+aAKGcvURmZhgt77vAAF43dPMgdxvyzDRWSHvow=; b=nodILClVl9UeKz
	SnGgv6k5fWgjkeyvI2AuAgAjR/0xgfcOTL3Mc6IDChg3YppYCjO1zVZCdMAQ8/PD/yieeAJZZ9Kdc
	l0zPVKOFkT+aPwl1xIxT7+cqQccJf0yd3vUiRZSh4IoHLZ66yX5zZ143Zhff89RHEPzJGolFxkMNk
	/OHJd2D6H1HFMh+B1lYW+iH8dAfVHckLPe7yfDzkE5w90gLirFHS3upm7S52jeewfNyPWJ5Pr4Wg7
	Gk/RpgPbXOb/zR4YJYB09+c56cP21A9zVdFRCtOs9SUsvMreUvfe6lAIgy0+O7NE/ezZ4lmF76ix7
	z1WWgABdCHSo3HtK5+mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16pi-0002Aw-IJ; Fri, 23 Aug 2019 10:30:14 +0000
Received: from mail-eopbgr710046.outbound.protection.outlook.com
 ([40.107.71.46] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16pb-0001P4-BZ
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:30:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iq0qdLGvTl0M69MZPYunidnEBDd7KoTYizAnVwBJ56Vgh9IxF4z89Eun6SmpdrRB6/OkbU5kJRG39vYJxenlbR7fgZW71aEvOk1N0GuNIBNNAzE4VxKkIH4+fqDoWPdGwJ7jLAu3JwCAZs/UjMdtWFSGwos3Yt87d8NBpxI+KCgXxeA2OjYTYjxNUXQGasNzifVy6VCmaR8yvZNNYm2XGQZbYjJUHE8qkxE3JlGvZtCgLgV2ASwaErc1vgLPpEN4cK8XV7PcS1v3Dxe319N+y/29Pz6kvBWu3uuS8Gqv1A2/EvhqJv+xXsb1knfFQmWv0eP7hped9UYga/odNU0XiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vw5miTTGcDyaWU3bGKdl/sgBX3EJjhV1YyoYn+RC6jM=;
 b=lTUoj7PPCDti4C3gVHKvLVVgjAwHyVf7JQK/gBccYT52fpfR+JVOuhATK0Pk2gsRWVoF6g27Oo4btcHCQvZNamd3lf+cXVGPqOUIPWwAa0R3S7JmtWTrc+lS5N0MJwdy+GHqQhu3TS1DO131hHMtOjelLkllZoqpW4qVQVU0JjrYSdaG2xgM8Uv/KJ3AW4jbUCJXx5bd080zDLMLqAhgZewxBi2u7FLSQtw5ABCW49wZJHb6bQxn5m2eG8b2gcHDRWW9hsvGZTqpx1pZY6ASiglXvspNd6pEgRtjDKc9oddVoODopCraUGz9ob62EPNqaJz+BKKEG5a8kTCH26MAJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vw5miTTGcDyaWU3bGKdl/sgBX3EJjhV1YyoYn+RC6jM=;
 b=FYEok7fWqn/0A58L6cIvbnqRSABjQlN5RX5VeLO35XKnXz8I7A2327+ohVfjLf+T1G999RwpDSRPZxqt+CtWHG+sGSACe1qzCY1cgv6acrlpxAhLi+35cD6F3g+3RHlUh5XMZn0JL/dZYYYPyN1jDBoY1kjAZIyXNM+/qKe1D2g=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3640.namprd03.prod.outlook.com (52.135.213.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 10:30:02 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 10:30:02 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH v2] ARM: ftrace: remove mcount(),ftrace_caller_old() and
 ftrace_call_old()
Thread-Topic: [PATCH v2] ARM: ftrace: remove mcount(), ftrace_caller_old() and
 ftrace_call_old()
Thread-Index: AQHVWZ247bHc8lRHzEW3X45ZRp5UUQ==
Date: Fri, 23 Aug 2019 10:30:02 +0000
Message-ID: <20190823181842.108e6e73@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR02CA0024.apcprd02.prod.outlook.com
 (2603:1096:404:56::36) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ddce9d6-de1f-4d9a-2025-08d727b4daf3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3640; 
x-ms-traffictypediagnostic: BYAPR03MB3640:
x-microsoft-antispam-prvs: <BYAPR03MB3640C6CBDA087370AAE28EDDEDA40@BYAPR03MB3640.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1169;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39850400004)(346002)(366004)(199004)(189003)(102836004)(8676002)(305945005)(81156014)(81166006)(7736002)(478600001)(86362001)(53936002)(8936002)(14454004)(256004)(486006)(9686003)(6512007)(6116002)(25786009)(6436002)(71200400001)(71190400001)(3846002)(6486002)(2906002)(50226002)(4326008)(66946007)(66476007)(66556008)(64756008)(66446008)(26005)(476003)(186003)(54906003)(110136005)(5660300002)(1076003)(316002)(66066001)(4744005)(99286004)(6506007)(386003)(52116002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3640;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 44TFjnAd+z5VsBNJiYJ0DHuLteLk4dfPFywCc1rrm8vXZ7lmnG8U5o4At5TofGzmplAZvbuvUMJC5LDcDpORo3218fl5fnZUnCoviX+fU1EO8zmLKV/YxHN2oUYVzN7WbJN5/x9TDtm90ZH+M36bFoo1TEPIlaWPlaNCT9HFdsKyu4I8FRCjhL9HM4Sj52/9MNJ2ddNE6PKBUvKEWMTMKv4+w/MRxhMAJUdIPuEAYCKXLCr457QeI1C7ZSB6cia53i85m/6s4iKdjXB6GAfpk2zvL9eW8EgE0lL+tS2Dmtbu9SOSQAHOvQe2Hl0978lU4qTg1ogNBo94Gt7MU0XgYD6hS2YC0Ig0/fnK/GCn5rNio9nekk1R2ZIBiu5tZuIopzi9+Q4/qzNvYQXgiWn70hnX3dk/Qa6kRSTE+3CZveU=
x-ms-exchange-transport-forked: True
Content-ID: <00A50105E477CE489D558106E4749D61@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ddce9d6-de1f-4d9a-2025-08d727b4daf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 10:30:02.0935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j4cddftsdfNwyZMxhd6sgfZqvaQ//YKu6ceICF88ebomk4kMBqYnm7k8HXPfrx1mrSNB0I8estRfB4gnIm4zBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3640
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_033007_460608_E9557021 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit d3c61619568c ("ARM: 8788/1: ftrace: remove old mcount support")
removed the old mcount support, but forget to remove these three
declarations. This patch removes them.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---

Changes since v1:
  - remove mcount() declaration too

 arch/arm/include/asm/ftrace.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/include/asm/ftrace.h b/arch/arm/include/asm/ftrace.h
index 18b0197f2384..f67596427971 100644
--- a/arch/arm/include/asm/ftrace.h
+++ b/arch/arm/include/asm/ftrace.h
@@ -23,9 +23,6 @@ static inline unsigned long ftrace_call_adjust(unsigned long addr)
 	/* With Thumb-2, the recorded addresses have the lsb set */
 	return addr & ~1;
 }
-
-extern void ftrace_caller_old(void);
-extern void ftrace_call_old(void);
 #endif
 
 #endif
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
