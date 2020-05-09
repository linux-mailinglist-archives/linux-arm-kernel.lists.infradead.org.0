Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0F61CC1D1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 15:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLxwnELXa2ELn7vVE6u8cZyI6VJsxS107zZ1wMEfFbM=; b=AjLAqLFtDLt0Dr
	3u17eHPVyyh9dFxGKm147DZgfTAHy1woYqZiKaKMKlJCa4YWmTIDQsC1TF3IsOA0aB24rsRc6t/3D
	UM4xTmgsp7wIbM9SqLoHt54iJ+/DWBi4zu6hw1S1T4/ltICz5TNgnZgwE1zHwJBJwE/7PPh8NbEJ4
	AX3iFyJfrIkbnFnIu7hFF+RgCNrUZEVNhkjTXxtzX8gMzC6CLdkM+nIwP/9ytcsrDvvuCsDGGj3qB
	I/HAHk2VVCglQ4wJvHZBioCLRI0c95EeFg+DtLCHyjQU+crOw4L7yO2bETT9bNE1LXC3ECbDgFoGQ
	x0aTRNqj+uF8RkuU6BAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPhM-00016P-3W; Sat, 09 May 2020 13:39:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPhB-00015g-KE; Sat, 09 May 2020 13:39:16 +0000
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8833A21473;
 Sat,  9 May 2020 13:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589031551;
 bh=NfAWv5xLC3OLtEXGg4DLKE4Rs4dQe/gWzY1FYPLzrnU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LCp8NEoAaA+uu2MTfGB+K2tTdJQ1+xO4TqmYY3DOj1bHNZsR1GorBtpcmWwPD8aDA
 XWh2rxHWreY7Oxwpq29aVsALD+vJrtqqh8Of6v0af/CwgEt2Sv0ogkQpTzsbzK9eAX
 Kh61/GwaV7fJmbjJVw8VsjPHca7P0PzV4e0HftWM=
Received: by mail-ed1-f44.google.com with SMTP id k22so3737810eds.6;
 Sat, 09 May 2020 06:39:11 -0700 (PDT)
X-Gm-Message-State: AGi0Pub4S3Mrs8yCut0hRs8mDgrP/P0fxBIBbAqz3fSy5JK0pHxEWXdI
 smwWUVe4fqRnlqH6hOsYycQDeXLUljgHn5WKsw==
X-Google-Smtp-Source: APiQypLDSD424Rd1jJ06F9Cw+H9XU2K8fwhUCsuNh2gmkAlo465fOvtpAh9yMMEaBJNHQ4DkLUOTOTMCQS83wK57D+c=
X-Received: by 2002:aa7:dd95:: with SMTP id g21mr6153861edv.148.1589031549904; 
 Sat, 09 May 2020 06:39:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200420060834.44461-1-amistry@google.com>
 <CAAOTY_81qB+WJN_2-ZNqM63NOp+Es1qEmsp2qje2bfePg1O5Vw@mail.gmail.com>
 <CAATStaNwCyveF-fmrT=1m-BJh=8WOyaffFzVsC_Lo_rFkm6Z=Q@mail.gmail.com>
 <CAAOTY_9HQTiywgzGrefDHromhXtLPyWeYUyxFU8+h8sN_fo9xw@mail.gmail.com>
 <CAAOTY_9+s8EknSFLyYHNDfJuxERTuubBXaQ41Y3J+DeuDMFGqA@mail.gmail.com>
 <CAECpkiM5ez8=iEe=fYKiDf5Pb6AHrTyt5uXqJQtQpQJHotupWA@mail.gmail.com>
 <CAAOTY__B+8XY=5n5C2AYBGskRhvOs2PmHVhjKJk7NmXDVM_-Nw@mail.gmail.com>
 <CAECpkiO9P1+GpQi+aH_B2B8d5Bsba5XJnUKJDfL-kZk455Edcg@mail.gmail.com>
In-Reply-To: <CAECpkiO9P1+GpQi+aH_B2B8d5Bsba5XJnUKJDfL-kZk455Edcg@mail.gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 9 May 2020 21:38:59 +0800
X-Gmail-Original-Message-ID: <CAAOTY_82rA6cQoN-3CWtLAHje56k8TnLfaBkBz_BN_sWnt9r2A@mail.gmail.com>
Message-ID: <CAAOTY_82rA6cQoN-3CWtLAHje56k8TnLfaBkBz_BN_sWnt9r2A@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: stop iterating dma addresses when
 sg_dma_len() == 0
