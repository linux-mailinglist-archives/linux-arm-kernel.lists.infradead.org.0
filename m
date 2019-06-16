Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B2E47408
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 11:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuersCcSPE4KiRNc19k039DVFB4MVE6hCVBb/jUpB4E=; b=HKbeBlvTkkKiWt
	PfJENR3AIg8XfwGKLiGXc0sCYuJIEABhGyLzLaFcQUNHVm1OtTa0EC0GRcD/YMp/H9/cghaJNTtRp
	9fJRJb6cCHtOenY2ApvbTNp324X6fFs4xqeXLjssKP/4WX7oHKZFtqytNqyWDH0xVzV/FtBO/VUja
	WuZtJaniHlnupdNn5q6eZm7VnOW8EAnSNq6aS0Ik2Lclx3YVfT5kJ3ivaoHYGAtvpjwKIyJwwtW3Q
	fwK5G7GsRNnXpDJEai58GXugDZ4nAwCn+vIEusFYZP5Vj0H2e4UXbvrAmOoHeNx7+Jny2SrUXo3iK
	YVnJv8M2Dh4XRxfZFeEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcRsX-0001MD-6I; Sun, 16 Jun 2019 09:55:13 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcRsC-0001Lo-Ic
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 09:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:Cc:To:From:Subject;
 bh=LdjeAlOQzVBWRv8DE1bRFqLDMjm3jAs6C/dQeQ+Ykwg=; 
 b=cXVL7cks/UhjdERaLmDa6vfLg9FzeT5Rvn8NGnHJ151cMVpx6Gi0FLdv1jduKosJlAqc6hs3cVew2ThZGyqiJu+qxUtcsdvcnqpPv07FjLYGsLWesg6gyxjKGmZd5EjhSCeRunt6LzXfRzfWa47oAqKY1KymA8AtdVFrY5cnHKtVTZUqIkcMS7/v/imJsVSaI8U6jPlJlDCI3yVmi2HWvKftiaTJmtLPftGQmrXUlxT5W3/dRv4SYsHktwH+G+3m0vzNjoOb2o8nWbTxoEykFKmhr58Uu5D+g4b0MFaCQRO1h9SCWzXAJ08Rk5j0y5pND12AZT8+hqJGdm2n7TfiSQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:58965
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hcRs7-0006zi-J2; Sun, 16 Jun 2019 11:54:47 +0200
Subject: Re: [PATCH v4 10/12] drm/modes: Parse overscan properties
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <c16d281d1dc69ee60e95169807e7e2ab2992f133.1560514379.git-series.maxime.ripard@bootlin.com>
 <00dfc10e-a95e-be07-0179-8cfeb6ca9908@tronnes.org>
