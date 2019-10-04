Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F64CBA1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kw6ukA2xk9Fx5URJRqL86+EeYbANRi3LkcVY+Mj+2Q=; b=otzRn31oYVxc3b
	/mSmgo68bzk4ozhGHREy2yvG6QEmiArNbZKfWrRE+WR8med21DXMPPz664hNH1zDerrxIVZVC2avI
	u2VDjJyY4mjZDoHcxOZL0TMLtosDQERUtdl1iwbRPbjvNZazOt7PX80S+9Ud+DDzh0MYW0KwjJjVh
	KrIQ0r06en3J7/xJfRoLRQmBoDTdrckI/5POUWtLHh4gDJ3b4bO7EpwWfXHBz9jdeLws1ohfRxlFa
	ocaszW6PKxRsH9s52aptiL67EbBZfkruPzh4eMac++2/fYl3be77WA7tyLtI/Y/rJ5Jqbiw/E3F54
	7I5/C0AEM2FMa/2pYLxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMUF-0004jj-UB; Fri, 04 Oct 2019 12:15:07 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMP8-0007fx-IR
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:09:53 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x94C7Jrn064980
 for <linux-arm-kernel@lists.infradead.org>; Fri, 4 Oct 2019 08:09:48 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ve4yjabh3-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 04 Oct 2019 08:09:48 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <clg@kaod.org>;
 Fri, 4 Oct 2019 13:09:45 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 4 Oct 2019 13:09:41 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x94C9eiU45219928
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 4 Oct 2019 12:09:40 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 178DA4C050;
 Fri,  4 Oct 2019 12:09:40 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id ECF744C04A;
 Fri,  4 Oct 2019 12:09:39 +0000 (GMT)
Received: from smtp.tls.ibm.com (unknown [9.101.4.1])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri,  4 Oct 2019 12:09:39 +0000 (GMT)
Received: from yukon.kaod.org.com (sig-9-145-169-184.de.ibm.com
 [9.145.169.184])
 by smtp.tls.ibm.com (Postfix) with ESMTP id DFC722201B7;
 Fri,  4 Oct 2019 14:09:38 +0200 (CEST)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 16/16] mtd: spi-nor: aspeed: Add read training support for the
 AST2600
