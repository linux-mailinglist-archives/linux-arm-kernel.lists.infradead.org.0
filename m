Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35DC71727
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqulxZgTuvuz/4pUarcXZ5tQUcEMn0ZyDangnKFEAos=; b=BfmvzEcjuJZnvD
	mciI3MgvxeKDe9RbZ1h18U/6WN3kGWtgjwTZYyQtn4xMifrpDtQYmu+DoCzG8AUYHw55ymvUiK6lu
	etRk8UwjQn05l5BVJbL3YryM1YRZPjg5o6qm9LP6sexfmpRxhs4q3VJUAFxGbA+34hnO54EMkL69l
	4xqd3pu5PDApQ6y0k1EWO98/c29immBKaXEupC/rQSC4daZe9A2++9QwuE1LLa395uB9d5hbRFSst
	btxxqL8lHXRcodL0MGxha1EeKE8pieF9EFMs5DKysXuVIrCNWHbCwkb+qh6yr+SZ1hFaZQHVYttIu
	jSR55O36JxzwTs/fCpJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpt1t-0005en-TO; Tue, 23 Jul 2019 11:32:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpszc-0002wd-Sm
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:30:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id p197so29065245lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 04:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=1RHyF9qXjsrJ4Imj3sCEb7pI13dFgft3fe1rSgcBWPY=;
 b=KgJkiCOCiijCBe5yyX6r8kKrpnhVCnIT/b8Pur6uzpVdWcc30WxFhJWhVQudW1GxDL
 O9PxaLdZknJ6WNdUeD7rTv1l0zTHdUfuEEL+4/jUnVkwcqEnUmGqM3pQtZ1gZSLp10tQ
 GmevIClMzqFdkZlV9fnum0QI2Ey7UUIVzwIjtGy3Yq58KkSzrIukWOfQaQZwMFj7pOIW
 niNRkXYnaeFMi8J0y7OQQXKOXRzlXKy/scyv2pAOIzeoTTDBfB9kKJQfn5Kr1CbTsrJm
 CJeB6cuW7Pi62Y82OXNC3c71VkizAvhvqYgewkbBSKDOzc9fC+Gz8uk1hS/DjUkZVtum
 69Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=1RHyF9qXjsrJ4Imj3sCEb7pI13dFgft3fe1rSgcBWPY=;
 b=bUKVpR4VBx689qMO8hrar9myEdEWP3wZdawmUBLltrH46rrubPJ5ZfqxT4HrSUcRoC
 +d1to2e3HU954O6oGYKR+i8FVO06U7/9FZVCtkKk3eCdtDT2JgP6+69xtRjA6Q0sVtmd
 iJctgmINmco2qKPWg8rwU0yJmYVm/4Od4nTEdhbdd0cFp5FvwEliz13tsgZXrd52B+y+
 oN4CyaihFmsmuKXu/vtvXm6H3gxr8mZeD50DcuTknYpi0Y32zCFdyP11SFht1fqO2mV8
 YkOhV7wShlQkZwytA0vrtUfd+6vJRH9+lr3IoIVnyzl4G5HJaZ5xh3FFyMKm/3PX+80L
 555w==
X-Gm-Message-State: APjAAAXQDzHyXSQ4fpNpAq8gx1kwMk4PDl2pPzp2J3TqiHmJw3N3QUWA
 CM1P28R2BZvuzmN4VCipsz1sbpm6
X-Google-Smtp-Source: APXvYqxcgejQR0ron6TFu1X9eCmTlvgCwIlYwXtEvtZulKsL1TRqO4BZiYxcQfhVbojmmHtsUn3cDA==
X-Received: by 2002:ac2:48bc:: with SMTP id u28mr23076767lfg.126.1563881402701; 
 Tue, 23 Jul 2019 04:30:02 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id w6sm6405289lff.80.2019.07.23.04.30.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 04:30:02 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v6 2/3] serial: imx: set_mctrl(): correctly restore
 autoRTS state
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563823331-5629-1-git-send-email-sorganov@gmail.com>
 <1563823331-5629-3-git-send-email-sorganov@gmail.com>
 <20190722202406.hr74mg64sxoovah7@pengutronix.de>
 <87h87d1509.fsf@osv.gnss.ru>
 <20190723094902.r7v5wzu4lkicrs3o@pengutronix.de>
