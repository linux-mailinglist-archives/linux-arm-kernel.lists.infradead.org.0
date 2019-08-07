Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978F984A2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dQqypOWd8IIasOhnToIZ3i3Cq4G8qa5HGpRgKSh9js=; b=ANH6VSFg1PMXLA
	Zkl97xfjTFJaO4dquNnnazscczcwHd01IDOXtFCxZd/e/nnfgIORnryuEIGXepxV42PApOTMUyO+P
	rAEHGAEwUQEQ2MqAD++1JRt0OOmcVLs32rzjpyXzcDRClz6iqkPsQy+EqvQBqUAGz3mM76cJ1uGt0
	Mj7yJB8d/c6B958CyV5M39V3oO9UgHuQ5LE5d0nrizv0v8C8JHQEBR8jLjivEtx6L0/jyaQ/NPmPX
	jRoA6exQOJiy/Y3SaL+KbDXcizzUep2z1WJzRMM2IRI2x4akxv4h9W5TiizvVQDOt9QCQe/XZNFRB
	0E5B10P/94ZR0NUHmaEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJbT-0006GM-J3; Wed, 07 Aug 2019 10:55:35 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJb6-00066r-V5
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:55:14 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7C5B320003;
 Wed,  7 Aug 2019 10:55:03 +0000 (UTC)
Date: Wed, 7 Aug 2019 12:55:02 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>, Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Subject: Re: [linux-sunxi] [PATCH 0/3] Add basic support for RTC on Allwinner
 H6 SoC
Message-ID: <20190807105502.GK3600@piout.net>
References: <20190412120730.473-1-megous@megous.com>
 <CAGb2v66cbpsoHJoiFJkBwhZ5SbO+uO+Kf6gtnA3kPFQZq0329Q@mail.gmail.com>
 <20190806183045.edhm3qzpegscf2z7@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806183045.edhm3qzpegscf2z7@core.my.home>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_035513_193600_A59D93EA 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAwNi8wOC8yMDE5IDIwOjMwOjQ1KzAyMDAsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+
IE1heWJlIHdoZXRoZXIgWE8gb3IgRENYTyBpcyB1c2VkIGFsc28gbWF0dGVycyBpZiB5b3Ugd2Fu
dCB0byBkbyBzb21lIGZpbmUKPiB0dW5uaW5nIG9mIERDWE8gKGNvbnRyb2wgcmVnaXN0ZXIgaGFz
IHBsZXRueSBvZiBvcHRpb25zKSwgYnV0IHRoYXQncyBwcm9iYWJseQo+IGJldHRlciBkb25lIGlu
IHUtYm9vdC4gQW5kIHRoZXJlJ3Mgc3RpbGwgbm8gbmVlZCB0byByZWFkIEhPU0Mgc291cmNlIGZy
b20gRFQuCj4gVGhlIGRyaXZlciBjYW4ganVzdCBjaGVjayBjb21wYXRpYmxlLCBhbmQgaWYgaXQg
aXMgSDYgYW5kIE9TQ19DTEtfU1JDX1NFTCBpcyAxLAo+IGl0IGNhbiBkbyBpdCdzIERDWE8gdHVu
bmluZywgb3Igd2hhdGV2ZXIuIEJ1dCBuZWl0aGVyIE9TIG5vciBib290bG9hZGVyIHdpbGwKPiBi
ZSB1c2luZyB0aGlzIGluZm8gdG8gZ2F0ZS9kaXNhYmxlIHRoZSBvc2NpYWxsYXRvci4KPiAKCkl0
IGlzIGFjdHVhbGx5IHVzZWZ1bCB0byBiZSBhYmxlIHRvIHR3ZWFrIHRoZSBjcnlzdGFsIHR1bmlu
ZyBhdApydW50aW1lIHRvIGJlIGFibGUgdG8gcmVkdWNlIGNsb2NrIGRyaWZ0IGFuZCBjb21wYXJl
IHdpdGggYSByZWxpYWJsZQpzb3VyY2UgKGUuZy4gTlRQKS4KSSdtIGN1cmlvdXMsIHdoYXQga2lu
ZCBvZiBvcHRpb25zIGRvZXMgdGhpcyBSVEMgaGF2ZT8KCi0tIApBbGV4YW5kcmUgQmVsbG9uaSwg
Qm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9v
dGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
