Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA86CC06C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ISft7NYJnGCbDzn+GvXDjM4iUATg/esJiX7fKJ+d7g=; b=Mg99X0oar43JRM
	Eom2OTUDp7nTUlGL7GG/2hpC0KQtlNA6cdBX1GMDCjJ0gwunm+wTXnavERW+5LPVXn6FQYudsa9P8
	6tgKn2El2+XwMVyYmFNfiUvoKI93657FIU1D6qPLqFqkuKkAWJZhcsPqCqCipKs+BcZFtaTaHYMRw
	rcxsnqYEnt443qPhfYQONDu9dI7Af+ZpEEOtBQjlpfCxr4BeVkW8Ug8DTdu8vPChMn6xZpwYpl6hR
	eH/NoUIkiwfrYNB5p6ZoB7KVelPenvHARs1TdXkNXYRXxx2mvMKhxpAiMD70djdQM1yhAzNxrtnIp
	Rg01ar+CRgGD4vAoHZRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQN4-0005Ek-8z; Fri, 04 Oct 2019 16:23:58 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQMw-0005E9-8Y
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:23:51 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x94GMs0w067890
 for <linux-arm-kernel@lists.infradead.org>; Fri, 4 Oct 2019 12:23:48 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ve8g2tmh6-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 04 Oct 2019 12:23:48 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <clg@kaod.org>;
 Fri, 4 Oct 2019 17:23:45 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 4 Oct 2019 17:23:41 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x94GNdIU19398814
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 4 Oct 2019 16:23:40 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 94EC3A4053;
 Fri,  4 Oct 2019 16:23:39 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7FBBAA4051;
 Fri,  4 Oct 2019 16:23:39 +0000 (GMT)
Received: from smtp.tls.ibm.com (unknown [9.101.4.1])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri,  4 Oct 2019 16:23:39 +0000 (GMT)
Received: from yukon.kaod.org (sig-9-145-169-184.de.ibm.com [9.145.169.184])
 by smtp.tls.ibm.com (Postfix) with ESMTP id 5CE092201B7;
 Fri,  4 Oct 2019 18:23:38 +0200 (CEST)
Subject: Re: [PATCH 06/16] mtd: spi-nor: fix options for mx66l51235f
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-7-clg@kaod.org>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Date: Fri, 4 Oct 2019 18:23:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191004115919.20788-7-clg@kaod.org>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19100416-0016-0000-0000-000002B41351
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19100416-0017-0000-0000-0000331523F4
Message-Id: <f3be7794-f157-5872-b540-6474c516beb4@kaod.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-04_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=950 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910040145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_092350_302103_5FCF8093 
X-CRM114-Status: GOOD (  29.44  )
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
 Richard Weinberger <richard@nod.at>, Alexander Amelkin <a.amelkin@yadro.com>,
 Alexander Soldatov <a.soldatov@yadro.com>, Marek Vasut <marek.vasut@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Lei YU <mine260309@gmail.com>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMTAvMjAxOSAxMzo1OSwgQ8OpZHJpYyBMZSBHb2F0ZXIgd3JvdGU6Cj4gRnJvbTogQWxl
