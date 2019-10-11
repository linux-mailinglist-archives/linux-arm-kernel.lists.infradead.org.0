Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8867CD41E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cOqG7QpqsA/3WyDWcUKVRsLWL3rrVB1meWn2Z/rsAQ=; b=cxZ47kJ/MhkqLH
	oEmws+nwsWKcloaED9aiYVEZcDl0+ADI94wwf6tG8W/vTSjphzSWCgJrSQAgMDbgqXQ5pO+RQ7wco
	9zNZFhLnN+CX9evponQ6dQw79+yc+34usc97KCIt68+vfZGBLI/T/vugeDf1QfqB2XsVy/cf5JFsP
	8yzqeCy24fQwgdUWpVVYxUOtoPUV1e0N2tS+Jq85HluuOD9AZLZj/xOwmLPbBE3zcLa0xNbaOl8iM
	aCAdAwRDtg8si5BNFt+rwv3T9xqzXEUVQf7PeBP4WGq4tLwaBAIGRDU6lK3nwijsSHhoQphnSojwM
	4bAquzE2C7sEXOlCWshA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvOr-0006oX-6R; Fri, 11 Oct 2019 13:56:09 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvOR-0006bY-1G
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:55:44 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9BDqBb9134778
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 09:55:42 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2vjtpjh0vn-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 09:55:41 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <clg@kaod.org>;
 Fri, 11 Oct 2019 14:55:33 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 11 Oct 2019 14:55:28 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x9BDsvZn37355984
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 13:54:57 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 97073A405F;
 Fri, 11 Oct 2019 13:55:27 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 701BDA4054;
 Fri, 11 Oct 2019 13:55:27 +0000 (GMT)
Received: from smtp.tls.ibm.com (unknown [9.101.4.1])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 11 Oct 2019 13:55:27 +0000 (GMT)
Received: from yukon.kaod.org (sig-9-145-63-191.uk.ibm.com [9.145.63.191])
 by smtp.tls.ibm.com (Postfix) with ESMTP id E8BD22201CE;
 Fri, 11 Oct 2019 15:55:25 +0200 (CEST)
Subject: Re: [PATCH 04/16] mtd: spi-nor: aspeed: Add read training
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-5-clg@kaod.org>
 <20191011142805.6cc3905c@dhcp-172-31-174-146.wireless.concordia.ca>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Date: Fri, 11 Oct 2019 15:55:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191011142805.6cc3905c@dhcp-172-31-174-146.wireless.concordia.ca>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19101113-0012-0000-0000-0000035732C4
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19101113-0013-0000-0000-000021923FB5
Message-Id: <3244b1ce-587c-6f12-cc9c-7eee0354e76b@kaod.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=679 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910110130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_065543_213858_FBE8B399 
X-CRM114-Status: GOOD (  31.78  )
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
 linux-aspeed@lists.ozlabs.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 Andrew Jeffery <andrew@aj.id.au>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMTAvMjAxOSAxNDoyOCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOgo+IE9uIEZyaSwgIDQg
