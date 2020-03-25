Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A6D192742
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H7CYVPjvsLV/GnOSW9u5EJ6R6itB5FleJ8iVAg0VzUs=; b=jEJTIQ1hCgwptY+d50rtpbId8
	yUSEWJckpBqAvPrjfCKVj70f8p19ZVmAd95m0JHdW1KVLvUhwOMWk0voCn5h1a/ZOmjFO/QutybtV
	J2SFXR841kqm3wwHQUscVISUUn6Q5DQE1MyjEnb9/BgX5BG5ferkoJ8w5hlm13jeFr3V+i7XukVA6
	62bHc+P09F8NoTLyIcheT8B5X75Z35wDnhgC8EcQKtydslVwYL7VbamJku661u7Cx3Yv5m5BZ90rN
	497+b5bmvdSUZsjrWiDW0JvT4YN3YS4zZMlU6zdx1L/Ak3Flrr4yEpEslmkL7UGmp7mHKXn6RlH11
	Wosz+FIyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4K2-0007wo-9d; Wed, 25 Mar 2020 11:35:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4Js-0007wP-Ep; Wed, 25 Mar 2020 11:35:37 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA7AF20722;
 Wed, 25 Mar 2020 11:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585136136;
 bh=hDdH6NzW082kdtiNJh6NcBX/8zpFKDBtBCPyNFL3akc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Q7GoJqppdtvNHQJdM0XE9y8P+ki1AutLvirfSEQTn6FrAdVzJZHPIwqIDKhFlg2Q0
 Tkrvk1QDhThLTbgftm+MddcYEzlZs3PpQ+Y2cnZ+0BK9mRoxAcy45dF3s/9fBv6nq4
 7736pvMud3vI8wyuEoiF/EqEkM+W6ffESuahi3Lw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jH4Jq-00FYG3-87; Wed, 25 Mar 2020 11:35:34 +0000
MIME-Version: 1.0
Date: Wed, 25 Mar 2020 11:35:34 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v7 01/12] irqchip: Add driver for Loongson I/O Local
 Interrupt Controller
In-Reply-To: <AFYQ7Q.2LEJN3L8ZS5J3@crapouillou.net>
References: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
 <20200325022916.106641-2-jiaxun.yang@flygoat.com>
 <AFYQ7Q.2LEJN3L8ZS5J3@crapouillou.net>
Message-ID: <30bbde289a0cc4c1bfc0d3f6475f8f3e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: paul@crapouillou.net, jiaxun.yang@flygoat.com,
 linux-mips@vger.kernel.org, chenhc@lemote.com, tglx@linutronix.de,
 jason@lakedaemon.net, robh+dt@kernel.org, mark.rutland@arm.com,
 tsbogend@alpha.franken.de, corbet@lwn.net, john@phrozen.org,
 matthias.bgg@gmail.com, jdelvare@suse.com, davem@davemloft.net,
 mchehab+samsung@kernel.org, Jonathan.Cameron@huawei.com,
 gregkh@linuxfoundation.org, andriy.shevchenko@linux.intel.com,
 geert+renesas@glider.be, krzk@kernel.org, miquel.raynal@bootlin.com,
 ak@linux.intel.com, hns@goldelico.com, ebiederm@xmission.com,
 yangtiezhu@loongson.cn, yangyinglu@loongson.cn, allison@lohutok.net,
 b.zolnierkie@samsung.com, paulburton@kernel.org, manuel.lauss@gmail.com,
 fancer.lancer@gmail.com, matt.redfearn@mips.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-ide@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_043536_536968_171077A2 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-doc@vger.kernel.org, "H.
 Nikolaus Schaller" <hns@goldelico.com>, John Crispin <john@phrozen.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Huacai Chen <chenhc@lemote.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Andi Kleen <ak@linux.intel.com>, Paul Burton <paulburton@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Yinglu Yang <yangyinglu@loongson.cn>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Manuel Lauss <manuel.lauss@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0yNSAxMToyNSwgUGF1bCBDZXJjdWVpbCB3cm90ZToKPiBIaSBKaWF4dW4sCj4g
