Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4B6C94DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 01:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u6vQ1CX+3D2238ToCp8szVZRcmBaVCR7Nz1Q0XBP0GY=; b=h24CDSiVIvpKfWpb2Y/SJTivA
	9KDGxcyaCoFuHV92xMDne+bi/iqKRPR39xOX1RP1xPQpfGwWEOP/nl5+Rio+pD4kZaZyfUNf+UJjk
	mfZ16Fn+Tx0NfhrMv8kJEBjlNYJ14p9Mh0Vsj11NOdfiSe+yC+NrfO7m7/ZOMITY324NbL51KtRMK
	wK8SdzMMML1/m7cHDJtr8SeH3It0YL80BofrRoh6zaySFVjMFhXjm8PArzJqMs0IbyIcMVyoQFphs
	t2IC2N5jsbyX+hDNHBwid9obdnkFZ2h4saQ53UF1Q5P2/b7aGJhfeCCV5kvB8H78rDHcmb0lO9jcm
	8KtXnJffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFo43-0002QD-Cy; Wed, 02 Oct 2019 23:29:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFo3w-0002PL-Fr
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 23:29:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so483255pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 16:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=mfYTRE2wrHnGHdzN9pNRX0i1wlfEpry7vj/JNYrQ7CY=;
 b=Mf3QWc+S+bv5pPGAm5l5TcASwdcoob1IpAJzIYmCUhXcHc9GZtCIr3XT5pjbAuSPTS
 AWmeLFS3b+jY913B1ysUu3DmViojEU2i9R/tFiFtAV+95O7xfx1ymyUlCoel6td6Eh1e
 Aeti9QCjKm2ld4obHKXX8u4j/MNnSQabQF1YY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mfYTRE2wrHnGHdzN9pNRX0i1wlfEpry7vj/JNYrQ7CY=;
 b=sFHGRK4igfQMhsZCP+Q4teqVJiW7YEainxLOG9JS2sOgDZw+LqgD1nRnRe5X6pEN7S
 sW3Hl/kekKZfbs3gz2ObdQRDGf8yFRmkyQXVoVwWa1EVEhknLbiwaGN9QcBiy+C/PQlw
 k9O2sj7w18iWC8WAGzuLpQjxgF+3wcZu4YzmsTxECvShGrSzT8nRXtFKjSpLgLwAShas
 Jvg02SSgK65pb70RN3jtSvMTdpusf6wADpn7pC+RSvRCyvqNiiFO/+1LrT3kTycqibBz
 x6XBKUjnTw3J5rh3f2biSoiDPX2MI1npXAVa6d3KNlQ7T5PidNk9W6DP9XI8OCxFnhbg
 lPLQ==
X-Gm-Message-State: APjAAAUXooc2w4PFrDVBG6lWp6RQ4dd0fc/CE4JjnSaGeX4pa/8s9vFr
 hUY7yRSpPCPeURDhUit/s3scTA==
X-Google-Smtp-Source: APXvYqwb1v+OFwGH/X+Zf8U8nxSjb6n41/d9STpAf2augV7Q8TlFtC9GLo/vHrIL44A4Hqi6BErSww==
X-Received: by 2002:a63:e14:: with SMTP id d20mr6038229pgl.33.1570058977001;
 Wed, 02 Oct 2019 16:29:37 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id l72sm342214pjb.7.2019.10.02.16.29.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 16:29:36 -0700 (PDT)
Subject: Re: [PATCH] pinctrl: iproc: improve error handling
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, rayagonda.kokatanur@broadcom.com,
 li.jin@broadcom.com
