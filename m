Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F5918C346
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 23:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:References:Message-Id:
	Date:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MloT+vOfCcSf8YFw1W32th7RMkQdJfpsT75jQWwk25Q=; b=WJ9vJOKk2i2fm0
	xOhj1ttFtabN+WiXPV8QfQ5tJpa9n0K1gdARUwyq78rzR8pmsY76NMiWnpoVvpBgFPOoPfYrostaa
	atYiPa5AiQQVmSd69doOT9RwlDFMUsLF8NLhuE5uYzehOChBW+1fBOSI9WzoHDW1mh26/OF03HLde
	N3qS7EQzswJUvorBgX5DEtJVlLd51dtW+XozshR7EVoQGAS3zuEVz4C5ou0bPv7Dx2eITlmGC5He/
	CAIPgVyeP9qkJtX5Db+dGz/D6XJng3ue6wt8r8+PXvMdCQPmiAqtHOJqJY8KAotOP6bNT/87XABXn
	flFM3raYSLXCQqGaLITQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF3yk-0000eF-3j; Thu, 19 Mar 2020 22:49:30 +0000
Received: from mail-eopbgr690128.outbound.protection.outlook.com
 ([40.107.69.128] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF3yc-0000dX-3f
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 22:49:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O6wFD+TiCBvzCOxyf/Ta/Vi4x39m5YShozMJf+g30axKk1qWD5lT1u4MzQBy2dDFjmaCIxmLv2jrdeQW31BrIWHsqi3cZbf0TYOaZlE6144V+YePfbGayBbeFHGZYaCpzBsAPlGGjbp3OfANIvlXYkukgSrN+6s84Eilx2jiImVEtDhR8clfy37fr+M5Z9s7rSrPLtq3DMN9WvHjRFSDEOaD22QcPtDRBPUOBp4hPN4+faPom9r3x/n4CyHiZcxHkci4u6ovsLRS/Ylf/H9rprlnS0lwHaE7MJSuFHJuAI+WPAmOF+aqJiM4EsJyCZ+Vr/w71zW/9LN8af3smETVEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t9/YgwEACpRwWArAMf1CdO5cOKiqFly8PLwSEswRlag=;
 b=N9FK7UgV35nFRhWUCmfoD7lz+YB6Ac0IbUJJGzVh7nO6sZEZ8Oh+hWNMJrXKVelTqZfJzqglt0fXJ96IVLCpQa3BLOWr7J7KxELj3nY9GscEdBMGUXHc0THlCIsiGy4DT6Nb4rr7OC7OtbvBDoREu8Sp0w4iMsWub2c6/OUH7MOHJpnyP06MTrwBYgOedjaTxh2+Swp0kJwD/W49RAeemQMb1KegJHfZRl9FjRyjPj8O1R6F0pkLgBv8wbwHRXj78PGGGXggycNqw6zLGgObZwAUzv/s8RwvFeWr7gCkdMQd0/NEaiR4YibFrhkj4uqj7tjtXWPo2oxcJspD2FafBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t9/YgwEACpRwWArAMf1CdO5cOKiqFly8PLwSEswRlag=;
 b=I2kmGBKSB7qHOao1C2eIBHGEQplTd8gOtDpXG53sksWg10FXtTakh8o2s6ZHPVqYYk7OivHQ0/Yj9248vmv0iHAjyU6wu1KMiimOn9hYi9QJYs9sZm23WSAW0h+T88ulWWt42FIDgeX6LoSUn7v2gBGICmdP1S1v1e9hct9FzmA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=tuanphan@os.amperecomputing.com; 
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB4229.prod.exchangelabs.com (2603:10b6:a03:5d::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Thu, 19 Mar 2020 22:49:16 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::94fd:d242:1a35:9b22]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::94fd:d242:1a35:9b22%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 22:49:16 +0000
Subject: Re: [PATCH 2/2] perf: arm_dsu: Support DSU ACPI devices.
From: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
In-Reply-To: <a571cf7e-c2a5-e8f8-e782-8087249143b0@arm.com>
Date: Thu, 19 Mar 2020 15:49:12 -0700
Message-Id: <64AE7BB3-F2A9-4A62-82FD-FFF2D6B7101C@amperemail.onmicrosoft.com>
References: <1584491323-31436-1-git-send-email-tuanphan@os.amperecomputing.com>
 <a571cf7e-c2a5-e8f8-e782-8087249143b0@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-ClientProxiedBy: CY4PR14CA0028.namprd14.prod.outlook.com
 (2603:10b6:903:101::14) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.104] (73.151.103.95) by
 CY4PR14CA0028.namprd14.prod.outlook.com (2603:10b6:903:101::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21 via Frontend
 Transport; Thu, 19 Mar 2020 22:49:14 +0000
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Originating-IP: [73.151.103.95]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 461e8391-2a5a-4005-d674-08d7cc57c040
X-MS-TrafficTypeDiagnostic: BYAPR01MB4229:|BYAPR01MB4229:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB42293F8F72FB8A43B76D29C0E0F40@BYAPR01MB4229.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:639;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(199004)(186003)(26005)(66946007)(2906002)(66556008)(16576012)(66476007)(6916009)(16526019)(498600001)(42882007)(956004)(33656002)(2616005)(81166006)(52116002)(53546011)(4326008)(6486002)(5660300002)(8936002)(8676002)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR01MB4229;
 H:BYAPR01MB4598.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EXb1nIZWy2yXdjddb3jB5QTMGFXlWWjpSqK79NYs6+dJJQc/Y3ZzKt+0FfOo4p+WZI2RqKLNeT24LQQewJjmy1Kn5tDCDsmkMEWlp/zd+JHRUwZlarJeZvl/sfyVdFDGUvn3iO2HO/rgCMoSZe/v33gJlzyUpk4IhVEM6W9ZJ4KVXmp4Nr8w31ZIIeWjc8xi3PgERL9lGYDe9vSCnNNNtSWzmYxjvx8So6WD8EIvN/m6N1TyB8ONFotA81ZbuY7Iygek3FqjmcSDvymd0GxfrgJ9id/2SfwD65fZQqDnhFTJcfesJ6TW3k2qHD7vCSjBpPOVTwPLF+h6xEWDP/hCZROTmsRVOs/7wvjm5l13vehUGrHHh2DtWdMZJuNwgpkVzVOrCQffrdm4toMoOf6nPS+rwt+frHuYOqrI5J9qLD6JAN1VjN15lKYTXw3/ozYm
X-MS-Exchange-AntiSpam-MessageData: fc2Pw2Cca7RbeF1dELjf5VE8jQNGzd1As3brGherZGbgd8pbPDxOuZKHM7qrc8MpKgiX8UMco6mxMQuhiTnDhbzl9JjGWAQqlUp7kGbpSRmwsbSAj/z68htCO6nuBnHreYGcl966K5YTMFchrzyRoQ==
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 461e8391-2a5a-4005-d674-08d7cc57c040
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 22:49:15.8984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wSUQns/LR5pqQYQ0tl7A5eC/l0Tb9o9nAASEIBq7uYNGgOHdWE0GAxSGRxauippKJ3RpOeHN9o/iVb7tvJUFXgrHku74smhbPY3TykYvQFGLkZGVCOECNytmL0i6+c0V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_154922_211160_5D256E8F 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tuanphan[at]amperemail.onmicrosoft.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: mark.rutland@arm.com, tuanphan@os.amperecomputing.com,
 linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 patches@amperecomputing.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKPiBPbiBNYXIgMTgsIDIwMjAsIGF0IDU6NDUgUE0sIFN1enVraSBLIFBvdWxv
c2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+IHdyb3RlOgo+IAo+IEhlbGxvLAo+IAo+IAo+IFBs
ZWFzZSBmaW5kIG15IGNvbW1lbnRzIGJlbG93Lgo+IAo+IE9uIDAzLzE4LzIwMjAgMTI6MjggQU0s
IFR1YW4gUGhhbiB3cm90ZToKPj4gQWRkIHN1cHBvcnQgZm9yIHByb2JpbmcgZGV2aWNlIGZyb20g
QUNQSSBub2RlLgo+PiBFYWNoIERTVSBBQ1BJIG5vZGUgZGVmaW5lcyAiY3B1cyIgcGFja2FnZSB3
aGljaAo+PiBlYWNoIGVsZW1lbnQgaXMgdGhlIE1QSURSIG9mIGFzc29jaWF0ZWQgY3B1Lgo+PiBT
aWduZWQtb2ZmLWJ5OiBUdWFuIFBoYW4gPHR1YW5waGFuQG9zLmFtcGVyZWNvbXB1dGluZy5jb20+
Cj4+IC0tLQo+PiAgZHJpdmVycy9wZXJmL2FybV9kc3VfcG11LmMgfCA1MyArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNDUg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVy
Zi9hcm1fZHN1X3BtdS5jIGIvZHJpdmVycy9wZXJmL2FybV9kc3VfcG11LmMgVHVhCj4+IGluZGV4
IDI2MjI5MDAuLjZlZjc2MmMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGVyZi9hcm1fZHN1X3Bt
dS5jCj4+ICsrKyBiL2RyaXZlcnMvcGVyZi9hcm1fZHN1X3BtdS5jCj4+IEBAIC0xMSw2ICsxMSw3
IEBACj4+ICAjZGVmaW5lIERSVk5BTUUJCVBNVU5BTUUgIl9wbXUiCj4+ICAjZGVmaW5lIHByX2Zt
dChmbXQpCURSVk5BTUUgIjogIiBmbXQKPj4gICsjaW5jbHVkZSA8bGludXgvYWNwaS5oPgo+PiAg
I2luY2x1ZGUgPGxpbnV4L2JpdG1hcC5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+
PiAgI2luY2x1ZGUgPGxpbnV4L2J1Zy5oPgo+PiBAQCAtNjAzLDE4ICs2MDQsMjIgQEAgc3RhdGlj
IHN0cnVjdCBkc3VfcG11ICpkc3VfcG11X2FsbG9jKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4+ICB9Cj4+ICAgIC8qKgo+PiAtICogZHN1X3BtdV9kdF9nZXRfY3B1czogR2V0IHRoZSBs
aXN0IG9mIENQVXMgaW4gdGhlIGNsdXN0ZXIuCj4+ICsgKiBkc3VfcG11X2dldF9jcHVzOiBHZXQg
dGhlIGxpc3Qgb2YgQ1BVcyBpbiB0aGUgY2x1c3Rlci4KPj4gICAqLwo+PiAtc3RhdGljIGludCBk
c3VfcG11X2R0X2dldF9jcHVzKHN0cnVjdCBkZXZpY2Vfbm9kZSAqZGV2LCBjcHVtYXNrX3QgKm1h
c2spCj4+ICtzdGF0aWMgaW50IGRzdV9wbXVfZ2V0X2NwdXMoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPj4gIHsKPj4gKyNpZm5kZWYgQ09ORklHX0FDUEkKPj4gKwkvKiBHZXQgdGhlIGxp
c3Qgb2YgQ1BVcyBmcm9tIGRldmljZSB0cmVlICovCj4gCj4gV2hhdCBpZiB3ZSBoYXZlIGEga2Vy
bmVsIHdpdGggYm90aDoKPiAKPiBDT05GSUdfT0Y9eQo+IENPTkZJR19BQ1BJPXkKPiAKPiBhbmQg
Ym9vdCB0aGUga2VybmVsIG9uIGEgc3lzdGVtIHdpdGggRFQgPyBJbiBvdGhlciB3b3JkcywgdGhl
IGRlY2lzaW9uCj4gdG8gY2hvb3NlIHRoZSBEVCB2cyBBQ1BJIG11c3QgYmUgcnVudGltZSBkZWNp
c2lvbiwgbm90IGJ1aWxkdGltZS4KPiAKPiBTZWUgZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0
L2NvcmVzaWdodC1wbGF0Zm9ybS5jOmNvcmVzaWdodF9nZXRfcGxhdGZvcm1fZGF0YSgpIGZvciBh
biBleGFtcGxlLgo+IAo+PiAgCWludCBpID0gMCwgbiwgY3B1Owo+PiAgCXN0cnVjdCBkZXZpY2Vf
bm9kZSAqY3B1X25vZGU7Cj4+ICsJc3RydWN0IGRzdV9wbXUgKmRzdV9wbXUgPQo+PiArCQkoc3Ry
dWN0IGRzdV9wbXUgKikgcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4+ICAtCW4gPSBvZl9j
b3VudF9waGFuZGxlX3dpdGhfYXJncyhkZXYsICJjcHVzIiwgTlVMTCk7Cj4+ICsJbiA9IG9mX2Nv
dW50X3BoYW5kbGVfd2l0aF9hcmdzKHBkZXYtPmRldi5vZl9ub2RlLCAiY3B1cyIsIE5VTEwpOwo+
PiAgCWlmIChuIDw9IDApCj4+ICAJCXJldHVybiAtRU5PREVWOwo+PiAgCWZvciAoOyBpIDwgbjsg
aSsrKSB7Cj4+IC0JCWNwdV9ub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShkZXYsICJjcHVzIiwgaSk7
Cj4+ICsJCWNwdV9ub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShwZGV2LT5kZXYub2Zfbm9kZSwgImNw
dXMiLCBpKTsKPj4gIAkJaWYgKCFjcHVfbm9kZSkKPj4gIAkJCWJyZWFrOwo+PiAgCQljcHUgPSBv
Zl9jcHVfbm9kZV90b19pZChjcHVfbm9kZSk7Cj4+IEBAIC02MjYsOSArNjMxLDMzIEBAIHN0YXRp
YyBpbnQgZHN1X3BtdV9kdF9nZXRfY3B1cyhzdHJ1Y3QgZGV2aWNlX25vZGUgKmRldiwgY3B1bWFz
a190ICptYXNrKQo+PiAgCQkgKi8KPj4gIAkJaWYgKGNwdSA8IDApCj4+ICAJCQljb250aW51ZTsK
Pj4gLQkJY3B1bWFza19zZXRfY3B1KGNwdSwgbWFzayk7Cj4+ICsJCWNwdW1hc2tfc2V0X2NwdShj
cHUsICZkc3VfcG11LT5hc3NvY2lhdGVkX2NwdXMpOwo+PiAgCX0KPj4gIAlyZXR1cm4gMDsKPj4g
KyNlbHNlIC8qIENPTkZJR19BQ1BJICovCj4+ICsJaW50IGksIGNwdSwgcmV0Owo+PiArCWNvbnN0
IHVuaW9uIGFjcGlfb2JqZWN0ICpvYmo7Cj4+ICsJc3RydWN0IGFjcGlfZGV2aWNlICphZGV2ID0g
QUNQSV9DT01QQU5JT04oJnBkZXYtPmRldik7Cj4+ICsJc3RydWN0IGRzdV9wbXUgKmRzdV9wbXUg
PQo+PiArCQkoc3RydWN0IGRzdV9wbXUgKikgcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4+
ICsKPiAKPj4gKwlyZXQgPSBhY3BpX2Rldl9nZXRfcHJvcGVydHkoYWRldiwgImNwdXMiLCBBQ1BJ
X1RZUEVfQU5ZLCAmb2JqKTsKPiAKPiBJcyB0aGUgYmluZGluZyBkb2N1bWVudGVkIHNvbWV3aGVy
ZSA/Cj4gCj4gCj4gbml0OiBBbHNvLCB3aHkgbm90IDoKPiAJcmV0ID0gYWNwaV9kZXZfZ2V0X3By
b3BlcnQoYWRldiwgImNwdXMiLCBBQ1BJX1RZUEVfUEFDS0FHRSwgJm9iaik7Cj4gCWlmIChyZXQg
PCAwKQo+IAkJcmV0dXJuIHJldDsKPiA/Cj0+IEkgY291bGRu4oCZdCBmaW5kIHRoZSBkZXZpY2Ug
dHJlZSBiaW5kaW5nIGRvY3VtZW50IG9mIERTVSBhbnl3aGVyZS4gSXMgSXQgZW5vdWdoCnRvIHB1
dCBhIGNvbW1lbnQgZGVzY3JpYmluZyB0aGUgYWNwaSBiaW5kaW5nIGluIHRoZSBjb2RlIG9yIG5l
ZWQgc29tZXdoZXJlIGVsc2U/Cj4gCj4gCj4+ICsJaWYgKHJldCA8IDApCj4+ICsJCXJldHVybiAt
RUlOVkFMOwo+PiArCj4+ICsJaWYgKG9iai0+dHlwZSAhPSBBQ1BJX1RZUEVfUEFDS0FHRSkKPj4g
KwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsKPj4gKwlmb3IgKGkgPSAwOyBpIDwgb2JqLT5wYWNrYWdl
LmNvdW50OyBpKyspIHsKPiAKPiAKPj4gKwkJLyogRWFjaCBlbGVtZW50IGlzIHRoZSBNUElEUiBv
ZiBhc3NvY2lhdGVkIGNwdSAqLwo+PiArCQlmb3JfZWFjaF9wb3NzaWJsZV9jcHUoY3B1KSB7Cj4+
ICsJCQlpZiAoY3B1X3BoeXNpY2FsX2lkKGNwdSkgPT0KPj4gKwkJCQlvYmotPnBhY2thZ2UuZWxl
bWVudHNbaV0uaW50ZWdlci52YWx1ZSkKPj4gKwkJCQljcHVtYXNrX3NldF9jcHUoY3B1LCAmZHN1
X3BtdS0+YXNzb2NpYXRlZF9jcHVzKTsKPj4gKwkJfQo+PiArCX0KPj4gKwlyZXR1cm4gMDsKPj4g
KyNlbmRpZgo+PiAgfQo+PiAgCj4gCj4gT3RoZXJ3aXNlIGxvb2tzIGdvb2QgdG8gbWUuCj4gCj4g
U3V6dWtpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