Cj4gCj4gTGUgbWVyLiAyNSBtYXJzIDIwMjAgw6AgMTA6MjgsIEppYXh1biBZYW5nIDxqaWF4dW4u
eWFuZ0BmbHlnb2F0LmNvbT4gYSAKPiDDqWNyaXQgOgo+PiBUaGlzIGNvbnRyb2xsZXIgYXBwZWFy
ZWQgb24gTG9vbmdzb24gZmFtaWx5IG9mIGNoaXBzIGFzIHRoZSBwcmltYXJ5Cj4+IHBhY2thZ2Ug
aW50ZXJydXB0IHNvdXJjZS4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEppYXh1biBZYW5nIDxqaWF4
dW4ueWFuZ0BmbHlnb2F0LmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBIdWFjYWkgQ2hlbiA8Y2hl
bmhjQGxlbW90ZS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEh1YWNhaSBDaGVuIDxjaGVuaGNAbGVt
b3RlLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4+
IC0tLQo+PiB2NC12NToKPj4gCVJlc29sdmUgc3VnZ2VzdGlvbnMgZnJvbSBtYXo6Cj4+IAkJLSBS
ZW1vdmUgRFQgdmFsaWRhdGlvbgo+PiAJCS0gU2ltcGxpZnkgdW5udWNlc3NhcnkgZnVuY3Rpb25z
ICYgdmFyaWFibGVzCj4+IC0tLQo+PiAgZHJpdmVycy9pcnFjaGlwL0tjb25maWcgICAgICAgICAg
ICAgICAgfCAgIDkgKwo+PiAgZHJpdmVycy9pcnFjaGlwL01ha2VmaWxlICAgICAgICAgICAgICAg
fCAgIDEgKwo+PiAgZHJpdmVycy9pcnFjaGlwL2lycS1sb29uZ3Nvbi1saW9pbnRjLmMgfCAyNjEg
Cj4+ICsrKysrKysrKysrKysrKysrKysrKysrKysKPj4gIDMgZmlsZXMgY2hhbmdlZCwgMjcxIGlu
c2VydGlvbnMoKykKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2lycWNoaXAvaXJxLWxv
b25nc29uLWxpb2ludGMuYwo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hpcC9LY29u
ZmlnIGIvZHJpdmVycy9pcnFjaGlwL0tjb25maWcKPj4gaW5kZXggNmQzOTc3MzIxMzhkLi5jNjA5
ZWFhMzE5ZDIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9LY29uZmlnCj4+ICsrKyBi
L2RyaXZlcnMvaXJxY2hpcC9LY29uZmlnCj4+IEBAIC01MTMsNCArNTEzLDEzIEBAIGNvbmZpZyBF
WFlOT1NfSVJRX0NPTUJJTkVSCj4+ICAJICBTYXkgeWVzIGhlcmUgdG8gYWRkIHN1cHBvcnQgZm9y
IHRoZSBJUlEgY29tYmluZXIgZGV2aWNlcyBlbWJlZGRlZAo+PiAgCSAgaW4gU2Ftc3VuZyBFeHlu
b3MgY2hpcHMuCj4+IAo+PiArY29uZmlnIExPT05HU09OX0xJT0lOVEMKPj4gKwlib29sICJMb29u
Z3NvbiBMb2NhbCBJL08gSW50ZXJydXB0IENvbnRyb2xsZXIiCj4+ICsJZGVwZW5kcyBvbiBNQUNI
X0xPT05HU09ONjQKPj4gKwlkZWZhdWx0IHkKPj4gKwlzZWxlY3QgSVJRX0RPTUFJTgo+PiArCXNl
bGVjdCBHRU5FUklDX0lSUV9DSElQCj4+ICsJaGVscAo+PiArCSAgU3VwcG9ydCBmb3IgdGhlIExv
b25nc29uIExvY2FsIEkvTyBJbnRlcnJ1cHQgQ29udHJvbGxlci4KPj4gKwo+PiAgZW5kbWVudQo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL01ha2VmaWxlIGIvZHJpdmVycy9pcnFjaGlw
L01ha2VmaWxlCj4+IGluZGV4IGVhZTBkNzhjYmYyMi4uNWU3Njc4ZWZkZmU2IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2lycWNoaXAvTWFrZWZpbGUKPj4gKysrIGIvZHJpdmVycy9pcnFjaGlwL01h
a2VmaWxlCj4+IEBAIC0xMDUsMyArMTA1LDQgQEAgb2JqLSQoQ09ORklHX01BREVSQV9JUlEpCQkr
PSBpcnEtbWFkZXJhLm8KPj4gIG9iai0kKENPTkZJR19MUzFYX0lSUSkJCQkrPSBpcnEtbHMxeC5v
Cj4+ICBvYmotJChDT05GSUdfVElfU0NJX0lOVFJfSVJRQ0hJUCkJKz0gaXJxLXRpLXNjaS1pbnRy
Lm8KPj4gIG9iai0kKENPTkZJR19USV9TQ0lfSU5UQV9JUlFDSElQKQkrPSBpcnEtdGktc2NpLWlu
dGEubwo+PiArb2JqLSQoQ09ORklHX0xPT05HU09OX0xJT0lOVEMpCQkrPSBpcnEtbG9vbmdzb24t
bGlvaW50Yy5vCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLWxvb25nc29uLWxp
b2ludGMuYyAKPj4gYi9kcml2ZXJzL2lycWNoaXAvaXJxLWxvb25nc29uLWxpb2ludGMuYwo+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjE4ZGUyYzA5ZWNlNAo+
PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtbG9vbmdzb24tbGlv
aW50Yy5jCj4+IEBAIC0wLDAgKzEsMjYxIEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMAo+PiArLyoKPj4gKyAqICBDb3B5cmlnaHQgKEMpIDIwMjAsIEppYXh1biBZYW5n
IDxqaWF4dW4ueWFuZ0BmbHlnb2F0LmNvbT4KPj4gKyAqICBMb29uZ3NvbiBMb2NhbCBJTyBJbnRl
cnJ1cHQgQ29udHJvbGxlciBzdXBwb3J0Cj4+ICsgKi8KPj4gKwo+PiArI2luY2x1ZGUgPGxpbnV4
L2Vycm5vLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvaW5pdC5oPgo+PiArI2luY2x1ZGUgPGxpbnV4
L3R5cGVzLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4+ICsjaW5jbHVkZSA8
bGludXgvaW9wb3J0Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvaXJxY2hpcC5oPgo+PiArI2luY2x1
ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4KPj4g
KyNpbmNsdWRlIDxsaW51eC9pby5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3NtcC5oPgo+PiArI2lu
Y2x1ZGUgPGxpbnV4L2lycWNoaXAvY2hhaW5lZF9pcnEuaD4KPj4gKwo+PiArI2luY2x1ZGUgPGJv
b3RfcGFyYW0uaD4KPj4gKwo+PiArI2RlZmluZSBMSU9JTlRDX0NISVBfSVJRCTMyCj4+ICsjZGVm
aW5lIExJT0lOVENfTlVNX1BBUkVOVCA0Cj4+ICsKPj4gKyNkZWZpbmUgTElPSU5UQ19JTlRDX0NI
SVBfU1RBUlQJMHgyMAo+PiArCj4+ICsjZGVmaW5lIExJT0lOVENfUkVHX0lOVENfU1RBVFVTCShM
SU9JTlRDX0lOVENfQ0hJUF9TVEFSVCArIDB4MjApCj4+ICsjZGVmaW5lIExJT0lOVENfUkVHX0lO
VENfRU5fU1RBVFVTCShMSU9JTlRDX0lOVENfQ0hJUF9TVEFSVCArIDB4MDQpCj4+ICsjZGVmaW5l
IExJT0lOVENfUkVHX0lOVENfRU5BQkxFCShMSU9JTlRDX0lOVENfQ0hJUF9TVEFSVCArIDB4MDgp
Cj4+ICsjZGVmaW5lIExJT0lOVENfUkVHX0lOVENfRElTQUJMRQkoTElPSU5UQ19JTlRDX0NISVBf
U1RBUlQgKyAweDBjKQo+PiArI2RlZmluZSBMSU9JTlRDX1JFR19JTlRDX1BPTAkoTElPSU5UQ19J
TlRDX0NISVBfU1RBUlQgKyAweDEwKQo+PiArI2RlZmluZSBMSU9JTlRDX1JFR19JTlRDX0VER0UJ
KExJT0lOVENfSU5UQ19DSElQX1NUQVJUICsgMHgxNCkKPj4gKwo+PiArI2RlZmluZSBMSU9JTlRD
X1NISUZUX0lOVHgJNAo+PiArCj4+ICtzdHJ1Y3QgbGlvaW50Y19oYW5kbGVyX2RhdGEgewo+PiAr
CXN0cnVjdCBsaW9pbnRjX3ByaXYJKnByaXY7Cj4+ICsJdTMyCQkJcGFyZW50X2ludF9tYXA7Cj4+
ICt9Owo+PiArCj4+ICtzdHJ1Y3QgbGlvaW50Y19wcml2IHsKPj4gKwlzdHJ1Y3QgaXJxX2NoaXBf
Z2VuZXJpYwkJKmdjOwo+PiArCXN0cnVjdCBsaW9pbnRjX2hhbmRsZXJfZGF0YQloYW5kbGVyW0xJ
T0lOVENfTlVNX1BBUkVOVF07Cj4+ICsJdTgJCQkJbWFwX2NhY2hlW0xJT0lOVENfQ0hJUF9JUlFd
Owo+PiArfTsKPj4gKwo+PiArc3RhdGljIHZvaWQgbGlvaW50Y19jaGFpbmVkX2hhbmRsZV9pcnEo
c3RydWN0IGlycV9kZXNjICpkZXNjKQo+PiArewo+PiArCXN0cnVjdCBsaW9pbnRjX2hhbmRsZXJf
ZGF0YSAqaGFuZGxlciA9IAo+PiBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+PiAr
CXN0cnVjdCBpcnFfY2hpcCAqY2hpcCA9IGlycV9kZXNjX2dldF9jaGlwKGRlc2MpOwo+PiArCXN0
cnVjdCBpcnFfY2hpcF9nZW5lcmljICpnYyA9IGhhbmRsZXItPnByaXYtPmdjOwo+PiArCXUzMiBw
ZW5kaW5nOwo+PiArCj4+ICsJY2hhaW5lZF9pcnFfZW50ZXIoY2hpcCwgZGVzYyk7Cj4+ICsKPj4g
KwlwZW5kaW5nID0gcmVhZGwoZ2MtPnJlZ19iYXNlICsgTElPSU5UQ19SRUdfSU5UQ19TVEFUVVMp
Owo+PiArCj4+ICsJaWYgKCFwZW5kaW5nKQo+PiArCQlzcHVyaW91c19pbnRlcnJ1cHQoKTsKPj4g
Kwo+PiArCXdoaWxlIChwZW5kaW5nKSB7Cj4+ICsJCWludCBiaXQgPSBfX2ZmcyhwZW5kaW5nKTsK
Pj4gKwo+PiArCQlnZW5lcmljX2hhbmRsZV9pcnEoaXJxX2ZpbmRfbWFwcGluZyhnYy0+ZG9tYWlu
LCBiaXQpKTsKPj4gKwkJcGVuZGluZyAmPSB+QklUKGJpdCk7Cj4+ICsJfQo+IAo+IENvbnNpZGVy
IHVzaW5nIHRoZSBmb3JfZWFjaF9zZXRfYml0KCkgbWFjcm8gZnJvbSA8bGludXgvYml0b3BzLmg+
Lgo+IFNlZSBkcml2ZXJzL2lycWNoaXAvaXJxLWluZ2VuaWMtdGN1LmMgZm9yIGluc3RhbmNlLgoK
d2hpY2ggd291bGQgcmVxdWlyZSBjaGFuZ2luZyB0aGUgcGVuZGluZyB0eXBlIHRvIGJlIHVuc2ln
bmVkIGxvbmcuCk9wZW4tY29kaW5nIHRoZXNlIGlmIGZpbmUgaWYgaXQgaGVscHMga2VlcGluZyB0
aGUgdHlwZSBzeXN0ZW0gCmNvbnNpc3RlbnQuCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3Qg
ZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
