Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3F21C6ED9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e29QrjtfQtrojR2aUP3xSIZo53hLi0+6Wezq2wO88jQ=; b=PePpAcpFM7TCGO
	gHU1gMacae+xP7Bfi7KpCve/Ou1y/8XeaSEQNr+tTaiKEGni9jFf22hYoTSqUOFfaQuhRL3bfxXah
	G0LDPuvjsbHTcTYWVVCXngVDoUgXw4hBTjY28kP5LE9S6COWuqhqu4d8sqkcHwtFGAB9THpssVhX0
	o12jLo8W+eHQwIPoqBlO/W2T8YvQAlBvuUXSVd2NTi1mKtSyLKUJN0H+G27nEAh3jvopbLzCm5RIn
	o27CE87MrGNe8esnEOm8do1FzegsUzefrAqHfVDxc5DatAHM0lCKVv4OVu8nlkbLZisbll0lYrPUX
	AzxtP9oXMgqEk2aRCdSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHqK-0002IM-NT; Wed, 06 May 2020 11:04:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHqA-0002GI-G7
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:03:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id g13so1666846wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 04:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rtEuo5nw1S4kpIcS9rhXRJzeE3BjOFfaGFCUT/CfmF4=;
 b=bWfkT4qj3YVYiyTtnBDKzxtH9al8EGIDGEVKQrpkztLlbkCNThDFEuVDTozdfgIzLY
 N4yivpD0Oc9GWBeufPce8cOQgY2lkiqdBkgWTYq4TICJSiiEqMDBnABEBibaWujH6AxN
 v+CfVF7IFDnhjFiERJNR4nbL0mGShNasZXkJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rtEuo5nw1S4kpIcS9rhXRJzeE3BjOFfaGFCUT/CfmF4=;
 b=Mh7jHaL/tGbYeVp8Qy00dU1ngqd1q141cMzq5dhNka+QIzcp+G4++1RFKPUDffAYS1
 8a/64+sDPPSxUhdZFLmy2KAg4lUQjM3gFPCPouLjI4SKpPlnSjb3En9qpgk45OCVVbHp
 6EQ1PXTdeTKOKmJgq829GMqqlCHVAiy3Ch08Gm0MIXj+m6eRY7QAYmvaQTQG9GclzZ5M
 gPOsJZfXhbDjNm02dfyVWfAiv1z7zyBZCWmhPGfBI8g7MnoeLrzfkGdMnn5ryLmCiI/P
 dFwXZ8Ci4oa1+M3ziqrunKkxA5WRCN6H2i9+fxN9qcHSLhaIzuGv/StpcMi8IDsE2Y2m
 S27g==
X-Gm-Message-State: AGi0PuaqAIm5aRo9vaomtGoZxtju1LyvaoVXr1CjFdf1bWp8utHD+2zJ
 Q4OamXVLH1hqkkZ0CC2rqziMxiay7pAPEVL39wV5Hg==
X-Google-Smtp-Source: APiQypIGj98l9hllH+9ph6fwT8VKRh/Pv4h2UW1ktSL1V2RKXFelTBD7bNCFAlCYli6PKV2AO+prMw92x7qUiOe3LRk=
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr8407525wrp.427.1588763027630; 
 Wed, 06 May 2020 04:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200420060834.44461-1-amistry@google.com>
 <CAAOTY_81qB+WJN_2-ZNqM63NOp+Es1qEmsp2qje2bfePg1O5Vw@mail.gmail.com>
 <CAATStaNwCyveF-fmrT=1m-BJh=8WOyaffFzVsC_Lo_rFkm6Z=Q@mail.gmail.com>
 <CAAOTY_9HQTiywgzGrefDHromhXtLPyWeYUyxFU8+h8sN_fo9xw@mail.gmail.com>
 <CAAOTY_9+s8EknSFLyYHNDfJuxERTuubBXaQ41Y3J+DeuDMFGqA@mail.gmail.com>