Date: Tue, 23 Jul 2019 14:30:01 +0300
In-Reply-To: <20190723094902.r7v5wzu4lkicrs3o@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Tue,
 23 Jul 2019 11:49:02 +0200")
Message-ID: <87blxlyona.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_043005_235719_C63C0B86 
X-CRM114-Status: GOOD (  26.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAxMjoyMDozOFBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4gd3JpdGVzOgo+PiAKPj4gPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMDoyMjox
MFBNICswMzAwLCBTZXJnZXkgT3JnYW5vdiB3cm90ZToKPj4gPj4gaW14X3VhcnRfc2V0X21jdHJs
KCkgaGFwcGVuZWQgdG8gc2V0IFVDUjJfQ1RTQyBiaXQgd2hlbmV2ZXIgVElPQ01fUlRTCj4+ID4+
IHdhcyBzZXQsIG5vIG1hdHRlciBpZiBSVFMvQ1RTIGhhbmRzaGFrZSBpcyBlbmFibGVkIG9yIG5v
dC4gTm93IGZpeGVkIGJ5Cj4+ID4+IHR1cm5pbmcgaGFuZHNoYWtlIG9uIG9ubHkgd2hlbiBDUlRT
Q1RTIGJpdCBmb3IgdGhlIHBvcnQgaXMgc2V0Lgo+PiA+Pgo+PiA+PiBBY2tlZC1ieTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPgo+IE9oLCB5b3Ug
YWRkZWQgbXkgQWNrIGZvciBwYXRjaGVzIDIgYW5kIDMsIHRvbywgZXZlbiBiZWZvcmUgSSBsb29r
ZWQKPiBhZ2FpbiBvbiB0aG9zZSA6LXwKPgo+PiA+PiBSZXZpZXdlZC1ieTogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+PiA+PiBUZXN0ZWQtYnk6IFNhc2NoYSBIYXVlciA8
cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPj4gPj4gU2lnbmVkLW9mZi1ieTogU2VyZ2V5IE9yZ2Fu
b3YgPHNvcmdhbm92QGdtYWlsLmNvbT4KPj4gPj4gLS0tCj4+ID4+ICBkcml2ZXJzL3R0eS9zZXJp
YWwvaW14LmMgfCAxNiArKysrKysrKysrKysrKy0tCj4+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMTQg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4gPj4KPj4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdHR5L3NlcmlhbC9pbXguYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwo+PiA+PiBp
bmRleCAzMmYzNmQ4Li4wNTliYTM1IDEwMDY0NAo+PiA+PiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJp
YWwvaW14LmMKPj4gPj4gKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jCj4+ID4+IEBAIC05
NzQsMTAgKzk3NCwyMiBAQCBzdGF0aWMgdm9pZCBpbXhfdWFydF9zZXRfbWN0cmwoc3RydWN0IHVh
cnRfcG9ydCAqcG9ydCwgdW5zaWduZWQgaW50IG1jdHJsKQo+PiA+PiAgCWlmICghKHBvcnQtPnJz
NDg1LmZsYWdzICYgU0VSX1JTNDg1X0VOQUJMRUQpKSB7Cj4+ID4+ICAJCXUzMiB1Y3IyOwo+PiA+
Pgo+PiA+PiArCQkvKgo+PiA+PiArCQkgKiBUdXJuIG9mZiBhdXRvUlRTIGlmIFJUUyBpcyBsb3dl
cmVkIGFuZCByZXN0b3JlIGF1dG9SVFMKPj4gPj4gKwkJICogc2V0dGluZyBpZiBSVFMgaXMgcmFp
c2VkLgo+PiA+Cj4+ID4gImxvd2VyIiBhbmQgInJhaXNpbmciIGFyZSBtaXNsZWFkaW5nIGhlcmUu
IEkgcmVjb21tZW5kIHN0aWNraW5nIHRvCj4+ID4gImFjdGl2ZSIgYW5kICJpbmFjdGl2ZSIuCj4+
IAo+PiBUaGlzIGlzIGNvcHktcGFzdGVkIGZyb20gdGhlIDgyNTAgZHJpdmVyLiBJJ2QgcHJlZmVy
IHRvIGxlYXZlIGl0IGFzIGlzLgo+Cj4gSSdkIHByZWZlciB0byBmaXggdGhlIDgyNTAgYWNjb3Jk
aW5nbHkuICJyYWlzZWQiIGlzIGp1c3QgbWlzbGVhZGluZwo+IGJlY2F1c2UgdGhlIGhhbmRzaGFr
aW5nIHNpZ25hbHMgYXJlIGxvdy1hY3RpdmUgYW5kIHlvdSBhbHdheXMgaGF2ZSB0bwo+IHRoaW5r
IGlmIHRoZSBsb2dpY2FsIG9yIHRoZSBwaHlzaWNhbCBzaWduYWwgaXMgcmFpc2luZy4gImFjdGl2
ZSIgaXMKPiBjbGVhciBpbiB0aGlzIHJlZ2FyZC4KCllvdSBhcmUgZnJlZSB0byBkbyBpdCBpbiBv
bmUgYnVuY2ggZm9yIGFsbCB0aGUgZHJpdmVycyBpdCBhcHBlYXJzIGluCnRoZW4uIEZvciBub3cg
SSBwcmVmZXIgY29uc2lzdGVuY3kgYmV0d2VlbiBkcml2ZXJzLCBldmVuIHRob3VnaCBJIGRvCmFn
cmVlIHRoZSB3b3JkaW5nIGNvdWxkIGJlIGltcHJvdmVkLgoKPj4gPj4gKwkJICovCj4+ID4+ICAJ
CXVjcjIgPSBpbXhfdWFydF9yZWFkbChzcG9ydCwgVUNSMik7Cj4+ID4+ICAJCXVjcjIgJj0gfihV
Q1IyX0NUUyB8IFVDUjJfQ1RTQyk7Cj4+ID4+IC0JCWlmIChtY3RybCAmIFRJT0NNX1JUUykKPj4g
Pj4gLQkJCXVjcjIgfD0gVUNSMl9DVFMgfCBVQ1IyX0NUU0M7Cj4+ID4+ICsJCWlmIChtY3RybCAm
IFRJT0NNX1JUUykgewo+PiA+PiArCQkJdWNyMiB8PSBVQ1IyX0NUUzsKPj4gPj4gKwkJCS8qCj4+
ID4+ICsJCQkgKiBVQ1IyX0lSVFMgaXMgdW5zZXQgaWYgYW5kIG9ubHkgaWYgdGhlIHBvcnQgaXMK
Pj4gPj4gKwkJCSAqIGNvbmZpZ3VyZWQgZm9yIENSVFNDVFMsIHNvIHdlIHVzZSBpbnZlcnRlZCBV
Q1IyX0lSVFMKPj4gPj4gKwkJCSAqIHRvIGdldCB0aGUgc3RhdGUgdG8gcmVzdG9yZSB0by4KPj4g
Pj4gKwkJCSAqLwo+PiA+PiArCQkJaWYgKCEodWNyMiAmIFVDUjJfSVJUUykpCj4+ID4+ICsJCQkJ
dWNyMiB8PSBVQ1IyX0NUU0M7Cj4+ID4+ICsJCX0KPj4gPgo+PiA+IElmIHlvdSB0ZWFjaCBpbXhf
dWFydF9ydHNfYXV0byBhYm91dCBJUlRTIHRoaXMgZnVuY3Rpb24gY291bGQgYmUgcmV1c2VkCj4+
ID4gaGVyZSBJIHRoaW5rLgo+PiAKPj4gWWVhaCwgYnV0IGlteF91YXJ0X3J0c19hdXRvX2lmX2Ny
dHNjdHNfYW5kX3J0c19pc19hY3RpdmUoKSA/IEkgZmVlbAo+PiBzb21ld2hhdCB1bmNvbWZvcnRh
YmxlIGFib3V0IHRoYXQgbWl4aW5nIG9mIGRpZmZlcmVudCBwdXJwb3Nlcy4KPj4gCj4+IEJlc2lk
ZXMsIG9uZSBvZiB0aGUgcHVycG9zZXMgb2YgdGhlc2UgcGF0Y2ggc2VyaWVzIHdhcyB0byBnZXQg
cmlkIG9mCj4+IGlteF91YXJ0X3J0c19hdXRvKCkgYXMgaXRzIG5hbWUgaXMgY29uZnVzaW5nIGlu
IHRoZSBjb250ZXh0IG9mIGV4aXN0aW5nCj4+IGlteF91YXJ0X3J0c19hY3RpdmUoKSBhbmQgaW14
X3VhcnRfcnRzX2luYWN0aXZlKCksIGFzIEkgYWxyZWFkeQo+PiBleHBsYWluZWQgYmVmb3JlLgo+
PiAKPj4gV2UgY2FuIHJlbmFtZSB0aGUgZnVuY3Rpb24gdG8gYXZvaWQgY29uZnVzaW9uLCBhZGQg
eWV0IGFub3RoZXIgY2hlY2sgdG8KPj4gaXQsIGFuZCBjYWxsIGl0IGZyb20gMiBwbGFjZXMsIGJ1
dCBpdCdzIHN0aWxsIHF1ZXN0aW9uYWJsZSBpZiBpdCdzIGFuCj4+IGltcHJvdmVtZW50LCBhbmQg
Y291bGQgYmUgZG9uZSBhcyBhIGZvbGxvdy11cCBzdGVwIGFueXdheS4gSXQgd2lsbCBsb29rCj4+
IHNvbWV0aGluZyBsaWtlIHRoaXMgdGhlbjoKPj4gCj4+ICAtLSA+OCAtLQo+PiAKPj4gICAgIHNl
cmlhbDogaW14OiBmYWN0b3Igb3V0IGNvbW1vbiBjb2RlIGludG8gbmV3IGlteF91YXJ0X3NldF9h
dXRvX3J0cygpCj4+IAo+PiAJTW9kaWZpZWQgICBkcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyBiL2RyaXZlcnMvdHR5L3Nlcmlh
bC9pbXguYwo+PiBpbmRleCBkOWE3M2M3Li5jOGI4NDdlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3R0eS9zZXJpYWwvaW14LmMKPj4gKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jCj4+IEBA
IC05NTQsNiArOTU0LDIwIEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW14X3VhcnRfZ2V0X21jdHJs
KHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQpCj4+ICAJcmV0dXJuIHJldDsKPj4gIH0KPj4gCj4+ICsv
Kgo+PiArICogQ29tcHV0ZSBhbmQgc2V0IGF1dG8gUlRTIGluICd1Y3IyJyBhY2NvcmRpbmcgdG8g
dGhlIGN1cnJlbnQgc3RhdGUgb2YgUlRTCj4+ICsgKiBzaWduYWwgYW5kIENSVFNDVFMgc3RhdGUg
b2YgcG9ydCBjb25maWd1cmF0aW9uLgo+PiArICoKPj4gKyAqIFVzZSBpbnZlcnRlZCBVQ1IyX0lS
VFMgdG8gZ2V0IHRoZSBzdGF0ZSBvZiBDUlRTQ1RTLCBhbmQgZG9uJ3QgbGV0IHJlY2VpdmVyCj4+
ICsgKiBjb250cm9sIFJUUyBvdXRwdXQgaWYgUlRTIGlzIGluYWN0aXZlLgo+PiArICoKPj4gKyAq
Lwo+PiArc3RhdGljIHZvaWQgaW14X3VhcnRfc2V0X2F1dG9fcnRzKHUzMiAqdWNyMikKPj4gK3sK
Pj4gKwlpZiAoKCp1Y3IyICYgVUNSMl9DVFMpICYmICEoKnVjcjIgJiBVQ1IyX0lSVFMpKQo+PiAr
CQkqdWNyMiB8PSBVQ1IyX0NUU0M7Cj4+ICt9Cj4+ICsKPgo+IHRoaXMgbG9va3MgZmluZSBhbmQg
aXMgd2hhdCBJIGludGVuZGVkIHRvIHN1Z2dlc3QuIFRoZSBjb21tZW50IGlzbid0Cj4gb3B0aW1h
bCB5ZXQsIEknZCB3cml0ZSBzb21ldGhpbmcgbGlrZToKPgo+ICAgLyoKPiAgICAqIEVuYWJsZSBo
YXJkd2FyZSBjb250cm9sIG9mIHRoZSBSVFMgb3V0cHV0IGlmZiBoYW5kc2hha2luZyBpcyBpbiB1
c2UKPiAgICAqIGFuZCBzb2Z0d2FyZSByZXF1ZXN0ZWQgUlRTIHRvIGJlIGFjdGl2ZS4KPiAgICAq
ICJoYW5kc2hha2luZyBpcyBpbiB1c2UiIGNhbiBiZSBkZXRlcm1pbmVkIGZyb20gdGhlIElSVFMg
Yml0IHRoYXQgaXMKPiAgICAqIHNldCB3aGVuIGhhbmRzaGFraW5nIGlzIG5vdCB1c2VkLiBUaGUg
cmVxdWVzdGVkIHN0YXRlIGJ5IHNvZnR3YXJlCj4gICAgKiBpcyByZXByZXNlbnRlZCBpbiB0aGUg
Q1RTIGJpdC4KPiAgICAqLwoKSSBkb24ndCBsaWtlIGl0IGFzIHRoaXMgZnVuY3Rpb24gZG9lc24n
dCBlbmFibGUgb3IgZGlzYWJsZSBhbnl0aGluZy4gSXQKanVzdCBjb21wdXRlcyBuZWVkZWQgc3Rh
dGUgb2Ygb25lIGJpdCB0YWtpbmcgaW50byBhY2NvdW50IHR3bwpjb25kaXRpb25zLgoKSW5kZXBl
bmRlbnQgb24gY29tbWVudCwgZm9yIG1vcmUgY2xhcml0eSwgaXQgY291bGQgaGF2ZSBiZWVuOgoK
c3RhdGljIHZvaWQgaW14X3VhcnRfc2V0X2F1dG9fcnRzKHUzMiAqdWNyMikKewoJaWYgKCgqdWNy
MiAmIFVDUjJfQ1RTKSAmJiAhKCp1Y3IyICYgVUNSMl9JUlRTKSkKCQkqdWNyMiB8PSBVQ1IyX0NU
U0M7CgllbHNlCgkJKnVjcjIgJj0gflVDUjJfQ1RTQzsKfQoKdG8gYmUgaW5kZXBlbmRlbnQgb2Yg
dGhlIGN1cnJlbnQgc3RhdGUgb2YgVUNSMl9DVFNDLgoKPgo+IElNSE8gZ28gZGlyZWN0bHkgdG8g
aW14X3VhcnRfc2V0X2F1dG9fcnRzKCkgYmVmb3JlIGludHJvZHVjaW5nIHRoZQo+IHNlY29uZCBv
cGVuIGNvZGluZyBvZiBpdHMgbG9naWMuCgpBY3R1YWxseSwgaXQgbG9va3MgY2xlYXJlciB0aGUg
d2F5IEkndmUgc3VnZ2VzdGVkLCBJIHRoaW5rLCBhcyBJIGRpZG4ndAppbiBmYWN0IGludHJvZHVj
ZSBzZWNvbmQgb3BlbiBjb2Rpbmcgb2YgaXRzIGxvZ2ljLCBpdCdzIGp1c3Qgd2UgbGF0ZXIKZGVj
aWRlZCB0aGF0IDIgZGlmZmVyZW50IGxvZ2ljcyAocmVzdG9yZSBhdXRvUlRTIG9uIFJUUyByYWlz
ZSwgYW5kIHNldAphdXRvUlRTIG9uIHVzZXIgcmVxdWVzdCkgY291bGQgYmUgbWVyZ2VkIGludG8g
c2luZ2xlIGZ1bmN0aW9uLgoKLS0gU2VyZ2V5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
