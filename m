Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D678959B04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 14:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qu1QCFfF6W8aOhRuLVS0IXFpWjwenp9mUDuOqCctkI4=; b=meyAjTm7Dknh4x
	PAB4CVa9NgG+YeuqFMH1Cyxgssw3TDqBawIoZ69a6xp792vTz5id3B1YKbOpI3zcOfa+AF+qPrfxy
	odraKvXSqJkgVPvuePIEyhULOvYap6PJWeeRIorQsCdwXPLrrhuaB69VAbVmxD2i/cy+V4FaY+Bgr
	Zjir1Uz4KfoP5MVRDx2jq3hEy3LsPl2w6bhV4KfDkO/Q5VKre1l0u/lSF+u/J0TpJwHTPoYGhfLVq
	M2KQKmoPhfqcLOaQzG6l31cx01RB/MULoFwExqO6EU3ML2Xi0AJxzJtdm3luZStLR/pF8WmB/0vZh
	pNL3dz1Mf4mvGL4E/fBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgq1p-00053X-9u; Fri, 28 Jun 2019 12:30:57 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgq1N-00052z-D3; Fri, 28 Jun 2019 12:30:31 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5SCS8mD025966; Fri, 28 Jun 2019 08:30:20 -0400
Received: from nam05-co1-obe.outbound.protection.outlook.com
 (mail-co1nam05lp2052.outbound.protection.outlook.com [104.47.48.52])
 by mx0b-00128a01.pphosted.com with ESMTP id 2tdasvh9yw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 28 Jun 2019 08:30:19 -0400
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=tUmkv5XEQ1AaiIqU6cn1k5wEitm0dHMOHpH+glijM5CLlka5W6zCN4SCINAxctQtL6H9v2VUw/B2LyXYzw+WZiZulJxknz5rtP9z+uJrTugXKNxtDqFP6HJ6w1zsFr76VK0qp4FoLQN+cxHx8+VHSzDDgQt8KOyHLEzet5Jbc3w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cRn7T/55qU1uKDWRES7M0wi6sof63Ze/Idsd+VAxxm8=;
 b=qCAtlDRoXtk/xQ0/fMXs5oaTgjzowTFGxFLLNZj4Xi/cI8txoaVNWrowFvnIFTLHexi1jNgFk1x7/JAyX9Ok00YPjz+McYuXHGNY9e062Neju5lnPOXF+7UBme2CyUR5cIFAecvMEYa200SnUXQC6SQz0CcoZJEZ1TEh6yVX00M=
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=gmail.com
 smtp.mailfrom=analog.com;dmarc=bestguesspass action=none
 header.from=analog.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cRn7T/55qU1uKDWRES7M0wi6sof63Ze/Idsd+VAxxm8=;
 b=Mid3C5b/Bs6acKnBlB9HCEwtiWaw7Ww1WFL1hCNYgr5NnlHiN3OoitAtMQXqReB+9JN7ZT0S8GVWq4FhxQ2pzuiWu+yrIUcNyq1P6auumBo+UuzTIMGFc0UZ52HorKBWMoc3CAnzyDVaWmGi8CdJegKpoYo7b1pLb9oYzAB8Fho=
