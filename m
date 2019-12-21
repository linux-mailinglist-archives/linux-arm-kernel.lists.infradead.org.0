Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D115C12882D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 09:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0HT0V1mSVDUlIqItWZXWDOBYMyiuBtPebYbhSiMOC2s=; b=hxfHhO/+fXEB6t
	wxHPIhUMB/xHY8OSZ+O4w/tlqlc8yn1p38ZezMCyyw/e2z5FN9RmM+GxMT3yhjC40zczqONIFGUev
	kC3DFThYTlFQK9Afnztm5ARlvBLzzyUlmUPtDLv9RvbaK4E3F2bws9nb2pb/jnor9DA/F1PMNd65c
	m0Purr6DsRLNrBRHG9FfPOfvyEzeku5aqW7B+HixNWYxc8+p7ajBpi0sB6kbFWMBoa5YlcmJqNoEB
	Iu9OD7UpTHVZmsaa49mlfvI1tGe/4UPYb5sW8YHCMBGvTbNYTopkCulsuk97X9nHQ3V2p5FLoPHVq
	NDe81F8lwcAHRZwIl9gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiaBz-0000hy-VD; Sat, 21 Dec 2019 08:32:55 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiaBr-0000gj-Qt
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 08:32:49 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBL8UEPA020056; Sat, 21 Dec 2019 00:32:42 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=0fkbjDdcrRPe3FLLWlPGM+6TyQJMufYzW8Jt2WKJF4Q=;
 b=WNEqIQhy4/EBR4oRz7FQQ+8PTPTMyG42HSSngVJvlptgDfK2ece3mI0bBBQIt/w54F1n
 yi7FMWsjeBgod+WgnDoLt2jYFhCEmwLUAgJI9XeigUQ3ETW2rbi17BhwUUD5BejcJ1MV
 V1OypT+RuVsGbMQHRg6TfE9/ZdVuSZLojRAoV7rPpEaR/hj3XhEXuhhSna0PIUD32Cod
 7TA3s6suIjRyUWgq5pusAwWOZ2mI7+UmvQNCxdKATWg8OuUoTJxeglqPWwAN7T5NiVl4
 aK5hG7r9tarxj0Z/U+3qBTyXfhCmbD5ZM5HLMB9YVxEkkt797NohO1neIr5rqNzGXx/R 0Q== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2x10nctdrr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 21 Dec 2019 00:32:42 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 21 Dec
 2019 00:32:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 21 Dec 2019 00:32:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QmiJS7os2rGFhZ4b9V9lzl7Ds8HbnCVvMk1oJPdVuJeV8L9RDQpVJtxGQ5ywk+gVGBf5mx5RNSM2YO++bbt0h0MSia9oxWlZaMI1cunDx9zu1/RGBAe/ifonOKjqGx7+vrSN86hdB9QD8+XWqSwxkLmgRj9Rv2sF/SY+rJcu/6RXzWA5+E9j7rfkWO9KmDXjYCERVGKEYQ43EBmiGGtNzZuAjp5uYZtV3KmuiuVeSSa84aMAUTO/r8MnSu/YEufu3w3ob1hQZnfC4PijzqbHN8Bv97Y2AFnCpBovlSWdBzzyNR7t5zyXXOknlH1xVgNn0ORSmZLN9XX+GnM/oITNiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0fkbjDdcrRPe3FLLWlPGM+6TyQJMufYzW8Jt2WKJF4Q=;
 b=mMFNxFXjn95sSLKLZQIHGqwISq92Vrk29VWfNuKCJy5TDYX6F66ArNuWvA7anxzgnOrjdmmpkTE1RelQAdnWZrD4+EH9cUnqENzcQa2VQFPdGTCpaUDbiXXIv42lJNbc5tRlRd8JKfe0pB2+t0OZaHLisHNGaVbjNZqwmWFtUrftF5b1T9ltqDg8NRfGLMy5ajevzfYzm90zOYdbTfiEIrAwRaj1AhzmrDCR251JR1/ryji4MztZiFLzknNUEQ1h9UQLQFwPtTbq8UmEyF62RnvS5YHjrF97qteO5CiRi4a7l4vsLr3IGIehn63RAAo/8fJF8ODG674Sbk9UMdhvRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0fkbjDdcrRPe3FLLWlPGM+6TyQJMufYzW8Jt2WKJF4Q=;
 b=O5yvGz6JdpE5uQUCppoI6gbK+Kvgw9h4beGhvsgW7zxHUYGNBqL0VWLcNX53wo6cIQ9fcyFSwJZUB3H9rnUknZA/gE7ijtmSnGVzTiawx5ipiW5h8gdoFLhWrEF3T+GokFsDeSWFEaF+zaHXTvo0XhsMnPC9xYK+VsqfQlJFqJY=
