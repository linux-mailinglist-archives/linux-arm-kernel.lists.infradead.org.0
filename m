Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC282197B2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BdHt+orn38jZK9JwjpSRagNAY4jPZRUKKReX9uKWIZI=; b=uNiP/peAmYiWPajy2tSXFvxTa
	rT1FhuFxJGjWpIO6X8dK3YTblGLIw7yL5d6au4P9Mu5gO7iqjXVd2AwN59AETInN1TnErHxhaoO17
	r+4dacZZVF92XHoSItHBpGDZLkf7HN7npL7fQAUjO8ykak2VXWZN6waI6urtEq55LTpKT5zz34+dD
	PtiRMQ/LSQ5KersXk9RdIXoyin3zGhXyzLHVhy97gepXJzGPGb+CQvcLhXFmxDZynchgDLTrNlJOy
	XZGa9jNF6W7ZiPAQgViBWiRJCIhAAMg+99KwVEY/wSz6lWZtMbs1yN+2p5qdxyMueXhCdaws0oLpJ
	XHneYBcWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsuJ-0007V8-I6; Mon, 30 Mar 2020 11:48:43 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsu7-0007Td-6x
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:48:33 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id C5D9423D22;
 Mon, 30 Mar 2020 13:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585568902;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/WNHnqJr48B9UGKgZOiUmrkZCrV3XIE1znDFAU2j6Tg=;
 b=OwrdblbDl1rXIFYSbMyycWAJ/UOrU4LJoT06Nn1G+IM+/E1naMieKRwBijsqcFco+PCiRB
 Y9hqzgjb4FFo1rpJ109DNWxxkRidjc/7K4mc0+Jc+KapaponxbXASGImRVwIqw8PeZnq27
 cB865PGVvlh96zdgrv44Q1RrplOc2Tc=
MIME-Version: 1.0
Date: Mon, 30 Mar 2020 13:48:21 +0200
From: Michael Walle <michael@walle.cc>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH 12/18] gpio: add support for the sl28cpld GPIO controller
In-Reply-To: <CAMpxmJUj7wBvO=Y-u5CXazHhjsPHXcq=5iST4KuLrfakW_a9Mg@mail.gmail.com>
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-13-michael@walle.cc>
 <CAMpxmJW770v6JLdveEe1hkgNEJByVyArhorSyUZBYOyFiVyOeg@mail.gmail.com>
 <9c310f2a11913d4d089ef1b07671be00@walle.cc>
 <CAMpxmJXmD-M+Wbj6=wgFgP2aDxbqDN=ceHi1XDun4iwdLm55Zg@mail.gmail.com>
 <22944c9b62aa69da418de7766b7741bd@walle.cc>
 <CACRpkdbJ3DBO+W4P0n-CfZ1T3L8d_L0Nizra8frkv92XPXR4WA@mail.gmail.com>
 <4d8d3bc26bdf73eb5c0e5851589fe085@walle.cc>
 <CAMpxmJUj7wBvO=Y-u5CXazHhjsPHXcq=5iST4KuLrfakW_a9Mg@mail.gmail.com>
