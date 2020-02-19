Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B2C164518
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:13:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IKWnbeAI1NLnYK+P3roihGvO+ak2GnAKfasRYha2BDM=; b=CK3ESmaYqL2M/Zna/Ktosjcyu
	+yMfRwbb948RHUu3mnSfLws2S7YURKz/I6JXWEwAu5SpKTKrRvvo1NKtOz6ybgq75XumFVZSJjbhI
	lAGTUsHKz930SEVEPT2OtnO1HNoIKrH+SmQUaBaM/yleAe9JCQl8bjKnuk4FyQvzv6Vv2zwBH7Q3b
	9QuVXDaJePOjKKFhqJaF5iYw7QveWUCU0052y2YSpZLTeLylXD/p60eMb+c2Sm6bk8sew4rmkGqod
	PVnMsEyXyWDhxag4KRjnBCpKE5AZ9pKb3L+yd/GVfveZZRgJfA1xjwWLGhUiWq+okNp+/T5+piHqD
	S9Z9LGb0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4PAV-0006yg-CP; Wed, 19 Feb 2020 13:13:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4PAN-0006yL-QK
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:13:29 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF99821D56;
 Wed, 19 Feb 2020 13:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582118006;
 bh=bL/TOiagPfoRLR3fOAnI6m8tFS6WjfGcMBXv31ltqR8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aSaExjJsYv/OEylvZg1BUY1DHJNR4GC+StKizipm622JuXBAEpuY5e4M5bFvBW+kr
 /5eeJbTthSFR6dVZXnm6GWXeSD6WI3ytC6WNiP0m98FhAJICJm1tJ7a8Vihixg2n/a
 8/ecKfw8wSa5uyM45tAJMlhscO1IP7EMZK0QBXV8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4PAL-006VkK-2a; Wed, 19 Feb 2020 13:13:25 +0000
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 13:13:25 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH v2 1/2] irqchip/stm32: Add irq retrigger support
In-Reply-To: <ae69e38a-78f9-ca68-c48c-86275e41b3bb@st.com>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-2-alexandre.torgue@st.com>
 <16d27f75-8157-7a92-ae61-b5b3ab05bdd9@st.com>
 <608d9c84813323ee3839f6ac21aa8f4e@kernel.org>
 <ae69e38a-78f9-ca68-c48c-86275e41b3bb@st.com>
Message-ID: <10cabf9edf901fb148a1a2a5e2448845@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandre.torgue@st.com, tglx@linutronix.de,
 jason@lakedaemon.net, linus.walleij@linaro.org, marex@denx.de,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_051327_895699_D846FAC2 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: marex@denx.de, Jason Cooper <jason@lakedaemon.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0xOSAxMzowNywgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPiBPbiAyLzE5LzIw
IDEyOjQzIFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+IE9uIDIwMjAtMDItMTkgMTE6MzMsIEFs
ZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4+PiBGaXggTWFyYyBlbWFpbCBhZGRyZXNzCj4+PiAKPj4+
IE9uIDIvMTgvMjAgMjoxMiBQTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+PiBUaGlzIGNv
bW1pdCBpbnRyb2R1Y2VzIHJldHJpZ2dlciBzdXBwb3J0IGZvciBzdG0zMl9leHRfaCBjaGlwLgo+
Pj4+IEl0IGNvbnNpc3RzIHRvIHJpc2UgdGhlIEdJQyBpbnRlcnJ1cHQgbWFwcGVkIHRvIGFuIEVY
VEkgbGluZS4KPj4+PiAKPj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4
YW5kcmUudG9yZ3VlQHN0LmNvbT4KPj4+PiAKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFj
aGlwL2lycS1zdG0zMi1leHRpLmMgCj4+Pj4gYi9kcml2ZXJzL2lycWNoaXAvaXJxLXN0bTMyLWV4
dGkuYwo+Pj4+IGluZGV4IGUwMGYyZmEyN2YwMC4uYzk3MWQxMTVlZGI0IDEwMDY0NAo+Pj4+IC0t
LSBhL2RyaXZlcnMvaXJxY2hpcC9pcnEtc3RtMzItZXh0aS5jCj4+Pj4gKysrIGIvZHJpdmVycy9p
cnFjaGlwL2lycS1zdG0zMi1leHRpLmMKPj4+PiBAQCAtNjA0LDEyICs2MDQsMjQgQEAgc3RhdGlj
IHZvaWQgc3RtMzJfZXh0aV9oX3N5c2NvcmVfZGVpbml0KHZvaWQpCj4+Pj4gwqDCoMKgwqDCoCB1
bnJlZ2lzdGVyX3N5c2NvcmVfb3BzKCZzdG0zMl9leHRpX2hfc3lzY29yZV9vcHMpOwo+Pj4+IMKg
IH0KPj4+PiDCoCArc3RhdGljIGludCBzdG0zMl9leHRpX2hfcmV0cmlnZ2VyKHN0cnVjdCBpcnFf
ZGF0YSAqZCkKPj4+PiArewo+Pj4+ICvCoMKgwqAgc3RydWN0IHN0bTMyX2V4dGlfY2hpcF9kYXRh
ICpjaGlwX2RhdGEgPSAKPj4+PiBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPj4+PiAr
wqDCoMKgIGNvbnN0IHN0cnVjdCBzdG0zMl9leHRpX2JhbmsgKnN0bTMyX2JhbmsgPSBjaGlwX2Rh
dGEtPnJlZ19iYW5rOwo+Pj4+ICvCoMKgwqAgdm9pZCBfX2lvbWVtICpiYXNlID0gY2hpcF9kYXRh
LT5ob3N0X2RhdGEtPmJhc2U7Cj4+Pj4gK8KgwqDCoCB1MzIgbWFzayA9IEJJVChkLT5od2lycSAl
IElSUVNfUEVSX0JBTkspOwo+Pj4+ICsKPj4+PiArwqDCoMKgIHdyaXRlbF9yZWxheGVkKG1hc2ss
IGJhc2UgKyBzdG0zMl9iYW5rLT5zd2llcl9vZnN0KTsKPj4+PiArCj4+Pj4gK8KgwqDCoCByZXR1
cm4gaXJxX2NoaXBfcmV0cmlnZ2VyX2hpZXJhcmNoeShkKTsKPj4gCj4+IENhbGxpbmcgaXJxX2No
aXBfcmV0cmlnZ2VyX2hpZXJhcmNoeSBoZXJlIGlzIHJlYWxseSBvZGQuIElmIHRoZSB3cml0ZQo+
PiBhYm92ZSBoYXMgdGhlIGVmZmVjdCBvZiBtYWtpbmcgdGhlIGludGVycnVwdCBwZW5kaW5nIGFn
YWluLCB3aHkgZG8geW91Cj4+IG5lZWQgdG8gZm9yY2UgdGhlIHJldHJpZ2dlciBhbnkgZnVydGhl
cj8KPiAKPiBUbyBiZSBob25lc3QsIGFzIHdlIHVzZSBoaWVyYXJjaGljYWwgaXJxX2NoaXAsIEkg
dGhvdWdodCBpdCB3YXMgdGhlCj4gd2F5IHRvIGZvbGxvdyAodG8gcmV0cmlnZ2VyIHBhcmVudCBp
cnFfY2hpcCkuIEl0IG1ha2VzIG1heWJlIG5vIHNlbnMKPiBoZXJlLgoKSW5kZWVkLCBpdCBsb29r
cyBwZXJmZWN0bHkgcG9pbnRsZXNzLiBXaGF0IAppcnFfY2hpcF9yZXRyaWdnZXJfaGllcmFyY2h5
KCkKZG9lcyBpcyB0byBsb29rIGZvciB0aGUgZmlyc3QgcGFyZW50IGlycWNoaXAgdGhhdCBpcyBh
YmxlIHRvIHJldHJpZ2dlcgp0aGUgaW50ZXJydXB0LiBHdWVzcyB3aGF0LCB5b3UndmUganVzdCBk
b25lIHRoYXQgYWxyZWFkeS4gQW5kIG9uY2UgCnlvdSd2ZQpnZW5lcmF0ZWQgdGhlIGludGVycnVw
dCwgeW91IGRvbid0IG5lZWQgdG8gYXNrIHRoZSBvdGhlciBpcnFjaGlwcyBpbiB0aGUKY2hhaW4g
dG8gZG8gdGhlIHNhbWUgdGhpbmcuCgo+IFRoZSBtb3N0IGltcG9ydGFudCB0byByZWdlbmVyYXRl
IGdpYyBpbnRlcnJ1cHQgKGFzc29jaWF0ZSB0byB0aGUgZXh0aQo+IGxpbmUpIGlzIHRvIHdyaXRl
IGluIFNXSUVSIHJlZ2lzdGVyLgoKUXVpdGUuIEhlbmNlIG15IHF1ZXN0aW9uLgoKICAgICAgICAg
TS4KLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
