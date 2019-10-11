Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C9CD4073
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Glu8cDjjDdjrpvjR3Xjzv3jvdwKdoAlVCoA6wB5ii9w=; b=Ow7xCEgV6Uyp95
	kIUvDC/k4k2IqufIk/fcjjWipqXlAgtXN99JdFqaZImpx3h1LcHZRqSSCaBhGlfc8kGendYTIIt+x
	u9gBmWd+XXTuFPE4DOnuXFl3wRjlp8sqOo0elJ2p+dp0rdYr1OTK4qmHw8FRavXmo4pEtk4itXx5J
	fYgIA9zqha+rd7qU0aL66h9Z5BaqL+6+ydkizQ9N3jJwcwhwsp13fASKXao088zJBwwUTfR7G7xdI
	O11urbQ4Mm/wRF/D0dxhOUx3bqc43wKM5ud6urOyWYXaKTPRRk/hNIhBFLxTRSUc57D0/l9nvuSiI
	w/FCLx9ZluqH/zVCA39Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIueC-0000y0-RP; Fri, 11 Oct 2019 13:07:56 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIudn-0000kt-Ot
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:07:35 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9BCxmgA093768
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 09:07:29 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2vjs8034m7-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 09:07:29 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <clg@kaod.org>;
 Fri, 11 Oct 2019 14:07:27 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 11 Oct 2019 14:07:22 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x9BD7LX660817616
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 13:07:21 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 976364C04A;
 Fri, 11 Oct 2019 13:07:21 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 70C834C044;
 Fri, 11 Oct 2019 13:07:21 +0000 (GMT)
Received: from smtp.tls.ibm.com (unknown [9.101.4.1])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 11 Oct 2019 13:07:21 +0000 (GMT)
Received: from yukon.kaod.org (sig-9-145-63-191.uk.ibm.com [9.145.63.191])
 by smtp.tls.ibm.com (Postfix) with ESMTP id DA4322201CE;
 Fri, 11 Oct 2019 15:07:19 +0200 (CEST)
Subject: Re: [PATCH 00/16] mtd: spi-nor: aspeed: AST2600 support and extensions
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191009225555.67622339@dhcp-172-31-174-146.wireless.concordia.ca>
 <CACPK8Xe__AYvrh40vqjwoM=XKJfp5MeqrMARpFUDGWCyJK6jXQ@mail.gmail.com>
 <20191011084503.5b7a7c2c@dhcp-172-31-174-146.wireless.concordia.ca>
 <3836fcc4-c8b0-ed04-0c52-7c642794ecb8@kaod.org>
 <20191011115129.3897cd17@dhcp-172-31-174-146.wireless.concordia.ca>
 <026b5c55-194c-934f-e039-7c4d28861d53@kaod.org>
 <20191011140611.5a34e1fb@dhcp-172-31-174-146.wireless.concordia.ca>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Date: Fri, 11 Oct 2019 15:07:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191011140611.5a34e1fb@dhcp-172-31-174-146.wireless.concordia.ca>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19101113-0028-0000-0000-000003A92CAB
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19101113-0029-0000-0000-0000246B3916
Message-Id: <030ac3d9-bda7-a4da-e3ce-d792ad98beb3@kaod.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910110123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_060731_945270_8106E8AC 
X-CRM114-Status: GOOD (  43.31  )
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

