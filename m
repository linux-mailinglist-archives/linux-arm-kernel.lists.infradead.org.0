Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D4413891A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 01:40:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLs6OoE3Q5sCZizytZ/i3h6Gg2mn5bB2oTuwREtWbjc=; b=Ov3H40vDERadYx
	xwit4Pu9NzxXf2tGAJjqZgBP3tIBI3S0kuJlL3+EWoBuoNajUA9fj1Yo0UCb5kPXJnOHxWKxeUhmJ
	rY3+YA78tPfhHfDjjdqSzf/BGOuNT681Qu5yg62Azw2Dd5+1q+FVqWn/Y30yH3hBcfTs61zbobg9P
	4HpcgDqVPq7AcZ45FEaprvE7La+FcIhRsRF1ClufXn0BNS0RWORj9ayACOO6z/dDRypxtetZhhRxE
	wDj3cTJ01qvF20+a/5wyn8Eya5jQjbsmQUQdK6ifB/oFmUJCdWQzORBrZbQD/MUv6boJVbUQRoNdZ
	gJ0P9Fq7QWkxScglyOag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqnmC-0002t5-70; Mon, 13 Jan 2020 00:40:16 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqnm4-0002Q6-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 00:40:09 +0000
Received: by mail-yw1-xc44.google.com with SMTP id v126so4863171ywc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 16:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WabAjrSzUiDu1CmRicqBS8U4GR3RBwbP81ffSSwow40=;
 b=TxCHv299Sm/bUuj7k4G7GGjq1ij84ttb4AuTnFcQARVQNaRYF90Tl0u1u3ATclzN5K
 dAYqoyCa7oU29h8vU1DoAhdLCKaMjfEYFeroQoJXHyEtCDXs0kp7NfsjuLNtzGpJJ98u
 T3wVlbApYXRT81QRLd6inrLOe+QsQUTQsiUfgjFeDAayGP55r1Qxf+H/WP0ibEMwQjTk
 5pqmgqwylH9xQf75VHWALMr+fpUgKfMm0YS7yDQXEiwO0v0SVcF0scRM0ZFGxAz1VxAe
 O8UH+CW/ExT6XcPeMpQJL3BlOEshz6gyDL3cbDiK8BkOxONtFNenvt/tf2opzKpDGr9I
 tvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WabAjrSzUiDu1CmRicqBS8U4GR3RBwbP81ffSSwow40=;
 b=Xbtt7CllRiodyEwQLrT6Of6LiRPosUGlWlm/de6foqqvotdSdzvQSZ0g5PPRgWyb4V
 xm4QnmXuN3B/IWdhZf9QwLCfVXBggICMFXEU5ISSf39RWX9kAhOMrjJykq3ZNTKLrH0y
 M1xruy9Bs4nF/TCk4MDV2M3EiQnsPgesluQZlUoJv5QZglXhonvFl+lFwtWvPod6OG1M
 HbQZh8e1vLXfxW/RyU9mHF6sXUNWm5F7UO01ePboCFQGqYYYjum3F9ZCVQ2gt1Fnkpky
 L8BOME9FrMOV+SBVhE5zoQfIMQi2mqe8+abysn/AEIm/PERxNV38EwanfMg4wcuwDq3u
 YnEw==
X-Gm-Message-State: APjAAAVSDqIxeBKMiIEMl0W+V2YmvT7jRYXXHwav1lxfZhok1HCJrnsN
 Unzdl6eobI+7SfLt1RucjnCZDl43Lh2E00PN56w=
X-Google-Smtp-Source: APXvYqzYfBnSxhzMeYhjwjq3ePB6rAWQRUB53+XUYzPcHedj1y7f+9B6BBZcaMJ/yGll/TCAjpi9y+TTaR//LaeNFao=
X-Received: by 2002:a25:90b:: with SMTP id 11mr12082242ybj.0.1578876006988;
 Sun, 12 Jan 2020 16:40:06 -0800 (PST)
