Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73617D4212
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtULD8LurG+y6Ef2PqYcMxVVO+iDd24+S+nhUkSK70M=; b=KkVo1Q4P6F6Ba0
	D29wQl7c/nTb98SpdLMjq4YLtmXXm38FaNZ4jM3jYvjdBmDJIkwzM5Py3sAk/qiLcfki8geXceGyC
	42ct9z9W44nvssEICM+cdCLDGoaxZXaFijW8uLDczPvihw6Y+ObKLkRn4/Y709NZZFlWgZgnTTP0T
	B62TBIEKN4Bw+0vYa1oofQig0QK8GlqZAU2ViY6Cp4SsSr+yoqrIPM7X/GWGLJwTH4yTWWsf/nY7W
	2mDkdOxkd+Lz/eRKyPcEIaH3rbv63A/V1idiYfzHSAaT0afz8gCe4wLT/XJX08RAYrATmjO4QGl3P
	T69cn0FIBO8aArMcPaEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvWn-0001IT-Jv; Fri, 11 Oct 2019 14:04:21 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvWR-000172-Pz
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:04:01 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9BE3DOn040285
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 10:03:59 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vjt08kmhn-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 10:03:58 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <clg@kaod.org>;
 Fri, 11 Oct 2019 15:03:52 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 11 Oct 2019 15:03:48 +0100
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x9BE3l7c47710380
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 14:03:47 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5DB794204B;
 Fri, 11 Oct 2019 14:03:47 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3B22642042;
 Fri, 11 Oct 2019 14:03:47 +0000 (GMT)
Received: from smtp.tls.ibm.com (unknown [9.101.4.1])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 11 Oct 2019 14:03:47 +0000 (GMT)
Received: from yukon.kaod.org (sig-9-145-63-191.uk.ibm.com [9.145.63.191])
 by smtp.tls.ibm.com (Postfix) with ESMTP id 08DF52201CE;
 Fri, 11 Oct 2019 16:03:45 +0200 (CEST)