Message-ID: <e2790a57-02be-78e8-5ce8-00a62c1861bf@tronnes.org>
Date: Sun, 16 Jun 2019 11:54:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <00dfc10e-a95e-be07-0179-8cfeb6ca9908@tronnes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_025453_280000_54D20729 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, eben@raspberrypi.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTUuMDYuMjAxOSAxNy40MCwgc2tyZXYgTm9yYWxmIFRyw7hubmVzOgo+IAo+IAo+IERl
biAxNC4wNi4yMDE5IDE0LjEzLCBza3JldiBNYXhpbWUgUmlwYXJkOgo+PiBQcm9wZXJseSBjb25m
aWd1cmluZyB0aGUgb3ZlcnNjYW4gcHJvcGVydGllcyBtaWdodCBiZSBuZWVkZWQgZm9yIHRoZQo+
PiBpbml0aWFsIHNldHVwIG9mIHRoZSBmcmFtZWJ1ZmZlciBmb3IgZGlzcGxheSB0aGF0IHN0aWxs
IGhhdmUgb3ZlcnNjYW4uCj4+IExldCdzIGFsbG93IGZvciBtb3JlIHByb3BlcnRpZXMgb24gdGhl
IGtlcm5lbCBjb21tYW5kIGxpbmUgdG8gc2V0dXAgZWFjaAo+PiBtYXJnaW4uCj4gCj4gVGhpcyBh
bHNvIG5lZWRzIHRvIGJlIGRvY3VtZW50ZWQgaW4gRG9jdW1lbnRhdGlvbi9mYi9tb2RlZGIudHh0
Cj4gCj4+Cj4+IFJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9y
Zz4KPj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGlu
LmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMgfCA0NCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPj4gIGluY2x1ZGUvZHJtL2RybV9jb25u
ZWN0b3IuaCB8IDEyICsrKysrLS0tLS0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fbW9kZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYwo+PiBpbmRleCBiOTJiN2Rm
Njc4NGEuLjI1ZDJiYTU5NTc1MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9t
b2Rlcy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYwo+PiBAQCAtMTYwOSw2
ICsxNjA5LDUwIEBAIHN0YXRpYyBpbnQgZHJtX21vZGVfcGFyc2VfY21kbGluZV9vcHRpb25zKGNo
YXIgKnN0ciwgc2l6ZV90IGxlbiwKPj4gIAkJfSBlbHNlIGlmICghc3RybmNtcChvcHRpb24sICJy
ZWZsZWN0X3kiLCBkZWxpbSAtIG9wdGlvbikpIHsKPj4gIAkJCXJvdGF0aW9uIHw9IERSTV9NT0RF
X1JFRkxFQ1RfWTsKPj4gIAkJCXNlcCA9IGRlbGltOwo+PiArCQl9IGVsc2UgaWYgKCFzdHJuY21w
KG9wdGlvbiwgIm1hcmdpbl9yaWdodCIsIGRlbGltIC0gb3B0aW9uKSkgewo+IAo+IEkgd29uZGVy
IGlmIHRoaXMgc2hvdWxkIGJlIGNhbGxlZCB0dl9tYXJnaW5fcmlnaHQgdG8gZGlzdGluZ3Vpc2gg
aXQgZnJvbQo+ICdtJyAodGhlIG1vZGUgc3BlY2lmaWVyKSB3aGljaCBhbHNvIGlzIGEgbWFyZ2lu
PyBPciBjYW4gdGhlc2UgbWFyZ2lucyBiZQo+IHJldXNlZCBvbiBvdGhlciBkaXNwbGF5IHR5cGVz
IGxhdGVyIG9uPyBBIGxpdHRsZSBzdHVwaWQgdG8gaGF2ZSBib3RoCj4gJ3R2X21hcmdpbl9yaWdo
dCcgYW5kICdtYXJnaW5fcmlnaHQnLgoKQW5kIGFmdGVyIGEgbmlnaHRzIHNsZWVwIEkgdGhpbmsg
J21hcmdpbl9yaWdodCcgaXMganVzdCBmaW5lIGFzIGxvbmcgYXMKaXQncyBkb2N1bWVudGVkIGlu
IG1vZGVkYi50eHQgYXMgVFYgbWFyZ2lucy4KClNvIHdpdGggYW4gbW9kZWRiLnR4dCBlbnRyeSBh
bmQgdGhlIHN0cnVjdCBjaGFuZ2UgbW92ZWQgdG8gcGF0Y2ggODoKClJldmlld2VkLWJ5OiBOb3Jh
bGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KCj4gCj4+ICsJCQljb25zdCBjaGFyICp2
YWx1ZSA9IGRlbGltICsgMTsKPj4gKwkJCXVuc2lnbmVkIGludCBtYXJnaW47Cj4+ICsKPj4gKwkJ
CW1hcmdpbiA9IHNpbXBsZV9zdHJ0b2wodmFsdWUsICZzZXAsIDEwKTsKPj4gKwo+PiArCQkJLyog
TWFrZSBzdXJlIHdlIGhhdmUgcGFyc2VkIHNvbWV0aGluZyAqLwo+PiArCQkJaWYgKHNlcCA9PSB2
YWx1ZSkKPj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwo+PiArCQkJbW9kZS0+dHZfbWFyZ2lu
cy5yaWdodCA9IG1hcmdpbjsKPj4gKwkJfSBlbHNlIGlmICghc3RybmNtcChvcHRpb24sICJtYXJn
aW5fbGVmdCIsIGRlbGltIC0gb3B0aW9uKSkgewo+PiArCQkJY29uc3QgY2hhciAqdmFsdWUgPSBk
ZWxpbSArIDE7Cj4+ICsJCQl1bnNpZ25lZCBpbnQgbWFyZ2luOwo+PiArCj4+ICsJCQltYXJnaW4g
PSBzaW1wbGVfc3RydG9sKHZhbHVlLCAmc2VwLCAxMCk7Cj4+ICsKPj4gKwkJCS8qIE1ha2Ugc3Vy
ZSB3ZSBoYXZlIHBhcnNlZCBzb21ldGhpbmcgKi8KPj4gKwkJCWlmIChzZXAgPT0gdmFsdWUpCj4+
ICsJCQkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsKPj4gKwkJCW1vZGUtPnR2X21hcmdpbnMubGVmdCA9
IG1hcmdpbjsKPj4gKwkJfSBlbHNlIGlmICghc3RybmNtcChvcHRpb24sICJtYXJnaW5fdG9wIiwg
ZGVsaW0gLSBvcHRpb24pKSB7Cj4+ICsJCQljb25zdCBjaGFyICp2YWx1ZSA9IGRlbGltICsgMTsK
Pj4gKwkJCXVuc2lnbmVkIGludCBtYXJnaW47Cj4+ICsKPj4gKwkJCW1hcmdpbiA9IHNpbXBsZV9z
dHJ0b2wodmFsdWUsICZzZXAsIDEwKTsKPj4gKwo+PiArCQkJLyogTWFrZSBzdXJlIHdlIGhhdmUg
cGFyc2VkIHNvbWV0aGluZyAqLwo+PiArCQkJaWYgKHNlcCA9PSB2YWx1ZSkKPj4gKwkJCQlyZXR1
cm4gLUVJTlZBTDsKPj4gKwo+PiArCQkJbW9kZS0+dHZfbWFyZ2lucy50b3AgPSBtYXJnaW47Cj4+
ICsJCX0gZWxzZSBpZiAoIXN0cm5jbXAob3B0aW9uLCAibWFyZ2luX2JvdHRvbSIsIGRlbGltIC0g
b3B0aW9uKSkgewo+PiArCQkJY29uc3QgY2hhciAqdmFsdWUgPSBkZWxpbSArIDE7Cj4+ICsJCQl1
bnNpZ25lZCBpbnQgbWFyZ2luOwo+PiArCj4+ICsJCQltYXJnaW4gPSBzaW1wbGVfc3RydG9sKHZh
bHVlLCAmc2VwLCAxMCk7Cj4+ICsKPj4gKwkJCS8qIE1ha2Ugc3VyZSB3ZSBoYXZlIHBhcnNlZCBz
b21ldGhpbmcgKi8KPj4gKwkJCWlmIChzZXAgPT0gdmFsdWUpCj4+ICsJCQkJcmV0dXJuIC1FSU5W
QUw7Cj4+ICsKPj4gKwkJCW1vZGUtPnR2X21hcmdpbnMuYm90dG9tID0gbWFyZ2luOwo+PiAgCQl9
IGVsc2Ugewo+PiAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAJCX0KPj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAo+
PiBpbmRleCBjNThhMzViMzRjMWEuLjY4NDFjNDZlNjc4MSAxMDA2NDQKPj4gLS0tIGEvaW5jbHVk
ZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCj4+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3Iu
aAo+PiBAQCAtNTA1LDEyICs1MDUsNyBAQCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl90dl9tYXJnaW5z
IHsKPj4gICAqLwo+PiAgc3RydWN0IGRybV90dl9jb25uZWN0b3Jfc3RhdGUgewo+PiAgCWVudW0g
ZHJtX21vZGVfc3ViY29ubmVjdG9yIHN1YmNvbm5lY3RvcjsKPj4gLQlzdHJ1Y3Qgewo+PiAtCQl1
bnNpZ25lZCBpbnQgbGVmdDsKPj4gLQkJdW5zaWduZWQgaW50IHJpZ2h0Owo+PiAtCQl1bnNpZ25l
ZCBpbnQgdG9wOwo+PiAtCQl1bnNpZ25lZCBpbnQgYm90dG9tOwo+PiAtCX0gbWFyZ2luczsKPj4g
KwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl90dl9tYXJnaW5zIG1hcmdpbnM7Cj4+ICAJdW5zaWduZWQg
aW50IG1vZGU7Cj4+ICAJdW5zaWduZWQgaW50IGJyaWdodG5lc3M7Cj4+ICAJdW5zaWduZWQgaW50
IGNvbnRyYXN0Owo+IAo+IEFzIG1lbnRpb25lZCB0aGlzIG5lZWRzIG1vdmluZyB0byBwYXRjaCA4
Lgo+IAo+IE5vcmFsZi4KPiAKPj4gQEAgLTEwMzksNiArMTAzNCwxMSBAQCBzdHJ1Y3QgZHJtX2Nt
ZGxpbmVfbW9kZSB7Cj4+ICAJICogRFJNX01PREVfUk9UQVRFXzE4MCBhcmUgc3VwcG9ydGVkIGF0
IHRoZSBtb21lbnQuCj4+ICAJICovCj4+ICAJdW5zaWduZWQgaW50IHJvdGF0aW9uOwo+PiArCj4+
ICsJLyoqCj4+ICsJICogQHR2X21hcmdpbnM6IFRWIG1hcmdpbnMgdG8gYXBwbHkgdG8gdGhlIG1v
ZGUuCj4+ICsJICovCj4+ICsJc3RydWN0IGRybV9jb25uZWN0b3JfdHZfbWFyZ2lucyB0dl9tYXJn
aW5zOwo+PiAgfTsKPj4gIAo+PiAgLyoqCj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
