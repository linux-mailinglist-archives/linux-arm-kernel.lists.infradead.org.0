Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC9C138A4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qZnVrCQoi7teU8KImM4Pg+gDMFrXtAbeHuoLVCx6l8g=; b=WzHuy3/wjqXRt+
	x67HmIUao/1UUAo8ClWM5fvee7rOPL/NC9qidvtg4WeIf0Q0MOwVijv6mhLz5nzIPRBJqH2BdwjOV
	MVtnM9AvUd71I6o8qvhBuQ4bGXrmZ68ehDSo3ZGB7quU6gxwqjbZNECwRBOYp1XrLSrqbKvJJ1N1P
	KHhuwPn76V9FvC6X2SjTFyZiIyR90QNmFIrnglrEPk/uAfRrU/cXirN60H/0DuHmSLwiOCnVQUcJi
	5RCZupM8OMvaBAj7NpG+s7FKF0M+w2Br25r9zZT1kBoPAxDrTleKvsyVoDzk96qBKVvEmVDBhP/0z
	1Epa/Wt59o0sPUkpyXwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrYK-0006Kd-3W; Mon, 13 Jan 2020 04:42:12 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrYA-0006KH-BH
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:42:04 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00D4ahRS032199; Sun, 12 Jan 2020 20:41:57 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=KzLibld3Na3JQETu9cMtq5R7RbDkLKGwb7NTPbeT9YI=;
 b=pxUqmi3tTS6muOiVvLeVKVu2UzeWcSL8uKOPRlD9WDhbhtc2Sf6+T4Xw3IQWZr6yzi3n
 doPLw/Y7+mwuq5+7R/joXk8JlNhd1pIChaveQjzea0jqrlukUPrFdX8Tb7jv1z6wdv1i
 bWvg1MPITLaWbXFJdJNd3Uqud5fVnkbPuPx0J9qeNewt1z+K4MiYnJayGrwJ8TzVI45h
 bm8Bzf/ESapwHjNUi5d2Pfy3CrA5mgQ//6rq18KP2bvy96ItqeIrJJyybCB7zcHDbWs3
 ZkOEFyyrsWDFTwAjOOAvaDw8hThUsdzrwP6D4IwQ8LCZYouOeeX8cl+bFvhC+K4mxkaP wQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2xfert472k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sun, 12 Jan 2020 20:41:56 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sun, 12 Jan
 2020 20:41:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sun, 12 Jan 2020 20:41:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YtMBX5JeDN5me7vO9udB5vY8rrhSkktfvW24DQnzOgZA2sJYunyFEDANrWiBxXIpwkYxG6DuK27YZDMPAq8Vbox0Lcqxft1cg+YOPSDCLHnoM8dnLoMRWrvkNbmLQXi0mU04tsb3LYMmO5GJ15j+ogJkZRuCvPAeG6JsdhwgqPDLdXv1i5K02/DXQr5f0fMHWWhl+NlG4V8x9AprWb/nPCF9hUeT1sBT2WacO1Pemk+TzvhFYW5Gipd9h7JI3EkPV16vWPd5HPfvapq+TOBZFGm0HEsQJK0XsSdoZ4GxFB6VQwVTBTgX3Gi+DB1bl4ZnM/oarPcims+1ukbNrKygww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KzLibld3Na3JQETu9cMtq5R7RbDkLKGwb7NTPbeT9YI=;
 b=W/twzLjvgAXhkmQBjEe4rvHJOEkBrdgds480uyTit0n+I+Hac/EMOfI7TI+yUpesallWbcIQRGeRHE9FnDgqLAYBfJrYq2eveDIH5mkNzPx+mZfp4Ioqo+ewKA5iat5I3U4OY3owFO1B3qJJBN7Dc0EUW2JH2P7MEkZRmSzliw/fWquIqr6aWR0mSKu/8gg8Cyb6JiR0G4UHxiKVvN+fvZNn+RICJYOrGmu4WdcM5i0KoAcGV659Re6cWXFHMA9bB3+xcXmiK4nxbsFFwUzNapKcsz09vEQ8N2nYo0bQT7JfCcdFspdH1jbcz6v9M85tba9Az3nT8incPutc/COGOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KzLibld3Na3JQETu9cMtq5R7RbDkLKGwb7NTPbeT9YI=;
 b=arsLr+C0My+XQEr+hVVw/ZY+bqiN+Z4JWhhmG+Zy5DKKk5wdlMIXQ+ODHocXqTQDUU/+Ztf9SUepDg3DkN7bPiVxUCDaz7W+ud145y0IupTnyG0DIAu/JGIQllbH7LHoQh32mqMyFvTyg2oSZ21AoDe/2z26id8Y5ID9Bjfjk/g=