Subject: Re: [PATCH 04/16] mtd: spi-nor: aspeed: Add read training
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-5-clg@kaod.org>
 <20191011142805.6cc3905c@dhcp-172-31-174-146.wireless.concordia.ca>
 <a933999d-cb3d-ef3c-8a0d-a1f022817543@ti.com>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Date: Fri, 11 Oct 2019 16:03:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <a933999d-cb3d-ef3c-8a0d-a1f022817543@ti.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19101114-0008-0000-0000-00000321325F
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19101114-0009-0000-0000-00004A403F54
Message-Id: <b52ea3a3-11c3-212b-7e02-44c76427bb46@kaod.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=886 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910110132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_070359_878574_E30F7340 
X-CRM114-Status: GOOD (  34.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Joel Stanley <joel@jms.id.au>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMTAvMjAxOSAxNToxMywgVmlnbmVzaCBSYWdoYXZlbmRyYSB3cm90ZToKPiBIaSBDZWRy
aWMsCj4gCj4gT24gMTEvMTAvMTkgNTo1OCBQTSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOgo+PiBP
biBGcmksICA0IE9jdCAyMDE5IDEzOjU5OjA3ICswMjAwCj4+IEPDqWRyaWMgTGUgR29hdGVyIDxj
bGdAa2FvZC5vcmc+IHdyb3RlOgo+Pgo+Pj4gKyNkZWZpbmUgQVNQRUVEX1NNQ19IQ0xLX0RJVihp
KSBcCj4+PiArCShhc3BlZWRfc21jX2hjbGtfZGl2c1soaSkgLSAxXSA8PCBDT05UUk9MX0NMT0NL
X0ZSRVFfU0VMX1NISUZUKQo+Pj4gKwo+Pj4gK3N0YXRpYyB1MzIgYXNwZWVkX3NtY19kZWZhdWx0
X3JlYWQoc3RydWN0IGFzcGVlZF9zbWNfY2hpcCAqY2hpcCkKPj4+ICt7Cj4+PiArCS8qCj4+PiAr
CSAqIEtlZXAgdGhlIDRCeXRlIGFkZHJlc3MgbW9kZSBvbiB0aGUgQVNUMjQwMCBTUEkgY29udHJv
bGxlci4KPj4+ICsJICogT3RoZXIgY29udHJvbGxlcnMgc2V0IHRoZSA0Qnl0ZSBtb2RlIGluIHRo
ZSBDRSBDb250cm9sCj4+PiArCSAqIFJlZ2lzdGVyCj4+PiArCSAqLwo+Pj4gKwl1MzIgY3RsX21h
c2sgPSBjaGlwLT5jb250cm9sbGVyLT5pbmZvID09ICZzcGlfMjQwMF9pbmZvID8KPj4+ICsJCSBD
T05UUk9MX0lPX0FERFJFU1NfNEIgOiAwOwo+Pj4gKwo+Pj4gKwlyZXR1cm4gKGNoaXAtPmN0bF92
YWxbc21jX3JlYWRdICYgY3RsX21hc2spIHwKPj4+ICsJCSgweDAwIDw8IDI4KSB8IC8qIFNpbmds
ZSBiaXQgKi8KPj4+ICsJCSgweDAwIDw8IDI0KSB8IC8qIENFIyBtYXggKi8KPj4+ICsJCSgweDAz
IDw8IDE2KSB8IC8qIHVzZSBub3JtYWwgcmVhZHMgKi8KPj4+ICsJCSgweDAwIDw8ICA4KSB8IC8q
IEhDTEsvMTYgKi8KPj4+ICsJCSgweDAwIDw8ICA2KSB8IC8qIG5vIGR1bW15IGN5Y2xlICovCj4+
PiArCQkoMHgwMCk7ICAgICAgICAvKiBub3JtYWwgbW9kZSAqLwo+Pgo+PiBJSVVDLCB5b3UncmUg
dXNpbmcgYSBTUElOT1JfT1BfUkVBRCBvcGVyYXRpb24gdG8gcmVhZCB0aGUgZ29sZGVuCj4+IGJ1
ZmZlciwgYW5kIGlmIEknbSByaWdodCwgeW91IHN0YXJ0IHJlYWRpbmcgYXQgb2Zmc2V0IDAgb2Yg
dGhlIGRpcm1hcAo+PiB3aW5kb3cgKG9mZnNldCAwIGluIHRoZSBmbGFzaCksIHNvIGJhc2ljYWxs
eSB0aGUgZmlyc3QgYmxvY2sgaW4gdGhlIE5PUi4KPj4gV2hhdCBoYXBwZW5zIGlmIHRoaXMgYmxv
Y2sgaXMgZXJhc2VkPyBJbiB0aGF0IGNhc2UgeW91ciBnb2xkZW4gYnVmIHdpbGwKPj4gY29udGFp
biBvbmx5IDB4ZmYgdmFsdWVzLCBhbmQgdGhlIHJlYWQgY2FsaWJyYXRpb24gaXMgbGlrZWx5IHRv
IGJlCj4+IHVzZWxlc3MgKGhvdyBjYW4geW91IGRldGVybWluZSBpZiB0aW1pbmdzIGFyZSBnb29k
IHdoZW4gSU8gcGlucyBhbHdheXMKPj4gc3RheSBoaWdoKS4gRG9uJ3Qgd2UgaGF2ZSBhIGNvbW1h
bmQgdGhhdCByZXR1cm4gbm9uLWZmL25vbi0wIGRhdGEgd2hpbGUKPj4gc3RpbGwgYmVpbmcgcHJl
ZGljdGFibGUgYW5kIGltbXV0YWJsZT8gRG8geW91IGV4cGVjdCB1c2VycyB0byBhbHdheXMKPj4g
Zmxhc2ggYSBwYXR0ZXJuIHRoYXQgaGVscHMgY2FsaWJyYXRpbmcgdGhvc2UgZGVsYXlzPwo+Pgo+
IAo+IFllcywgdGhpcyBpcyBwcmVjaXNlbHkgbXkgY29uY2VybiBhcyB3ZWxsLiBJIGhhdmUgYmVl
biBkZXZlbG9waW5nCj4gdHJhaW5pbmcgc2VxdWVuY2UgZm9yIGNhZGVuY2UtcXVhZHNwaSBjb250
cm9sbGVyIChyZXF1aXJlbWVudHMgYXJlCj4gc2ltaWxhciB0byB3aGF0IHlvdSBoYXZlIGhlcmUp
IGFuZCBmb3VuZCB0aGF0IGl0cyBiZXR0ZXIgdG8gdXNlIHJlYWQKPiBvbmx5IGRhdGEgc3VjaCBh
cyBTRkRQIHRhYmxlIGRhdGEgdG8gY2FsaWJyYXRlLiBDYWRlbmNlLXF1YWRzcGkgcmVxdWlyZXMK
PiB0cmFpbmluZyBvbmx5IGluIGhpZ2hlciBwZXJmb3JtYW5jZSBtb2RlcyBsaWtlIFF1YWQvT2N0
YWwgRFRSIG1vZGUgYW5kCj4gbmVlZHMgMTYgYnl0ZXMgb2Yga25vd24gZGF0YSBmb3IgY2FsaWJy
YXRpb24uIEhlbmNlIFNGRFAgd29ya3Mgd2VsbCBmb3IKPiBteSBjYXNlLgoKT0suIEdvb2QgdG8g
a25vdy4KCj4gQnV0IHRoZSBwcm9ibGVtIGhlcmUgaXMgdGhhdCwgYXNwZWVkIGNvbnRyb2xsZXIg
bmVlZHMgMTZLIG9mIGtub3duIGRhdGEuCgpJdCdzIGEgY2hvaWNlIHdlIG1hZGUgb24gdGhlIGZp
cnN0IFA4IHN5c3RlbXMgd2UgaGFkLgoKPiBTRkRQIHRhYmxlIGlzIG5vdCB0aGF0IGJpZyBhbmQg
cmVhZCBiZXlvbmQgYWRkcmVzcyBzcGFjZSBpcyBub3QgcmVxdWlyZWQKPiB0byB3cmFwIGFyb3Vu
ZC4KPiBXb25kZXJpbmcgaWYgeW91IHJlYWxseSBuZWVkIHRvIHJlYWQgMTZLIGFtb3VudCBvZiBk
YXRhIGZvciBjYWxpYnJhdGlvbj8KCk1heSBiZSBub3QuIEkgYWdyZWUgdGhpcyBpcyB0YWtpbmcg
YSBiaXQgb2YgdGltZSBhcyB3ZSByZWFkIDEwIHRpbWVzCmFuZCBjb21wYXJlczogM3Mgb24gYm9v
dCB0aW1lIG9uIGFuIGFzdDI0MDAgSSB0aGluay4gSm9lbCBjb3VsZCB0ZWxsCmJldHRlci4gV2Ug
Y291bGQgcmVkdWNlIHRoZSBhbW91bnQgb2YgZGF0YSByZWFkIGFuZCB0aGUgbnVtYmVyIG9mIAps
b29wcyBzdXJlbHkuICAKCkFzIGZvciB0aGUgdmFsaWRpdHkgb2YgdGhlIGRhdGEsIHdlIGNoZWNr
IHdpdGggdGhlIGdvbGRlbiBidWZmZXIgd2l0aAphc3BlZWRfc21jX2NoZWNrX2NhbGliX2RhdGEo
KS4KCklmIGl0J3MgdG9vIHVuaWZvcm0sIGxpa2Ugb24gYSBmbGFzaCBuZXZlciB3cml0dGVuIHRv
bywgd2Ugd2lsbCBuZWVkCmEgZmlyc3Qgd3JpdGUgYW5kIGEgcmVib290IHRvIGhhdmUgZmFzdGVy
IHJlYWQgc3BlZWQuCgpUaGFua3MsCgpDLiAKCj4gCj4gUmVnYXJkcwo+IFZpZ25lc2gKPiAKPj4+
ICt9Cj4+PiArCj4+PiArc3RhdGljIGludCBhc3BlZWRfc21jX29wdGltaXplX3JlYWQoc3RydWN0
IGFzcGVlZF9zbWNfY2hpcCAqY2hpcCwKPj4+ICsJCQkJICAgIHUzMiBtYXhfZnJlcSkKPj4+ICt7
Cj4+PiArCXU4ICpnb2xkZW5fYnVmLCAqdGVzdF9idWY7Cj4+PiArCWludCBpLCByYywgYmVzdF9k
aXYgPSAtMTsKPj4+ICsJdTMyIHNhdmVfcmVhZF92YWwgPSBjaGlwLT5jdGxfdmFsW3NtY19yZWFk
XTsKPj4+ICsJdTMyIGFoYl9mcmVxID0gY2hpcC0+Y29udHJvbGxlci0+Y2xrX2ZyZXF1ZW5jeTsK
Pj4+ICsKPj4+ICsJZGV2X2RiZyhjaGlwLT5ub3IuZGV2LCAiQUhCIGZyZXF1ZW5jeTogJWQgTUh6
IiwgYWhiX2ZyZXEgLyAxMDAwMDAwKTsKPj4+ICsKPj4+ICsJdGVzdF9idWYgPSBrbWFsbG9jKENB
TElCUkFURV9CVUZfU0laRSAqIDIsIEdGUF9LRVJORUwpOwo+Pj4gKwlnb2xkZW5fYnVmID0gdGVz
dF9idWYgKyBDQUxJQlJBVEVfQlVGX1NJWkU7Cj4+PiArCj4+PiArCS8qIFdlIHN0YXJ0IHdpdGgg
dGhlIGR1bWJlc3Qgc2V0dGluZyAoa2VlcCA0Qnl0ZSBiaXQpIGFuZCByZWFkCj4+PiArCSAqIHNv
bWUgZGF0YQo+Pj4gKwkgKi8KPj4+ICsJY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0gPSBhc3BlZWRf
c21jX2RlZmF1bHRfcmVhZChjaGlwKTsKPj4+ICsKPj4+ICsJd3JpdGVsKGNoaXAtPmN0bF92YWxb
c21jX3JlYWRdLCBjaGlwLT5jdGwpOwo+Pj4gKwo+Pj4gKwltZW1jcHlfZnJvbWlvKGdvbGRlbl9i
dWYsIGNoaXAtPmFoYl9iYXNlLCBDQUxJQlJBVEVfQlVGX1NJWkUpOwo+Pj4gKwo+Pj4gKwkvKiBF
c3RhYmxpc2ggb3VyIHJlYWQgbW9kZSB3aXRoIGZyZXEgZmllbGQgc2V0IHRvIDAgKEhDTEsvMTYp
ICovCj4+PiArCWNoaXAtPmN0bF92YWxbc21jX3JlYWRdID0gc2F2ZV9yZWFkX3ZhbCAmIDB4ZmZm
ZmYwZmY7Cj4+PiArCj4+PiArCS8qIENoZWNrIGlmIGNhbGlicmF0aW9uIGRhdGEgaXMgc3VpdGFi
bGUgKi8KPj4+ICsJaWYgKCFhc3BlZWRfc21jX2NoZWNrX2NhbGliX2RhdGEoZ29sZGVuX2J1Ziwg
Q0FMSUJSQVRFX0JVRl9TSVpFKSkgewo+Pj4gKwkJZGV2X2luZm8oY2hpcC0+bm9yLmRldiwKPj4+
ICsJCQkgIkNhbGlicmF0aW9uIGFyZWEgdG9vIHVuaWZvcm0sIHVzaW5nIGxvdyBzcGVlZCIpOwo+
Pj4gKwkJd3JpdGVsKGNoaXAtPmN0bF92YWxbc21jX3JlYWRdLCBjaGlwLT5jdGwpOwo+Pj4gKwkJ
a2ZyZWUodGVzdF9idWYpOwo+Pj4gKwkJcmV0dXJuIDA7Cj4+PiArCX0KPj4+ICsKPj4+ICsJLyog
Tm93IHdlIGl0ZXJhdGUgdGhlIEhDTEsgZGl2aWRlcnMgdW50aWwgd2UgZmluZCBvdXIgYnJlYWtp
bmcgcG9pbnQgKi8KPj4+ICsJZm9yIChpID0gQVJSQVlfU0laRShhc3BlZWRfc21jX2hjbGtfZGl2
cyk7IGkgPiAwOyBpLS0pIHsKPj4+ICsJCXUzMiB0diwgZnJlcTsKPj4+ICsKPj4+ICsJCS8qIENv
bXBhcmUgdGltaW5nIHRvIG1heCAqLwo+Pj4gKwkJZnJlcSA9IGFoYl9mcmVxIC8gaTsKPj4+ICsJ
CWlmIChmcmVxID4gbWF4X2ZyZXEpCj4+PiArCQkJY29udGludWU7Cj4+PiArCj4+PiArCQkvKiBT
ZXQgdGhlIHRpbWluZyAqLwo+Pj4gKwkJdHYgPSBjaGlwLT5jdGxfdmFsW3NtY19yZWFkXSB8IEFT
UEVFRF9TTUNfSENMS19ESVYoaSk7Cj4+PiArCQl3cml0ZWwodHYsIGNoaXAtPmN0bCk7Cj4+PiAr
CQlkZXZfZGJnKGNoaXAtPm5vci5kZXYsICJUcnlpbmcgSENMSy8lZC4uLiIsIGkpOwo+Pj4gKwkJ
cmMgPSBhc3BlZWRfc21jX2NhbGlicmF0ZV9yZWFkcyhjaGlwLCBpLCBnb2xkZW5fYnVmLCB0ZXN0
X2J1Zik7Cj4+PiArCQlpZiAocmMgPT0gMCkKPj4+ICsJCQliZXN0X2RpdiA9IGk7Cj4+PiArCX0K
Pj4+ICsJa2ZyZWUodGVzdF9idWYpOwo+Pj4gKwo+Pj4gKwkvKiBOb3RoaW5nIGZvdW5kID8gKi8K
Pj4+ICsJaWYgKGJlc3RfZGl2IDwgMCkgewo+Pj4gKwkJZGV2X3dhcm4oY2hpcC0+bm9yLmRldiwg
Ik5vIGdvb2QgZnJlcXVlbmN5LCB1c2luZyBkdW1iIHNsb3ciKTsKPj4+ICsJfSBlbHNlIHsKPj4+
ICsJCWRldl9kYmcoY2hpcC0+bm9yLmRldiwgIkZvdW5kIGdvb2QgcmVhZCB0aW1pbmdzIGF0IEhD
TEsvJWQiLAo+Pj4gKwkJCWJlc3RfZGl2KTsKPj4+ICsJCWNoaXAtPmN0bF92YWxbc21jX3JlYWRd
IHw9IEFTUEVFRF9TTUNfSENMS19ESVYoYmVzdF9kaXYpOwo+Pj4gKwl9Cj4+PiArCj4+PiArCXdy
aXRlbChjaGlwLT5jdGxfdmFsW3NtY19yZWFkXSwgY2hpcC0+Y3RsKTsKPj4+ICsJcmV0dXJuIDA7
Cj4+PiArfQo+Pgo+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
