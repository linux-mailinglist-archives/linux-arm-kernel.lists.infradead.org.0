Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D698B78A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 13:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFe1NzfSytctNWP26wm148SgfwhHcw8VIYPXuQmsowo=; b=Kir9iJTPgKpx1f
	R/gmezi/oxDzYEbbVCgG4ih87rp4g4Ciqd/6tV91PwnnFh3fAVVjAVAFmnIMzP84glcSSWcsI2JYg
	tHy3bLzr1Cd8OOMiQ9cBqbUrqql+eYrQpjH6YNyd5kKxGP1sD9mgPq6O3TZx/eIxpwC9hNy6TH599
	o2B/8vr7ccrQ5h6mQTBuGgB/qnawnXGSKfNqzjz99RXxZIpd6caFOkWkjBgoPgJR0+5rLShLyhdOY
	5Ns8VG/ZtqxqMguxh+xfhRqDZcB2VCRrW8stS1Ysa7YfaAPExB1QmY5bDP1IJZTQIoBw1RgZqVOub
	Zq3g6jvKZzxk6C09bnyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAunR-00089a-LC; Thu, 19 Sep 2019 11:40:25 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAun9-0007MW-5I
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 11:40:11 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id F22E2603CA;
 Thu, 19 Sep 2019 13:40:03 +0200 (CEST)
Subject: Re: [PATCH v2] serial: imx: adapt rx buffer and dma periods
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20190919102628.23621-1-philipp.puschmann@emlix.com>
 <20190919112216.qjkx5wvqhsadjxg5@pengutronix.de>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <9923d405-a62d-0c6a-6039-f4a7bc3bf2e8@emlix.com>