Message-ID: <021f3add4b03b7a682832921a96ef85f@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: C5D9423D22
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[21]; NEURAL_HAM(-0.00)[-0.772];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.infradead.org,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_044831_552484_DBE0699A 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoKQW0gMjAyMC0wMy0zMCAxMzoyMSwgc2NocmllYiBCYXJ0b3N6IEdvbGFzemV3c2tpOgo+
IHB0LiwgMjcgbWFyIDIwMjAgbyAxNjoyOCBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNj
PiBuYXBpc2HFgihhKToKPj4gCj4+IEFtIDIwMjAtMDMtMjcgMTE6MjAsIHNjaHJpZWIgTGludXMg
V2FsbGVpajoKPj4gPiBPbiBUaHUsIE1hciAyNiwgMjAyMCBhdCA5OjA2IFBNIE1pY2hhZWwgV2Fs
bGUgPG1pY2hhZWxAd2FsbGUuY2M+IHdyb3RlOgo+PiA+PiBBbSAyMDIwLTAzLTI1IDEyOjUwLCBz
Y2hyaWViIEJhcnRvc3ogR29sYXN6ZXdza2k6Cj4+ID4KPj4gPj4gPiBJbiB0aGF0IGNhc2UgbWF5
YmUgeW91IHNob3VsZCB1c2UgdGhlIGRpc2FibGVfbG9ja2luZyBvcHRpb24gaW4KPj4gPj4gPiBy
ZWdtYXBfY29uZmlnIGFuZCBwcm92aWRlIHlvdXIgb3duIGNhbGxiYWNrcyB0aGF0IHlvdSBjYW4g
dXNlIGluIHRoZQo+PiA+PiA+IGlycWNoaXAgY29kZSB0b28/Cj4+ID4+Cj4+ID4+IEJ1dCBob3cg
d291bGQgdGhhdCBzb2x2ZSBwcm9ibGVtICgxKS4gQW5kIGtlZXAgaW4gbWluZCwgdGhhdCB0aGUK
Pj4gPj4gcmVxbWFwX2lycWNoaXAgaXMgYWN0dWFsbHkgdXNlZCBmb3IgdGhlIGludGVycnVwdCBj
b250cm9sbGVyLCB3aGljaAo+PiA+PiBpcyBub3QgdGhpcyBncGlvIGNvbnRyb2xsZXIuCj4+ID4+
Cj4+ID4+IEllLiB0aGUgaW50ZXJydXB0IGNvbnRyb2xsZXIgb2YgdGhlIHNsMjhjcGxkIHVzZXMg
dGhlIHJlZ21hcF9pcnFjaGlwCj4+ID4+IGFuZCBhbGwgaW50ZXJydXB0IHBoYW5kbGVzIHBvaW50
aW5nIHRvIHRoZSBpbnRlcnJ1cHQgY29udHJvbGxlciB3aWxsCj4+ID4+IHJlZmVyZW5jZSB0aGUg
dG9wbGV2ZWwgbm9kZS4gQW55IHBoYW5kbGVzIHBvaW50aW5nIHRvIHRoZSBncGlvCj4+ID4+IGNv
bnRyb2xsZXIgd2lsbCByZWZlcmVuY2UgdGhlIEdQSU8gc3Vibm9kZS4KPj4gPgo+PiA+IElkZWFs
bHkgd2Ugd291bGQgY3JlYXRlIHNvbWV0aGluZyBnZW5lcmljIHRoYXQgaGFzIGJlZW4gb24gbXkK
Pj4gPiBtaW5kIGZvciBzb21lIHRpbWUsIGxpa2UgYSBnZW5lcmljIEdQSU8gcmVnbWFwIGlycWNo
aXAgbm93IHRoYXQKPj4gPiB0aGVyZSBhcmUgYSBmZXcgY29udHJvbGxlcnMgbGlrZSB0aGF0Lgo+
PiA+Cj4+ID4gSSBkb24ndCBrbm93IGhvdyBmZWFzaWJsZSBpdCBpcyBvciBob3cgbXVjaCB3b3Jr
IGl0IHdvdWxkIGJlLiBCdXQKPj4gPiBhcyB3aXRoIEdQSU9fR0VORVJJQyAoZm9yIE1NSU8pIGl0
IHdvdWxkIGJlIGhlbHBmdWwgc2luY2Ugd2UKPj4gPiBjYW4gdGhlbiBpbXBsZW1lbnQgdGhpbmdz
IGxpa2UgLnNldF9tdWx0aXBsZSgpIGFuZCAuZ2V0X211bHRpcGxlKCkKPj4gPiBmb3IgZXZlcnlv
bmUuCj4+IAo+PiBGb3Igc3RhcnRlcnMsIHdvdWxkIHRoYXQgYmUgYSBkcml2ZXJzL2dwaW8vZ3Bp
by1yZWdtYXAuYyBvciBhCj4+IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWdwaW8uYz8gSSB3
b3VsZCBhc3N1bWUgdGhlIGZpcnN0LAo+PiBiZWNhdXNlIHRoZSBzdHVmZiBpbiBkcml2ZXJzL2Jh
c2UvcmVnbWFwIG9wZXJhdGVzIG9uIGEgZ2l2ZW4KPj4gcmVnbWFwIGFuZCB3ZSdkIGp1c3QgYmUg
dXNpbmcgb25lLCBjb3JyZWN0PyBPbiB0aGUgb3RoZXIgaGFuZAo+PiB0aGVyZSBpcyBhbHNvIHRo
ZSByZXFtYXAtaXJxLmMuIEJ1dCBhcyBwb2ludGVkIG91dCBiZWZvcmUsIGl0Cj4+IHdpbGwgYWRk
IGFuIGludGVycnVwdCBjb250cm9sbGVyIHRvIHRoZSByZWdtYXAsIG5vdCBhIGRldmljZQo+PiBz
byB0byBzcGVhay4KPj4gCj4+IC1taWNoYWVsCj4gCj4gVGhpcyBoYXMgYmVlbiBvbiBteSBUT0RP
IGxpc3QgZm9yIHNvIGxvbmcsIGJ1dCBJJ3ZlIG5ldmVyIGJlZW4gYWJsZSB0bwo+IGZpbmQgdGhl
IHRpbWUuLi4gSSdkIHJlYWxseSBhcHByZWNpYXRlIGFueSBlZmZvcnQgaW4gdGhhdCBkaXJlY3Rp
b24gYXMKPiBJIGJlbGlldmUgaXQgd291bGQgYWxsb3cgdXMgdG8gc2xvd2x5IHBvcnQgYSBiaWcg
cGFydCBvZiB0aGUgR1BJTwo+IGV4cGFuZGVyIGRyaXZlcnMgb3ZlciB0byBpdCBhbmQgbWFrZSBs
YXJnZSBwb3J0aW9ucyBvZiBvdXIgY29kZWJhc2UKPiBnZW5lcmljLgoKSSBtaWdodCBoYXZlIGF0
IGxlYXN0IGEgZmlyc3QgcGF0Y2ggdGhpcyB3ZWVrLiBTbyBpZiB5b3UgYW5kIExpbnVzCldhbGxl
aWogbWlnaHQgaGF2ZSBzb21lIHRpbWUgdG8gaGVscCByZXZpZXcgYW5kIGNvbW1lbnQgb24gdGhh
dCwgaXQKd291bGQgYmUgZ3JlYXRseSBhcHByZWNpYXRlZC4KCi1taWNoYWVsCgo+IAo+IEJlc3Qg
cmVnYXJkcywKPiBCYXJ0b3N6IEdvbGFzemV3c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