To: Anand Mistry <amistry@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_063914_810472_CBB86CAD 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
ubQ15pyIN+aXpSDpgLHlm5sg5LiL5Y2INzo1NuWvq+mBk++8mgo+Cj4gT24gV2VkLCBNYXkgNiwg
MjAyMCBhdCAxMDo1OSBQTSBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4g
d3JvdGU6Cj4gPgo+ID4gSGksIEFuYW5kOgo+ID4KPiA+IEFuYW5kIE1pc3RyeSA8YW1pc3RyeUBj
aHJvbWl1bS5vcmc+IOaWvCAyMDIw5bm0NeaciDbml6Ug6YCx5LiJIOS4i+WNiDc6MDPlr6vpgZPv
vJoKPiA+ID4KPiA+ID4gT24gV2VkLCBNYXkgNiwgMjAyMCBhdCAxMDoyNSBBTSBDaHVuLUt1YW5n
IEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBIaSwg
QW5hbmQsCj4gPiA+ID4KPiA+ID4gPiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVs
Lm9yZz4g5pa8IDIwMjDlubQ05pyIMjnml6Ug6YCx5LiJIOS4iuWNiDEyOjM35a+r6YGT77yaCj4g
PiA+ID4gPgo+ID4gPiA+ID4gSGksIEFuYW5kLAo+ID4gPiA+ID4KPiA+ID4gPiA+IEFuYW5kIEsu
IE1pc3RyeSA8YW1pc3RyeUBjaHJvbWl1bS5vcmc+IOaWvCAyMDIw5bm0NOaciDI45pelIOmAseS6
jCDkuIrljYg5OjU05a+r6YGT77yaCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IE9uIFN1biwgMjYg
QXByIDIwMjAgYXQgMTg6MDQsIENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3Jn
PiB3cm90ZToKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEhpLCBBbmFuZDoKPiA+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiA+IEFuYW5kIEsgTWlzdHJ5IDxhbWlzdHJ5QGNocm9taXVtLm9yZz4g
5pa8IDIwMjDlubQ05pyIMjDml6Ug6YCx5LiAIOS4i+WNiDI6MDnlr6vpgZPvvJoKPiA+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBJZiBkbWFfbWFwX3NnKCkgbWVyZ2VzIHBhZ2VzIHdoZW4g
Y3JlYXRpbmcgdGhlIG1hcHBpbmcsIG9ubHkgdGhlIGZpcnN0Cj4gPiA+ID4gPiA+ID4gPiBlbnRy
aWVzIHdpbGwgaGF2ZSBhIHZhbGlkIHNnX2RtYV9hZGRyZXNzKCkgYW5kIHNnX2RtYV9sZW4oKSwg
Zm9sbG93ZWQgYnkKPiA+ID4gPiA+ID4gPiA+IGVudHJpZXMgd2l0aCBzZ19kbWFfbGVuKCkgPT0g
MC4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBL
IE1pc3RyeSA8YW1pc3RyeUBnb29nbGUuY29tPgo+ID4gPiA+Cj4gPiA+ID4gQXV0aG9yIHNob3Vs
ZCBzaWduIG9mZiB0aGlzIHBhdGNoLCBwbGVhc2UgZ2l2ZSBhIHNpZ24gb2ZmIHRhZyBieSBhdXRo
b3IuCj4gPiA+Cj4gPiA+IFNvcnJ5LCBlbWFpbCBpc3N1ZXMgbWVhbnQgaSBzZW50IHRoZSBwYXRj
aCBmcm9tIGEgZGlmZmVyZW50IGFjY291bnQuCj4gPiA+IFNob3VsZCBJIHJlLXNlbmQgdGhlCj4g
PiA+IHBhdGNoIGZyb20gdGhlIHNhbWUgYWNjb3VudCBhcyB0aGUgc2lnbi1vZmYgbGluZT8gSSdt
IHN0aWxsIHdvcmtpbmcgbXkKPiA+ID4gd2F5IHRocm91Z2ggdGhlIGtlcm5lbCBwYXRjaCBwcm9j
ZXNzLgo+ID4gPgo+ID4KPiA+IElmIHlvdSB3YW50IHRvIHVzZSBjaHJvbWl1bSBhY2NvdW50LCB5
b3UgY291bGQgc2ltcGx5IHJlcGx5IHRoaXMgZW1haWwKPiA+IHdpdGggYSBzaWduLW9mZi1ieSB0
YWcgb2YgY2hyb21pdW0gYWNjb3VudC4KPgo+IEFjay4gQXMgcGF0aCBvZiBsZWFzdCByZXNpc3Rh
bmNlLCBoZXJlOgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgSyBNaXN0cnkgPGFtaXN0cnlAY2hy
b21pdW0ub3JnPgo+CgpBcHBsaWVkIHRvIG1lZGlhdGVrLWRybS1uZXh0IFsxXSwgdGhhbmtzLgoK
WzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2NodW5r
dWFuZy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVrLWRybS1uZXh0CgpSZWdhcmRzLApDaHVu
LUt1YW5nLgoKPgo+ID4KPiA+IFJlZ2FyZHMsCj4gPiBDaHVuLUt1YW5nLgo+ID4KPiA+ID4gPgo+
ID4gPiA+IFJlZ2FyZHMsCj4gPiA+ID4gQ2h1bi1LdWFuZy4KPiA+ID4gPgo+ID4gPiA+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1f
Z2VtLmMgfCAzICsrKwo+ID4gPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0
ZWsvbXRrX2RybV9nZW0uYwo+ID4gPiA+ID4gPiA+ID4gaW5kZXggYjA0YTNjMmIxMTFlMDkuLmY4
ZmQ4Yjk4YzMwZTNkIDEwMDY0NAo+ID4gPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19kcm1fZ2VtLmMKPiA+ID4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jCj4gPiA+ID4gPiA+ID4gPiBAQCAtMjI0LDYgKzIy
NCw5IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqbXRrX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFi
bGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
PiAgICAgICAgIGV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Moc2ctPnNnbCk7Cj4gPiA+ID4gPiA+
ID4gPiAgICAgICAgIGZvcl9lYWNoX3NnKHNnLT5zZ2wsIHMsIHNnLT5uZW50cywgaSkgewo+ID4g
PiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGlmICghc2dfZG1hX2xlbihzKSkKPiA+ID4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gSSB0aGluayB0aGlzIHNob3VsZCBiZSAnY29udGludWUnCj4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+IHNjYXR0ZXJsaXN0LmggaGFzIHRoZSBjb21tZW50Ogo+ID4gPiA+ID4gPiAvKgo+
ID4gPiA+ID4gPiAgKiBUaGVzZSBtYWNyb3Mgc2hvdWxkIGJlIHVzZWQgYWZ0ZXIgYSBkbWFfbWFw
X3NnIGNhbGwgaGFzIGJlZW4gZG9uZQo+ID4gPiA+ID4gPiAgKiB0byBnZXQgYnVzIGFkZHJlc3Nl
cyBvZiBlYWNoIG9mIHRoZSBTRyBlbnRyaWVzIGFuZCB0aGVpciBsZW5ndGhzLgo+ID4gPiA+ID4g
PiAgKiBZb3Ugc2hvdWxkIG9ubHkgd29yayB3aXRoIHRoZSBudW1iZXIgb2Ygc2cgZW50cmllcyBk
bWFfbWFwX3NnCj4gPiA+ID4gPiA+ICAqIHJldHVybnMsIG9yIGFsdGVybmF0aXZlbHkgc3RvcCBv
biB0aGUgZmlyc3Qgc2dfZG1hX2xlbihzZykgd2hpY2gKPiA+ID4gPiA+ID4gICogaXMgMC4KPiA+
ID4gPiA+ID4gICovCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFNvIGJyZWFraW5nIG9uIHRoZSBm
aXJzdCBzZ19kbWFfbGVuKHNnKSA9PSAwIGFwcGVhcnMgdG8gYmUgKG9uZSBvZikKPiA+ID4gPiA+
ID4gdGhlIGRvY3VtZW50ZWQgYXBwcm9hY2guCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+
ID4gT2theSwgeW91J3JlIHJpZ2h0LiBTbwo+ID4gPiA+ID4KPiA+ID4gPiA+IFJldmlld2VkLWJ5
OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBSZWdhcmRzLAo+ID4gPiA+ID4gPiA+IENodW4tS3Vhbmcu
Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ICAgICAgICAg
ICAgICAgICBpZiAoc2dfZG1hX2FkZHJlc3MocykgIT0gZXhwZWN0ZWQpIHsKPiA+ID4gPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9FUlJPUigic2dfdGFibGUgaXMgbm90IGNv
bnRpZ3VvdXMiKTsKPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldCA9
IC1FSU5WQUw7Cj4gPiA+ID4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gPiA+ID4gMi4yNi4xLjMwMS5n
NTViYzNlYjdjYjktZ29vZwo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
ID4gPiA+ID4gPiA+ID4gTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0Cj4gPiA+ID4gPiA+ID4g
PiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiA+ID4gPiA+ID4gPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