Date: Fri,  4 Oct 2019 14:09:34 +0200
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004120934.21662-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004120934.21662-1-clg@kaod.org>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19100412-0012-0000-0000-000003540265
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19100412-0013-0000-0000-0000218F0D3B
Message-Id: <20191004120934.21662-3-clg@kaod.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-04_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910040113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050950_712173_E0E20CB1 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHJlYWQgdHJhaW5pbmcgYWxnb3JpdGhtIGNvbnNpc3RzIG9mIGZpbmRpbmcgdGhlIGFwcHJv
cHJpYXRlIHJlYWQKdGltaW5nIGRlbGF5cyBmb3IgdGhlIEhDTEsgZGl2aWRlcnMgaW4gcmFuZ2Ug
WyAyIC0gNSBdIGFuZCBzdG9yZSB0aGUKcmVzdWx0cyBpbiB0aGUgUmVhZCBUaW1pbmcgQ29tcGVu
c2F0aW9uIHJlZ2lzdGVyLiBUaGUgcHJldmlvdXMgQVNUMjUwMAphbmQgQVNUMjQwMCBTb0NzIHdl
cmUgY292ZXJpbmcgYSBicm9hZGVyIEhDTEsgcmFuZ2UgWyAxIC0gNSBdIGJlY2F1c2UKdGhlIEFI
QiBmcmVxdWVuY3kgd2FzIGxvd2VyLgoKVGhlIGFsZ29yaXRobSBmaXJzdCByZWFkcyBhIGdvbGRl
biBidWZmZXIgYXQgbG93IHNwZWVkIGFuZCB0aGVuCnBlcmZvcm1zIHJlYWRzIHdpdGggZGlmZmVy
ZW50IGNsb2NrcyBhbmQgZGVsYXkgY3ljbGUgc2V0dGluZ3MgdG8gZmluZAphIGJyZWFraW5nIHBv
aW50LiBUaGlzIHNlbGVjdHMgdGhlIGRlZmF1bHQgY2xvY2sgZnJlcXVlbmN5IGZvciB0aGUgQ0V4
CmNvbnRyb2wgcmVnaXN0ZXIuIFRoZSBjdXJyZW50IHNldHRpbmdzIGFyZSBiaXQgb3B0aW1pc3Rp
YyBhcyB3ZSBwaWNrCnRoZSBmaXJzdCBkZWxheSBnaXZpbmcgZ29vZCByZXN1bHRzLiBBIHNhZmVy
IGFwcHJvYWNoIHdvdWxkIGJlIHRvCmRldGVybWluZSBhbiBpbnRlcnZhbCBhbmQgY2hvb3NlIHRo
ZSBtaWRkbGUgdmFsdWUuIFdlIG1pZ2h0IGNoYW5nZSB0aGUKYXBwcm9hY2ggZGVwZW5kaW5nIG9u
IHRoZSByZXN1bHRzIG9uIG90aGVyIHN5c3RlbXMuCgpTaWduZWQtb2ZmLWJ5OiBDw6lkcmljIExl
IEdvYXRlciA8Y2xnQGthb2Qub3JnPgotLS0KIGRyaXZlcnMvbXRkL3NwaS1ub3IvYXNwZWVkLXNt
Yy5jIHwgNzIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA3MiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvc3BpLW5vci9hc3Bl
ZWQtc21jLmMgYi9kcml2ZXJzL210ZC9zcGktbm9yL2FzcGVlZC1zbWMuYwppbmRleCA1ZmE5OTU2
ZDE4M2UuLjExNzZhZDBjNGZlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tdGQvc3BpLW5vci9hc3Bl
ZWQtc21jLmMKKysrIGIvZHJpdmVycy9tdGQvc3BpLW5vci9hc3BlZWQtc21jLmMKQEAgLTE0MSw2
ICsxNDEsOSBAQCBzdGF0aWMgdTMyIGFzcGVlZF9zbWNfc2VnbWVudF9lbmRfYXN0MjYwMChzdHJ1
Y3QgYXNwZWVkX3NtY19jb250cm9sbGVyICpjdHJsLAogCQkJCQkgIHUzMiByZWcpOwogc3RhdGlj
IHUzMiBhc3BlZWRfc21jX3NlZ21lbnRfcmVnX2FzdDI2MDAoc3RydWN0IGFzcGVlZF9zbWNfY29u
dHJvbGxlciAqY3RybCwKIAkJCQkJICB1MzIgc3RhcnQsIHUzMiBlbmQpOworc3RhdGljIGludCBh
c3BlZWRfc21jX2NhbGlicmF0ZV9yZWFkc19hc3QyNjAwKHN0cnVjdCBhc3BlZWRfc21jX2NoaXAg
KmNoaXAsCisJCQkJCSAgICAgIHUzMiBoZGl2LCBjb25zdCB1OCAqZ29sZGVuX2J1ZiwKKwkJCQkJ
ICAgICAgdTggKnRlc3RfYnVmKTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBhc3BlZWRfc21jX2lu
Zm8gZm1jXzI2MDBfaW5mbyA9IHsKIAkubWF4c2l6ZSA9IDI1NiAqIDEwMjQgKiAxMDI0LApAQCAt
MTQ5LDcgKzE1MiwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFzcGVlZF9zbWNfaW5mbyBmbWNf
MjYwMF9pbmZvID0gewogCS53ZTAgPSAxNiwKIAkuY3RsMCA9IDB4MTAsCiAJLnRpbWluZyA9IDB4
OTQsCisJLmhjbGtfbWFzayA9IDB4ZjBmZmYwZmYsCisJLmhkaXZfbWF4ID0gMiwKIAkuc2V0XzRi
ID0gYXNwZWVkX3NtY19jaGlwX3NldF80YiwKKwkub3B0aW1pemVfcmVhZCA9IGFzcGVlZF9zbWNf
b3B0aW1pemVfcmVhZCwKKwkuY2FsaWJyYXRlID0gYXNwZWVkX3NtY19jYWxpYnJhdGVfcmVhZHNf
YXN0MjYwMCwKIAkuc2VnbWVudF9zdGFydCA9IGFzcGVlZF9zbWNfc2VnbWVudF9zdGFydF9hc3Qy
NjAwLAogCS5zZWdtZW50X2VuZCA9IGFzcGVlZF9zbWNfc2VnbWVudF9lbmRfYXN0MjYwMCwKIAku
c2VnbWVudF9yZWcgPSBhc3BlZWRfc21jX3NlZ21lbnRfcmVnX2FzdDI2MDAsCkBAIC0xNjIsNyAr
MTY5LDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXNwZWVkX3NtY19pbmZvIHNwaV8yNjAwX2lu
Zm8gPSB7CiAJLndlMCA9IDE2LAogCS5jdGwwID0gMHgxMCwKIAkudGltaW5nID0gMHg5NCwKKwku
aGNsa19tYXNrID0gMHhmMGZmZjBmZiwKKwkuaGRpdl9tYXggPSAyLAogCS5zZXRfNGIgPSBhc3Bl
ZWRfc21jX2NoaXBfc2V0XzRiLAorCS5vcHRpbWl6ZV9yZWFkID0gYXNwZWVkX3NtY19vcHRpbWl6
ZV9yZWFkLAorCS5jYWxpYnJhdGUgPSBhc3BlZWRfc21jX2NhbGlicmF0ZV9yZWFkc19hc3QyNjAw
LAogCS5zZWdtZW50X3N0YXJ0ID0gYXNwZWVkX3NtY19zZWdtZW50X3N0YXJ0X2FzdDI2MDAsCiAJ
LnNlZ21lbnRfZW5kID0gYXNwZWVkX3NtY19zZWdtZW50X2VuZF9hc3QyNjAwLAogCS5zZWdtZW50
X3JlZyA9IGFzcGVlZF9zbWNfc2VnbWVudF9yZWdfYXN0MjYwMCwKQEAgLTExMDcsNiArMTExOCw2
NyBAQCBzdGF0aWMgaW50IGFzcGVlZF9zbWNfb3B0aW1pemVfcmVhZChzdHJ1Y3QgYXNwZWVkX3Nt
Y19jaGlwICpjaGlwLAogCXJldHVybiAwOwogfQogCisjZGVmaW5lIFRJTUlOR19ERUxBWV9ESSAg
ICAgICAgIEJJVCgzKQorI2RlZmluZSBUSU1JTkdfREVMQVlfSENZQ0xFX01BWCAgICAgNQorI2Rl
ZmluZSBUSU1JTkdfUkVHX0FTVDI2MDAoY2hpcCkJCQkJCVwKKwkoKGNoaXApLT5jb250cm9sbGVy
LT5yZWdzICsgKGNoaXApLT5jb250cm9sbGVyLT5pbmZvLT50aW1pbmcgKwlcCisJIChjaGlwKS0+
Y3MgKiA0KQorCitzdGF0aWMgaW50IGFzcGVlZF9zbWNfY2FsaWJyYXRlX3JlYWRzX2FzdDI2MDAo
c3RydWN0IGFzcGVlZF9zbWNfY2hpcCAqY2hpcCwKKwkJCQkJICAgICAgdTMyIGhkaXYsIGNvbnN0
IHU4ICpnb2xkZW5fYnVmLAorCQkJCQkgICAgICB1OCAqdGVzdF9idWYpCit7CisJaW50IGhjeWNs
ZTsKKwl1MzIgc2hpZnQgPSAoaGRpdiAtIDIpIDw8IDM7CisJdTMyIG1hc2sgPSB+KDB4ZnUgPDwg
c2hpZnQpOworCXUzMiBmcmVhZF90aW1pbmdfdmFsID0gMDsKKworCWZvciAoaGN5Y2xlID0gMDsg
aGN5Y2xlIDw9IFRJTUlOR19ERUxBWV9IQ1lDTEVfTUFYOyBoY3ljbGUrKykgeworCQlpbnQgZGVs
YXlfbnM7CisJCWJvb2wgcGFzcyA9IGZhbHNlOworCisJCWZyZWFkX3RpbWluZ192YWwgJj0gbWFz
azsKKwkJZnJlYWRfdGltaW5nX3ZhbCB8PSBoY3ljbGUgPDwgc2hpZnQ7CisKKwkJLyogbm8gREkg
aW5wdXQgZGVsYXkgZmlyc3QgICovCisJCXdyaXRlbChmcmVhZF90aW1pbmdfdmFsLCBUSU1JTkdf
UkVHX0FTVDI2MDAoY2hpcCkpOworCQlwYXNzID0gYXNwZWVkX3NtY19jaGVja19yZWFkcyhjaGlw
LCBnb2xkZW5fYnVmLCB0ZXN0X2J1Zik7CisJCWRldl9kYmcoY2hpcC0+bm9yLmRldiwKKwkJCSIg
ICogWyUwOHhdICVkIEhDTEsgZGVsYXksIERJIGRlbGF5IG5vbmUgOiAlcyIsCisJCQlmcmVhZF90
aW1pbmdfdmFsLCBoY3ljbGUsIHBhc3MgPyAiUEFTUyIgOiAiRkFJTCIpOworCQlpZiAocGFzcykK
KwkJCXJldHVybiAwOworCisJCS8qIEFkZCBESSBpbnB1dCBkZWxheXMgICovCisJCWZyZWFkX3Rp
bWluZ192YWwgJj0gbWFzazsKKwkJZnJlYWRfdGltaW5nX3ZhbCB8PSAoVElNSU5HX0RFTEFZX0RJ
IHwgaGN5Y2xlKSA8PCBzaGlmdDsKKworCQlmb3IgKGRlbGF5X25zID0gMDsgZGVsYXlfbnMgPCAw
eDEwOyBkZWxheV9ucysrKSB7CisJCQlmcmVhZF90aW1pbmdfdmFsICY9IH4oMHhmIDw8ICg0ICsg
c2hpZnQpKTsKKwkJCWZyZWFkX3RpbWluZ192YWwgfD0gZGVsYXlfbnMgPDwgKDQgKyBzaGlmdCk7
CisKKwkJCXdyaXRlbChmcmVhZF90aW1pbmdfdmFsLCBUSU1JTkdfUkVHX0FTVDI2MDAoY2hpcCkp
OworCQkJcGFzcyA9IGFzcGVlZF9zbWNfY2hlY2tfcmVhZHMoY2hpcCwgZ29sZGVuX2J1ZiwKKwkJ
CQkJCSAgICAgIHRlc3RfYnVmKTsKKwkJCWRldl9kYmcoY2hpcC0+bm9yLmRldiwKKwkJCQkiICAq
IFslMDh4XSAlZCBIQ0xLIGRlbGF5LCBESSBkZWxheSAlZC4lZG5zIDogJXMiLAorCQkJCWZyZWFk
X3RpbWluZ192YWwsIGhjeWNsZSwgKGRlbGF5X25zICsgMSkgLyAyLAorCQkJCShkZWxheV9ucyAr
IDEpICYgMSA/IDUgOiA1LAorCQkJCXBhc3MgPyAiUEFTUyIgOiAiRkFJTCIpOworCQkJLyoKKwkJ
CSAqIFRPRE86IFRoaXMgaXMgb3B0aW1pc3RpYy4gV2Ugc2hvdWxkIGxvb2sKKwkJCSAqIGZvciBh
IHdvcmtpbmcgaW50ZXJ2YWwgYW5kIHNhdmUgdGhlIG1pZGRsZQorCQkJICogdmFsdWUgaW4gdGhl
IHJlYWQgdGltaW5nIHJlZ2lzdGVyLgorCQkJICovCisJCQlpZiAocGFzcykKKwkJCQlyZXR1cm4g
MDsKKwkJfQorCX0KKworCS8qIE5vIGdvb2Qgc2V0dGluZyBmb3IgdGhpcyBmcmVxdWVuY3kgKi8K
KwlyZXR1cm4gLTE7Cit9CisKIHN0YXRpYyBpbnQgYXNwZWVkX3NtY19jaGlwX3NldHVwX2Zpbmlz
aChzdHJ1Y3QgYXNwZWVkX3NtY19jaGlwICpjaGlwKQogewogCXN0cnVjdCBhc3BlZWRfc21jX2Nv
bnRyb2xsZXIgKmNvbnRyb2xsZXIgPSBjaGlwLT5jb250cm9sbGVyOwotLSAKMi4yMS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