T2N0IDIwMTkgMTM6NTk6MDcgKzAyMDAKPiBDw6lkcmljIExlIEdvYXRlciA8Y2xnQGthb2Qub3Jn
PiB3cm90ZToKPiAKPj4gKyNkZWZpbmUgQVNQRUVEX1NNQ19IQ0xLX0RJVihpKSBcCj4+ICsJKGFz
cGVlZF9zbWNfaGNsa19kaXZzWyhpKSAtIDFdIDw8IENPTlRST0xfQ0xPQ0tfRlJFUV9TRUxfU0hJ
RlQpCj4+ICsKPj4gK3N0YXRpYyB1MzIgYXNwZWVkX3NtY19kZWZhdWx0X3JlYWQoc3RydWN0IGFz
cGVlZF9zbWNfY2hpcCAqY2hpcCkKPj4gK3sKPj4gKwkvKgo+PiArCSAqIEtlZXAgdGhlIDRCeXRl
IGFkZHJlc3MgbW9kZSBvbiB0aGUgQVNUMjQwMCBTUEkgY29udHJvbGxlci4KPj4gKwkgKiBPdGhl
ciBjb250cm9sbGVycyBzZXQgdGhlIDRCeXRlIG1vZGUgaW4gdGhlIENFIENvbnRyb2wKPj4gKwkg
KiBSZWdpc3Rlcgo+PiArCSAqLwo+PiArCXUzMiBjdGxfbWFzayA9IGNoaXAtPmNvbnRyb2xsZXIt
PmluZm8gPT0gJnNwaV8yNDAwX2luZm8gPwo+PiArCQkgQ09OVFJPTF9JT19BRERSRVNTXzRCIDog
MDsKPj4gKwo+PiArCXJldHVybiAoY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0gJiBjdGxfbWFzaykg
fAo+PiArCQkoMHgwMCA8PCAyOCkgfCAvKiBTaW5nbGUgYml0ICovCj4+ICsJCSgweDAwIDw8IDI0
KSB8IC8qIENFIyBtYXggKi8KPj4gKwkJKDB4MDMgPDwgMTYpIHwgLyogdXNlIG5vcm1hbCByZWFk
cyAqLwo+PiArCQkoMHgwMCA8PCAgOCkgfCAvKiBIQ0xLLzE2ICovCj4+ICsJCSgweDAwIDw8ICA2
KSB8IC8qIG5vIGR1bW15IGN5Y2xlICovCj4+ICsJCSgweDAwKTsgICAgICAgIC8qIG5vcm1hbCBt
b2RlICovCj4gCj4gSUlVQywgeW91J3JlIHVzaW5nIGEgU1BJTk9SX09QX1JFQUQgb3BlcmF0aW9u
IHRvIHJlYWQgdGhlIGdvbGRlbgo+IGJ1ZmZlciwgYW5kIGlmIEknbSByaWdodCwgeW91IHN0YXJ0
IHJlYWRpbmcgYXQgb2Zmc2V0IDAgb2YgdGhlIGRpcm1hcAo+IHdpbmRvdyAob2Zmc2V0IDAgaW4g
dGhlIGZsYXNoKSwgc28gYmFzaWNhbGx5IHRoZSBmaXJzdCBibG9jayBpbiB0aGUgTk9SLgoKWWVz
LgoKPiBXaGF0IGhhcHBlbnMgaWYgdGhpcyBibG9jayBpcyBlcmFzZWQ/IEluIHRoYXQgY2FzZSB5
b3VyIGdvbGRlbiBidWYgd2lsbAo+IGNvbnRhaW4gb25seSAweGZmIHZhbHVlcywgYW5kIHRoZSBy
ZWFkIGNhbGlicmF0aW9uIGlzIGxpa2VseSB0byBiZQo+IHVzZWxlc3MgCgp5ZXMuIHRoYXQgaXMg
d2h5IHdlIGhhdmUgdGhlIGFzcGVlZF9zbWNfY2hlY2tfY2FsaWJfZGF0YSgpIHJvdXRpbmUgdG8K
Y2hlY2sgdGhhdCB0aGUgZGF0YSByZWFkIG1ha2VzIHNvbWUgc2Vuc2UuIElmIHRoaXMgaXMgbm90
IHRoZSBjYXNlLCB0aGVuIDoKCgkgIkNhbGlicmF0aW9uIGFyZWEgdG9vIHVuaWZvcm0sIHVzaW5n
IGxvdyBzcGVlZCIKCj4gKGhvdyBjYW4geW91IGRldGVybWluZSBpZiB0aW1pbmdzIGFyZSBnb29k
IHdoZW4gSU8gcGlucyBhbHdheXMKPiBzdGF5IGhpZ2gpLiBEb24ndCB3ZSBoYXZlIGEgY29tbWFu
ZCB0aGF0IHJldHVybiBub24tZmYvbm9uLTAgZGF0YSB3aGlsZQo+IHN0aWxsIGJlaW5nIHByZWRp
Y3RhYmxlIGFuZCBpbW11dGFibGU/IAoKTm90IHRoYXQgSSBrbm93IG9mIG9uIHRoZXNlIGNvbnRy
b2xsZXJzLgoKPiBEbyB5b3UgZXhwZWN0IHVzZXJzIHRvIGFsd2F5cwo+IGZsYXNoIGEgcGF0dGVy
biB0aGF0IGhlbHBzIGNhbGlicmF0aW5nIHRob3NlIGRlbGF5cz8KClRoaXMgaXMgdGhlIGNhc2Ug
b24gdGhlIE9wZW5CTUMgc3lzdGVtcywgQUZBSUNULiAKCnUtYm9vdC5iaW4gc2hvdWxkIGJlIHRo
ZSBkYXRhIHJlYWQgb24gdGhlIEZNQyBjb250cm9sbGVyIGFuZCB0aGUgClNQSSBjb250cm9sbGVy
IGNvbnRhaW5zIHRoZSBob3N0IEZpcm13YXJlIHdoaWNoIGlzIGFzIHJhbmRvbS4gICAKCj4gCj4+
ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgYXNwZWVkX3NtY19vcHRpbWl6ZV9yZWFkKHN0cnVjdCBh
c3BlZWRfc21jX2NoaXAgKmNoaXAsCj4+ICsJCQkJICAgIHUzMiBtYXhfZnJlcSkKPj4gK3sKPj4g
Kwl1OCAqZ29sZGVuX2J1ZiwgKnRlc3RfYnVmOwo+PiArCWludCBpLCByYywgYmVzdF9kaXYgPSAt
MTsKPj4gKwl1MzIgc2F2ZV9yZWFkX3ZhbCA9IGNoaXAtPmN0bF92YWxbc21jX3JlYWRdOwo+PiAr
CXUzMiBhaGJfZnJlcSA9IGNoaXAtPmNvbnRyb2xsZXItPmNsa19mcmVxdWVuY3k7Cj4+ICsKPj4g
KwlkZXZfZGJnKGNoaXAtPm5vci5kZXYsICJBSEIgZnJlcXVlbmN5OiAlZCBNSHoiLCBhaGJfZnJl
cSAvIDEwMDAwMDApOwo+PiArCj4+ICsJdGVzdF9idWYgPSBrbWFsbG9jKENBTElCUkFURV9CVUZf
U0laRSAqIDIsIEdGUF9LRVJORUwpOwo+PiArCWdvbGRlbl9idWYgPSB0ZXN0X2J1ZiArIENBTElC
UkFURV9CVUZfU0laRTsKPj4gKwo+PiArCS8qIFdlIHN0YXJ0IHdpdGggdGhlIGR1bWJlc3Qgc2V0
dGluZyAoa2VlcCA0Qnl0ZSBiaXQpIGFuZCByZWFkCj4+ICsJICogc29tZSBkYXRhCj4+ICsJICov
Cj4+ICsJY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0gPSBhc3BlZWRfc21jX2RlZmF1bHRfcmVhZChj
aGlwKTsKPj4gKwo+PiArCXdyaXRlbChjaGlwLT5jdGxfdmFsW3NtY19yZWFkXSwgY2hpcC0+Y3Rs
KTsKPj4gKwo+PiArCW1lbWNweV9mcm9taW8oZ29sZGVuX2J1ZiwgY2hpcC0+YWhiX2Jhc2UsIENB
TElCUkFURV9CVUZfU0laRSk7Cj4+ICsKPj4gKwkvKiBFc3RhYmxpc2ggb3VyIHJlYWQgbW9kZSB3
aXRoIGZyZXEgZmllbGQgc2V0IHRvIDAgKEhDTEsvMTYpICovCj4+ICsJY2hpcC0+Y3RsX3ZhbFtz
bWNfcmVhZF0gPSBzYXZlX3JlYWRfdmFsICYgMHhmZmZmZjBmZjsKPj4gKwo+PiArCS8qIENoZWNr
IGlmIGNhbGlicmF0aW9uIGRhdGEgaXMgc3VpdGFibGUgKi8KPj4gKwlpZiAoIWFzcGVlZF9zbWNf
Y2hlY2tfY2FsaWJfZGF0YShnb2xkZW5fYnVmLCBDQUxJQlJBVEVfQlVGX1NJWkUpKSB7Cj4+ICsJ
CWRldl9pbmZvKGNoaXAtPm5vci5kZXYsCj4+ICsJCQkgIkNhbGlicmF0aW9uIGFyZWEgdG9vIHVu
aWZvcm0sIHVzaW5nIGxvdyBzcGVlZCIpOwo+PiArCQl3cml0ZWwoY2hpcC0+Y3RsX3ZhbFtzbWNf
cmVhZF0sIGNoaXAtPmN0bCk7Cj4+ICsJCWtmcmVlKHRlc3RfYnVmKTsKPj4gKwkJcmV0dXJuIDA7
Cj4+ICsJfQo+PiArCj4+ICsJLyogTm93IHdlIGl0ZXJhdGUgdGhlIEhDTEsgZGl2aWRlcnMgdW50
aWwgd2UgZmluZCBvdXIgYnJlYWtpbmcgcG9pbnQgKi8KPj4gKwlmb3IgKGkgPSBBUlJBWV9TSVpF
KGFzcGVlZF9zbWNfaGNsa19kaXZzKTsgaSA+IDA7IGktLSkgewo+PiArCQl1MzIgdHYsIGZyZXE7
Cj4+ICsKPj4gKwkJLyogQ29tcGFyZSB0aW1pbmcgdG8gbWF4ICovCj4+ICsJCWZyZXEgPSBhaGJf
ZnJlcSAvIGk7Cj4+ICsJCWlmIChmcmVxID4gbWF4X2ZyZXEpCj4+ICsJCQljb250aW51ZTsKPj4g
Kwo+PiArCQkvKiBTZXQgdGhlIHRpbWluZyAqLwo+PiArCQl0diA9IGNoaXAtPmN0bF92YWxbc21j
X3JlYWRdIHwgQVNQRUVEX1NNQ19IQ0xLX0RJVihpKTsKPj4gKwkJd3JpdGVsKHR2LCBjaGlwLT5j
dGwpOwo+PiArCQlkZXZfZGJnKGNoaXAtPm5vci5kZXYsICJUcnlpbmcgSENMSy8lZC4uLiIsIGkp
Owo+PiArCQlyYyA9IGFzcGVlZF9zbWNfY2FsaWJyYXRlX3JlYWRzKGNoaXAsIGksIGdvbGRlbl9i
dWYsIHRlc3RfYnVmKTsKPj4gKwkJaWYgKHJjID09IDApCj4+ICsJCQliZXN0X2RpdiA9IGk7Cj4+
ICsJfQo+PiArCWtmcmVlKHRlc3RfYnVmKTsKPj4gKwo+PiArCS8qIE5vdGhpbmcgZm91bmQgPyAq
Lwo+PiArCWlmIChiZXN0X2RpdiA8IDApIHsKPj4gKwkJZGV2X3dhcm4oY2hpcC0+bm9yLmRldiwg
Ik5vIGdvb2QgZnJlcXVlbmN5LCB1c2luZyBkdW1iIHNsb3ciKTsKPj4gKwl9IGVsc2Ugewo+PiAr
CQlkZXZfZGJnKGNoaXAtPm5vci5kZXYsICJGb3VuZCBnb29kIHJlYWQgdGltaW5ncyBhdCBIQ0xL
LyVkIiwKPj4gKwkJCWJlc3RfZGl2KTsKPj4gKwkJY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0gfD0g
QVNQRUVEX1NNQ19IQ0xLX0RJVihiZXN0X2Rpdik7Cj4+ICsJfQo+PiArCj4+ICsJd3JpdGVsKGNo
aXAtPmN0bF92YWxbc21jX3JlYWRdLCBjaGlwLT5jdGwpOwo+PiArCXJldHVybiAwOwo+PiArfQo+
IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