eGFuZGVyIFNvbGRhdG92IDxhLnNvbGRhdG92QHlhZHJvLmNvbT4KPiAKPiBDdXJyZW50bHkgaW4g
ZHJpdmVyIHNwaS1ub3IgdGhlcmUgaXMgYSBsaW5lIGZvciBteDY2bDUxMjM1bC4KPiBBY2NvcmRp
bmcgdG8gTWFjcm9uaXggc2l0ZSB0aGVyZSBpcyBubyBzdWNoIHBhcnQgbnVtYmVyLgo+IFRoZSBj
aGlwIGRldGVjdGVkIGFzIHN1Y2ggaXMgYWN0dWFsbHkgbXg2Nmw1MTIzNWYuCj4gCj4gQWNjb3Jk
aW5nIHRvIHRoZSBkYXRhc2hlZXQgZm9yIG14NjZsNTEyMzVmLAo+ICJUaGUgZGV2aWNlIGRlZmF1
bHQgaXMgaW4gMjQtYml0IGFkZHJlc3MgbW9kZSIgKHNlY3Rpb24gOS0xMCkuCj4gSGVuY2Ugd2Ug
cmVtb3ZlZCBTUElfTk9SXzRCX09QQ09ERVMgb3B0aW9uIHdpdGggdGhpcyBjb21taXQuCgpUaGlz
IHBhdGNoIGhhcyBiZWVuIGRpc2N1c3NlZCBhbHJlYWR5IG9uIHRoZSBsaXN0IGFuZCBpdCB3YXMg
ZGVjaWRlZCAKdGhhdCBpdCBzaG91bGQgbm90IGJlIG1lcmdlZC4gUGxlYXNlIGRyb3AgaXQuIAoK
U29ycnkgZm9yIHRoZSBub2lzZSwKCkMuICAKCj4gT3BlbkJNQy1TdGFnaW5nLUNvdW50OiA3Cj4g
Rml4ZXM6IGQzNDJiNmE5NzNhZiAoIm10ZDogc3BpLW5vcjogZW5hYmxlIDRCIG9wY29kZXMgZm9y
IG14NjZsNTEyMzVsIikKPiBDYzogQWxleGFuZGVyIEFtZWxraW4gPGEuYW1lbGtpbkB5YWRyby5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNvbGRhdG92IDxhLnNvbGRhdG92QHlhZHJv
LmNvbT4KPiBSZXZpZXdlZC1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9yZz4KPiBS
ZXZpZXdlZC1ieTogTGVpIFlVIDxtaW5lMjYwMzA5QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBKb2VsIFN0YW5sZXkgPGpvZWxAam1zLmlkLmF1Pgo+IFNpZ25lZC1vZmYtYnk6IEPDqWRyaWMg
TGUgR29hdGVyIDxjbGdAa2FvZC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbXRkL3NwaS1ub3Ivc3Bp
LW5vci5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMgYi9k
cml2ZXJzL210ZC9zcGktbm9yL3NwaS1ub3IuYwo+IGluZGV4IDFkODYyMWQ0MzE2MC4uYjExNjU2
NzNjZDkzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jCj4gKysr
IGIvZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMKPiBAQCAtMjI5NCw3ICsyMjk0LDcgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBmbGFzaF9pbmZvIHNwaV9ub3JfaWRzW10gPSB7Cj4gIAl7ICJt
eDI1djgwMzVmIiwgIElORk8oMHhjMjIzMTQsIDAsIDY0ICogMTAyNCwgIDE2LAo+ICAJCQkgU0VD
VF80SyB8IFNQSV9OT1JfRFVBTF9SRUFEIHwgU1BJX05PUl9RVUFEX1JFQUQpIH0sCj4gIAl7ICJt
eDI1bDI1NjU1ZSIsIElORk8oMHhjMjI2MTksIDAsIDY0ICogMTAyNCwgNTEyLCAwKSB9LAo+IC0J
eyAibXg2Nmw1MTIzNWwiLCBJTkZPKDB4YzIyMDFhLCAwLCA2NCAqIDEwMjQsIDEwMjQsIFNQSV9O
T1JfRFVBTF9SRUFEIHwgU1BJX05PUl9RVUFEX1JFQUQgfCBTUElfTk9SXzRCX09QQ09ERVMpIH0s
Cj4gKwl7ICJteDY2bDUxMjM1ZiIsIElORk8oMHhjMjIwMWEsIDAsIDY0ICogMTAyNCwgMTAyNCwg
U1BJX05PUl9EVUFMX1JFQUQgfCBTUElfTk9SX1FVQURfUkVBRCkgfSwKPiAgCXsgIm14NjZ1NTEy
MzVmIiwgSU5GTygweGMyMjUzYSwgMCwgNjQgKiAxMDI0LCAxMDI0LCBTRUNUXzRLIHwgU1BJX05P
Ul9EVUFMX1JFQUQgfCBTUElfTk9SX1FVQURfUkVBRCB8IFNQSV9OT1JfNEJfT1BDT0RFUykgfSwK
PiAgCXsgIm14NjZsMWc0NWciLCAgSU5GTygweGMyMjAxYiwgMCwgNjQgKiAxMDI0LCAyMDQ4LCBT
RUNUXzRLIHwgU1BJX05PUl9EVUFMX1JFQUQgfCBTUElfTk9SX1FVQURfUkVBRCkgfSwKPiAgCXsg
Im14NjZsMWc1NWciLCAgSU5GTygweGMyMjYxYiwgMCwgNjQgKiAxMDI0LCAyMDQ4LCBTUElfTk9S
X1FVQURfUkVBRCkgfSwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
