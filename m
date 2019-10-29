Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA93E7DBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 01:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D85VEQQfrQihA9HnTifbr2IL+4oiPR3fJ7nVp2BXYgk=; b=hm83g+uufzzc7p
	ET4cvaAlWrAmt0WWx2vXoTKHr8SUvZ791NbpISsH+Fgy+0H+0Qic0noAUm6ZoTQm9QndvWKHwTO0s
	b1l7vrPIFV8TShWiLdbjNW0r8vUUd6EF+eYJZWEC8Anpb6ajz3y5Uoz4QVXOhx2aVbXJOvQmj2aXw
	+nTgoRrGji1Bn7ewsDQ+tSDgt7Kx97DUHDLj/h8thiinawH2rRmxgCZFuT81IRLnxoqH3tiVz1pvg
	koxhwTEUJGbW4BeUCSvbvhctjfEAP81pqHzd3umX4sk9wDGlngdqnvPWOVaxuhpkx6ZFnlYlR0hFF
	Jd565UclINnwvvk/W21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPFqQ-0000C7-Jz; Tue, 29 Oct 2019 00:58:46 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPFpv-0008PL-1L
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 00:58:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572310692; bh=LdBB96lc5mOW3OGGRyo4GacYhMj29ptosU6PsgU7yus=;
 h=From:To:Cc:Subject:Date:From;
 b=j2jzhrSzyU+pwMB0jX47G/MPKaOl6Voi3i8XBUHZ7Q+R1QbwaF+De5qjyixRYigTg
 eNbcUvP0sO2piUoEHf7ijARp8d+GDmgGieTHRoZAUV9lAwc80qfdQ0OUaTe7GVJX8r
 cO4r00n5JGL7YMXtvqnhtkClmvFUs7Z9sw1/DBBI=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@bootlin.com>
Subject: [PATCH 0/3] Add touchscreen support for TBS A711 Tablet
Date: Tue, 29 Oct 2019 01:58:03 +0100
Message-Id: <20191029005806.3577376-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_175815_405533_C8AC6704 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyBhIHJlc3VycmVjdGlvbiBvZiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOC83LzI1
LzE0MwoKQ29tcGFyZWQgdG8gdjQgb2YgTXlsw6huZSdzIHNlcmllcyBJJ3ZlIGRyb3BwZWQgYWxs
IGF0dGVtcHRzIHRvCnBvd2VyIG9mZiB0aGUgY2hpcCBkdXJpbmcgc3VzcGVuZC4gVGhpcyBwYXRj
aCBqdXN0IGVuYWJsZXMgdGhlCnJlZ3VsYXRvciBkdXJpbmcgcHJvYmUgYW5kIGRpc2FibGVzIGl0
IG9uIGRyaXZlciBybW1vZC4KCkkndmUgdGVzdGVkIHRoZSBkcml2ZXIgd2l0aCBzdXNwZW5kL3Jl
c3VtZSBhbmQgdG91Y2hpbmcgdGhlCnBhbmVsIHJlc3VtZXMgbXkgc29jLgoKUGxlYXNlIHRha2Ug
YSBsb29rLgoKdGhhbmsgeW91IGFuZCByZWdhcmRzLAogIE9uZHJlaiBKaXJtYW4KCgpDaGFuZ2Vz
IHNpbmNlIHY0IG9mIE15bMOobmUncyBzZXJpZXM6Ci0gc2xpZ2h0IHdoaXRlc3BhY2UgaW1wcm92
ZW1lbnRzCi0gZHJvcCBhbGwgbW9kaWZpY2F0aW9ucyBvZiBzdXNwZW5kL3Jlc3VtZSBob29rcwot
IGRyb3AgdXNlbGVzcyBoZWFkZXIgaW5jbHVkZQotIHNwbGl0IHRoZSBkdC1iaW5kaW5ncyBpbnRv
IGEgc2VwYXJhdGUgcGF0Y2gKCk15bMOobmUgSm9zc2VyYW5kICgyKToKICBpbnB1dDogZWR0LWZ0
NXgwNjogQWRkIHN1cHBvcnQgZm9yIHJlZ3VsYXRvcgogIGFybTogZHRzOiBzdW44aTogYTgzdDog
YTcxMTogQWRkIHRvdWNoc2NyZWVuIG5vZGUKCk9uZHJlaiBKaXJtYW4gKDEpOgogIGR0LWJpbmRp
bmdzOiBpbnB1dDogZWR0LWZ0NXgwNjogQWRkIHJlZ3VsYXRvciBzdXBwb3J0CgogLi4uL2JpbmRp
bmdzL2lucHV0L3RvdWNoc2NyZWVuL2VkdC1mdDV4MDYudHh0IHwgIDEgKwogYXJjaC9hcm0vYm9v
dC9kdHMvc3VuOGktYTgzdC10YnMtYTcxMS5kdHMgICAgIHwgMTYgKysrKysrKysrKwogZHJpdmVy
cy9pbnB1dC90b3VjaHNjcmVlbi9lZHQtZnQ1eDA2LmMgICAgICAgIHwgMzAgKysrKysrKysrKysr
KysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspCgotLSAKMi4yMy4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
