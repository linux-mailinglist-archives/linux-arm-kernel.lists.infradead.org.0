Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02938D4311
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7PDYRAQyAZ1AL2qP4iVyMT2NonTaYFF9p9sOfTltms=; b=oLysKC+MJrG+75
	KP7CTRdl/NMVLZbjA4QO4dpsfT756ilpI36W5Rh0fmxxe8a2giVrdS/ZLSCaANraTrH39Sr6ylZL/
	zol8BoOPNFEMLFJJ/GB29Qp2IFejlyIIrx6qRLDqn2S6hU6a2qJnz8FAfXhzI7STkWWua9biHP8/T
	iIk82cimdDINjpv6klk1Jy36ylMvyw1Las0oYHXSiq3aZe7er0RWxr1N/cMdSsGTxyt4lRRkZSIxW
	Sz6+0yFVYbFOWk+lNOsSAztVL5Xsd+5thIqbOjXCyauCbEqiLaE/oz1QMmwWAN3hlLrHKbIHe68Kw
	Dw58Xyc4B9Muzo61amLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIw3p-00057G-80; Fri, 11 Oct 2019 14:38:29 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIw3M-0004tb-7N
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:38:01 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9BEXFo0127575
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 10:37:59 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vjtatkw5b-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 11 Oct 2019 10:37:59 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <clg@kaod.org>;
 Fri, 11 Oct 2019 15:37:57 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 11 Oct 2019 15:37:52 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x9BEbpE033161676
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 14:37:51 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7F4F711C058;
 Fri, 11 Oct 2019 14:37:51 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6485711C054;
 Fri, 11 Oct 2019 14:37:51 +0000 (GMT)
Received: from smtp.tls.ibm.com (unknown [9.101.4.1])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 11 Oct 2019 14:37:51 +0000 (GMT)
Received: from yukon.kaod.org (sig-9-145-63-191.uk.ibm.com [9.145.63.191])
 by smtp.tls.ibm.com (Postfix) with ESMTP id 38E552201CE;
 Fri, 11 Oct 2019 16:37:50 +0200 (CEST)
Subject: Re: [PATCH 04/16] mtd: spi-nor: aspeed: Add read training
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-5-clg@kaod.org>
 <20191011142805.6cc3905c@dhcp-172-31-174-146.wireless.concordia.ca>
 <3244b1ce-587c-6f12-cc9c-7eee0354e76b@kaod.org>
 <20191011162919.77b05cf8@dhcp-172-31-174-146.wireless.concordia.ca>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Date: Fri, 11 Oct 2019 16:37:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191011162919.77b05cf8@dhcp-172-31-174-146.wireless.concordia.ca>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19101114-0020-0000-0000-0000037834FE
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19101114-0021-0000-0000-000021CE46CF
Message-Id: <b1db5178-69b4-e061-4237-5b24d14aeb1f@kaod.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=372 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910110137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_073800_400839_B94E7D9F 
X-CRM114-Status: GOOD (  25.72  )
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

T24gMTEvMTAvMjAxOSAxNjoyOSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOgo+IE9uIEZyaSwgMTEg
T2N0IDIwMTkgMTU6NTU6MjUgKzAyMDAKPiBDw6lkcmljIExlIEdvYXRlciA8Y2xnQGthb2Qub3Jn
PiB3cm90ZToKPiAKPiAgCj4+PiAoaG93IGNhbiB5b3UgZGV0ZXJtaW5lIGlmIHRpbWluZ3MgYXJl
IGdvb2Qgd2hlbiBJTyBwaW5zIGFsd2F5cwo+Pj4gc3RheSBoaWdoKS4gRG9uJ3Qgd2UgaGF2ZSBh
IGNvbW1hbmQgdGhhdCByZXR1cm4gbm9uLWZmL25vbi0wIGRhdGEgd2hpbGUKPj4+IHN0aWxsIGJl
aW5nIHByZWRpY3RhYmxlIGFuZCBpbW11dGFibGU/ICAgCj4+Cj4+IE5vdCB0aGF0IEkga25vdyBv
ZiBvbiB0aGVzZSBjb250cm9sbGVycy4KPiAKPiBJdCdzIG5vdCByZWFsbHkgYSBjb250cm9sbGVy
IHRoaW5nLCBtb3JlIGEgY2hpcCB0aGluZy4gVGhlIGlkZWFsCj4gc29sdXRpb24gd291bGQgYmUg
dG8gaGF2ZSBhIGxvb3BiYWNrIG1vZGUgb3IgYW4gaW50ZXJuYWwgU1JBTSB5b3UgY2FuCj4gd3Jp
dGUgdGhlbiByZWFkIGJhY2ssIGJ1dCBBRkFJQ1QgaXQgZG9lc24ndCBleGlzdHMuIFRoZXJlJ3Mg
dGhlIFNGRFAKPiB0YWJsZSBhcyBWaWduZXNoIG1lbnRpb25lZCwgYnV0IHdlIGhhdmUgdGhlIGZv
bGxvd2luZyBwcm9ibGVtczoKPiAKPiAxLyBpdCBtaWdodCBiZSB0b28gc21hbGwgKGRlZmluaXRl
bHkgPCAxNmspCj4gMi8gc29tZSBOT1JzIGRvbid0IHN1cHBvcnQgU0ZEUCAobWF5YmUgbm90IHRo
ZSBvbmVzIHdlIGNhcmUgYWJvdXQKPiAgICB0aG91Z2gpCgoKWWVzLiBUaGUgYXBwcm9hY2ggd2Ug
Zm9sbG93IGhhcyBnb29kIHJlc3VsdHMsIG9uY2UgdGhlIGRhdGEgaXMgCnF1YWxpZmllZCBhcyBn
b29kIGVub3VnaCBmb3IgdGhlIHRyYWluaW5nLiAKCldlIGhhZCBzb21lIGlzc3VlcyBiYWNrIGlu
IDIwMTQgd2l0aCBzb21lIGNoaXBzIG9uIGVhcmx5IHN5c3RlbXMgCmFuZCBJIHRoaW5rIHdlIGNv
dWxkIHJlZHVjZSB0aGUgYW1vdW50IG9mIHRoZSBkYXRhIHJlYWQgYW5kIHRoZSAKbnVtYmVyIG9m
IGxvb3BzIG5vdy4gCgpUaGFua3MsCgpDLiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