Received: from CY4PR18MB1431.namprd18.prod.outlook.com (10.172.175.148) by
 CY4PR18MB1559.namprd18.prod.outlook.com (10.173.63.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 04:41:53 +0000
Received: from CY4PR18MB1431.namprd18.prod.outlook.com
 ([fe80::2171:ec6b:bc83:f9e4]) by CY4PR18MB1431.namprd18.prod.outlook.com
 ([fe80::2171:ec6b:bc83:f9e4%9]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 04:41:52 +0000
Received: from dc5-eodlnx05.marvell.com (199.233.59.128) by
 BYAPR04CA0027.namprd04.prod.outlook.com (2603:10b6:a03:40::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9 via Frontend Transport; Mon, 13 Jan 2020 04:41:51 +0000
From: Prabhakar Kushwaha <pkushwaha@marvell.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH][v2] arm64: Remove __exception_text_start and
 __exception_text_end from asm/section.h
Thread-Topic: [PATCH][v2] arm64: Remove __exception_text_start and
 __exception_text_end from asm/section.h
Thread-Index: AQHVycvG4NLo/0Ss/EGxvNSWtGqHoA==
Date: Mon, 13 Jan 2020 04:41:52 +0000
Message-ID: <1578890502-13602-1-git-send-email-pkushwaha@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:a03:40::40) To CY4PR18MB1431.namprd18.prod.outlook.com
 (2603:10b6:903:107::20)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92dd9893-4dee-4009-84a2-08d797e2e8dd
x-ms-traffictypediagnostic: CY4PR18MB1559:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR18MB15594129BDB4C2E9DBB0EDE1B2350@CY4PR18MB1559.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:172;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(366004)(136003)(346002)(376002)(199004)(189003)(66476007)(64756008)(66446008)(66556008)(16526019)(186003)(7696005)(52116002)(6916009)(66946007)(4326008)(107886003)(86362001)(478600001)(26005)(36756003)(5660300002)(6486002)(8676002)(54906003)(956004)(2616005)(71200400001)(8936002)(316002)(2906002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR18MB1559;
 H:CY4PR18MB1431.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qHr9Ee8DO1N2g2lhS9pRsrpoEYfs6mTXCcAJNIZRa8YygQ4JieYMSbqovQW+/JJOwGiTDO4AYmHHJq0VOYHNw2OIJEFnua0GFuC+jFMPI8zOTCn5z5xGr6NP/Q5YlsK3ze+7VBf5v9hCfXz0bE4K4jTA6bnd8K4JSb5dUSHxdX9zPjRGjhaSUActmNb/pDJPUy++kQaOihdgosRKDLGqUMJLLYuiWK4yAvkZKdQI6CbmX/tMKLBpYKsrdmUJWXZQUIaeHSkQg184NgvSSE3irn0x5ciUXEgiQy4XD6q9BJocjQJjIp43sJ3M8sot9RileU5ZWtFSBM1sWy7h/jYu3FBmOfWogeXPHNnBWNuIIkYknpV76ME6c9HMFJuq1If7FPSYku8ImdCaQh5mhIw4+w64g8k3744ROQXEbQ7QThwoGJrK5kxbcc27hgX48rl4
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92dd9893-4dee-4009-84a2-08d797e2e8dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 04:41:52.5687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 99vfcR9xnZj8I6MHUwpbxMm7OwOED3uEqbwQ4PBkLZc9ABEFFo/z5TTBbeb+QfTjpbkYt4+dBPGVej6J1LRjsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR18MB1559
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-12_11:2020-01-10,
 2020-01-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204202_562614_76F2929C 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Kamlakant Patel <kamlakantp@marvell.com>,
 "prabhakar.pkin@gmail.com" <prabhakar.pkin@gmail.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 "will@kernel.org" <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linux commit b6e43c0e3129 ("arm64: remove __exception annotations") has
removed __exception_text_start and __exception_text_end sections.

So removing reference of __exception_text_start and __exception_text_end
from from asm/section.h.

Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>
Acked-by: James Morse <james.morse@arm.com>
---
Chages for v2: 
 - Added Acked and Reviewed by 
 - resending with maintainers in CC

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