References: <20191002220034.2034-1-chris.packham@alliedtelesis.co.nz>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <045d67e2-5618-3742-5519-c4fb9518c118@broadcom.com>
Date: Wed, 2 Oct 2019 16:29:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002220034.2034-1-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_162940_534001_025B11E4 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXMsCgpPbiAyMDE5LTEwLTAyIDM6MDAgcC5tLiwgQ2hyaXMgUGFja2hhbSB3cm90ZToK
PiBwbGF0Zm9ybV9nZXRfaXJxKCkgY2FuIHJldHVybiBhbiBlcnJvciBjb2RlLiBBbGxvdyBmb3Ig
dGhpcyB3aGVuIGdldHRpbmcKPiB0aGUgaXJxLgpBYm92ZSBtYXRjaGVzIGNoYW5nZSBpbiAxc3Qg
bGluZSBvZiBjb21taXQuwqAgUGxlYXNlIGFkZCBhIEZpeGVzOiB0YWcKZm9yIHN1Y2ggZml4Lgo+
ICAgIFdoaWxlIHdlJ3JlIGhlcmUgdXNlIHRoZSBkZXZfbmFtZShkZXYpIGZvciB0aGUgaXJxYy0+
bmFtZSBzbwo+IHRoYXQgd2UgZ2V0IHVuaXF1ZSBuYW1lcyB3aGVuIHdlIGhhdmUgbXVsdGlwbGUg
aW5zdGFuY2VzIG9mIHRoaXMgZHJpdmVyLgpUaGUgZGV2X25hbWUgY2hhbmdlIHNob3VsZCBiZSBp
biBhIGRpZmZlcmVudCBjb21taXQgdG8ga2VlcCB0aGluZ3MKYmlzZWN0YWJsZS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFBhY2toYW0gPGNocmlzLnBhY2toYW1AYWxsaWVkdGVsZXNpcy5jby5u
ej4KPiAtLS0KPiBOb3RpY2VkIHRoaXMgd2hpbGUgZGVidWdnaW5nIGFub3RoZXIgcHJvYmxlbS4K
Pgo+ICAgZHJpdmVycy9waW5jdHJsL2JjbS9waW5jdHJsLWlwcm9jLWdwaW8uYyB8IDQgKystLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvYmNtL3BpbmN0cmwtaXByb2MtZ3Bpby5jIGIvZHJp
dmVycy9waW5jdHJsL2JjbS9waW5jdHJsLWlwcm9jLWdwaW8uYwo+IGluZGV4IDZmN2QzYTJmMmU5
Ny4uYzI0ZDQ5ZDQzNmNlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9iY20vcGluY3Ry
bC1pcHJvYy1ncGlvLmMKPiArKysgYi9kcml2ZXJzL3BpbmN0cmwvYmNtL3BpbmN0cmwtaXByb2Mt
Z3Bpby5jCj4gQEAgLTg1MywxMiArODUzLDEyIEBAIHN0YXRpYyBpbnQgaXByb2NfZ3Bpb19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCj4gICAJLyogb3B0aW9uYWwgR1BJ
TyBpbnRlcnJ1cHQgc3VwcG9ydCAqLwo+ICAgCWlycSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwg
MCk7Cj4gLQlpZiAoaXJxKSB7Cj4gKwlpZiAoaXJxID4gMCkgewo+ICAgCQlzdHJ1Y3QgaXJxX2No
aXAgKmlycWM7Cj4gICAJCXN0cnVjdCBncGlvX2lycV9jaGlwICpnaXJxOwo+ICAgCj4gICAJCWly
cWMgPSAmY2hpcC0+aXJxY2hpcDsKPiAtCQlpcnFjLT5uYW1lID0gImJjbS1pcHJvYy1ncGlvIjsK
PiArCQlpcnFjLT5uYW1lID0gZGV2X25hbWUoZGV2KTsKPiAgIAkJaXJxYy0+aXJxX2FjayA9IGlw
cm9jX2dwaW9faXJxX2FjazsKPiAgIAkJaXJxYy0+aXJxX21hc2sgPSBpcHJvY19ncGlvX2lycV9t
YXNrOwo+ICAgCQlpcnFjLT5pcnFfdW5tYXNrID0gaXByb2NfZ3Bpb19pcnFfdW5tYXNrOwpUaGFu
a3MsClNjb3R0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