In-Reply-To: <CAAOTY_9+s8EknSFLyYHNDfJuxERTuubBXaQ41Y3J+DeuDMFGqA@mail.gmail.com>
From: Anand Mistry <amistry@chromium.org>
Date: Wed, 6 May 2020 21:03:36 +1000
Message-ID: <CAECpkiM5ez8=iEe=fYKiDf5Pb6AHrTyt5uXqJQtQpQJHotupWA@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: stop iterating dma addresses when
 sg_dma_len() == 0
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_040352_880147_E93887ED 
X-CRM114-Status: GOOD (  24.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anand K Mistry <amistry@google.com>,
 DRI Development <dri-devel@lists.freedesktop.org>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgNiwgMjAyMCBhdCAxMDoyNSBBTSBDaHVuLUt1YW5nIEh1IDxjaHVua3Vhbmcu
aHVAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBIaSwgQW5hbmQsCj4KPiBDaHVuLUt1YW5nIEh1IDxj
aHVua3VhbmcuaHVAa2VybmVsLm9yZz4g5pa8IDIwMjDlubQ05pyIMjnml6Ug6YCx5LiJIOS4iuWN
iDEyOjM35a+r6YGT77yaCj4gPgo+ID4gSGksIEFuYW5kLAo+ID4KPiA+IEFuYW5kIEsuIE1pc3Ry
eSA8YW1pc3RyeUBjaHJvbWl1bS5vcmc+IOaWvCAyMDIw5bm0NOaciDI45pelIOmAseS6jCDkuIrl
jYg5OjU05a+r6YGT77yaCj4gPiA+Cj4gPiA+IE9uIFN1biwgMjYgQXByIDIwMjAgYXQgMTg6MDQs
IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gPgo+
ID4gPiA+IEhpLCBBbmFuZDoKPiA+ID4gPgo+ID4gPiA+IEFuYW5kIEsgTWlzdHJ5IDxhbWlzdHJ5
QGNocm9taXVtLm9yZz4g5pa8IDIwMjDlubQ05pyIMjDml6Ug6YCx5LiAIOS4i+WNiDI6MDnlr6vp
gZPvvJoKPiA+ID4gPiA+Cj4gPiA+ID4gPiBJZiBkbWFfbWFwX3NnKCkgbWVyZ2VzIHBhZ2VzIHdo
ZW4gY3JlYXRpbmcgdGhlIG1hcHBpbmcsIG9ubHkgdGhlIGZpcnN0Cj4gPiA+ID4gPiBlbnRyaWVz
IHdpbGwgaGF2ZSBhIHZhbGlkIHNnX2RtYV9hZGRyZXNzKCkgYW5kIHNnX2RtYV9sZW4oKSwgZm9s
bG93ZWQgYnkKPiA+ID4gPiA+IGVudHJpZXMgd2l0aCBzZ19kbWFfbGVuKCkgPT0gMC4KPiA+ID4g
PiA+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBLIE1pc3RyeSA8YW1pc3RyeUBnb29n
bGUuY29tPgo+Cj4gQXV0aG9yIHNob3VsZCBzaWduIG9mZiB0aGlzIHBhdGNoLCBwbGVhc2UgZ2l2
ZSBhIHNpZ24gb2ZmIHRhZyBieSBhdXRob3IuCgpTb3JyeSwgZW1haWwgaXNzdWVzIG1lYW50IGkg
c2VudCB0aGUgcGF0Y2ggZnJvbSBhIGRpZmZlcmVudCBhY2NvdW50LgpTaG91bGQgSSByZS1zZW5k
IHRoZQpwYXRjaCBmcm9tIHRoZSBzYW1lIGFjY291bnQgYXMgdGhlIHNpZ24tb2ZmIGxpbmU/IEkn
bSBzdGlsbCB3b3JraW5nIG15CndheSB0aHJvdWdoIHRoZSBrZXJuZWwgcGF0Y2ggcHJvY2Vzcy4K
Cj4KPiBSZWdhcmRzLAo+IENodW4tS3VhbmcuCj4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gIGRy
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIHwgMyArKysKPiA+ID4gPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKPiA+ID4gPiA+IGluZGV4IGIwNGEzYzJiMTEx
ZTA5Li5mOGZkOGI5OGMzMGUzZCAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RybV9nZW0uYwo+ID4gPiA+ID4gQEAgLTIyNCw2ICsyMjQsOSBAQCBzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm10a19nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsCj4gPiA+ID4gPgo+ID4gPiA+ID4gICAgICAgICBleHBlY3RlZCA9IHNn
X2RtYV9hZGRyZXNzKHNnLT5zZ2wpOwo+ID4gPiA+ID4gICAgICAgICBmb3JfZWFjaF9zZyhzZy0+
c2dsLCBzLCBzZy0+bmVudHMsIGkpIHsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBpZiAoIXNn
X2RtYV9sZW4ocykpCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+
ID4gPgo+ID4gPiA+IEkgdGhpbmsgdGhpcyBzaG91bGQgYmUgJ2NvbnRpbnVlJwo+ID4gPgo+ID4g
PiBzY2F0dGVybGlzdC5oIGhhcyB0aGUgY29tbWVudDoKPiA+ID4gLyoKPiA+ID4gICogVGhlc2Ug
bWFjcm9zIHNob3VsZCBiZSB1c2VkIGFmdGVyIGEgZG1hX21hcF9zZyBjYWxsIGhhcyBiZWVuIGRv
bmUKPiA+ID4gICogdG8gZ2V0IGJ1cyBhZGRyZXNzZXMgb2YgZWFjaCBvZiB0aGUgU0cgZW50cmll
cyBhbmQgdGhlaXIgbGVuZ3Rocy4KPiA+ID4gICogWW91IHNob3VsZCBvbmx5IHdvcmsgd2l0aCB0
aGUgbnVtYmVyIG9mIHNnIGVudHJpZXMgZG1hX21hcF9zZwo+ID4gPiAgKiByZXR1cm5zLCBvciBh
bHRlcm5hdGl2ZWx5IHN0b3Agb24gdGhlIGZpcnN0IHNnX2RtYV9sZW4oc2cpIHdoaWNoCj4gPiA+
ICAqIGlzIDAuCj4gPiA+ICAqLwo+ID4gPgo+ID4gPiBTbyBicmVha2luZyBvbiB0aGUgZmlyc3Qg
c2dfZG1hX2xlbihzZykgPT0gMCBhcHBlYXJzIHRvIGJlIChvbmUgb2YpCj4gPiA+IHRoZSBkb2N1
bWVudGVkIGFwcHJvYWNoLgo+ID4gPgo+ID4KPiA+IE9rYXksIHlvdSdyZSByaWdodC4gU28KPiA+
Cj4gPiBSZXZpZXdlZC1ieTogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+
Cj4gPgo+ID4gPiA+Cj4gPiA+ID4gUmVnYXJkcywKPiA+ID4gPiBDaHVuLUt1YW5nLgo+ID4gPiA+
Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgaWYgKHNnX2RtYV9hZGRyZXNz
KHMpICE9IGV4cGVjdGVkKSB7Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBEUk1f
RVJST1IoInNnX3RhYmxlIGlzIG5vdCBjb250aWd1b3VzIik7Cj4gPiA+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICByZXQgPSAtRUlOVkFMOwo+ID4gPiA+ID4gLS0KPiA+ID4gPiA+IDIuMjYu
MS4zMDEuZzU1YmMzZWI3Y2I5LWdvb2cKPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiA+IExp
bnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdAo+ID4gPiA+ID4gTGludXgtbWVkaWF0ZWtAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+ID4gPiA+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tZWRpYXRlawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