MIME-Version: 1.0
References: <20200109233106.17060-1-peron.clem@gmail.com>
In-Reply-To: <20200109233106.17060-1-peron.clem@gmail.com>
From: Alexander <alex.mobigo@gmail.com>
Date: Sun, 12 Jan 2020 21:39:55 -0300
Message-ID: <CAGfOxi2vUVLv1_PGynu_53=DvuMBKFE6UTFUoTPTqjW1VvotLg@mail.gmail.com>
Subject: Re: [PATCH] [RFC] pwm: sun4i: Move pwm_calculate out of spin_lock
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_164008_265335_877EEC96 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alex.mobigo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gOSwgMjAyMCBhdCA4OjMxIFBNIENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xl
bUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gcHdtX2NhbGN1bGF0ZSBjYWxscyBjbGtfZ2V0X3JhdGUg
d2hpbGUgaG9sZGluZyBhIHNwaW5fbG9jay4KPgo+IFRoaXMgY3JlYXRlIGFuIGlzc3VlIGFzIGNs
a19nZXRfcmF0ZSgpIG1heSBzbGVlcC4KPgo+IE1vdmUgcHdtX2NhbGN1bGF0ZSBvdXQgb2YgdGhp
cyBzcGluX2xvY2suCj4KPiBGaXhlczogYzMyYzVjNTBkNGZlICgicHdtOiBzdW40aTogU3dpdGNo
IHRvIGF0b21pYyBQV00iKQo+IFJlcG9ydGVkLWJ5OiBBbGV4IE1vYmlnbyA8YWxleC5tb2JpZ29A
Z21haWwuY29tPgo+IFN1Z2dlc3RlZC1ieTogVmFzaWx5IEtob3J1emhpY2sgPGFuYXJzb3VsQGdt
YWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgo+IC0tLQo+Cj4gSGksCj4KPiB0aGlzIGlzc3VlIGhhcyBiZWVuIHJlcG9ydGVkIG9u
IGxpbnV4LXN1bnhpIEdvb2dsZSBncm91cHMuCj4KPiBJIGRvbid0IGhhdmUgYSBib2FyZCB3aXRo
IFBXTSB0byBjb25maXJtIGl0Lgo+Cj4gUGxlYXNlIHdhaXQgYSB0ZXN0ZWQtYnkuCj4KPiBUaGFu
a3MsCj4gQ2zDqW1lbnQKPgo+ICBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDcgKysrLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMKPiBpbmRleCAxYWZkNDFlYmQzZmQuLjZiMjMwMDI5ZGM0OSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3B3bS9wd20tc3VuNGkuYwo+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gQEAg
LTI0OCwxOSArMjQ4LDE4IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21f
Y2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKPiAgICAgICAgICAgICAgICAgfQo+
ICAgICAgICAgfQo+Cj4gLSAgICAgICBzcGluX2xvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2NrKTsK
PiAtICAgICAgIGN0cmwgPSBzdW40aV9wd21fcmVhZGwoc3VuNGlfcHdtLCBQV01fQ1RSTF9SRUcp
Owo+IC0KPiAgICAgICAgIHJldCA9IHN1bjRpX3B3bV9jYWxjdWxhdGUoc3VuNGlfcHdtLCBzdGF0
ZSwgJmR1dHksICZwZXJpb2QsICZwcmVzY2FsZXIsCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICZieXBhc3MpOwo+ICAgICAgICAgaWYgKHJldCkgewo+ICAgICAgICAgICAgICAg
ICBkZXZfZXJyKGNoaXAtPmRldiwgInBlcmlvZCBleGNlZWRzIHRoZSBtYXhpbXVtIHZhbHVlXG4i
KTsKPiAtICAgICAgICAgICAgICAgc3Bpbl91bmxvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2NrKTsK
PiAgICAgICAgICAgICAgICAgaWYgKCFjc3RhdGUuZW5hYmxlZCkKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUoc3VuNGlfcHdtLT5jbGspOwo+ICAgICAgICAg
ICAgICAgICByZXR1cm4gcmV0Owo+ICAgICAgICAgfQo+Cj4gKyAgICAgICBzcGluX2xvY2soJnN1
bjRpX3B3bS0+Y3RybF9sb2NrKTsKPiArICAgICAgIGN0cmwgPSBzdW40aV9wd21fcmVhZGwoc3Vu
NGlfcHdtLCBQV01fQ1RSTF9SRUcpOwo+ICsKPiAgICAgICAgIGlmIChzdW40aV9wd20tPmRhdGEt
Pmhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQpIHsKPiAgICAgICAgICAgICAgICAgaWYgKGJ5cGFz
cykgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIGN0cmwgfD0gQklUX0NIKFBXTV9CWVBBU1Ms
IHB3bS0+aHdwd20pOwo+IC0tCj4gMi4yMC4xCj4KIiIiIiIiIiIiIiIiIiIiIiIKVGVzdGVkIG9u
IG15IGJvYXJkIFBpbmU2NCssIHByb2JsZW1zIG9jY3VycyBiZWZvcmUgdGhlIHBhdGNoIGJ1dCBu
b3QgYWZ0ZXIuLi4KClRlc3RlZC1CeTogQWxleGFuZGVyIEZpbmdlciA8YWxleC5tb2JpZ29AZ21h
aWwuY29tPgoiIiIiIiIiIiIiIiIiIiIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
