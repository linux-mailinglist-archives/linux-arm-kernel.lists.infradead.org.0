Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8654E138CB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgoA6IkushhVGDHLqtB/QIdRKYpys5EpvzZsA2d7QWk=; b=OqTkHdSS7+/9rJ
	Tz+60YW1hbQ7ieoWQ2yDUHHCVJV+LshJ6mvXE4Jvxr3D4udhj1N8ghOM9Z5h1J9UaD17gpw3ziFNN
	9KCVSW2c/VMFMkKdlfuWR09iUFt0jxTUFkQSCIBkFqikZnz1stCtm5avYysUd04N/Jvo7Cg/5a8YQ
	pkFOKDmcuhOLKuWy2ibpYXTBZajXfqUC/Y0oJS6we1Wzcm4ld04oVTpim7ikS/nezZ6M5zYmCLKGC
	wWuLaQx357wv1Y6aM1GavEUMXPjVzpwht/gSEiyKVSLsN+e33FEiHWqbIHbarZ/u93oNLqcjc9o4o
	Typn3jtrsIP99TqPbFBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqusp-0008UL-Rw; Mon, 13 Jan 2020 08:15:35 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqusf-0008TD-Pi; Mon, 13 Jan 2020 08:15:27 +0000
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 1ED34100013;
 Mon, 13 Jan 2020 08:15:16 +0000 (UTC)
Date: Mon, 13 Jan 2020 09:15:15 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 3/3] mtd: onenand: Enable compile testing of OMAP and
 Samsung drivers
Message-ID: <20200113091515.4404dbb6@xps13>
In-Reply-To: <20200113074632.GA1187@pi3>
References: <20191229183612.22133-3-krzk@kernel.org>
 <201912310904.9iM6MaFr%lkp@intel.com> <20191231073339.GA6747@pi3>
 <20200109161826.7fda02a4@xps13> <20200113074632.GA1187@pi3>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_001525_973235_C9B00888 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90
ZSBvbiBNb24sIDEzIEphbiAyMDIwCjA4OjQ2OjMyICswMTAwOgoKPiBPbiBUaHUsIEphbiAwOSwg
MjAyMCBhdCAwNDoxODoyNlBNICswMTAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gSGkgS3J6
eXN6dG9mLAo+ID4gCj4gPiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdy
b3RlIG9uIFR1ZSwgMzEgRGVjIDIwMTkKPiA+IDA4OjMzOjM5ICswMTAwOgo+ID4gICAKPiA+ID4g
T24gVHVlLCBEZWMgMzEsIDIwMTkgYXQgMTA6MDA6NDhBTSArMDgwMCwga2J1aWxkIHRlc3Qgcm9i
b3Qgd3JvdGU6ICAKPiA+ID4gPiBIaSBLcnp5c3p0b2YsCj4gPiA+ID4gCj4gPiA+ID4gSSBsb3Zl
IHlvdXIgcGF0Y2ghIFBlcmhhcHMgc29tZXRoaW5nIHRvIGltcHJvdmU6Cj4gPiA+ID4gCj4gPiA+
ID4gW2F1dG8gYnVpbGQgdGVzdCBXQVJOSU5HIG9uIGxpbnVzL21hc3Rlcl0KPiA+ID4gPiBbYWxz
byBidWlsZCB0ZXN0IFdBUk5JTkcgb24gdjUuNS1yYzQgbmV4dC0yMDE5MTIyMF0KPiA+ID4gPiBb
aWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwgcGxlYXNlIGRy
b3AgdXMgYSBub3RlIHRvIGhlbHAKPiA+ID4gPiBpbXByb3ZlIHRoZSBzeXN0ZW0uIEJUVywgd2Ug
YWxzbyBzdWdnZXN0IHRvIHVzZSAnLS1iYXNlJyBvcHRpb24gdG8gc3BlY2lmeSB0aGUKPiA+ID4g
PiBiYXNlIHRyZWUgaW4gZ2l0IGZvcm1hdC1wYXRjaCwgcGxlYXNlIHNlZSBodHRwczovL3N0YWNr
b3ZlcmZsb3cuY29tL2EvMzc0MDY5ODJdCj4gPiA+ID4gCj4gPiA+ID4gdXJsOiAgICBodHRwczov
L2dpdGh1Yi5jb20vMGRheS1jaS9saW51eC9jb21taXRzL0tyenlzenRvZi1Lb3psb3dza2kvbXRk
LW9uZW5hbmQtc2Ftc3VuZy1GaXgtcG9pbnRlci1jYXN0LVdwb2ludGVyLXRvLWludC1jYXN0LXdh
cm5pbmdzLW9uLTY0LWJpdC8yMDE5MTIzMC0wMzA4MzgKPiA+ID4gPiBiYXNlOiAgIGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dCBiZjhkMWNkNDM4NjUzNTAwNGM0YWZlN2YwM2QzN2Y5ODY0Yzk5NDBlCj4gPiA+ID4gcmVwcm9k
dWNlOgo+ID4gPiA+ICAgICAgICAgIyBhcHQtZ2V0IGluc3RhbGwgc3BhcnNlCj4gPiA+ID4gICAg
ICAgICAjIHNwYXJzZSB2ZXJzaW9uOiB2MC42LjEtMTI5LWczNDFkYWYyMC1kaXJ0eQo+ID4gPiA+
ICAgICAgICAgbWFrZSBBUkNIPXg4Nl82NCBhbGxtb2Rjb25maWcKPiA+ID4gPiAgICAgICAgIG1h
a2UgQz0xIENGPSctZmRpYWdub3N0aWMtcHJlZml4IC1EX19DSEVDS19FTkRJQU5fXycKPiA+ID4g
PiAKPiA+ID4gPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFn
Cj4gPiA+ID4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+
ID4gPiA+ICAgICAKPiA+ID4gCj4gPiA+IEl0IGlzIG5vdCByZWxhdGVkIHRvIG15IHBhdGNoLiBJ
J2xsIGZpeCBpdCB1cCBzb29uLiAgCj4gPiAKPiA+IEkgd291bGQgbGlrZSB0aGlzIHRvIGJlIGZp
eGVkIGJlZm9yZSBlbmFibGluZyBjb21waWxlIHRlc3RpbmcsIGlzIHlvdXIKPiA+IGZpeCByZWFk
PyAgCj4gCj4gWWVzLCB5b3UgcGlja2VkIHVwIHRoZSBmaXggaGVyZToKPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9sa21sLzIwMjAwMTAzMTY0MTU4LjQyNjUtMS1rcnprQGtlcm5lbC5vcmcvCgpQ
ZXJmZWN0LCBJIGRpZCBub3QgZXZlbiBsaW5rZWQgdGhlc2UgaXNzdWVzIHRvZ2V0aGVyLgoKVGhh
bmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