Received: from DM3PR03CA0012.namprd03.prod.outlook.com (2603:10b6:0:50::22) by
 BN7PR03MB3506.namprd03.prod.outlook.com (2603:10b6:406:c2::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Fri, 28 Jun 2019 12:30:17 +0000
Received: from BL2NAM02FT056.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by DM3PR03CA0012.outlook.office365.com
 (2603:10b6:0:50::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.17 via Frontend
 Transport; Fri, 28 Jun 2019 12:30:16 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT056.mail.protection.outlook.com (10.152.77.221) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Fri, 28 Jun 2019 12:30:16 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x5SCUGMV025536
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 28 Jun 2019 05:30:16 -0700
Received: from nsa.ad.analog.com (10.44.3.90) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server (TLS) id 14.3.408.0; Fri, 28 Jun
 2019 08:30:15 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <broonie@kernel.org>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <f.fainelli@gmail.com>, <rjui@broadcom.com>, <sbranden@broadcom.com>
Subject: [PATCH] spi: spi-bcm2835.c: Fix 3-wire mode
Date: Fri, 28 Jun 2019 14:30:23 +0200
Message-ID: <20190628123023.4696-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.44.3.90]
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(396003)(376002)(136003)(2980300002)(199004)(189003)(70206006)(7636002)(7736002)(70586007)(110136005)(54906003)(2201001)(2616005)(316002)(2906002)(486006)(126002)(476003)(50466002)(305945005)(86362001)(47776003)(426003)(336012)(7696005)(356004)(6666004)(5820100001)(23676004)(1076003)(246002)(966005)(4326008)(36756003)(5660300002)(8936002)(8676002)(16526019)(186003)(478600001)(77096007)(7416002)(2870700001)(3846002)(106002)(6116002)(50226002)(6306002)(72206003)(45776006)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR03MB3506; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e46d08e-f1c8-4382-5484-08d6fbc4601f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:BN7PR03MB3506; 
X-MS-TrafficTypeDiagnostic: BN7PR03MB3506:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <BN7PR03MB3506F9C580C3F3741244EB6D99FC0@BN7PR03MB3506.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 00826B6158
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Mrsz+ndzEtD1SS4tOD0vciCwg7EsnOkWTHrlYGcR5VLVpzMOyICdm+exHRW36vLW2RJW+C7g0JymUsHSLIQ+h8/+WbdvruAMltONewXT247xH5TTZQiqNDA5XymbuahMmZkIK0YeQ3Z8rtIMHSYdt4HCUek1k98vSoBTWi29bMNSsxRLCc2OTpWKFW6H27gQL8ptYZzPai20Vl9XqQuIbQvQHWr9L9Mzh2N8LrzV/iMrCC6vD/k2heXP8oT8LOz1djsi1DFWe46ZNc7wBvLk+YOw/0fe+Ezc2VmX4eR0Yug/GcohLIs5Cml+A409uov/Z7pIHmInxKyVq3lrBPw/pUDdEiR9Uk3zae6wQLQAXizTuRzStUHEFQgCN6s23aJMqrSstqz2JYmguNrntPoRvhLoUiiBeq+sg2Jwu0jnS5k=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2019 12:30:16.3450 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e46d08e-f1c8-4382-5484-08d6fbc4601f
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR03MB3506
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-28_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=959 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906280148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_053029_568824_C5CFEE00 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.163.139.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXMgc3RhdGVkIGluCmh0dHBzOi8vd3d3LnJhc3BiZXJyeXBpLm9yZy9kb2N1bWVudGF0aW9uL2hh
cmR3YXJlL3Jhc3BiZXJyeXBpL3NwaS9SRUFETUUubWQsCm9uZSBvZiByeCBvciB0eCBidWZmZXIn
cyBtdXN0IGJlIG51bGwuIEhvd2V2ZXIsIGlmIERNQSBpcyBlbmFibGVkLCB0aGUKZHJpdmVyIHNl
dHMgdGhlIFNQSV9DT05UUk9MTEVSX01VU1RfUlggfCBTUElfQ09OVFJPTExFUl9NVVNUX1RYIG9u
IHRoZQpjb250cm9sbGVyIGZsYWdzLiBIZW5jZSwgdGhlIHNwaSBjb3JlIHdpbGwgcHJvdmlkZSBk
dW1teSBidWZmZXJzIGV2ZW4gaWYKb25lIG9mIHRoZSBidWZmZXJzIHdhcyBzZXQgdG8gbnVsbCBi
eSB0aGUgZGV2aWNlIGRyaXZlci4gVGh1cywgdGhlCmNvbW11bmljYXRpb24gd2l0aCB0aGUgMy13
aXJlIGRldmljZSBmYWlscy4KClRoaXMgcGF0Y2ggdXNlcyB0aGUgcHJlcGFyZV9tZXNzYWdlIGNh
bGxiYWNrIHRvIGxvb2sgZm9yIHRoZSBkZXZpY2UgbW9kZQphbmQgc2V0cy9jbGVhcnMgdGhlIFNQ
SV9DT05UUk9MTEVSX01VU1RfUlggfCBTUElfQ09OVFJPTExFUl9NVVNUX1RYIG9uIGEKcGVyIHNw
aSBtZXNzYWdlIGJhc2lzLiBJdCBhbHNvIGFzc3VtZXMgdGhhdCBETUEgaXMgbm90IHN1cHBvcnRl
ZCBvbgpoYWxmLWR1cGxleCBkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8u
c2FAYW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL3NwaS9zcGktYmNtMjgzNS5jIHwgMTMgKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3NwaS9zcGktYmNtMjgzNS5jIGIvZHJpdmVycy9zcGkvc3BpLWJjbTI4MzUuYwppbmRl
eCA2ZjI0M2E5MGM4NDQuLjg5OTNhMTVhNDY4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkvc3Bp
LWJjbTI4MzUuYworKysgYi9kcml2ZXJzL3NwaS9zcGktYmNtMjgzNS5jCkBAIC02NzQsNiArNjc0
LDEwIEBAIHN0YXRpYyBib29sIGJjbTI4MzVfc3BpX2Nhbl9kbWEoc3RydWN0IHNwaV9jb250cm9s
bGVyICpjdGxyLAogCWlmICh0ZnItPmxlbiA8IEJDTTI4MzVfU1BJX0RNQV9NSU5fTEVOR1RIKQog
CQlyZXR1cm4gZmFsc2U7CiAKKwkvKiBEbyBub3QgRE1BIG9uIGhhbGYtZHVwbGV4IGRldmljZXMg
Ki8KKwlpZiAoc3BpLT5tb2RlICYgU1BJXzNXSVJFKQorCQlyZXR1cm4gZmFsc2U7CisKIAkvKiBy
ZXR1cm4gT0sgKi8KIAlyZXR1cm4gdHJ1ZTsKIH0KQEAgLTkwMiw2ICs5MDYsMTUgQEAgc3RhdGlj
IGludCBiY20yODM1X3NwaV9wcmVwYXJlX21lc3NhZ2Uoc3RydWN0IHNwaV9jb250cm9sbGVyICpj
dGxyLAogCQljcyB8PSBCQ00yODM1X1NQSV9DU19DUE9MOwogCWlmIChzcGktPm1vZGUgJiBTUElf
Q1BIQSkKIAkJY3MgfD0gQkNNMjgzNV9TUElfQ1NfQ1BIQTsKKwkvKgorCSAqIEZvciBoYWxmLWR1
cGxleCBkZXZpY2VzLCBvbmUgb2YgdHggb3IgcnggYnVmZmVycyBtdXN0IGJlIG51bGwKKwkgKiBm
b3Igb25lIHNwaSB0cmFuc2Zlci4gSGVuY2UsIHdlIG5lZWQgdG8gY2xlYXIgdGhlIHNwaSBjb250
cm9sbGVyCisJICogZmxhZ3Mgc28gdGhhdCB3ZSBkb24ndCBnZXQgZHVtbXkgYnVmZmVycy4uLgor
CSAqLworCWlmIChzcGktPm1vZGUgJiBTUElfM1dJUkUpCisJCW1hc3Rlci0+ZmxhZ3MgJj0gfihT
UElfTUFTVEVSX01VU1RfUlggfCBTUElfTUFTVEVSX01VU1RfVFgpOworCWVsc2UgaWYgKG1hc3Rl
ci0+Y2FuX2RtYSkKKwkJbWFzdGVyLT5mbGFncyB8PSAoU1BJX01BU1RFUl9NVVNUX1JYIHwgU1BJ
X01BU1RFUl9NVVNUX1RYKTsKIAogCWJjbTI4MzVfd3IoYnMsIEJDTTI4MzVfU1BJX0NTLCBjcyk7
CiAKLS0gCjIuMjIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
