Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337511ABBE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YO23KlX/6vDMZizuJodQnBZW0lZXAw1YXXKnxiggK6k=; b=aSKYvSPxMEOVhMOgddbTU5D0b
	vwkk+7kbVLDwFUnFKLWjP0wWagzDq0Q4PePw7WS5efA8EIRJj9Eebvvsg3379euMIYsMu5XjxUw0X
	B+hecmSzhrsQJj+4enCnmnBwxv6iC3Vp++O8Rnjcyz9d9Qa0/fOBdFqKTH6pY8yJUGRqT6Oyctreh
	n+N7oxjqVu5hBYyySE9cE3PVfbKpyea0Nh8lJ5O/rXJZ6uHelQ9WoYd0pHy+eqzmn1L8UHh+yIaQK
	Mn4cUd1r4PKonKwI+smGqrA63JjZ9lM5Q2R8BV09QfQyJFuWqqudiW7lG4QJXwMIOXfQ81/OeCFYR
	U2vdZG8OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0MW-0008RE-RE; Thu, 16 Apr 2020 08:59:08 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0MI-0008Hc-Pm
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:58:57 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.19]) by
 rmmx-syy-dmz-app07-12007 (RichMail) with SMTP id 2ee75e981e3251d-817c3;
 Thu, 16 Apr 2020 16:58:26 +0800 (CST)
X-RM-TRANSID: 2ee75e981e3251d-817c3
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from [172.20.145.111] (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr10-12010 (RichMail) with SMTP id 2eea5e981e31183-3c8ab;
 Thu, 16 Apr 2020 16:58:26 +0800 (CST)
X-RM-TRANSID: 2eea5e981e31183-3c8ab
Subject: Re: [PATCH] i2c: drivers: Avoid unnecessary check inefm32_i2c_probe()
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200415140640.19948-1-tangbin@cmss.chinamobile.com>
 <20200415143133.qwbes5whbqx5jf2j@pengutronix.de>
 <20cc01b8-2661-7b3e-3dbc-38f7e282679b@cmss.chinamobile.com>
 <20200416065014.7umocf2aohz6q2nn@pengutronix.de>
From: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <145d0ba7-fca4-20f6-a6e2-6fc370bc9a57@cmss.chinamobile.com>
Date: Thu, 16 Apr 2020 17:00:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200416065014.7umocf2aohz6q2nn@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_015855_337533_7EEF8318 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: wsa@the-dreams.de, linux-kernel@vger.kernel.org, o.rempel@pengutronix.de,
 linux-i2c@vger.kernel.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlOgoKT24gMjAyMC80LzE2IDE0OjUwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1lZm0zMi5jIGIvZHJpdmVycy9p
MmMvYnVzc2VzL2kyYy1lZm0zMi5jCj4+Pj4gaW5kZXggNGRlMzFmYWU3Li40Nzg2ZWY2YjIgMTAw
NjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1lZm0zMi5jCj4+Pj4gKysrIGIv
ZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1lZm0zMi5jCj4+Pj4gQEAgLTMxMiw5ICszMTIsNiBAQCBz
dGF0aWMgaW50IGVmbTMyX2kyY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Pj4+ICAgIAlpbnQgcmV0Owo+Pj4+ICAgIAl1MzIgY2xrZGl2Owo+Pj4+IC0JaWYgKCFucCkKPj4+
PiAtCQlyZXR1cm4gLUVJTlZBTDsKPj4+PiAtCj4+PiBJIGRvbid0IGNhcmUgbXVjaCBhYm91dCB0
aGlzIGNoYW5nZS4gV2hpbGUgdGhlIHN0YXRlbWVudCB0aGF0IHRoaXMKPj4+IGRyaXZlciBpcyBv
bmx5IGluc3RhbnRpYXRlZCBvbiBkdCBwbGF0Zm9ybXMgaXMgcHJvYmFibHkgcmlnaHQsCj4+PiBl
eHBsaWNpdGx5IGNoZWNraW5nIGZvciBpdCBtaWdodCBzdGlsbCBwcmV2ZW50IHN1cnByaXNlcyBs
YXRlciwgc2VydmVzCj4+PiBhcyBleHBsaWNpdCBzdGF0ZW1lbnQgZm9yIHRoZSBkcml2ZXIgcmVh
ZGVyIHRoYXQgbm9uLWR0IGlzbid0IHN1cHBvc2VkCj4+PiB0byB3b3JrIGFuZCBnaXZlbiB0aGF0
IHRoZSBjaGVjayBpcyBjaGVhcCBJIHRlbmQgc2xpZ2h0bHkgdG8ganVzdCBrZWVwCj4+PiBpdC4K
Pj4+Cj4+IEluIHRoaXMgZHJpdmVyLCB0aGUgZnVuY3Rpb24gZWZtMzJfaTJjX3Byb2JlKCkgY2Fu
IGJlIHRyaWdnZXJlZCBvbmx5IGlmIHRoZQo+PiBwbGF0Zm9ybV9kZXZpY2UgYW5kIHBsYXRmb3Jt
X2RyaXZlciBtYXRjaGVzLMKgIGFuZCB0aGUgbWF0Y2hpbmcgY29uZGl0aW9uIGlzCj4+IERUUy4g
SXQncyBteSBvcGluaW9uLgo+IEkgYWRtaXQgSSBkaWRuJ3QgcmVjaGVjaywgYnV0IEkgdGhpbmsg
dGhlIGRyaXZlciB3aWxsIGFsc28gYmUgbWF0Y2hlZCBvbgo+IG5vbi1kdCBwbGF0Zm9ybXMgdGhh
dCBwcm92aWRlIGFuICJlZm0zMi1pMmMiIGRldmljZS4KClllYXIsIEkgYWdyZWUgd2l0aCB5b3Us
IHRoZSBkcml2ZXIgc2hvdWxkIGJlIG1hdGNoZWQgb24gZHQgb3Igbm9uLWR0IApwbGF0Zm9ybXMu
IEJ1dCBmb3Igbm9uLWR0IHBsYXRmb3JtcywgSSB0aGluayB0aGlzIGRyaXZlciBtYXkgbmVlZCBt
aW5vciAKY2hhbmdlcywgYWZ0ZXIgYWxsLCBpdCBpcyBqdXN0IHN1aXRhYmxlIGZvciB0aGUgZHQg
cGxhdGZvcm1zIHJpZ2h0IG5vdy4gClRoYXQncyBteSBzaGFsbG93IG9waW5pb25zLgoKVGhhbmtz
IGZvciB5b3VyIHBhdGllbnQgZ3VpZGFuY2UgYW5kIHJlcGx5LCB0aGFuayB5b3UuIEkgdGhpbmsg
eW91IGFyZSAKYWxzbyBhIGdvb2QgdGVhY2hlciwgdGhhbmtzLgoKVGFuZyBCaW4KCj4KCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
