Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8751F523A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wpBLdQi9NExTl2BtLUxb2gCDlRYVH8T0LEWNj4a8ks=; b=l6KDlF2C9EmuMG
	HeuJL5+IO/19HEmFfsfJn7nrKVPWj4EnmS1vVRdHTQxPKx7EW2n3PepTcvkMCmztuyOTZUEC8hdio
	PzdLIkx8MtXzCZwBNZmCDdio2ui5Q50MaySOXcmBd9mb9wz4X6VnboEe8+x1KhXx9EDRarYz6uE7b
	JD6rvd6ofnaG4xeQVlzNf5Ur1P9CLE9xzokO7wj0rfErIM8WcUdAw5Da50MvsmYRjn3MHyettyfSl
	X9zRT36Qw282nu63M59YnP6m93Cb5OpkNK3KSICH4R8FVPESO+8drK/HSrVWB47eIj8XjHbu7KGMJ
	aVtvUx8idVv9ILWx5BqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixxp-0005tC-Rc; Wed, 10 Jun 2020 10:28:09 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixxh-0005sM-Md
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:28:03 +0000
Received: from windsurf.home (lfbn-tou-1-915-109.w86-210.abo.wanadoo.fr
 [86.210.146.109])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 12554200008;
 Wed, 10 Jun 2020 10:27:50 +0000 (UTC)
Date: Wed, 10 Jun 2020 12:27:50 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: "Shmuel H." <sh@tkos.co.il>
Subject: Re: [RFC PATCH] pci: pci-mvebu: setup BAR0 to internal-regs
Message-ID: <20200610122750.389c990f@windsurf.home>
In-Reply-To: <df64c0b9-cba7-c92e-c32d-804a75796f83@tkos.co.il>
References: <20200608144024.1161237-1-sh@tkos.co.il>
 <20200608214335.156baaaa@windsurf>
 <df64c0b9-cba7-c92e-c32d-804a75796f83@tkos.co.il>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_032801_871965_3A0A7D11 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 linux-pci@vger.kernel.org, Marek =?UTF-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Chris ackham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiBUdWUsIDkgSnVuIDIwMjAgMTQ6MjE6MDcgKzAzMDAKIlNobXVlbCBILiIgPHNo
QHRrb3MuY28uaWw+IHdyb3RlOgoKPiBVbmZvcnR1bmF0ZWx5LCB0aGVyZSBpcyBhbG1vc3Qgbm8g
ZG9jdW1lbnRhdGlvbiBhYm91dCB0aGUgcHVycG9zZSBvZgo+IHRoaXMgcmVnaXN0ZXIgYXBhcnQg
ZnJvbSB0aGlzIGNyeXB0aWMgc2VudGVuY2U6Cj4gCj4gwqDCoMKgwqAgIkJBUjAgaXMgZGVkaWNh
dGVkIHRvIGludGVybmFsIHJlZ2lzdGVyIGFjY2VzcyIgKE1hcnZlbGwgYTM4eAo+IGZ1bmN0aW9u
YWwgZG9jcywgc2VjdGlvbiAxOS44KS4KPiAKPiBJIGNhbiBvbmx5IGFzc3VtZSB0aGF0IG9ubHkg
c3BlY2lmaWMgZGV2aWNlcyB0cmlnZ2VyIHRoZSBuZWVkIGZvciB0aGUKPiBQQ0llIGNvbnRyb2xs
ZXIgdG8gYWNjZXNzIHRoZSBTb0MncyBpbnRlcm5hbCByZWdpc3RlcnMgYW5kIHRoZXJlZm9yZQo+
IHdpbGwgZmFpbCB0byBvcGVyYXRlIHByb3Blcmx5LgoKSW4gZmFjdCwgc2VjdGlvbiAxMC4yLjYg
b2YgdGhlIEFybWFkYSBYUCBkYXRhc2hlZXQsIGFib3V0IE1TSS9NU0ktWApzdXBwb3J0IGdpdmVz
IGEgaGludDogaW4gb3JkZXIgZm9yIHRoZSBkZXZpY2UgdG8gZG8gYSB3cml0ZSB0byB0aGUgTVNJ
CmRvb3JiZWxsIGFkZHJlc3MsIGl0IG5lZWRzIHRvIHdyaXRlIHRvIGEgcmVnaXN0ZXIgaW4gdGhl
ICJpbnRlcm5hbApyZWdpc3RlcnMiIHNwYWNlIi4gU28gaXQgbWFrZXMgYSBsb3Qgb2Ygc2Vuc2Ug
dGhhdCB0aGlzIEJBUjAgaGFzIHRvIGJlCmNvbmZpZ3VyZWQuCgpDb3VsZCB5b3UgdHJ5IHRvIGJv
b3QgeW91ciBzeXN0ZW0gd2l0aG91dCB5b3VyIHBhdGNoLCBhbmQgd2l0aCB0aGUKcGNpPW5vbXNp
IGFyZ3VtZW50IG9uIHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lID8gVGhpcyB3aWxsIHByZXZlbnQg
dGhlCmRyaXZlciBmcm9tIHVzaW5nIE1TSSwgc28gaXQgc2hvdWxkIGZhbGxiYWNrIHRvIGxlZ2Fj
eSBJUlFzLiBJZiB0aGF0CndvcmtzLCB0aGVuIHdlIGhhdmUgdGhlIGNvbmZpcm1hdGlvbiB0aGUg
aXNzdWUgaXMgTVNJIHJlbGF0ZWQuIFRoaXMKd2lsbCBiZSB1c2VmdWwganVzdCB0byBoYXZlIGEg
Z29vZCBjb21taXQgbWVzc2FnZSB0aGF0IGV4cGxhaW5zIHRoZQpwcm9ibGVtLCBiZWNhdXNlIG90
aGVyd2lzZSBJIGFtIGZpbmUgd2l0aCB5b3VyIHBhdGNoLgoKVGhhbmtzIQoKVGhvbWFzCi0tIApU
aG9tYXMgUGV0YXp6b25pLCBDVE8sIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBl
bmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