Received: from CY4PR18MB1431.namprd18.prod.outlook.com (10.172.175.148) by
 CY4PR18MB1080.namprd18.prod.outlook.com (10.173.184.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Sat, 21 Dec 2019 08:32:38 +0000
Received: from CY4PR18MB1431.namprd18.prod.outlook.com
 ([fe80::b5ad:633f:8697:df59]) by CY4PR18MB1431.namprd18.prod.outlook.com
 ([fe80::b5ad:633f:8697:df59%5]) with mapi id 15.20.2559.016; Sat, 21 Dec 2019
 08:32:38 +0000
Received: from dc5-eodlnx05.marvell.com (199.233.59.128) by
 BY5PR04CA0015.namprd04.prod.outlook.com (2603:10b6:a03:1d0::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.15 via Frontend
 Transport; Sat, 21 Dec 2019 08:32:37 +0000
From: Prabhakar Kushwaha <pkushwaha@marvell.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: Remove __exception_text_start and __exception_text_end
 from asm/section.h
Thread-Topic: [PATCH] arm64: Remove __exception_text_start and
 __exception_text_end from asm/section.h
Thread-Index: AQHVt9kzjDkXkCbbakabmUag2erCAA==
Date: Sat, 21 Dec 2019 08:32:38 +0000
Message-ID: <1576917150-31678-1-git-send-email-pkushwaha@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::25) To CY4PR18MB1431.namprd18.prod.outlook.com
 (2603:10b6:903:107::20)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4acf7a4f-0de8-4a73-a233-08d785f05628
x-ms-traffictypediagnostic: CY4PR18MB1080:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR18MB108074AA0E2B0DE47C4FF8F2B22C0@CY4PR18MB1080.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:69;
x-forefront-prvs: 0258E7CCD4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(39850400004)(396003)(346002)(189003)(199004)(16526019)(186003)(4326008)(26005)(6486002)(71200400001)(956004)(36756003)(86362001)(81166006)(81156014)(2616005)(8676002)(8936002)(5660300002)(2906002)(66946007)(66476007)(66446008)(64756008)(66556008)(4744005)(54906003)(7696005)(316002)(52116002)(6916009)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR18MB1080;
 H:CY4PR18MB1431.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aJ0E9CJUMFL0PebfRzbqNNnT64j9YXkXcuGbl/3guOBsGwmrgM+kVmfJx0nNnj7EwZUCp9nsN0ojgqckhBkaekXJzSp/q14vdHjfVv24Q2aQjcBlGaUXLNqnY5i3E0s1h9mCg5Nzv2DQOBNa7edSVwt7wLFZYlXixpvW15dqPAEvbOR2t7iVXFKe/5ELqg8DCA55MnQbgnbpHwF7cfGszCz4qIuRV49He6dA3YLgNQ9kXBXxBb5R91qYLRAqM2k+ujZOrKiXfLZurReGNwmgcnLBH5Bz6/RArOL9nVClqIXdeprcZcHCcZZaEoaAuRLUl+bYbNuyEMRk8Wnx3Tj9mv/vd8mgCV3iOgDuXRxawo2iXExO1tcCd/iNzJliMQKQiTLks+Y3q8+mGtvlUbYr9Xu3RjjxWtbXjrIu9TBm9n/ykhi6d7QItKhxwVr2Qh3l
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4acf7a4f-0de8-4a73-a233-08d785f05628
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2019 08:32:38.2782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8vr9zj8KqemOQ6juRDRonpX6a7cgqQlq2MmujN0wc46qZGxVkA/yLUNTlQSp05ghwfXUmsxp4GlnjBZQk1b2tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR18MB1080
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-21_01:2019-12-17,2019-12-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_003247_969056_B58AFC33 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kamlakant Patel <kamlakantp@marvell.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, James
 Morse <james.morse@arm.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linux commit b6e43c0e3129 ("arm64: remove __exception annotations") has
removed __exception_text_start and __exception_text_end sections.

So removing reference of __exception_text_start and __exception_text_end
from from asm/section.h.

Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
Cc: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/sections.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/include/asm/sections.h b/arch/arm64/include/asm/sections.h
index 25a73aab438f..3994169985ef 100644
--- a/arch/arm64/include/asm/sections.h
+++ b/arch/arm64/include/asm/sections.h
@@ -8,7 +8,6 @@
 #include <asm-generic/sections.h>
 
 extern char __alt_instructions[], __alt_instructions_end[];
-extern char __exception_text_start[], __exception_text_end[];
 extern char __hibernate_exit_text_start[], __hibernate_exit_text_end[];
 extern char __hyp_idmap_text_start[], __hyp_idmap_text_end[];
 extern char __hyp_text_start[], __hyp_text_end[];
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
