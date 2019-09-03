Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2F5A7746
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bq/yZMZbekBIS3zqVvdESatPmNVmVXVmlFWZAf0ZGPM=; b=RR9z01OyidZxKj
	IKnR6mLu9Kpz1Jyk0uNcE6JBJ/LU9gzJ5Q/ilkEAe8Syb3P+v2c5QLRfogJwHOjHZGRHfa4x8LW55
	7VHHiMbH4De2Gg4Ke0W5oKMR9/oDMryM5XG9vebOInHXWobS80qYINVlStcUxVzu/++RRDKiTgNoV
	Q4HVc5wVgsa7NoaO79Tj/LYjq08zU9yZH1xx8h6/CquhrK3L/R9cTeuMTOzhcdZOE9RMxejeP5npn
	2C6cR4joxxY0hd8h6C+QU8QDK7vcQfgaPmWwruuKCRjghP16ImlJDHGmH2lT1RDoIa6CGagDFn0Yb
	X9/3jOT9dfWfaF/8iiXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Hd4-0005g6-LD; Tue, 03 Sep 2019 22:50:26 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Hcp-0005Ao-C2
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:50:13 +0000
Received: from localhost (unknown [172.20.6.135])
 by mail.nic.cz (Postfix) with ESMTPSA id AA024140B56;
 Wed,  4 Sep 2019 00:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1567551006; bh=Yb5MOR0or9iRz7eZ2CI8JdQWBY7LAoLqNKmGSm+wrKQ=;
 h=Date:From:To;
 b=XSi0/LA2ZP34nzqkSUXPhVbMRuFjq04zF2USCH7GrA3IIViLt9WFDmp0iQAmGNs4f
 7REY7ZgNr/rgIae+s3rMw987YuTLGg0k4byhZvpw3xA67riDz+MLAE28Ad3vzrGfK4
 Si7GSIwfIVoW+Pd5l3E8VrubI61QNRkzftas8wCI=
