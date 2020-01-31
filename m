Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337A314EC0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 12:52:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWqbdIXZOxOVSGl+h3TYVwsfHsVPbkeUTt8/1TNMBXg=; b=R4qEQ8l3HzNQW2
	wHWdwxAcBgPHh6/1tQ7f5WLdeZ+78/X+MAhRghyuI45URQ3hCG5xxuRJ3iZb0Se/LmG3derq1OwNB
	2imHd+uxQ+UMTCD7kOB51q378cqNVjZWed0dV6gfvgX5t3ryzpy5F875hNX2J/w2QRw5kKzIF3f7Y
	aXYXWB6AZVrCo6Iwtui6OqzEV9yasEvVqMnjYRXxuUDf9xNCs7VL0FPqJDnHG3LRr6SaA/Kmc5TW9
	adnwclV/7PuIkf5GU95rQl9NzUL9B18AEkYvCdi4Zn8wWfsKq9ilwHk85UsbDcUrn7L+J44PoX9BY
	KvR9/4ZG5Uacs4jQRL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixUqQ-0003EH-QX; Fri, 31 Jan 2020 11:52:18 +0000
Received: from mail-bn8nam12on2084.outbound.protection.outlook.com
 ([40.107.237.84] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixUpZ-0002ZA-Ny
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 11:51:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJgpVYYEgTsMQKBhZB6JQaVe6dW/PlR+cwB/Q0ELdWk0w1xiW859QbxWKMuYM293PwpugKZsdGf+gNHFKbib6S6th1tVq4OO37nMOTamFYtvJTCy42jLS9PvE9u+LkQr/dFKfAILmQDAD45AOQb7QkBcD5vtTafCFsTL/ccRmH+BDgJ9F4xLcJrjAsj8AqsyqKZlPo9cu2uFfJFNdq8UtipG+AWbdu1YFQ9ttsHwvzcSyysT8SJRjnk2ouyJRcZj16oLR3nHeAz+JWJoNdAIv4vnnSKgI8tvhLxK3Q7S8UIZnNnAMVeFxnVpVtDHTpL+tMEgx1PS5mwQrl8Nwk33Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r86wrFN6jnIdDEGeOWWlI2LRDqGN5bheUkemUa7JVLw=;
 b=mvgm2rgxfy5LXr/bne/GU3lfQ1wmRe1tOemsYcZ7lmL6W4QlCLN8Kse8WLZOcM/YxDEMzqb2J2jSEqQtEnWPH4io5zM9NOVVEDhQ3WYe9moMTglGO7gJMTcaE1eIL0Xo36WEfC8QCr0rmqUOFvBaayCan6GMmkq7/wVo5+lDn3rpWfKOZuNw2WYctmjTbuQcbobAfB0FqF/c2ybACZsGzcqj/F+G5hPI16v0F16hoNbWIZGRFQa2bKp+bLCJw+DkkYh6mFNR5/Um1u/Xye6CBcBbhS4W2WoQ3ETJfsU0cP8L9iGJ5s31NqqPER8jUEIHi2AMdjdysLgHmjVLxo1dLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r86wrFN6jnIdDEGeOWWlI2LRDqGN5bheUkemUa7JVLw=;
 b=fD1UVeyK/7NInNbwaIPgwvGCiRax5Ua2K5/FRJs4VnLL4Dw7bA0fqs1UNmx2tEY0jmkuVACe/4YNaXNJaLhFdNDasIyxWuuuXH/RH8pGeXfd+44wh+r4BaTjoP4PBn0mOl6NCJJJ9DpF3bS28bRXeCFCvm4XF0c1nb6il4/epmg=
Received: from BL0PR02CA0032.namprd02.prod.outlook.com (2603:10b6:207:3c::45)
 by DM6PR02MB4924.namprd02.prod.outlook.com (2603:10b6:5:11::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.27; Fri, 31 Jan
 2020 11:51:22 +0000
Received: from BL2NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by BL0PR02CA0032.outlook.office365.com
 (2603:10b6:207:3c::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.27 via Frontend
 Transport; Fri, 31 Jan 2020 11:51:21 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT031.mail.protection.outlook.com (10.152.77.173) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2686.25
 via Frontend Transport; Fri, 31 Jan 2020 11:51:21 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmS-0006bP-2O; Fri, 31 Jan 2020 03:48:12 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmM-0004pn-Tp; Fri, 31 Jan 2020 03:48:06 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00VBm5I8012168; 
 Fri, 31 Jan 2020 03:48:05 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmL-0004op-E5; Fri, 31 Jan 2020 03:48:05 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 9F068100114; Fri, 31 Jan 2020 17:18:04 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, netdev@vger.kernel.org
Subject: [PATCH v3 -next 3/4] net: emaclite: Fix arm64 compilation warnings
Date: Fri, 31 Jan 2020 17:17:49 +0530
Message-Id: <1580471270-16262-4-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No-1.563-7.0-31-1
X-imss-scan-details: No-1.563-7.0-31-1;No-1.563-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39850400004)(428003)(249900001)(189003)(199004)(356004)(8936002)(316002)(2616005)(6266002)(82310400001)(42186006)(107886003)(4326008)(81166006)(8676002)(498600001)(81156014)(36756003)(2906002)(5660300002)(26005)(42882007)(6666004)(336012)(70206006)(70586007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4924; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; MX:0; A:0; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99e317aa-3a3a-4876-16c3-08d7a643e412
X-MS-TrafficTypeDiagnostic: DM6PR02MB4924:
X-Microsoft-Antispam-PRVS: <DM6PR02MB492426EEDE2C861C3B6208AED5070@DM6PR02MB4924.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:167;
X-Forefront-PRVS: 029976C540
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g5fBqQmvbBf758L06T3hJNkmVB9jZhX7GLZRvIgVlotjLvEBrOf5nLrt/1HZDwcJK5l8xZbboeJwK1ip8ELmuNi4UfQVciO7NWMSOKNUxVbNnrzxa4+QM4IW39FCoTfZLAmu9Mlg1z79SbYfTdz47EOLBh9sSKjpqy7hs7kR/arcix6tCJ+iSug7bnelnOEDL6+b4oF0g3WOS3FP/LgSGAJN2qh6EnLazItb1b0o/vreeILfvHak0vheX+IddMAf+n9lyjoycnq9fHZD05aoRqfcvl6baIf0oTaKuzEq/+zOjOeTZYmgQgcAwNCeFFm90uPGT06ZAtvKhIKUodZPo4PulZoysxP4gSsiTv8DRkelMVgMxswytGlBq0dzZuuveQXbW40AkxApIhiCNPfNb+gcGjZJ+/cTe9WVu8jPopxs1kmy60zB6WC6L58RrQhB
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2020 11:51:21.3142 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99e317aa-3a3a-4876-16c3-08d7a643e412
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_035125_785733_7E2705C6 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.84 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, anirudha.sarangi@xilinx.com,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>, michal.simek@xilinx.com,
 gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, john.linn@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4KClJlY2FzdCBwb2lu
dGVycyB3aXRoIHVsb25nIGluc3RlYWQgb2YgdTMyIGZvciBhcm02NC4KVGhpcyBwYXRjaCBmaXhl
cyB0aGVzZSBjb21waWxhdGlvbiB3YXJuaW5nczoKCmRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlu
eC94aWxpbnhfZW1hY2xpdGUuYzoKSW4gZnVuY3Rpb24g4oCYeGVtYWNsaXRlX3NlbmRfZGF0YeKA
mToKZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jOjMzNTozNToK
d2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBb
LVdwb2ludGVyLXRvLWludC1jYXN0XQogICBhZGRyID0gKHZvaWQgX19pb21lbSBfX2ZvcmNlICop
KCh1MzIgX19mb3JjZSlhZGRyIF4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBe
CmRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUuYzozMzU6MTA6Cndh
cm5pbmc6IGNhc3QgdG8gcG9pbnRlciBmcm9tIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1X
aW50LXRvLXBvaW50ZXItY2FzdF0KICAgYWRkciA9ICh2b2lkIF9faW9tZW0gX19mb3JjZSAqKSgo
dTMyIF9fZm9yY2UpYWRkciBeCiAgICAgICAgICBeCmRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlu
eC94aWxpbnhfZW1hY2xpdGUuYzoKSW4gZnVuY3Rpb24g4oCYeGVtYWNsaXRlX3JlY3ZfZGF0YeKA
mToKZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jOjM5NzozNjoK
d2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBb
LVdwb2ludGVyLXRvLWludC1jYXN0XQogICAgYWRkciA9ICh2b2lkIF9faW9tZW0gX19mb3JjZSAq
KSgodTMyIF9fZm9yY2UpYWRkciBeCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF4KZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jOjM5NzoxMToK
d2FybmluZzogY2FzdCB0byBwb2ludGVyIGZyb20gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBb
LVdpbnQtdG8tcG9pbnRlci1jYXN0XQogICAgYWRkciA9ICh2b2lkIF9faW9tZW0gX19mb3JjZSAq
KSgodTMyIF9fZm9yY2UpYWRkciBeCiAgICAgICAgICAgXgpkcml2ZXJzL25ldC9ldGhlcm5ldC94
aWxpbngveGlsaW54X2VtYWNsaXRlLmM6CkluIGZ1bmN0aW9uIOKAmHhlbWFjbGl0ZV9yeF9oYW5k
bGVy4oCZOgpkcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54X2VtYWNsaXRlLmM6OTc6
NDI6Cndhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVyIHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNp
emUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KICNkZWZpbmUgQlVGRkVSX0FMSUdOKGFkcikgKChB
TElHTk1FTlQgLSAoKHUzMilhZHIpKSAlIEFMSUdOTUVOVCkKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXgpkcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54
X2VtYWNsaXRlLmM6NjEyOjEwOgpub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYQlVGRkVS
X0FMSUdO4oCZCiAgYWxpZ24gPSBCVUZGRVJfQUxJR04oc2tiLT5kYXRhKTsKICAgICAgICAgIF5+
fn5+fn5+fn5+fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2RtYS1tYXBw
aW5nLmg6NywKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9za2J1ZmYuaDoz
MSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9pZl9ldGhlci5oOjE5LAog
ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oOjE5LAog
ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2V0aHRvb2wuaDoxOCwKICAgICAg
ICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaDozNywKICAgICAgICAg
ICAgICAgICBmcm9tIGRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUu
YzoxMjoKZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jOgpJbiBm
dW5jdGlvbiDigJh4ZW1hY2xpdGVfb2ZfcHJvYmXigJk6CmRyaXZlcnMvbmV0L2V0aGVybmV0L3hp
bGlueC94aWxpbnhfZW1hY2xpdGUuYzoxMTkxOjQ6Cndhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVy
IHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KICAg
ICh1bnNpZ25lZCBpbnQgX19mb3JjZSlscC0+YmFzZV9hZGRyLCBuZGV2LT5pcnEpOwogICAgXgou
L2luY2x1ZGUvbGludXgvZGV2aWNlLmg6MTc4MDozMzogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBt
YWNybyDigJhkZXZfaW5mb+KAmQogIF9kZXZfaW5mbyhkZXYsIGRldl9mbXQoZm10KSwgIyNfX1ZB
X0FSR1NfXykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn4KClNp
Z25lZC1vZmYtYnk6IE1pY2hhbCBTaW1layA8bWljaGFsLnNpbWVrQHhpbGlueC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFJhZGhleSBTaHlhbSBQYW5kZXkgPHJhZGhleS5zaHlhbS5wYW5kZXlAeGlsaW54
LmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54X2VtYWNsaXRlLmMg
fCAxMCArKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhf
ZW1hY2xpdGUuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUu
YwppbmRleCA3Zjk4NzI4Li45NmU5ZDIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC94aWxpbngveGlsaW54X2VtYWNsaXRlLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQveGls
aW54L3hpbGlueF9lbWFjbGl0ZS5jCkBAIC05NCw3ICs5NCw3IEBACiAjZGVmaW5lIEFMSUdOTUVO
VAkJNAogCiAvKiBCVUZGRVJfQUxJR04oYWRyKSBjYWxjdWxhdGVzIHRoZSBudW1iZXIgb2YgYnl0
ZXMgdG8gdGhlIG5leHQgYWxpZ25tZW50LiAqLwotI2RlZmluZSBCVUZGRVJfQUxJR04oYWRyKSAo
KEFMSUdOTUVOVCAtICgodTMyKWFkcikpICUgQUxJR05NRU5UKQorI2RlZmluZSBCVUZGRVJfQUxJ
R04oYWRyKSAoKEFMSUdOTUVOVCAtICgodWxvbmcpYWRyKSkgJSBBTElHTk1FTlQpCiAKICNpZmRl
ZiBfX0JJR19FTkRJQU4KICNkZWZpbmUgeGVtYWNsaXRlX3JlYWRsCQlpb3JlYWQzMmJlCkBAIC0z
MzIsNyArMzMyLDcgQEAgc3RhdGljIGludCB4ZW1hY2xpdGVfc2VuZF9kYXRhKHN0cnVjdCBuZXRf
bG9jYWwgKmRydmRhdGEsIHU4ICpkYXRhLAogCQkgKiBpZiBpdCBpcyBjb25maWd1cmVkIGluIEhX
CiAJCSAqLwogCi0JCWFkZHIgPSAodm9pZCBfX2lvbWVtIF9fZm9yY2UgKikoKHUzMiBfX2ZvcmNl
KWFkZHIgXgorCQlhZGRyID0gKHZvaWQgX19pb21lbSBfX2ZvcmNlICopKCh1bG9uZyBfX2ZvcmNl
KWFkZHIgXgogCQkJCQkJIFhFTF9CVUZGRVJfT0ZGU0VUKTsKIAkJcmVnX2RhdGEgPSB4ZW1hY2xp
dGVfcmVhZGwoYWRkciArIFhFTF9UU1JfT0ZGU0VUKTsKIApAQCAtMzk0LDcgKzM5NCw3IEBAIHN0
YXRpYyB1MTYgeGVtYWNsaXRlX3JlY3ZfZGF0YShzdHJ1Y3QgbmV0X2xvY2FsICpkcnZkYXRhLCB1
OCAqZGF0YSwgaW50IG1heGxlbikKIAkJICogd2lsbCBjb3JyZWN0IG9uIHN1YnNlcXVlbnQgY2Fs
bHMKIAkJICovCiAJCWlmIChkcnZkYXRhLT5yeF9waW5nX3BvbmcgIT0gMCkKLQkJCWFkZHIgPSAo
dm9pZCBfX2lvbWVtIF9fZm9yY2UgKikoKHUzMiBfX2ZvcmNlKWFkZHIgXgorCQkJYWRkciA9ICh2
b2lkIF9faW9tZW0gX19mb3JjZSAqKSgodWxvbmcgX19mb3JjZSlhZGRyIF4KIAkJCQkJCQkgWEVM
X0JVRkZFUl9PRkZTRVQpOwogCQllbHNlCiAJCQlyZXR1cm4gMDsJLyogTm8gZGF0YSB3YXMgYXZh
aWxhYmxlICovCkBAIC0xMTg2LDkgKzExODYsOSBAQCBzdGF0aWMgaW50IHhlbWFjbGl0ZV9vZl9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpvZmRldikKIAl9CiAKIAlkZXZfaW5mbyhkZXYs
Ci0JCSAiWGlsaW54IEVtYWNMaXRlIGF0IDB4JTA4WCBtYXBwZWQgdG8gMHglMDhYLCBpcnE9JWRc
biIsCisJCSAiWGlsaW54IEVtYWNMaXRlIGF0IDB4JTA4WCBtYXBwZWQgdG8gMHglMDhsWCwgaXJx
PSVkXG4iLAogCQkgKHVuc2lnbmVkIGludCBfX2ZvcmNlKW5kZXYtPm1lbV9zdGFydCwKLQkJICh1
bnNpZ25lZCBpbnQgX19mb3JjZSlscC0+YmFzZV9hZGRyLCBuZGV2LT5pcnEpOworCQkgKHVuc2ln
bmVkIGxvbmcgX19mb3JjZSlscC0+YmFzZV9hZGRyLCBuZGV2LT5pcnEpOwogCXJldHVybiAwOwog
CiBlcnJvcjoKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
