Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82109D3C52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 11:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7S1R+B4CWxJfoGXKcC6acgliPMpSkfnY6nLtJbHqA8=; b=CO5tNQYGT2r5pD
	8jWKscUQ4zaCOizxYEuVtaeRj6tJ6qJXsDQvAMY1TlJ96aFRZO+S47imNojRymea264Zkl3jl+teC
	3PexeJptbvj+y0P8iiHJZR28aVXzm32Pf77B176yD7+Q3GaUHeqiwg2O7Wog5LpIYP8xyUiKUlCn+
	nVdEetVDI9qfw50M99DUYQ/yC/OT9oWPhAiJO3186x2hHQCy61yG1p3H8/f4D5ybquAK+wsX1Okg5
	HaevZtkBzlI1k5jk8qCjvQ4wvR6+jtjvM/lWmZ9vnVsxmCo4qCvLD/jMG8DlVDa/rmLkWrazIm/Pv
	gZjrPiNWcQLpvdESKurw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrFj-0008Nk-64; Fri, 11 Oct 2019 09:30:27 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrFL-0006xO-It
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 09:30:05 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9B9Re0U117514
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 05:29:59 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2vjm1af6np-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 05:29:58 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <clg@kaod.org>;
 Fri, 11 Oct 2019 10:29:56 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 11 Oct 2019 10:29:52 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x9B9Tp7N40436212
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 09:29:51 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4BF3F11C04A;
 Fri, 11 Oct 2019 09:29:51 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 29DC511C058;
 Fri, 11 Oct 2019 09:29:51 +0000 (GMT)
Received: from smtp.tls.ibm.com (unknown [9.101.4.1])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 11 Oct 2019 09:29:51 +0000 (GMT)
Received: from yukon.kaod.org (sig-9-145-63-191.uk.ibm.com [9.145.63.191])
 by smtp.tls.ibm.com (Postfix) with ESMTP id 187F02201CE;
 Fri, 11 Oct 2019 11:29:50 +0200 (CEST)