Date: Thu, 19 Sep 2019 13:40:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919112216.qjkx5wvqhsadjxg5@pengutronix.de>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_044007_369455_05A4B9A8 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: festevam@gmail.com, fugang.duan@nxp.com, linux-serial@vger.kernel.org,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 jslaby@suse.com, yibin.gong@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlCgpBbSAxOS4wOS4xOSB1bSAxMzoyMiBzY2hyaWViIFV3ZSBLbGVpbmUtS8O2bmlnOgo+
IE9uIFRodSwgU2VwIDE5LCAyMDE5IGF0IDEyOjI2OjI4UE0gKzAyMDAsIFBoaWxpcHAgUHVzY2ht
YW5uIHdyb3RlOgo+PiBVc2luZyBvbmx5IDQgRE1BIHBlcmlvZHMgZm9yIFVBUlQgUlggaXMgdmVy
eSBmZXcgaWYgd2UgaGF2ZSBhIGhpZ2gKPj4gZnJlcXVlbmN5IG9mIHNtYWxsIHRyYW5zZmVycyAt
IGxpa2UgaW4gb3VyIGNhc2UgdXNpbmcgQmx1ZXRvb3RoIHdpdGgKPj4gbWFueSBzbWFsbCBwYWNr
ZXRzIHZpYSBVQVJUIC0gY2F1c2luZyBtYW55IGRtYSB0cmFuc2ZlcnMgYnV0IGluIGVhY2gKPj4g
b25seSBmaWxsaW5nIGEgZnJhY3Rpb24gb2YgYSBzaW5nbGUgYnVmZmVyLiBTdWNoIGEgY2FzZSBt
YXkgbGVhZCB0bwo+PiB0aGUgc2l0dWF0aW9uIHRoYXQgRE1BIFJYIHRyYW5zZmVyIGlzIHRyaWdn
ZXJlZCBidXQgbm8gZnJlZSBidWZmZXIgaXMKPj4gYXZhaWxhYmxlLiBXaGlsZSB3ZSBoYXZlIGFk
ZHJlc3NlZCB0aGUgZG1hIGhhbmRsaW5nIGFscmVhZHkgd2l0aAo+PiAiZG1hZW5naW5lOiBpbXgt
c2RtYTogZml4IGRtYSBmcmVlemVzIiB3ZSBzdGlsbCB3YW50IHRvIGF2b2lkCj4gCj4gSXMgdGhp
cyBzdGF0ZW1lbnQgc3RpbGwgdHJ1ZSBub3cgdGhhdCB5b3Ugc3BsaXQgdGhpcyBwYXRjaCBvdXQg
b2YgeW91cgo+IGJpZ2dlciBzZXJpZXM/Clllcy4gVGhlIGRtYSBwYXRjaGVzIGNhcmUgYWJvdXQg
c3RvcHBpbmcgRE1BIGNoYW5uZWwuIFRoaXMgcGF0Y2ggdHJpZXMgdG8KYXZvaWQgdGhhdCB0aGUg
Y2hhbm5lbCBydW5zIG91dCBvZiB1c2FibGUgYnVmZmVycyAoYWthIGRtYSBwZXJpb2RzKS4KCj4g
Cj4+IFVBUlQgUlggRklGTyBvdmVycnVuLiBTbyB3ZSBkZWNyZWFzZSB0aGUgc2l6ZSBvZiB0aGUg
YnVmZmVycyBhbmQKPj4gaW5jcmVhc2UgdGhlaXIgbnVtYmVyIGFuZCB0aGUgdG90YWwgYnVmZmVy
IHNpemUuCj4gCj4gV2hhdCBoYXBwZW5zIHdoZW4gc3VjaCBhbiBSWCBGSUZPIG92ZXJydW4gaGFw
cGVucz8gQXJlIGNoYXJhY3RlcnMgbG9zdD8KPiBPciBvbmx5IHRpbWU/Ckdvb2QgcXVlc3Rpb24u
IEluIGV4cGxhbmF0aW9uIGkgaGF2ZSBtaXNzZWQgYW4gaW1wb3J0YW50IHBvaW50OgpXaGVuIHVz
aW5nIEhXIGZsb3djb250cm9sIHZpYSBSVFMvQ1RTIGFuZCB0aGUgYnVmZmVyIGlzIGZ1bGwgQ1RT
IGlzIHVzZWQgdG8KdGVsbCB0aGUgcmVtb3RlIGRldmljZSAtIGhlcmUgdGhlIEJsdWV0b290aCBj
aGlwIC0gdG8gc3RvcCBzZW5kaW5nIGRhdGEuCkZvciBhIHdoaWxlIHRoaXMgcHJldmVudHMgbG9z
aW5nIG9mIGNoYXJhY3RlcnMuIEJ1dCB0aGVuIHRoZSByZW1vdGUgZGV2aWNlCmNvbWVzIGludG8g
dHJvdWJsZSBhcyBpdHMgaW50ZXJuYWwgVFggYnVmZmVycyBydW5zIG92ZXIuIERlcGVuZHMgb24g
dGhlCmRldmljZSBob3cgaXQgaGFuZGxlcyB0aGlzIGNhc2UgYW5kIGlmIGl0IHJlY292ZXJzIGlm
IGRhdGEgZmxvdyBpcyBlbmFibGVkCmFnYWluLgoKSW4gY2FzZSB3aXRob3V0IEhXIGZsb3cgY29u
dHJvbCBjaGFyYWN0ZXJzIHdvdWxkIGJlIGxvc3QuIERlcGVuZHMgb24gdGhlIHVwcGVyCmxheWVy
IHdoYXQgaGFwcGVucyB0aGVuLgoKPiBEb2VzIHlvdXIgY2hhbmdlIGhhdmUgYW4gaW5mbHVlbmNl
IGlmIEkgZG8gZmV3ZXIgYnV0Cj4gYmlnZ2VyIHRyYW5zZmVycz8KRG9uJ3QgdGhpbmsgc28uIFRo
ZSBkbWEgcGVyaW9kcyBhcmUgcmF3IGRhdGEgYnVmZmVycy4gSWYgb25lIGlzIGZ1bGwgdGhlIG5l
eHQgb25lCmlzIGJlaW5nIHVzZWQuIEZvciB0aGUgcGVyZm9ybWFuY2UgaSBkb24ndCBzZWUgYSBz
aWduaWZpY2FudCBkaWZmZXJlbmNlIGJldHdlZW4KdXNpbmcgMSBrQiBidWZmZXJzIG9yIDQga0Ig
YnVmZmVycy4KClJlZ2FyZHMsClBoaWxpcHAKCj4gCj4gQmVzdCByZWdhcmRzCj4gVXdlCj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
