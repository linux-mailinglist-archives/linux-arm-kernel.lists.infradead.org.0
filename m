Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C614D3EBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eDf1SxDK0+KEBNyPuRRk0p/ZGk00Ens/nN3uZn6hlI=; b=T3CreWZ8sGGBiT
	Dw31wLsZkbhbnLS0Jmp/M/QQyY1s0Lg1SY17g1XcqznZwzG4gcUemqNX1EP7wNOgsbLB/FrMaQfxZ
	vRqkAetNnz8qx/c6vEoYN8bIu8vkJtDzvqpCoCYsSCTU+NRUXEqkGnP7v0PALxPbyXZ4PGiXJA3DS
	gUJow/usH/XoIh2i3RuwYYkwtzFQdVpnA61d8u+09jlg2xLBuTVsnlMFr4VYv2HB4CtXLSXhkWkS9
	1Kk8eJqBUcLBTB9vbKVD2XjFb+xFB35TfCnykaDblvL4Ff875nry1zMwx3WsT/Qhk7OWQSWKdNoKK
	fZ2hmacQB0VFht1p+Hkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItPG-0002KQ-2w; Fri, 11 Oct 2019 11:48:26 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItOw-0002AA-4P
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:48:08 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9BBljuW070923
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 07:48:01 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2vjqj942k7-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 07:48:01 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <clg@kaod.org>;
 Fri, 11 Oct 2019 12:48:00 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 11 Oct 2019 12:47:56 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x9BBlO0P14352764
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 11:47:24 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E7A69AE057;
 Fri, 11 Oct 2019 11:47:54 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C88AAAE051;
 Fri, 11 Oct 2019 11:47:54 +0000 (GMT)
Received: from smtp.tls.ibm.com (unknown [9.101.4.1])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 11 Oct 2019 11:47:54 +0000 (GMT)
Received: from yukon.kaod.org (sig-9-145-63-191.uk.ibm.com [9.145.63.191])
 by smtp.tls.ibm.com (Postfix) with ESMTP id ADEA422003A;
 Fri, 11 Oct 2019 13:47:53 +0200 (CEST)
Subject: Re: [PATCH 00/16] mtd: spi-nor: aspeed: AST2600 support and extensions
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191009225555.67622339@dhcp-172-31-174-146.wireless.concordia.ca>
 <CACPK8Xe__AYvrh40vqjwoM=XKJfp5MeqrMARpFUDGWCyJK6jXQ@mail.gmail.com>
 <20191011084503.5b7a7c2c@dhcp-172-31-174-146.wireless.concordia.ca>
 <3836fcc4-c8b0-ed04-0c52-7c642794ecb8@kaod.org>
 <20191011115129.3897cd17@dhcp-172-31-174-146.wireless.concordia.ca>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Date: Fri, 11 Oct 2019 13:47:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191011115129.3897cd17@dhcp-172-31-174-146.wireless.concordia.ca>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19101111-0016-0000-0000-000002B72824
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19101111-0017-0000-0000-000033183A1A
Message-Id: <026b5c55-194c-934f-e039-7c4d28861d53@kaod.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910110113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_044806_299902_97D23016 
X-CRM114-Status: GOOD (  35.65  )
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
 linux-mtd@lists.infradead.org, Joel Stanley <joel@jms.id.au>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMTAvMjAxOSAxMTo1MSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOgo+IE9uIEZyaSwgMTEg
