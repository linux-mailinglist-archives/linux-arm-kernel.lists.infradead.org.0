Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0582DA07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uihSC23W8lKI+++Kqo7pJ/UrKq6/XDWWr+QuHcuHh/o=; b=Tc9oVQH39wdsqs
	72oRsmA2s132fIUghQiIKaBCPMJDYlzLvjM4xvM67TMLJT25LFXk1Sgk96JajhyVeOtWEKvJyl7uv
	gKL3dlO1bN3K2Ga9c1PTX6w4yfeTQRrp+IiLz4ruxLTroectqZTP/Blr1W/rjYL6uPahlxM3hqHY6
	1R4UZFau4nT5VYkAe7hhruic3RjOMvWxGbFv4AoM7FPvUvgSVSIGzlBeO7VW7VTeN7lyLEXTNFRMB
	ZjNTG4J5x2IkqVFJzg15z2I5G6eEf4qOxB+/YxXm5Re/2V+OFglzavbZAO5OF8EINfoqbnsrNJ3uH
	+y+Fw87EsjHylgxVaKEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvW3-0006bd-29; Wed, 29 May 2019 10:09:03 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvVw-0006aq-3I
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:08:57 +0000
X-Originating-IP: 90.88.147.134
Received: from xps13 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 4702EC0004;
 Wed, 29 May 2019 10:08:35 +0000 (UTC)
Date: Wed, 29 May 2019 12:08:33 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v4 01/10] ata: libahci: Ensure the host interrupt status
 bits are cleared
Message-ID: <20190529120833.29334c70@xps13>
In-Reply-To: <53ce8c5b-46fc-c969-5168-18e4bcc62cde@arm.com>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
 <20190521143023.31810-2-miquel.raynal@bootlin.com>
 <CAHG4imNxsdzjzRpFWnL+PuznjdOU4hsp2E-g1bt4WVJeokfT3w@mail.gmail.com>
 <53ce8c5b-46fc-c969-5168-18e4bcc62cde@arm.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_030856_300736_F056B9EA 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 raymond pang <raymondpangxd@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Nadav Haklai <nadavh@marvell.com>, devicetree@vger.kernel.org,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, linux-ide@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYyAmIFJheW1vbmQsCgpNYXJjIFp5bmdpZXIgPG1hcmMuenluZ2llckBhcm0uY29tPiB3
cm90ZSBvbiBUaHUsIDIzIE1heSAyMDE5IDEwOjI2OjAxCiswMTAwOgoKPiBPbiAyMy8wNS8yMDE5
IDA0OjExLCByYXltb25kIHBhbmcgd3JvdGU6Cj4gPiBIaSBNaXF1ZWwsCj4gPiAKPiA+IFRoaXMg
cGF0Y2ggYWRkcyBjbGVhcmluZyBHSEMuSVMgaW50byBob3QgcGF0aCwgY291bGQgeW91IGV4cGxh
aW4gaG93Cj4gPiBpcnEgc3Rvcm0gaXMgZ2VuZXJhdGVkPyB0aGFua3MKPiA+IEFjY29yZGluZyB0
byBBSENJIFNwZWMsIEhCQSBzaG91bGQgbm90IHJlZmVyIHRvIEdIQy5JUyB0byBnZW5lcmF0ZQo+
ID4gTVNJIHdoZW4gYXBwbHlpbmcgbXVsdGlwbGUgTVNJcy4gIAo+IAo+IFdlbGwgc3BvdHRlZC4K
PiAKPiBJIGhhdmUgdGhlIHVnbHkgZmVlbGluZyB0aGF0IHRoaXMgaXMgYmVjYXVzZSB0aGUgTWFy
dmVsbCBBSENJCj4gaW1wbGVtZW50YXRpb24gaXMgbm90IHVzaW5nIE1TSXMgYXQgYWxsLCBidXQg
aW5zdGVhZCBhIHBhaXIgb2Ygd2lyZWQKPiBpbnRlcnJ1cHRzICh3aGljaCBhcmUgbGV2ZWwgdHJp
Z2dlcmVkIGluc3RlYWQgb2YgZWRnZSwgaGVuY2UgdGhlCj4gc2NyZWFtaW5nIGludGVycnVwdHMp
Lgo+IAo+IFRoZSBjaGFuZ2VzIGluIHRoZSBmb2xsb3dpbmcgcGF0Y2hlcyBhYnVzZSB0aGUgcmVz
dCBvZiB0aGUgZHJpdmVyIGJ5Cj4gcHJldGVuZGluZyB0aGlzIGlzIGEgYSBtdWx0aS1NU0kgc2V0
dXAsIHdoaWxlIGl0IGNsZWFybHkgZG9lc24ndCBtYXRjaAo+IHRoZSBleHBlY3RhdGlvbiBvZiB0
aGUgQUhDSSBzcGVjIGZvciBNU0lzLgo+IAo+IEl0IGxvb2tzIGxpa2UgdGhpcyBzaG91bGRuJ3Qg
YmUgaW1wb3NlZCBvbiBvdGhlciB1bnN1c3BlY3RpbmcKPiBpbXBsZW1lbnRhdGlvbnMgd2hpY2gg
Y29ycmVjdGx5IHVzZSBlZGdlLXRyaWdnZXJlZCBNU0lzIGFuZCBkbyBub3QKPiByZXF1aXJlIHN1
Y2ggYW4gTU1JTyBhY2Nlc3MuCgpJIHVuZGVyc3RhbmQgeW91ciBjb25jZXJuLCBsZXQgbWUgYWRk
IGEgQUhDSV9IRkxBR19MRVZFTF9NU0kgaW4KaHByaXYtPmZsYWdzIHdoaWNoIHdpbGwgYmUgdXNl
ZCBieSB0aGUgbXZlYnVfYWhjaS5jIGRyaXZlciB0byByZXF1ZXN0CmZvciB0aGlzIE1NSU8gYWNj
ZXNzLiBUaGlzIHdheSwgdGhlIGhvdCBwYXRoIHJlbWFpbnMgdGhlIHNhbWUuCgoKVGhhbmtzLApN
aXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