T24gMTEvMTAvMjAxOSAxNDowNywgQm9yaXMgQnJlemlsbG9uIHdyb3RlOgo+IE9uIEZyaSwgMTEg
T2N0IDIwMTkgMTM6NDc6NTMgKzAyMDAKPiBDw6lkcmljIExlIEdvYXRlciA8Y2xnQGthb2Qub3Jn
PiB3cm90ZToKPiAKPj4gT24gMTEvMTAvMjAxOSAxMTo1MSwgQm9yaXMgQnJlemlsbG9uIHdyb3Rl
Ogo+Pj4gT24gRnJpLCAxMSBPY3QgMjAxOSAxMToyOTo0OSArMDIwMAo+Pj4gQ8OpZHJpYyBMZSBH
b2F0ZXIgPGNsZ0BrYW9kLm9yZz4gd3JvdGU6Cj4+PiAgIAo+Pj4+IE9uIDExLzEwLzIwMTkgMDg6
NDUsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTogIAo+Pj4+PiBPbiBUaHUsIDEwIE9jdCAyMDE5IDIz
OjQ3OjQ1ICswMDAwCj4+Pj4+IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+IHdyb3RlOgo+
Pj4+PiAgICAgCj4+Pj4+PiBPbiBXZWQsIDkgT2N0IDIwMTkgYXQgMjA6NTYsIEJvcmlzIEJyZXpp
bGxvbgo+Pj4+Pj4gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZTogICAgCj4+
Pj4+Pj4KPj4+Pj4+PiBIaSBDZWRyaWMsCj4+Pj4+Pj4KPj4+Pj4+PiBPbiBGcmksICA0IE9jdCAy
MDE5IDEzOjU5OjAzICswMjAwCj4+Pj4+Pj4gQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9y
Zz4gd3JvdGU6Cj4+Pj4+Pj4gICAgICAKPj4+Pj4+Pj4gSGVsbG8sCj4+Pj4+Pj4+Cj4+Pj4+Pj4+
IFRoaXMgc2VyaWVzIGZpcnN0IGV4dGVuZHMgdGhlIHN1cHBvcnQgZm9yIHRoZSBBc3BlZWQgQVNU
MjUwMCBhbmQKPj4+Pj4+Pj4gQVNUMjQwMCBTTUMgZHJpdmVyLiBJdCBhZGRzIER1YWwgRGF0YSBz
dXBwb3J0IGFuZCByZWFkIHRyYWluaW5nIGdpdmluZwo+Pj4+Pj4+PiB0aGUgYmVzdCByZWFkIHNl
dHRpbmdzIGZvciBhIGdpdmVuIGNoaXAuIFN1cHBvcnQgZm9yIHRoZSBuZXcgQVNUMjYwMAo+Pj4+
Pj4+PiBTb0MgaXMgYWRkZWQgYXQgdGhlIGVuZC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSB1bmRlcnN0
YW5kIHRoYXQgYSBuZXcgc3BpX21lbSBmcmFtZXdvcmsgZXhpc3RzIGFuZCBJIGRvIGhhdmUgYW4K
Pj4+Pj4+Pj4gZXhwZXJpbWVudGFsIGRyaXZlciB1c2luZyBpdC4gQnV0IHVuZm9ydHVuYXRlbHks
IGl0IGlzIGRpZmZpY3VsdCB0bwo+Pj4+Pj4+PiBpbnRlZ3JhdGUgdGhlIHJlYWQgdHJhaW5pbmcu
IFRoZSBBc3BlZWQgY29uc3RyYWludHMgYXJlIG5vdCBjb21wYXRpYmxlCj4+Pj4+Pj4+IGFuZCBp
IGhhdmVuJ3QgaGFkIHRoZSB0aW1lIHRvIGV4dGVuZCB0aGUgY3VycmVudCBmcmFtZXdvcmsuICAg
ICAgCj4+Pj4+Pj4KPj4+Pj4+PiBIbSwgSSBkb24ndCB0aGluayB0aGF0J3MgYSBnb29kIHJlYXNv
biB0byBwdXNoIG5ldyBmZWF0dXJlcyB0byB0aGUKPj4+Pj4+PiBleGlzdGluZyBkcml2ZXIsIGVz
cGVjaWFsbHkgc2luY2UgSSBhc2tlZCBvdGhlcnMgdG8gbWlncmF0ZSB0aGVpcgo+Pj4+Pj4+IGRy
aXZlcnMgdG8gc3BpLW1lbSBpbiB0aGUgcGFzdC4gSSBkbyB1bmRlcnN0YW5kIHlvdXIgY29uY2Vy
bnMsIGFuZCBJJ2xsCj4+Pj4+Pj4gbGV0IHRoZSBTUEkgTk9SL01URCBtYWludGFpbmVycyBtYWtl
IHRoZSBmaW5hbCBjYWxsLCBidXQgSSB0aGluayBpdCdkCj4+Pj4+Pj4gYmUgYmV0dGVyIGZvciB0
aGUgU1BJIE1FTSBlY29zeXN0ZW0gdG8gdGhpbmsgYWJvdXQgdGhpcyBsaW5rLXRyYWluaW5nCj4+
Pj4+Pj4gQVBJIChWaWduZXNoIG5lZWRzIGl0IGZvciB0aGUgQ2FkZW5jZSBkcml2ZXIgSUlSQykg
cmF0aGVyIHRoYW4gcHVzaGluZwo+Pj4+Pj4+IHRoaXMga2luZCBvZiBmZWF0dXJlIHRvIHNwaS1u
b3IgY29udHJvbGxlciBkcml2ZXJzLiAgICAgIAo+Pj4+Pj4KPj4+Pj4+IEFzIENlZHJpYyBtZW50
aW9uZWQsIHRoZSBPcGVuQk1DIHByb2plY3QgaGFzIGJlZW4gc2hpcHBpbmcgdGhlIHJlYWQKPj4+
Pj4+IHRyYWluaW5nIGNvZGUgZm9yIHRoZSBhc3QyNDAwL2FzdDI0MDAgZm9yIHNldmVyYWwgeWVh
cnMgbm93LiBJdCB3b3VsZAo+Pj4+Pj4gYmUgZ3JlYXQgdG8gc2VlIGl0IGluIG1haW5saW5lLgo+
Pj4+Pj4KPj4+Pj4+IEkgdGhpbmsgaXQncyByZWFzb25hYmxlIHRvIGFzayBmb3IgdGhlIGRyaXZl
ciB0byBiZSBtb3ZlZCB0byB0aGUKPj4+Pj4+IHNwaS1tZW0gc3Vic3lzdGVtIG9uY2UgaXQgaGFz
IHRoZSByZXF1aXJlZCBBUElzLiAgICAKPj4+Pj4KPj4+Pj4gRXhjZXB0IGl0IHdvbid0IGhhdmUg
dGhlIG5lY2Vzc2FyeSBBUElzIHVubGVzcyBzb21lb25lIHdvcmtzIG9uIGl0LCBhbmQKPj4+Pj4g
YWRkaW5nIHRoaXMgZmVhdHVyZSB0byBleGlzdGluZyBzcGktbm9yIGRyaXZlcnMgd29uJ3QgaGVs
cCBhY2hpZXZpbmcKPj4+Pj4gdGhpcyBnb2FsLiAgICAKPj4+Pgo+Pj4+Cj4+Pj4gV2hhdCB3b3Vs
ZCB5b3Ugc3VnZ2VzdCA/IFNvbWV0aGluZyBsaWtlIHRoZSBwYXRjaCBiZWxvdyB3aGljaCB3b3Vs
ZAo+Pj4+IGNhbGwgYSAndHJhaW4nIG9wZXJhdGlvbiBhdCB0aGUgZW5kIG9mIHNwaV9hZGRfZGV2
aWNlKCkuICAKPj4+Cj4+PiBUaGlzIGhhcyBiZWVuIGRpc2N1c3NlZCBpbiB0aGUgcGFzdCB3aXRo
IFZpZ25lc2gsIGJ1dCBJIGNhbid0IGZpbmQgdGhlCj4+PiB0aHJlYWQgd2hlcmUgdGhpcyBkaXNj
dXNzaW9uIGhhcHBlbmVkLiBNeSB1bmRlcnN0YW5kaW5nIHdhcyB0aGF0IGxpbmsKPj4+IHRyYWlu
aW5nIHdvdWxkIHVzZSBhIGNvbW1hbmQgd2l0aCB3ZWxsLWtub3duIG91dHB1dCAoaXMgdGhlcmUg
YQo+Pj4gZGVkaWNhdGVkIFNQSSBOT1IgY29tbWFuZCBmb3IgdGhhdD8pIGFuZCB0ZXN0IGRpZmZl
cmVudCBjbGsgc2V0dGluZ3MKPj4+IHVudGlsIGl0IGZpbmRzIG9uZSB0aGF0IHdvcmtzLiAgCj4+
Cj4+IFRoZSByZWFkIHRyYWluaW5nIG9uIEFzcGVlZCBjb25zaXN0cyBvZiBmaW5kaW5nIHRoZSBh
cHByb3ByaWF0ZSByZWFkCj4+IHRpbWluZyBkZWxheXMgZm9yIHdlbGwta25vd24gSENMSyBkaXZp
ZGVycyBhbmQgc3RvcmUgdGhlIHJlc3VsdHMgaW4gCj4+IHRoZSBSZWFkIFRpbWluZyBDb21wZW5z
YXRpb24gcmVnaXN0ZXIuIAo+Pgo+PiBXZSBmaXJzdCByZWFkIGEgZ29sZGVuIGJ1ZmZlciBhdCBs
b3cgc3BlZWQgYW5kIHRoZW4gcGVyZm9ybSByZWFkcyB3aXRoIAo+PiBkaWZmZXJlbnQgY2xvY2tz
IGFuZCBkZWxheSBjeWNsZSBzZXR0aW5ncyB0byBmaW5kIGEgYnJlYWtpbmcgcG9pbnQuCj4gCj4g
V2hlcmUgZG9lcyB0aGlzIGdvbGRlbiBidWZmZXIgY29tZSBmcm9tPyBEbyB5b3UgaGF2ZSBhIHNw
ZWNpZmljIGNvbW1hbmQKPiB0byBhY2Nlc3MgaXQ/IElzIGl0IGEgTk9SIHNlY3Rpb24gd2l0aCB3
ZWxsLWtub3duIGRhdGE/CgpXZSByZWFkIHRoZSBmaXJzdCAxNksgb2YgdGhlIGZsYXNoIGRldmlj
ZSBhdCBsb3cgc3BlZWQuICAKCj4+IFRoaXMgCj4+IHNlbGVjdHMgdGhlIGRlZmF1bHQgY2xvY2sg
ZnJlcXVlbmN5IGZvciB0aGUgQ0V4IGNvbnRyb2wgcmVnaXN0ZXIuIAo+Pgo+PiAgCj4+Pj4gQWxz
bywgd2hlbiBkb2luZyByZWFkIHRyYWluaW5nLCB3ZSBtaWdodCBuZWVkIHRvIGtub3cgc29tZSBs
b3dsZXZlbCAKPj4+PiBjaGFyYWN0ZXJpc3RpY3Mgb2YgdGhlIGNoaXAgYmVpbmcgdHJhaW5lZC4g
U2hvdWxkIHdlIG9mZmVyIGEgd2F5IAo+Pj4+IHRvIGdyYWIgdGhlIHByb2JlZCBtMjVwODAgZGV2
aWNlIGFuZCBnaXZlIGFjY2VzcyB0byB0aGUgdW5kZXJseWluZyAKPj4+PiAnc3RydWN0IHNwaV9u
b3InID8gCj4+Pj4KPj4+PiAgIHN0YXRpYyBzdHJ1Y3Qgc3BpX25vciAqc3BpX2dldF9wbm9yKHN0
cnVjdCBzcGlfZGV2aWNlICpzcGkpCj4+Pj4gICB7Cj4+Pj4gCXN0cnVjdCBzcGlfbWVtICpzcGlt
ZW0gPSBzcGlfZ2V0X2RydmRhdGEoc3BpKTsKPj4+PiAJc3RydWN0IG0yNXAgKmZsYXNoID0gc3Bp
X21lbV9nZXRfZHJ2ZGF0YShzcGltZW0pOwo+Pj4+Cj4+Pj4gCXJldHVybiBmbGFzaCA/ICZmbGFz
aC0+c3BpX25vciA6IE5VTEw7Cj4+Pj4gICB9Cj4+Pj4KPj4+PiBZZWFoLCBpdCdzIGhpZGVvdXMu
IEkganVzdCB3YW50IHRvIHJhaXNlIHRoZSBpc3N1ZS4gIAo+Pj4KPj4+IE9oIG5vLiBXZSBkZWZp
bml0ZWx5IGRvbid0IHdhbnQgdG8gZXhwb3NlIHRoZSBzcGlfbm9yIGNoaXAgdG8gdGhlCj4+PiBz
cGlfbWVtIGxheWVyLCBidXQsIGlmIG5lZWRlZCwgd2UgY2FuIGFkZCBtb3JlIGZpZWxkcyB0byBz
cGlfbWVtIGFuZAo+Pj4gbGV0IHRoZSBzcGlfbWVtIGRyaXZlciBmaWxsIHRoZW0uIFdlIGp1c3Qg
bmVlZCB0byBmaWd1cmUgb3V0IHdoYXQncwo+Pj4gcmVhbGx5IG5lZWRlZC4gIAo+Pgo+PiBXZSBu
ZWVkIHRoZSBTUEkvTk9SIGZsYXNoIGNoYXJhY3RlcmlzdGljcyBmb3IgbGluayB0cmFpbmluZyBh
bmQgaXRzIAo+PiBzaXplIHRvIGNvbmZpZ3VyZSB0aGUgY29udHJvbGxlciB0byBhY2Nlc3MgdGhl
IENTIG9uIHRoZSBBSEIgd2luZG93LiAKPiAKPiBXZSBtYW5hZ2VkIHRvIGRlYWwgd2l0aCBkaXJl
Y3QgbWFwcGluZyB3aXRob3V0IGhhdmluZyB0byBleHBsaWNpdGx5IHBhc3MKPiB0aGUgTk9SIHNp
emUgKHdlIGp1c3QgcGFzcyB0aGUgc2l6ZSBvZiB0aGUgZGlyZWN0IG1hcHBpbmcgd2Ugd2FudCB0
bwo+IGNyZWF0ZSkuIFdoYXQgZG8geW91IG5lZWQgdGhlIHNpemUgZm9yPyAKCmJlY2F1c2UgdGhl
IEFIQiB3aW5kb3cgb24gd2hpY2ggYXJlIG1hcHBlZCBhbGwgQ1MgaXMgc2VnbWVudGVkLiAKClRo
ZXJlIGlzIG9uZSBzdWIgd2luZG93IGZvciBlYWNoIENTIGFuZCBhbGwgc2VnbWVudHMgbmVlZCB0
byBiZSAKY29uZmlndXJlZCBpbiB0aGUgY29udHJvbGxlciAoaW4gdGhlIHNlZ21lbnQgcmVnaXN0
ZXJzKS4gSW4gY2FzZSAKb2YgYSBiYWQgdmFsdWUgb3IgYW4gb3ZlcmxhcCwgeW91IGNhbiBsb29z
ZSBhY2Nlc3MgdG8gdGhlIENTIG9yIApoYW5nIHRoZSBzeXN0ZW0uCgpUbyBhY2Nlc3MgdGhlIFNQ
SSBOT1IgcmVnaXN0ZXJzLCB5b3UgZG9uJ3QgbmVlZCBhIHdpbmRvdyBvZiB0aGUgCmV4YWN0IHNp
emUgYmVjYXVzZSBpbiB0aGF0IGNhc2UgdGhlIGNvbnRyb2xsZXIgb3BlcmF0ZXMgaW4gJ1VzZXIn
IApjb21tYW5kIG1vZGUgYW5kIHRoZSB3aW5kb3cgb25seSBuZWVkcyB0byBiZSBwYXJ0aWFsbHkg
b3BlbmVkLiAKUmVhZHMgYW5kIFdyaXRlcyB1c2UgdGhlIHN0YXJ0IGFkZHJlc3Mgb2YgQUhCIHN1
Yi13aW5kb3cgb2YgdGhlIENTLgoKSWYgeW91IHdhbnQgYWNjZXNzIHRvIHRoZSBmdWxsIGNvbnRl
bnRzIHRocm91Z2ggYSBkaXJlY3QgbWFwcGluZywKdGhlIGNvbnRyb2xsZXIgb3BlcmF0ZXMgaW4g
J1JlYWQnIG9yICdGYXN0IFJlYWQnIGNvbW1hbmQgbW9kZSBhbmQKdGhlIHdpbmRvdyBuZWVkcyB0
byBiZSBhdCBsZWFzdCBhcyB3aWRlIGFzIHRoZSBmbGFzaCBzaXplLgoKPiBJcyBpdCBqdXN0IHRv
IGNvbmZpZ3VyZSB0aGUgQUhCIHdpbmRvdyBmb3IgdGhlIGxpbmstdHJhaW5pbmcgc3R1ZmY/IAoK
VGhlIGxpbmstdHJhaW5pbmcgdXNlcyB0aGUgZGlyZWN0IG1hcHBpbmcgbW9kZSBidXQgbm90IG9u
IHRoZQp3aG9sZSBjb250ZW50cywgb25seSBvbiB0aGUgZmlyc3QgMTZLLiBTbyB0aGUgQUhCIHdp
bmRvdyBkb2VzIG5vdCAKaGF2ZSB0byBiZSBhcyB3aWRlIGFzIHRoZSBjaGlwIGFuZCB3ZSBjb3Vs
ZCB1c2UgYSBkZWZhdWx0IHNldHRpbmcuIApCdXQgZ2VuZXJhbGx5LCB3ZSBhbHJlYWR5IGhhdmUg
Z29vZCBrbm93bGVkZ2Ugb24gdGhlIGNoaXAgYmVmb3JlCnRyYWluaW5nIGlzIHN0YXJ0ZWQuCgo+
IElmIHRoYXQncyB0aGUgY2FzZSwgSSBndWVzcyB0aGlzIGNhbiBiZSBwYXJ0IG9mIHRoZSBvcF90
ZW1wbGF0ZSAKPiBJIHdhcyB0YWxraW5nIGFib3V0LCBvciBtYXliZSBwYXNzZWQgYXMgZXh0cmEg
cGFyYW1ldGVycy4KPgo+PiBbIC4uLiBdCj4+Cj4+Pj4gIAlpbnQgKCpmd190cmFuc2xhdGVfY3Mp
KHN0cnVjdCBzcGlfY29udHJvbGxlciAqY3RsciwgdW5zaWduZWQgY3MpOwo+Pj4+ICsKPj4+PiAr
CWludAkJCSgqdHJhaW4pKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpOyAgCj4+Pgo+Pj4gV2FzIG1v
cmUgdGhpbmtpbmcgb2Ygc29tZXRoaW5nIGxpa2U6Cj4+Pgo+Pj4gCWludCAoKmxpbmtfc2V0dXAp
KHN0cnVjdCBzcGlfbWVtICptZW0sCj4+PiAJCQkgIHN0cnVjdCBzcGlfbWVtX29wICpvcF90ZW1w
bGF0ZSwKPj4+IAkJCSAgLi4uKTsKPj4+Cj4+PiB3aGVyZSB0aGUgb3BfdGVtcGxhdGUgd291bGQg
cG90ZW50aWFsbHkgZGlmZmVyIGRlcGVuZGluZyBvbiB0aGUgdHlwZSBvZgo+Pj4gbWVtb3J5IChO
T1IsIE5BTkQsIFNSQU0/KS4gSSBhbHNvIGRvbid0IGtub3cgd2hhdCBvdGhlciBwYXJhbXMgd291
bGQgYmUKPj4+IG5lZWRlZCB0byBkbyB0aGUgbGluayB0cmFpbmluZy4gIAo+Pgo+PiBUaGUgQXNw
ZWVkIGNvbnRyb2xsZXIgbmVlZHMgdG8gc2V0IHJlYWQgZGVsYXkgdGltaW5ncyBhdCBkaWZmZXJl
bnQgSENMSwo+PiBzZXR0aW5ncy4gSXQncyBkb2luZyByZWFkIG9wZXJhdGlvbnMgd2l0aCB0aGUg
ZGVmYXVsdCBJTyBtb2RlLgo+IAo+IFNvIHlvdSBuZWVkIGluZm9ybWF0aW9uIGFib3V0IHRoZSB0
aGVvcmV0aWNhbCByZWFkIGRlbGF5IHNvIHlvdSBjYW4KPiBhZGp1c3QgdGhlbSwgcmlnaHQuIEkg
Z3Vlc3MgdGhhdCdzIHNvbWV0aGluZyB3ZSBjYW4gcGFzcyB0byB0aGUKPiAtPmxpbmtfc2V0dXAo
KSBob29rLgoKVGhlIHJlYWQgZGVsYXkgc2V0dGluZ3MgcmVhbGx5IGRlcGVuZCBvbiB0aGUgY29u
dHJvbGxlci4gSSB3YXMgdGhpbmtpbmcgCm1vcmUgb2YgYSBwb3N0X3NldHVwKCkgaG9vayBjYWxs
ZWQgb25jZSBpbiBtMjVwX3Byb2JlKCkgYWZ0ZXIgdGhlIGNoaXAgCmlzIHNjYW5uZWQuIAoKQXMg
Zm9yIHRoZSBwYXJhbWV0ZXIsIHdlIHdvdWxkIG5lZWQgc29tZSBTUEktTk9SIGluZm8gb3Igc29t
ZSBnZW5lcmljClNQSSBkZXZpY2UgZGF0YSB0aGF0IHRoZSBjb250cm9sbGVyIHdvdWxkIGtub3cg
aG93IHRvIGludGVycHJldC4KICAKCkNoZWVycywKCkMuCgoKPj4+IEJUVywgdGhpcyBob29rIHNo
b3VsZCBiZSBpbiB0aGUgc3BpX21lbV9jb250cm9sbGVyX29wcyBzdHJ1Y3Qgbm90IGluCj4+PiBz
cGlfY29udHJvbGxlci4gIAo+Pgo+PiBvay4gTGV0J3Mgd2FpdCBmb3IgZmVlZGJhY2sgZnJvbSBW
aW5lc2guCj4gCj4gVGhhbmtzIGZvciBzdGFydGluZyB0aGlzIGRpc2N1c3Npb24uCj4gCj4gQm9y
aXMKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