T2N0IDIwMTkgMTE6Mjk6NDkgKzAyMDAKPiBDw6lkcmljIExlIEdvYXRlciA8Y2xnQGthb2Qub3Jn
PiB3cm90ZToKPiAKPj4gT24gMTEvMTAvMjAxOSAwODo0NSwgQm9yaXMgQnJlemlsbG9uIHdyb3Rl
Ogo+Pj4gT24gVGh1LCAxMCBPY3QgMjAxOSAyMzo0Nzo0NSArMDAwMAo+Pj4gSm9lbCBTdGFubGV5
IDxqb2VsQGptcy5pZC5hdT4gd3JvdGU6Cj4+PiAgIAo+Pj4+IE9uIFdlZCwgOSBPY3QgMjAxOSBh
dCAyMDo1NiwgQm9yaXMgQnJlemlsbG9uCj4+Pj4gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEu
Y29tPiB3cm90ZTogIAo+Pj4+Pgo+Pj4+PiBIaSBDZWRyaWMsCj4+Pj4+Cj4+Pj4+IE9uIEZyaSwg
IDQgT2N0IDIwMTkgMTM6NTk6MDMgKzAyMDAKPj4+Pj4gQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0Br
YW9kLm9yZz4gd3JvdGU6Cj4+Pj4+ICAgIAo+Pj4+Pj4gSGVsbG8sCj4+Pj4+Pgo+Pj4+Pj4gVGhp
cyBzZXJpZXMgZmlyc3QgZXh0ZW5kcyB0aGUgc3VwcG9ydCBmb3IgdGhlIEFzcGVlZCBBU1QyNTAw
IGFuZAo+Pj4+Pj4gQVNUMjQwMCBTTUMgZHJpdmVyLiBJdCBhZGRzIER1YWwgRGF0YSBzdXBwb3J0
IGFuZCByZWFkIHRyYWluaW5nIGdpdmluZwo+Pj4+Pj4gdGhlIGJlc3QgcmVhZCBzZXR0aW5ncyBm
b3IgYSBnaXZlbiBjaGlwLiBTdXBwb3J0IGZvciB0aGUgbmV3IEFTVDI2MDAKPj4+Pj4+IFNvQyBp
cyBhZGRlZCBhdCB0aGUgZW5kLgo+Pj4+Pj4KPj4+Pj4+IEkgdW5kZXJzdGFuZCB0aGF0IGEgbmV3
IHNwaV9tZW0gZnJhbWV3b3JrIGV4aXN0cyBhbmQgSSBkbyBoYXZlIGFuCj4+Pj4+PiBleHBlcmlt
ZW50YWwgZHJpdmVyIHVzaW5nIGl0LiBCdXQgdW5mb3J0dW5hdGVseSwgaXQgaXMgZGlmZmljdWx0
IHRvCj4+Pj4+PiBpbnRlZ3JhdGUgdGhlIHJlYWQgdHJhaW5pbmcuIFRoZSBBc3BlZWQgY29uc3Ry
YWludHMgYXJlIG5vdCBjb21wYXRpYmxlCj4+Pj4+PiBhbmQgaSBoYXZlbid0IGhhZCB0aGUgdGlt
ZSB0byBleHRlbmQgdGhlIGN1cnJlbnQgZnJhbWV3b3JrLiAgICAKPj4+Pj4KPj4+Pj4gSG0sIEkg
ZG9uJ3QgdGhpbmsgdGhhdCdzIGEgZ29vZCByZWFzb24gdG8gcHVzaCBuZXcgZmVhdHVyZXMgdG8g
dGhlCj4+Pj4+IGV4aXN0aW5nIGRyaXZlciwgZXNwZWNpYWxseSBzaW5jZSBJIGFza2VkIG90aGVy
cyB0byBtaWdyYXRlIHRoZWlyCj4+Pj4+IGRyaXZlcnMgdG8gc3BpLW1lbSBpbiB0aGUgcGFzdC4g
SSBkbyB1bmRlcnN0YW5kIHlvdXIgY29uY2VybnMsIGFuZCBJJ2xsCj4+Pj4+IGxldCB0aGUgU1BJ
IE5PUi9NVEQgbWFpbnRhaW5lcnMgbWFrZSB0aGUgZmluYWwgY2FsbCwgYnV0IEkgdGhpbmsgaXQn
ZAo+Pj4+PiBiZSBiZXR0ZXIgZm9yIHRoZSBTUEkgTUVNIGVjb3N5c3RlbSB0byB0aGluayBhYm91
dCB0aGlzIGxpbmstdHJhaW5pbmcKPj4+Pj4gQVBJIChWaWduZXNoIG5lZWRzIGl0IGZvciB0aGUg
Q2FkZW5jZSBkcml2ZXIgSUlSQykgcmF0aGVyIHRoYW4gcHVzaGluZwo+Pj4+PiB0aGlzIGtpbmQg
b2YgZmVhdHVyZSB0byBzcGktbm9yIGNvbnRyb2xsZXIgZHJpdmVycy4gICAgCj4+Pj4KPj4+PiBB
cyBDZWRyaWMgbWVudGlvbmVkLCB0aGUgT3BlbkJNQyBwcm9qZWN0IGhhcyBiZWVuIHNoaXBwaW5n
IHRoZSByZWFkCj4+Pj4gdHJhaW5pbmcgY29kZSBmb3IgdGhlIGFzdDI0MDAvYXN0MjQwMCBmb3Ig
c2V2ZXJhbCB5ZWFycyBub3cuIEl0IHdvdWxkCj4+Pj4gYmUgZ3JlYXQgdG8gc2VlIGl0IGluIG1h
aW5saW5lLgo+Pj4+Cj4+Pj4gSSB0aGluayBpdCdzIHJlYXNvbmFibGUgdG8gYXNrIGZvciB0aGUg
ZHJpdmVyIHRvIGJlIG1vdmVkIHRvIHRoZQo+Pj4+IHNwaS1tZW0gc3Vic3lzdGVtIG9uY2UgaXQg
aGFzIHRoZSByZXF1aXJlZCBBUElzLiAgCj4+Pgo+Pj4gRXhjZXB0IGl0IHdvbid0IGhhdmUgdGhl
IG5lY2Vzc2FyeSBBUElzIHVubGVzcyBzb21lb25lIHdvcmtzIG9uIGl0LCBhbmQKPj4+IGFkZGlu
ZyB0aGlzIGZlYXR1cmUgdG8gZXhpc3Rpbmcgc3BpLW5vciBkcml2ZXJzIHdvbid0IGhlbHAgYWNo
aWV2aW5nCj4+PiB0aGlzIGdvYWwuICAKPj4KPj4KPj4gV2hhdCB3b3VsZCB5b3Ugc3VnZ2VzdCA/
IFNvbWV0aGluZyBsaWtlIHRoZSBwYXRjaCBiZWxvdyB3aGljaCB3b3VsZAo+PiBjYWxsIGEgJ3Ry
YWluJyBvcGVyYXRpb24gYXQgdGhlIGVuZCBvZiBzcGlfYWRkX2RldmljZSgpLgo+IAo+IFRoaXMg
aGFzIGJlZW4gZGlzY3Vzc2VkIGluIHRoZSBwYXN0IHdpdGggVmlnbmVzaCwgYnV0IEkgY2FuJ3Qg
ZmluZCB0aGUKPiB0aHJlYWQgd2hlcmUgdGhpcyBkaXNjdXNzaW9uIGhhcHBlbmVkLiBNeSB1bmRl
cnN0YW5kaW5nIHdhcyB0aGF0IGxpbmsKPiB0cmFpbmluZyB3b3VsZCB1c2UgYSBjb21tYW5kIHdp
dGggd2VsbC1rbm93biBvdXRwdXQgKGlzIHRoZXJlIGEKPiBkZWRpY2F0ZWQgU1BJIE5PUiBjb21t
YW5kIGZvciB0aGF0PykgYW5kIHRlc3QgZGlmZmVyZW50IGNsayBzZXR0aW5ncwo+IHVudGlsIGl0
IGZpbmRzIG9uZSB0aGF0IHdvcmtzLgoKVGhlIHJlYWQgdHJhaW5pbmcgb24gQXNwZWVkIGNvbnNp
c3RzIG9mIGZpbmRpbmcgdGhlIGFwcHJvcHJpYXRlIHJlYWQKdGltaW5nIGRlbGF5cyBmb3Igd2Vs
bC1rbm93biBIQ0xLIGRpdmlkZXJzIGFuZCBzdG9yZSB0aGUgcmVzdWx0cyBpbiAKdGhlIFJlYWQg
VGltaW5nIENvbXBlbnNhdGlvbiByZWdpc3Rlci4gCgpXZSBmaXJzdCByZWFkIGEgZ29sZGVuIGJ1
ZmZlciBhdCBsb3cgc3BlZWQgYW5kIHRoZW4gcGVyZm9ybSByZWFkcyB3aXRoIApkaWZmZXJlbnQg
Y2xvY2tzIGFuZCBkZWxheSBjeWNsZSBzZXR0aW5ncyB0byBmaW5kIGEgYnJlYWtpbmcgcG9pbnQu
IFRoaXMgCnNlbGVjdHMgdGhlIGRlZmF1bHQgY2xvY2sgZnJlcXVlbmN5IGZvciB0aGUgQ0V4IGNv
bnRyb2wgcmVnaXN0ZXIuIAoKIAo+PiBBbHNvLCB3aGVuIGRvaW5nIHJlYWQgdHJhaW5pbmcsIHdl
IG1pZ2h0IG5lZWQgdG8ga25vdyBzb21lIGxvd2xldmVsIAo+PiBjaGFyYWN0ZXJpc3RpY3Mgb2Yg
dGhlIGNoaXAgYmVpbmcgdHJhaW5lZC4gU2hvdWxkIHdlIG9mZmVyIGEgd2F5IAo+PiB0byBncmFi
IHRoZSBwcm9iZWQgbTI1cDgwIGRldmljZSBhbmQgZ2l2ZSBhY2Nlc3MgdG8gdGhlIHVuZGVybHlp
bmcgCj4+ICdzdHJ1Y3Qgc3BpX25vcicgPyAKPj4KPj4gICBzdGF0aWMgc3RydWN0IHNwaV9ub3Ig
KnNwaV9nZXRfcG5vcihzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQo+PiAgIHsKPj4gCXN0cnVjdCBz
cGlfbWVtICpzcGltZW0gPSBzcGlfZ2V0X2RydmRhdGEoc3BpKTsKPj4gCXN0cnVjdCBtMjVwICpm
bGFzaCA9IHNwaV9tZW1fZ2V0X2RydmRhdGEoc3BpbWVtKTsKPj4KPj4gCXJldHVybiBmbGFzaCA/
ICZmbGFzaC0+c3BpX25vciA6IE5VTEw7Cj4+ICAgfQo+Pgo+PiBZZWFoLCBpdCdzIGhpZGVvdXMu
IEkganVzdCB3YW50IHRvIHJhaXNlIHRoZSBpc3N1ZS4KPiAKPiBPaCBuby4gV2UgZGVmaW5pdGVs
eSBkb24ndCB3YW50IHRvIGV4cG9zZSB0aGUgc3BpX25vciBjaGlwIHRvIHRoZQo+IHNwaV9tZW0g
bGF5ZXIsIGJ1dCwgaWYgbmVlZGVkLCB3ZSBjYW4gYWRkIG1vcmUgZmllbGRzIHRvIHNwaV9tZW0g
YW5kCj4gbGV0IHRoZSBzcGlfbWVtIGRyaXZlciBmaWxsIHRoZW0uIFdlIGp1c3QgbmVlZCB0byBm
aWd1cmUgb3V0IHdoYXQncwo+IHJlYWxseSBuZWVkZWQuCgpXZSBuZWVkIHRoZSBTUEkvTk9SIGZs
YXNoIGNoYXJhY3RlcmlzdGljcyBmb3IgbGluayB0cmFpbmluZyBhbmQgaXRzIApzaXplIHRvIGNv
bmZpZ3VyZSB0aGUgY29udHJvbGxlciB0byBhY2Nlc3MgdGhlIENTIG9uIHRoZSBBSEIgd2luZG93
LiAKClsgLi4uIF0KCj4+ICAJaW50ICgqZndfdHJhbnNsYXRlX2NzKShzdHJ1Y3Qgc3BpX2NvbnRy
b2xsZXIgKmN0bHIsIHVuc2lnbmVkIGNzKTsKPj4gKwo+PiArCWludAkJCSgqdHJhaW4pKHN0cnVj
dCBzcGlfZGV2aWNlICpzcGkpOwo+IAo+IFdhcyBtb3JlIHRoaW5raW5nIG9mIHNvbWV0aGluZyBs
aWtlOgo+IAo+IAlpbnQgKCpsaW5rX3NldHVwKShzdHJ1Y3Qgc3BpX21lbSAqbWVtLAo+IAkJCSAg
c3RydWN0IHNwaV9tZW1fb3AgKm9wX3RlbXBsYXRlLAo+IAkJCSAgLi4uKTsKPiAKPiB3aGVyZSB0
aGUgb3BfdGVtcGxhdGUgd291bGQgcG90ZW50aWFsbHkgZGlmZmVyIGRlcGVuZGluZyBvbiB0aGUg
dHlwZSBvZgo+IG1lbW9yeSAoTk9SLCBOQU5ELCBTUkFNPykuIEkgYWxzbyBkb24ndCBrbm93IHdo
YXQgb3RoZXIgcGFyYW1zIHdvdWxkIGJlCj4gbmVlZGVkIHRvIGRvIHRoZSBsaW5rIHRyYWluaW5n
LgoKVGhlIEFzcGVlZCBjb250cm9sbGVyIG5lZWRzIHRvIHNldCByZWFkIGRlbGF5IHRpbWluZ3Mg
YXQgZGlmZmVyZW50IEhDTEsKc2V0dGluZ3MuIEl0J3MgZG9pbmcgcmVhZCBvcGVyYXRpb25zIHdp
dGggdGhlIGRlZmF1bHQgSU8gbW9kZS4KIAo+IEJUVywgdGhpcyBob29rIHNob3VsZCBiZSBpbiB0
aGUgc3BpX21lbV9jb250cm9sbGVyX29wcyBzdHJ1Y3Qgbm90IGluCj4gc3BpX2NvbnRyb2xsZXIu
Cgpvay4gTGV0J3Mgd2FpdCBmb3IgZmVlZGJhY2sgZnJvbSBWaW5lc2guCgpUaGFua3MsCgpDLiAK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
