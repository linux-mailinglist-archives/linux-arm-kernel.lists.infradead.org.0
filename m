Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E471C712D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6Srq9/Gg0GqrKR5MzcZ5cvLJLyERc8Sq0IB8WIwEfc=; b=dCdDO4+RMJOyHG
	qn77U8B73+/XsEtp72uoJjpmKPk6o1wCBbQbMtG65BG+bqoPbbGsfP3YpCtZImirCVwBBu3xyAXkO
	SDadisj4UyJmwI9OjTbzbqIG3+Kq9DsuteC1Eag7WJSKOFjS+0/w8Oziz30R/sl04ayfF8J6lH2Jd
	0zlLuLMsHRZgOwAK/SCx/6RkGY87lhl33DB6/RxhVGd2Y4QmwpSw+r4cbLYLsulIagZSCECmnowz6
	gXOh9k4zRXiMwPi+QK/QzNsG3lgscb1Y8ImtUgob61s+vcB+Nn36CbwuszkRbYNOcYkZI2gAaIT5u
	QywQGdUUS4pG4VgvDzbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJdt-0002jB-77; Wed, 06 May 2020 12:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJdl-0002in-CD; Wed, 06 May 2020 12:59:10 +0000
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5735206DD;
 Wed,  6 May 2020 12:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588769949;
 bh=NVcE7NkfDARC9qx7a6tuDDfABtttVkvUoinwuCtfmic=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CHgl8FnhrVjoTxlVXi62+L5jP9Vd4U79ZKC3wzRpv1e+7VT+X7SQduTX9BZ7ckPZq
 l6VZHRGWjtz/DLEoxzgQXYI4YVtSY0Vajkek+LncXvB49YAXRYFilfYeT3IV01lWhm
 YEBR+1XKkByD1OH610bunBi4/cQqkaCnI6eGts/0=
Received: by mail-ed1-f51.google.com with SMTP id p16so1792220edm.10;
 Wed, 06 May 2020 05:59:08 -0700 (PDT)
X-Gm-Message-State: AGi0Pua2ZqlhAnxCEOJL7yixutUu2eIHf8uqrv3TdyT5kGCSWe2alLYJ
 i2GLYqmxi/3MiWvtqPvGiscEmz9DG2T8fynSFA==
X-Google-Smtp-Source: APiQypJMNGDSJhH7J2kTAWCOTPn4WRMpWAoCYxbZZMbJZNYWL8fAb6o0o/QThVKv7t0MaaNX0oe0K8KkN3U3+hbCZHs=
X-Received: by 2002:aa7:c649:: with SMTP id z9mr6911101edr.288.1588769947243; 
 Wed, 06 May 2020 05:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200420060834.44461-1-amistry@google.com>
 <CAAOTY_81qB+WJN_2-ZNqM63NOp+Es1qEmsp2qje2bfePg1O5Vw@mail.gmail.com>
 <CAATStaNwCyveF-fmrT=1m-BJh=8WOyaffFzVsC_Lo_rFkm6Z=Q@mail.gmail.com>
 <CAAOTY_9HQTiywgzGrefDHromhXtLPyWeYUyxFU8+h8sN_fo9xw@mail.gmail.com>
 <CAAOTY_9+s8EknSFLyYHNDfJuxERTuubBXaQ41Y3J+DeuDMFGqA@mail.gmail.com>
 <CAECpkiM5ez8=iEe=fYKiDf5Pb6AHrTyt5uXqJQtQpQJHotupWA@mail.gmail.com>
In-Reply-To: <CAECpkiM5ez8=iEe=fYKiDf5Pb6AHrTyt5uXqJQtQpQJHotupWA@mail.gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 6 May 2020 20:58:56 +0800
X-Gmail-Original-Message-ID: <CAAOTY__B+8XY=5n5C2AYBGskRhvOs2PmHVhjKJk7NmXDVM_-Nw@mail.gmail.com>
Message-ID: <CAAOTY__B+8XY=5n5C2AYBGskRhvOs2PmHVhjKJk7NmXDVM_-Nw@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: stop iterating dma addresses when
 sg_dma_len() == 0