Subject: Re: [PATCH 00/16] mtd: spi-nor: aspeed: AST2600 support and extensions
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Joel Stanley <joel@jms.id.au>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191009225555.67622339@dhcp-172-31-174-146.wireless.concordia.ca>
 <CACPK8Xe__AYvrh40vqjwoM=XKJfp5MeqrMARpFUDGWCyJK6jXQ@mail.gmail.com>
 <20191011084503.5b7a7c2c@dhcp-172-31-174-146.wireless.concordia.ca>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Date: Fri, 11 Oct 2019 11:29:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191011084503.5b7a7c2c@dhcp-172-31-174-146.wireless.concordia.ca>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19101109-0008-0000-0000-000003211E27
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19101109-0009-0000-0000-00004A402A16
Message-Id: <3836fcc4-c8b0-ed04-0c52-7c642794ecb8@kaod.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910110089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023003_749730_EA7203E1 
X-CRM114-Status: GOOD (  38.46  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMTAvMjAxOSAwODo0NSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOgo+IE9uIFRodSwgMTAg
T2N0IDIwMTkgMjM6NDc6NDUgKzAwMDAKPiBKb2VsIFN0YW5sZXkgPGpvZWxAam1zLmlkLmF1PiB3
cm90ZToKPiAKPj4gT24gV2VkLCA5IE9jdCAyMDE5IGF0IDIwOjU2LCBCb3JpcyBCcmV6aWxsb24K
Pj4gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4+Cj4+PiBIaSBDZWRy
aWMsCj4+Pgo+Pj4gT24gRnJpLCAgNCBPY3QgMjAxOSAxMzo1OTowMyArMDIwMAo+Pj4gQ8OpZHJp
YyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9yZz4gd3JvdGU6Cj4+PiAgCj4+Pj4gSGVsbG8sCj4+Pj4K
Pj4+PiBUaGlzIHNlcmllcyBmaXJzdCBleHRlbmRzIHRoZSBzdXBwb3J0IGZvciB0aGUgQXNwZWVk
IEFTVDI1MDAgYW5kCj4+Pj4gQVNUMjQwMCBTTUMgZHJpdmVyLiBJdCBhZGRzIER1YWwgRGF0YSBz
dXBwb3J0IGFuZCByZWFkIHRyYWluaW5nIGdpdmluZwo+Pj4+IHRoZSBiZXN0IHJlYWQgc2V0dGlu
Z3MgZm9yIGEgZ2l2ZW4gY2hpcC4gU3VwcG9ydCBmb3IgdGhlIG5ldyBBU1QyNjAwCj4+Pj4gU29D
IGlzIGFkZGVkIGF0IHRoZSBlbmQuCj4+Pj4KPj4+PiBJIHVuZGVyc3RhbmQgdGhhdCBhIG5ldyBz
cGlfbWVtIGZyYW1ld29yayBleGlzdHMgYW5kIEkgZG8gaGF2ZSBhbgo+Pj4+IGV4cGVyaW1lbnRh
bCBkcml2ZXIgdXNpbmcgaXQuIEJ1dCB1bmZvcnR1bmF0ZWx5LCBpdCBpcyBkaWZmaWN1bHQgdG8K
Pj4+PiBpbnRlZ3JhdGUgdGhlIHJlYWQgdHJhaW5pbmcuIFRoZSBBc3BlZWQgY29uc3RyYWludHMg
YXJlIG5vdCBjb21wYXRpYmxlCj4+Pj4gYW5kIGkgaGF2ZW4ndCBoYWQgdGhlIHRpbWUgdG8gZXh0
ZW5kIHRoZSBjdXJyZW50IGZyYW1ld29yay4gIAo+Pj4KPj4+IEhtLCBJIGRvbid0IHRoaW5rIHRo
YXQncyBhIGdvb2QgcmVhc29uIHRvIHB1c2ggbmV3IGZlYXR1cmVzIHRvIHRoZQo+Pj4gZXhpc3Rp
bmcgZHJpdmVyLCBlc3BlY2lhbGx5IHNpbmNlIEkgYXNrZWQgb3RoZXJzIHRvIG1pZ3JhdGUgdGhl
aXIKPj4+IGRyaXZlcnMgdG8gc3BpLW1lbSBpbiB0aGUgcGFzdC4gSSBkbyB1bmRlcnN0YW5kIHlv
dXIgY29uY2VybnMsIGFuZCBJJ2xsCj4+PiBsZXQgdGhlIFNQSSBOT1IvTVREIG1haW50YWluZXJz
IG1ha2UgdGhlIGZpbmFsIGNhbGwsIGJ1dCBJIHRoaW5rIGl0J2QKPj4+IGJlIGJldHRlciBmb3Ig
dGhlIFNQSSBNRU0gZWNvc3lzdGVtIHRvIHRoaW5rIGFib3V0IHRoaXMgbGluay10cmFpbmluZwo+
Pj4gQVBJIChWaWduZXNoIG5lZWRzIGl0IGZvciB0aGUgQ2FkZW5jZSBkcml2ZXIgSUlSQykgcmF0
aGVyIHRoYW4gcHVzaGluZwo+Pj4gdGhpcyBraW5kIG9mIGZlYXR1cmUgdG8gc3BpLW5vciBjb250
cm9sbGVyIGRyaXZlcnMuICAKPj4KPj4gQXMgQ2VkcmljIG1lbnRpb25lZCwgdGhlIE9wZW5CTUMg
cHJvamVjdCBoYXMgYmVlbiBzaGlwcGluZyB0aGUgcmVhZAo+PiB0cmFpbmluZyBjb2RlIGZvciB0
aGUgYXN0MjQwMC9hc3QyNDAwIGZvciBzZXZlcmFsIHllYXJzIG5vdy4gSXQgd291bGQKPj4gYmUg
Z3JlYXQgdG8gc2VlIGl0IGluIG1haW5saW5lLgo+Pgo+PiBJIHRoaW5rIGl0J3MgcmVhc29uYWJs
ZSB0byBhc2sgZm9yIHRoZSBkcml2ZXIgdG8gYmUgbW92ZWQgdG8gdGhlCj4+IHNwaS1tZW0gc3Vi
c3lzdGVtIG9uY2UgaXQgaGFzIHRoZSByZXF1aXJlZCBBUElzLgo+IAo+IEV4Y2VwdCBpdCB3b24n
dCBoYXZlIHRoZSBuZWNlc3NhcnkgQVBJcyB1bmxlc3Mgc29tZW9uZSB3b3JrcyBvbiBpdCwgYW5k
Cj4gYWRkaW5nIHRoaXMgZmVhdHVyZSB0byBleGlzdGluZyBzcGktbm9yIGRyaXZlcnMgd29uJ3Qg
aGVscCBhY2hpZXZpbmcKPiB0aGlzIGdvYWwuCgoKV2hhdCB3b3VsZCB5b3Ugc3VnZ2VzdCA/IFNv
bWV0aGluZyBsaWtlIHRoZSBwYXRjaCBiZWxvdyB3aGljaCB3b3VsZApjYWxsIGEgJ3RyYWluJyBv
cGVyYXRpb24gYXQgdGhlIGVuZCBvZiBzcGlfYWRkX2RldmljZSgpLgoKQWxzbywgd2hlbiBkb2lu
ZyByZWFkIHRyYWluaW5nLCB3ZSBtaWdodCBuZWVkIHRvIGtub3cgc29tZSBsb3dsZXZlbCAKY2hh
cmFjdGVyaXN0aWNzIG9mIHRoZSBjaGlwIGJlaW5nIHRyYWluZWQuIFNob3VsZCB3ZSBvZmZlciBh
IHdheSAKdG8gZ3JhYiB0aGUgcHJvYmVkIG0yNXA4MCBkZXZpY2UgYW5kIGdpdmUgYWNjZXNzIHRv
IHRoZSB1bmRlcmx5aW5nIAonc3RydWN0IHNwaV9ub3InID8gCgogIHN0YXRpYyBzdHJ1Y3Qgc3Bp
X25vciAqc3BpX2dldF9wbm9yKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCiAgewoJc3RydWN0IHNw
aV9tZW0gKnNwaW1lbSA9IHNwaV9nZXRfZHJ2ZGF0YShzcGkpOwoJc3RydWN0IG0yNXAgKmZsYXNo
ID0gc3BpX21lbV9nZXRfZHJ2ZGF0YShzcGltZW0pOwoKCXJldHVybiBmbGFzaCA/ICZmbGFzaC0+
c3BpX25vciA6IE5VTEw7CiAgfQoKWWVhaCwgaXQncyBoaWRlb3VzLiBJIGp1c3Qgd2FudCB0byBy
YWlzZSB0aGUgaXNzdWUuCgpUaGFua3MsCgpDLiAKCgpGcm9tIGIzNDI5N2U2Yjk5MWZmMDUxYmMx
ZTE2MTAzZDE0YjJhMDVjODE4MjcgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCkZyb206ID0/VVRG
LTg/cT9DPUMzPUE5ZHJpYz0yMExlPTIwR29hdGVyPz0gPGNsZ0BrYW9kLm9yZz4KRGF0ZTogRnJp
LCAxMSBPY3QgMjAxOSAxMTowOTozMyArMDIwMApTdWJqZWN0OiBbUEFUQ0hdIHNwaTogY29yZTog
QWRkIGEgZGV2aWNlIGxpbmsgdHJhaW5pbmcgb3BlcmF0aW9uCk1JTUUtVmVyc2lvbjogMS4wCkNv
bnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250ZW50LVRyYW5zZmVyLUVu
Y29kaW5nOiA4Yml0CgpTaWduZWQtb2ZmLWJ5OiBDw6lkcmljIExlIEdvYXRlciA8Y2xnQGthb2Qu
b3JnPgotLS0KIGluY2x1ZGUvbGludXgvc3BpL3NwaS5oIHwgIDQgKysrKwogZHJpdmVycy9zcGkv
c3BpLmMgICAgICAgfCAyMyArKysrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2Vk
LCAyNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9zcGkvc3BpLmgg
Yi9pbmNsdWRlL2xpbnV4L3NwaS9zcGkuaAppbmRleCBhZjRmMjY1ZDBmNjcuLjk1MGIzOTMwNDgw
NyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9zcGkvc3BpLmgKKysrIGIvaW5jbHVkZS9saW51
eC9zcGkvc3BpLmgKQEAgLTQwOSw2ICs0MDksNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgc3BpX3Vu
cmVnaXN0ZXJfZHJpdmVyKHN0cnVjdCBzcGlfZHJpdmVyICpzZHJ2KQogICogQGZ3X3RyYW5zbGF0
ZV9jczogSWYgdGhlIGJvb3QgZmlybXdhcmUgdXNlcyBkaWZmZXJlbnQgbnVtYmVyaW5nIHNjaGVt
ZQogICoJd2hhdCBMaW51eCBleHBlY3RzLCB0aGlzIG9wdGlvbmFsIGhvb2sgY2FuIGJlIHVzZWQg
dG8gdHJhbnNsYXRlCiAgKgliZXR3ZWVuIHRoZSB0d28uCisgKiBAdHJhaW4gOiBwZXJmb3JtIGRl
dmljZSBsaW5rIHRyYWluaW5nCiAgKgogICogRWFjaCBTUEkgY29udHJvbGxlciBjYW4gY29tbXVu
aWNhdGUgd2l0aCBvbmUgb3IgbW9yZSBAc3BpX2RldmljZQogICogY2hpbGRyZW4uICBUaGVzZSBt
YWtlIGEgc21hbGwgYnVzLCBzaGFyaW5nIE1PU0ksIE1JU08gYW5kIFNDSyBzaWduYWxzCkBAIC02
MDQsNiArNjA1LDkgQEAgc3RydWN0IHNwaV9jb250cm9sbGVyIHsKIAl2b2lkCQkJKmR1bW15X3R4
OwogCiAJaW50ICgqZndfdHJhbnNsYXRlX2NzKShzdHJ1Y3Qgc3BpX2NvbnRyb2xsZXIgKmN0bHIs
IHVuc2lnbmVkIGNzKTsKKworCWludAkJCSgqdHJhaW4pKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkp
OworCiB9OwogCiBzdGF0aWMgaW5saW5lIHZvaWQgKnNwaV9jb250cm9sbGVyX2dldF9kZXZkYXRh
KHN0cnVjdCBzcGlfY29udHJvbGxlciAqY3RscikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3Nw
aS5jIGIvZHJpdmVycy9zcGkvc3BpLmMKaW5kZXggNzVhYzA0NmNhZTUyLi43NTlhNjZkNzQ4MjIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS5jCisrKyBiL2RyaXZlcnMvc3BpL3NwaS5jCkBA
IC01NDIsNiArNTQyLDIyIEBAIHN0YXRpYyBpbnQgc3BpX2Rldl9jaGVjayhzdHJ1Y3QgZGV2aWNl
ICpkZXYsIHZvaWQgKmRhdGEpCiAJcmV0dXJuIDA7CiB9CiAKKy8qKgorICogc3BpX3RyYWluIC0g
bGluayB0cmFpbmluZyBvZiBTUEkgZGV2aWNlCisgKiBAc3BpOiB0aGUgZGV2aWNlIHdob3NlIGJl
aW5nIHRyYWluZWQKKyAqCisgKiBSZXR1cm46IHplcm8gb24gc3VjY2VzcywgZWxzZSBhIG5lZ2F0
aXZlIGVycm9yIGNvZGUuCisgKi8KK3N0YXRpYyBpbnQgc3BpX3RyYWluKHN0cnVjdCBzcGlfZGV2
aWNlICpzcGkpCit7CisJaW50CQlzdGF0dXMgPSAwOworCisJaWYgKHNwaS0+Y29udHJvbGxlci0+
dHJhaW4pCisJCXN0YXR1cyA9IHNwaS0+Y29udHJvbGxlci0+dHJhaW4oc3BpKTsKKworCXJldHVy
biBzdGF0dXM7Cit9CisKIC8qKgogICogc3BpX2FkZF9kZXZpY2UgLSBBZGQgc3BpX2RldmljZSBh
bGxvY2F0ZWQgd2l0aCBzcGlfYWxsb2NfZGV2aWNlCiAgKiBAc3BpOiBzcGlfZGV2aWNlIHRvIHJl
Z2lzdGVyCkBAIC02MDYsNiArNjIyLDEzIEBAIGludCBzcGlfYWRkX2RldmljZShzdHJ1Y3Qgc3Bp
X2RldmljZSAqc3BpKQogCWVsc2UKIAkJZGV2X2RiZyhkZXYsICJyZWdpc3RlcmVkIGNoaWxkICVz
XG4iLCBkZXZfbmFtZSgmc3BpLT5kZXYpKTsKIAorCXN0YXR1cyA9IHNwaV90cmFpbihzcGkpOwor
CWlmIChzdGF0dXMgPCAwKSB7CisJCWRldl9lcnIoZGV2LCAiY2FuJ3QgdHJhaW4gJXMsIHN0YXR1
cyAlZFxuIiwKKwkJCQlkZXZfbmFtZSgmc3BpLT5kZXYpLCBzdGF0dXMpOworCQlnb3RvIGRvbmU7
CisJfQorCiBkb25lOgogCW11dGV4X3VubG9jaygmc3BpX2FkZF9sb2NrKTsKIAlyZXR1cm4gc3Rh
dHVzOwotLSAKMi4yMS4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