Date: Wed, 4 Sep 2019 00:50:06 +0200
From: Marek Behun <marek.behun@nic.cz>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL] ARM: mvebu: dt64 for v5.4 (#2)
Message-ID: <20190904005006.22b17ab5@nic.cz>
In-Reply-To: <CAK8P3a0BqjtVoTrUedDGHBUv8gwL23XWqYM2831v7G+23i8++A@mail.gmail.com>
References: <87h85two0r.fsf@FE-laptop>
 <CAK8P3a0BqjtVoTrUedDGHBUv8gwL23XWqYM2831v7G+23i8++A@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_155011_710193_E8303ED4 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAzIFNlcCAyMDE5IDIzOjA1OjQ3ICswMjAwCkFybmQgQmVyZ21hbm4gPGFybmRAYXJu
ZGIuZGU+IHdyb3RlOgoKPiBPbiBUdWUsIFNlcCAzLCAyMDE5IGF0IDI6NDEgUE0gR3JlZ29yeSBD
TEVNRU5UCj4gPGdyZWdvcnkuY2xlbWVudEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiBIZXJlIGlz
IHRoZSBzZWNvbmQgcHVsbCByZXF1ZXN0IGZvciBkdDY0IGZvciBtdmVidSBmb3IgdjUuNC4KPiA+
Cj4gPiBGb3IgdGhlIFR1cnJpcyBNb3ggYm9hcmQgdGhlcmUgd2FzIGRlcGVuZGVuY2llcyB3aXRo
IG1veHRldCBoZWFkZXIgd2hpY2gKPiA+IHdhcyBhbHJlYWR5IG1lcmdlZCBpbiB5b3VyIGFybS9k
cml2ZXJzIGJyYW5jaC4gVGhhdCB0aGUgcmVhc29uIHdoeSBJCj4gPiBtZXJnZWQgdGhpcyBicmFu
Y2ggaW4gbXkgbXZlYnUvZHQ2NCBicmFuY2guCj4gPgo+ID4gTGV0IG1lIGtub3cgaWYgaXQgaXMg
YSBwcm9ibGVtIGFuZCBpZiB5b3Ugd2FudCB0aGF0IEkgZG8gaXQgaW4gYQo+ID4gZGlmZmVyZW50
IHdheS4gIAo+IAo+IEkgZG9uJ3QgcmVhbGx5IGxpa2UgdGhpcywgYnV0IGl0J3MgdG9vIGxhdGUg
dG8gZG8gaXQgcmlnaHQgbm93LiBUaGUgcHJvYmxlbSBpcwo+IHRoYXQgSSBzaG91bGQgaGF2ZSBu
b3QgcGlja2VkIHVwIHRoZSBwYXRjaGVzIGZyb20gdGhlIGxpc3QgaW4gdGhlIGZpcnN0Cj4gcGxh
Y2UgaWYgdGhlcmUgYXJlIHRoZXNlIGRlcGVuZGVuY2llcy4KPiAKPiBUaGlzIGNvdWxkIGhhdmUg
YmVlbiBjb21tdW5pY2F0ZWQgYmV0dGVyIGluIHRoZSBwYXRjaCBzZXJpZXMsIGJ1dAo+IGl0IHJl
YWxseSBteSBvd24gZmF1bHQuCj4gCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiBtdmVidSBkdDY0IGZvciA1LjQg
KHBhcnQgMikKPiA+Cj4gPiBBZGQgc3VwcG9ydCBmb3IgVHVycmlzIE1veCBib2FyZCAoQXJtYWRh
IDM3MjAgU29DIGJhc2VkKQo+ID4KPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IE1hcmVrIEJlaMO6biAoMyk6Cj4g
PiAgICAgICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBhcm1hZGEtMzd4eDogYWRkIFNQSSBDUzEgcGlu
Y3RybAo+ID4gICAgICAgZHQtYmluZGluZ3M6IG1hcnZlbGw6IGRvY3VtZW50IFR1cnJpcyBNb3gg
Y29tcGF0aWJsZQo+ID4gICAgICAgYXJtNjQ6IGR0czogbWFydmVsbDogYWRkIERUUyBmb3IgVHVy
cmlzIE1veCAgCj4gCj4gSSB0aGluayB0aGUgYmVzdCB3YXkgZm9yd2FyZCB3b3VsZCBiZSBmb3Ig
bWUgdG8gYXBwbHkgdGhlCj4gcmVtYWluaW5nIHBhdGNoZXMgb24gdG9wIG9mIHRoZSBhcm0vZHJp
dmVycyBicmFuY2gsIHRvIGF2b2lkCj4gYWxzbyBwdWxsaW5nIGluIHlvdXIgb3RoZXIgRFQgY2hh
bmdlcyBpbnRvIGFybS9kcml2ZXJzLCBvciBwdWxsaW5nCj4gaW4gYWxsIG9mIGFybS9kcml2ZXJz
IGludG8gYXJtL2R0Lgo+IAo+IFdvdWxkIHRoYXQgd29yayBmb3IgeW91Pwo+IAo+ICAgICAgICBB
cm5kCgpIaSBBcm5kLAoKSSBhbHNvIHNlbnQgeW91IGEgc2VyaWVzIGZvciBmaXhpbmcgc29tZSBn
Y2Mgd2FybmluZ3MgZm9yIHRoZSBtb3h0ZXQKZHJpdmVyLCB3aXRoIHN1YmplY3QKICBbUEFUQ0gg
YXJtc29jL2RyaXZlcnMgMC8yXSBUdXJyaXMgTW94IG1veHRldCB3YXJuaW5ncyBmaXhlcwphbmQg
YSBuZXcgZHJpdmVyIGZvciBUdXJyaXMgTW94IHNlY3VyZSBmaXJtd2FyZToKICBbUEFUQ0ggYXJt
L2RyaXZlcnMgMC8zXSBUdXJyaXMgTW94IHJXVE0gZmlybXdhcmUgc3VwcG9ydAoKSSBwcm9iYWJs
eSBzaG91bGQgaGF2ZSBiZWVuIHNlbmRpbmcgdGhlc2Ugd2l0aCBtdmVidSB0YWcgdG8gYmUgYXBw
bGllZApieSBHcmVnb3J5IGZyb20gdGhlIGJlZ2lubmluZy4gSSBhbSBzb3JyeS4KCldpbGwgeW91
IGFwcGx5IHRoZXNlIG9yIHNob3VsZCBJIHNlbmQgdGhlbSBhZ2FpbiwgdGhpcyB0aW1lIHRvIEdy
ZWdvcnk/CgpUaGFuayB5b3UuCgpNYXJlawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