To: Anand Mistry <amistry@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_055909_456896_B7C3DE41 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Anand K Mistry <amistry@google.com>,
 DRI Development <dri-devel@lists.freedesktop.org>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEFuYW5kOgoKQW5hbmQgTWlzdHJ5IDxhbWlzdHJ5QGNocm9taXVtLm9yZz4g5pa8IDIwMjDl
ubQ15pyINuaXpSDpgLHkuIkg5LiL5Y2INzowM+Wvq+mBk++8mgo+Cj4gT24gV2VkLCBNYXkgNiwg
MjAyMCBhdCAxMDoyNSBBTSBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4g
d3JvdGU6Cj4gPgo+ID4gSGksIEFuYW5kLAo+ID4KPiA+IENodW4tS3VhbmcgSHUgPGNodW5rdWFu
Zy5odUBrZXJuZWwub3JnPiDmlrwgMjAyMOW5tDTmnIgyOeaXpSDpgLHkuIkg5LiK5Y2IMTI6Mzfl
r6vpgZPvvJoKPiA+ID4KPiA+ID4gSGksIEFuYW5kLAo+ID4gPgo+ID4gPiBBbmFuZCBLLiBNaXN0
cnkgPGFtaXN0cnlAY2hyb21pdW0ub3JnPiDmlrwgMjAyMOW5tDTmnIgyOOaXpSDpgLHkuowg5LiK
5Y2IOTo1NOWvq+mBk++8mgo+ID4gPiA+Cj4gPiA+ID4gT24gU3VuLCAyNiBBcHIgMjAyMCBhdCAx
ODowNCwgQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4g
PiA+ID4KPiA+ID4gPiA+IEhpLCBBbmFuZDoKPiA+ID4gPiA+Cj4gPiA+ID4gPiBBbmFuZCBLIE1p
c3RyeSA8YW1pc3RyeUBjaHJvbWl1bS5vcmc+IOaWvCAyMDIw5bm0NOaciDIw5pelIOmAseS4gCDk
uIvljYgyOjA55a+r6YGT77yaCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IElmIGRtYV9tYXBfc2co
KSBtZXJnZXMgcGFnZXMgd2hlbiBjcmVhdGluZyB0aGUgbWFwcGluZywgb25seSB0aGUgZmlyc3QK
PiA+ID4gPiA+ID4gZW50cmllcyB3aWxsIGhhdmUgYSB2YWxpZCBzZ19kbWFfYWRkcmVzcygpIGFu
ZCBzZ19kbWFfbGVuKCksIGZvbGxvd2VkIGJ5Cj4gPiA+ID4gPiA+IGVudHJpZXMgd2l0aCBzZ19k
bWFfbGVuKCkgPT0gMC4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5h
bmQgSyBNaXN0cnkgPGFtaXN0cnlAZ29vZ2xlLmNvbT4KPiA+Cj4gPiBBdXRob3Igc2hvdWxkIHNp
Z24gb2ZmIHRoaXMgcGF0Y2gsIHBsZWFzZSBnaXZlIGEgc2lnbiBvZmYgdGFnIGJ5IGF1dGhvci4K
Pgo+IFNvcnJ5LCBlbWFpbCBpc3N1ZXMgbWVhbnQgaSBzZW50IHRoZSBwYXRjaCBmcm9tIGEgZGlm
ZmVyZW50IGFjY291bnQuCj4gU2hvdWxkIEkgcmUtc2VuZCB0aGUKPiBwYXRjaCBmcm9tIHRoZSBz
YW1lIGFjY291bnQgYXMgdGhlIHNpZ24tb2ZmIGxpbmU/IEknbSBzdGlsbCB3b3JraW5nIG15Cj4g
d2F5IHRocm91Z2ggdGhlIGtlcm5lbCBwYXRjaCBwcm9jZXNzLgo+CgpJZiB5b3Ugd2FudCB0byB1
c2UgY2hyb21pdW0gYWNjb3VudCwgeW91IGNvdWxkIHNpbXBseSByZXBseSB0aGlzIGVtYWlsCndp
dGggYSBzaWduLW9mZi1ieSB0YWcgb2YgY2hyb21pdW0gYWNjb3VudC4KClJlZ2FyZHMsCkNodW4t
S3VhbmcuCgo+ID4KPiA+IFJlZ2FyZHMsCj4gPiBDaHVuLUt1YW5nLgo+ID4KPiA+ID4gPiA+ID4g
LS0tCj4gPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYyB8
IDMgKysrCj4gPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jCj4g
PiA+ID4gPiA+IGluZGV4IGIwNGEzYzJiMTExZTA5Li5mOGZkOGI5OGMzMGUzZCAxMDA2NDQKPiA+
ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKPiA+
ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKPiA+
ID4gPiA+ID4gQEAgLTIyNCw2ICsyMjQsOSBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm10a19n
ZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+ICAgICAgICAgZXhwZWN0ZWQgPSBzZ19kbWFfYWRkcmVzcyhzZy0+c2ds
KTsKPiA+ID4gPiA+ID4gICAgICAgICBmb3JfZWFjaF9zZyhzZy0+c2dsLCBzLCBzZy0+bmVudHMs
IGkpIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGlmICghc2dfZG1hX2xlbihzKSkKPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiA+ID4gPgo+ID4gPiA+
ID4gSSB0aGluayB0aGlzIHNob3VsZCBiZSAnY29udGludWUnCj4gPiA+ID4KPiA+ID4gPiBzY2F0
dGVybGlzdC5oIGhhcyB0aGUgY29tbWVudDoKPiA+ID4gPiAvKgo+ID4gPiA+ICAqIFRoZXNlIG1h
Y3JvcyBzaG91bGQgYmUgdXNlZCBhZnRlciBhIGRtYV9tYXBfc2cgY2FsbCBoYXMgYmVlbiBkb25l
Cj4gPiA+ID4gICogdG8gZ2V0IGJ1cyBhZGRyZXNzZXMgb2YgZWFjaCBvZiB0aGUgU0cgZW50cmll
cyBhbmQgdGhlaXIgbGVuZ3Rocy4KPiA+ID4gPiAgKiBZb3Ugc2hvdWxkIG9ubHkgd29yayB3aXRo
IHRoZSBudW1iZXIgb2Ygc2cgZW50cmllcyBkbWFfbWFwX3NnCj4gPiA+ID4gICogcmV0dXJucywg
b3IgYWx0ZXJuYXRpdmVseSBzdG9wIG9uIHRoZSBmaXJzdCBzZ19kbWFfbGVuKHNnKSB3aGljaAo+
ID4gPiA+ICAqIGlzIDAuCj4gPiA+ID4gICovCj4gPiA+ID4KPiA+ID4gPiBTbyBicmVha2luZyBv
biB0aGUgZmlyc3Qgc2dfZG1hX2xlbihzZykgPT0gMCBhcHBlYXJzIHRvIGJlIChvbmUgb2YpCj4g
PiA+ID4gdGhlIGRvY3VtZW50ZWQgYXBwcm9hY2guCj4gPiA+ID4KPiA+ID4KPiA+ID4gT2theSwg
eW91J3JlIHJpZ2h0LiBTbwo+ID4gPgo+ID4gPiBSZXZpZXdlZC1ieTogQ2h1bi1LdWFuZyBIdSA8
Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+Cj4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gUmVnYXJk
cywKPiA+ID4gPiA+IENodW4tS3VhbmcuCj4gPiA+ID4gPgo+ID4gPiA+ID4gPiArCj4gPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICBpZiAoc2dfZG1hX2FkZHJlc3MocykgIT0gZXhwZWN0ZWQpIHsK
PiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJzZ190YWJsZSBp
cyBub3QgY29udGlndW91cyIpOwo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXQgPSAtRUlOVkFMOwo+ID4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gPiAyLjI2LjEuMzAxLmc1NWJj
M2ViN2NiOS1nb29nCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4gPiA+IExpbnV4
LW1lZGlhdGVrIG1haWxpbmcgbGlzdAo+ID4gPiA+ID4gPiBMaW51eC1tZWRpYXRla0BsaXN0cy5p
bmZyYWRlYWQub3JnCj4gPiA+ID4gPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
