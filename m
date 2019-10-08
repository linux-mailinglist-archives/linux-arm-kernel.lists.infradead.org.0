Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B95ECF9B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmnAj86AR0kyJPVPQksimdDn6hqTOmfx3Kkl0hZsRY0=; b=usdL7Rq5D7YUHI
	g3QMHu6mZDwugWYiDj5QTub56AGfoU+6r4fYt5nchzueQS76iTfvqQjUu8/t0EHHFapbcCKaIitDY
	1UfKsmYNtAWKWh7ZEJinHqGXA8CrVHG8sHIKEUhJfnmQ4DnF+RrsJs3TYsnz41KbC01r8XW7eJhOX
	NYegb8sAYN5Jsgu0tVRdJwKp4x186r7xR4d+EGSOcM7/dn5WV2CGu+Dfs3eEZkLE+/ylvk/24BU3S
	eDRfHgmCypU1kCwWCXdzAjf8XX6mUpirIvjo75AHGwPJawU9wyomvXO8Nwbp/1iUj5f9f4uz7b9G1
	LhHRHktDsVIeHIdGjaHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoZ4-0004ke-3t; Tue, 08 Oct 2019 12:26:06 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoYv-0004jB-8e
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:25:59 +0000
X-Originating-IP: 2.139.156.91
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net
 [2.139.156.91]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0CABA240017;
 Tue,  8 Oct 2019 12:25:49 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 00/21] Add new Marvell CN9130 SoC support
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
Date: Tue, 08 Oct 2019 14:25:44 +0200
Message-ID: <87d0f7todz.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_052557_603703_2038681D 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKPiBIZWxsbywKPgo+IFRoaXMgaXMgYSByZXNwaW4gb2YgdGhlIGxhc3QgcmVt
YWluaW5nIHBhdGNoc2V0IG5lZWRlZCB0byBmdWxseSBzdXBwb3J0Cj4gTWFydmVsbCBDTjkxMzAg
U29Dcy4gVGhlIENOOTEzMCBpcyBtYWRlIG9mIG9uZSBBUDgwNyBhbmQgb25lIGludGVybmFsCj4g
Q1AxMTUuIFRoZXJlIGFyZSB0aHJlZSBkZXZlbG9wbWVudCBib2FyZHMgdGhhdCBhcmUgbWFkZSBv
ZiB0aGlzIFNvQzoKPiAqIENOOTEzMC1EQgo+ICogQ045MTMxLURCICh3aXRoIG9uZSBhZGRpdGlv
bmFsIG1vZHVsYXIgQ1AxMTUgY29tcGFyZWQgdG8gQ045MTMwLURCKQo+ICogQ045MTMyLURCICh3
aXRoIHR3byBhZGRpdGlvbmFsIG1vZHVsYXIgQ1AxMTUgY29tcGFyZWQgdG8gQ045MTMwLURCKQo+
Cj4gVGhpcyBzZXJpZXMgYXBwbGllcyBvbiB0b3Agb2YgdjUuNC1yYzEgYW5kIHdvcmtzIHRoYW5r
cyB0byB0aGUKPiBwcmV2aW91c2x5IG1lcmdlZCBmb2xsb3dpbmcgc2VyaWVzOgo+ICogQ1AxMTAg
Q09NUEhZOgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEwNjc2NDcvCj4g
KiBBUDgwNiBDUFUgY2xvY2tzOgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIv
MTEwMzg1NzcvCj4gKiBBUDgwNyBjbG9ja3M6Cj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9jb3Zlci8xMTA3NjQzNS8KPiAqIENQMTE1IHBpbmN0cmw6Cj4gaHR0cDovL3BhdGNod29yay5v
emxhYnMub3JnL2NvdmVyLzExNDIxMDcvCj4KPiBBcyBDUDExMCBhbmQgQ1AxMTUgKGFsdGVybmF0
aXZlbHksIEFQODA2IGFuZCBBUDgwNykgYXJlIHZlcnkgc2ltaWxhciwKPiB3ZSBmaXJzdCByZW9y
Z2FuaXplIERUIGZpbGVzIHRvIGNyZWF0ZSBDUDExeCAoYW5kIEFQODB4KSBnZW5lcmljCj4gZmls
ZXMsIGJlZm9yZSBpbmNsdWRpbmcgdGhlbSBmcm9tIHRoZSBuZXcgc3BlY2lmaWMgQ1AxMTAvQ1Ax
MTUKPiAoQVA4MDYvQVA4MDcpIG9uZXMuCj4KPiBBIGZldyBzbWFsbCBpbXByb3ZlbWVudHMvZml4
ZXMgaW4gdGhlc2UgZmlsZXMgYXJlIGFsc28gY2FycmllZC4KPgo+IFRoYW5rcywKPiBNaXF1w6hs
Cj4KPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ID09PT09PT09PT09PT09PT09Cj4gKiBSZWJhc2VkIG9u
IHRvcCBvZiB2NS40LXJjMS4KPiAqIFJvYidzIFJldmlld2VkLWJ5IHRhZyBvbiB0aGUgZmlyc3Qg
YmluZGluZ3MgcGF0Y2ggKDAzKS4KPiAqIFVzZWQgdGhlIEFQX05BTUUgbWFjcm8gaW5zdGVhZCBv
ZiBoYXJkY29kaW5nIGFwODA2IGluIHRoZSBEVCB3aGljaAo+ICAgdHVybnMgZ2VuZXJpYyAoc3Bv
dHRlZCBieSBHcmVnb3J5KS4KPiAqIENvbnZlcnRlZCBNYXJ2ZWxsIFNvQyBjb21wYXRpYmxlIGJp
bmRpbmdzIHRvIHlhbWwgKHBhdGNoIDE2KSBhcwo+ICAgcmVxdWVzdGVkIGJ5IFJvYi4gQWRkIEdy
ZWdvcnkgYXMgdGhlIGZpbGUgbWFpbnRhaW5lci4KPgo+Cj4gQmVuIFBlbGVkICgxKToKPiAgIGR0
LWJpbmRpbmdzOiBhcDgweDogcmVwbGFjZSBBUDgwNiB3aXRoIEFQODB4Cj4KPiBHcnplZ29yeiBK
YXN6Y3p5ayAoNyk6Cj4gICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgQVA4MDYtZHVhbCBjYWNo
ZSBkZXNjcmlwdGlvbgo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIEFQODA2LXF1YWQgY2Fj
aGUgZGVzY3JpcHRpb24KPiAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBBUDgwNy1xdWFkIGNh
Y2hlIGRlc2NyaXB0aW9uCj4gICBkdC1iaW5kaW5nczogbWFydmVsbDogRGVjbGFyZSB0aGUgQ045
MTN4IFNvQyBjb21wYXRpYmxlcwo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIHN1cHBvcnQg
Zm9yIE1hcnZlbGwgQ045MTMwLURCCj4gICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgc3VwcG9y
dCBmb3IgTWFydmVsbCBDTjkxMzEtREIKPiAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCBzdXBw
b3J0IGZvciBNYXJ2ZWxsIENOOTEzMi1EQgo+Cj4gS29uc3RhbnRpbiBQb3JvdGNoa2luICgxKToK
PiAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IFByZXBhcmUgdGhlIGludHJvZHVjdGlvbiBvZiBBUDgw
NyBiYXNlZCBTb0NzCj4KPiBNaXF1ZWwgUmF5bmFsICgxMik6Cj4gICBhcm02NDogZHRzOiBtYXJ2
ZWxsOiBFbnVtZXJhdGUgdGhlIGZpcnN0IEFQODA2IHN5c2Nvbgo+ICAgYXJtNjQ6IGR0czogbWFy
dmVsbDogQWRkIEFQODA2LWR1YWwgbWlzc2luZyBDUFUgY2xvY2tzCj4gICBNQUlOVEFJTkVSUzog
QWRkIG5ldyBNYXJ2ZWxsIENOOTEzMC1iYXNlZCBmaWxlcyB0byB0cmFjawo+ICAgYXJtNjQ6IGR0
czogbWFydmVsbDogTW92ZSBjbG9ja3MgdG8gQVA4MDYgc3BlY2lmaWMgZmlsZQo+ICAgYXJtNjQ6
IGR0czogbWFydmVsbDogQWRkIHN1cHBvcnQgZm9yIEFQODA3L0FQODA3LXF1YWQKPiAgIGFybTY0
OiBkdHM6IG1hcnZlbGw6IEZpeCBDUDExMCBOQU5EIGNvbnRyb2xsZXIgbm9kZSBtdWx0aS1saW5l
IGNvbW1lbnQKPiAgICAgYWxpZ25tZW50Cj4gICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBQcmVwYXJl
IHRoZSBpbnRyb2R1Y3Rpb24gb2YgQ1AxMTUKPiAgIGFybTY0OiBkdHM6IG1hcnZlbGw6IERyb3Ag
UENJZSBJL08gcmFuZ2VzIGZyb20gQ1AxMXggZmlsZQo+ICAgYXJtNjQ6IGR0czogbWFydmVsbDog
RXh0ZXJuYWxpemUgUENJZSBtYWNyb3MgZnJvbSBDUDExeCBmaWxlCj4gICBhcm02NDogZHRzOiBt
YXJ2ZWxsOiBBZGQgc3VwcG9ydCBmb3IgQ1AxMTUKPiAgIGR0LWJpbmRpbmdzOiBtYXJ2ZWxsOiBD
b252ZXJ0IHRoZSBTb0MgY29tcGF0aWJsZXMgZGVzY3JpcHRpb24gdG8gWUFNTAo+ICAgYXJtNjQ6
IGR0czogbWFydmVsbDogQWRkIHN1cHBvcnQgZm9yIE1hcnZlbGwgQ045MTMwIFNvQyBzdXBwb3J0
CgoKQWxsIHNlcmllcyBhcHBsaWVkIG9uIG12ZWJ1L2R0NjQKClRoYW5rcywKCkdyZWdvcnkKCgo+
Cj4gIC4uLnJvbGxlci50eHQgPT4gYXA4MHgtc3lzdGVtLWNvbnRyb2xsZXIudHh0fSB8ICAxNCAr
LQo+ICAuLi4vYmluZGluZ3MvYXJtL21hcnZlbGwvYXJtYWRhLTdrLThrLnR4dCAgICAgfCAgMjQg
LQo+ICAuLi4vYmluZGluZ3MvYXJtL21hcnZlbGwvYXJtYWRhLTdrLThrLnlhbWwgICAgfCAgNjEg
KysKPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAz
ICstCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9NYWtlZmlsZSAgICAgICAgICB8ICAg
MyArCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtNzB4MC5kdHNpICB8ICAy
OCArLQo+ICAuLi4vYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtODA0MC1tY2Jpbi5kdHNpICAgfCAg
IDMgKy0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS04MHgwLmR0c2kgIHwg
IDU2ICstCj4gIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNi1kdWFsLmR0c2kgICB8
ICAyMyArCj4gIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNi1xdWFkLmR0c2kgICB8
ICA0MiArKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWFwODA2LmR0c2kg
fCA0NTYgKy0tLS0tLS0tLS0tLS0KPiAgLi4uL2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWFwODA3
LXF1YWQuZHRzaSAgIHwgIDkzICsrKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLWFwODA3LmR0c2kgfCAgMjkgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLWFwODB4LmR0c2kgfCA0NDQgKysrKysrKysrKysrKysKPiAgLi4uL2FybTY0L2Jvb3QvZHRz
L21hcnZlbGwvYXJtYWRhLWNvbW1vbi5kdHNpIHwgICA0ICstCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvbWFydmVsbC9hcm1hZGEtY3AxMTAuZHRzaSB8IDU3NSArLS0tLS0tLS0tLS0tLS0tLS0KPiAg
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExNS5kdHNpIHwgIDEyICsKPiAg
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExeC5kdHNpIHwgNTY4ICsrKysr
KysrKysrKysrKysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9jbjkxMzAtZGIuZHRz
ICAgICB8IDQwMyArKysrKysrKysrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2Nu
OTEzMC5kdHNpICAgICAgIHwgIDM3ICsrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9j
bjkxMzEtZGIuZHRzICAgICB8IDIwMiArKysrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2NuOTEzMi1kYi5kdHMgICAgIHwgMjIxICsrKysrKysKPiAgMjIgZmlsZXMgY2hhbmdlZCwg
MjIxMCBpbnNlcnRpb25zKCspLCAxMDkxIGRlbGV0aW9ucygtKQo+ICByZW5hbWUgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tYXJ2ZWxsL3thcDgwNi1zeXN0ZW0tY29udHJv
bGxlci50eHQgPT4gYXA4MHgtc3lzdGVtLWNvbnRyb2xsZXIudHh0fSAoOTElKQo+ICBkZWxldGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tYXJ2ZWxs
L2FybWFkYS03ay04ay50eHQKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vbWFydmVsbC9hcm1hZGEtN2stOGsueWFtbAo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNy1xdWFk
LmR0c2kKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9h
cm1hZGEtYXA4MDcuZHRzaQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0
cy9tYXJ2ZWxsL2FybWFkYS1hcDgweC5kdHNpCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWNwMTE1LmR0c2kKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtY3AxMXguZHRzaQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2NuOTEzMC1kYi5kdHMK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9jbjkxMzAu
ZHRzaQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2Nu
OTEzMS1kYi5kdHMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFy
dmVsbC9jbjkxMzItZGIuZHRzCj4KPiAtLSAKPiAyLjIwLjEKPgoKLS0gCkdyZWdvcnkgQ2xlbWVu
dCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHA6Ly9i
b290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
