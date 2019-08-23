Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D449B18B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02goR+sxtUWH20JqmmLP5me615CWOrLtwyarB/u88Fk=; b=TkOaY+5TE8B5NA
	MkUzImopbqtGJs1MIM1Zai5gYtxECtJsy3HsyAG1YZmXPbzgvmZu5qxejKuIgWFYERkF+u1lJPa8J
	I1GUZr8H2KZ6EWv2b4XP3Uln9SxaiDK+eSVA54YWRaLOTEcssYi8A9Pwhp1+HVv5N7ZGhtYqwEctt
	WvqtSMS2BKwL+JYgdlhQ5mBM4feLPkgAbqOSgX97xX+jmB0ooYQo3JV6sY9c5BNbJgvgTH75UAWBN
	Ppu78S8sOBIdiSHjVEBXl2zbiFM4uVb+xu0Iw9VcFj2Cdxkpq0VPFSbphGTQuK2rubm5KskEJnJAQ
	LfePnYGPpChAJPu5VD4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1AB0-0006gV-47; Fri, 23 Aug 2019 14:04:26 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1AAt-0006g5-J9
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:04:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so7250515lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 07:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Nf2hiLJ2dx1VDSupA+UDnj6Ucg+uq8lRJBWo2HQPq1o=;
 b=PiyMYPa1TO5BCQpI75BgugZmPegCF/qCE4rxE/6ppj5gTKH6M43Wp+C3ObtmVpTX4W
 vUreGMDvw78VLLWVRrG8YldeJqbYRZaOxM2em8R8Y04Lg1BCyCjZKsF+wKI4hdep3oQN
 IED+1mvr+vH557Gq7dV9SzSot8S+ngfNZFGvwWA0+JF4vNeSlXMIDtSIN948weXjCtl+
 BaPLl6iM/+pkoh7t+5JBQxL5slxAB6PwOrM6zE9vxfzxU89MqAxcKicRRznyFo20XhaK
 UbPCSpOQo7CWrYm7vQwtfrh9+rPb6FzphCJg0xsRd12EZgN7A52TA8Xp2O4pg6ROd2Dc
 U51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Nf2hiLJ2dx1VDSupA+UDnj6Ucg+uq8lRJBWo2HQPq1o=;
 b=XrflJRqCOU8mj6E9dtc0ECJy/JaWXg3iVJ5Q98todPbOsQ3kGryjHkQ5hO0jdSrHPK
 xQPRUBTVfNX/SZPgL3/WdnhWL1MmKJonaocYcyo6wVhIKR5WTA7EH9bvo/w22LJZI5wi
 Q39PhY6ccoKWQx48HPKHJ0C5EeSA+1f+GhjFiA5AND67WNTtEOfx8FDO63NbzKy5x+uy
 XTYOLOKKQD780li4m60al9J8T/P1nQBP2diryYnDmgJdgUP/qhCj0J+C0edSlRS/L1Tk
 fj1RBuJoBsKnWPgfN0/VuvunnOmEfpPIXLz81d06YAzYE7ONiBCv/r73mR/dEHI4hLkZ
 Wh7A==
X-Gm-Message-State: APjAAAVITEiyHx1Dy9Oi87ODgWqARQOQwzpzwF1ZZRodP7qjMpfWutZk
 WTRRC+ePTX9PybS1K/GlioKER8K3frM55Sp7324=
X-Google-Smtp-Source: APXvYqyKV5vxgLBuL+Q2v2+rceTx5Fyh0mj6XEk1p1fBa8nN+JHcbbWWgC6VPYjKSMBrP0Sz4Iz9RhSd+3czDak7Ics=
X-Received: by 2002:a19:40d5:: with SMTP id n204mr3099303lfa.70.1566569057549; 
 Fri, 23 Aug 2019 07:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
 <5978761.uBj7R84RrF@jernej-laptop>
 <CAOUEw13CCVhk9kt_z2VkguX0=TCeARkH-8+qSh_nF-J+r0Rscg@mail.gmail.com>
 <20190820150018.uhiquahda6wuxvjd@flea>
In-Reply-To: <20190820150018.uhiquahda6wuxvjd@flea>
From: Thomas Graichen <thomas.graichen@googlemail.com>
Date: Fri, 23 Aug 2019 16:04:07 +0200
Message-ID: <CAOUEw13wCoYP-AbhLghR7NP_1quvQdfsQ2wQ-O38VCXqMmJNpg@mail.gmail.com>
Subject: Re: [v5,05/12] drm/modes: Rewrite the command line parser
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_070419_657521_82A07308 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thomas.graichen[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgbWF4aW0sCgpPbiBUdWUsIEF1ZyAyMCwgMjAxOSBhdCA1OjAwIFBNIE1heGltZSBSaXBhcmQg
PG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBNb24sIEF1
ZyAxOSwgMjAxOSBhdCAwOToyMDowMFBNICswMjAwLCBUaG9tYXMgR3JhaWNoZW4gd3JvdGU6Cj4g
PiBPbiBNb24sIEF1ZyAxOSwgMjAxOSBhdCA4OjU0IFBNIEplcm5laiDFoGtyYWJlYyA8amVybmVq
LnNrcmFiZWNAZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gK0NDOiBUaG9tYXMgR3JhaWNo
ZW4KPiA+ID4KPiA+ID4gRG5lIHBvbmVkZWxqZWssIDE3LiBqdW5paiAyMDE5IG9iIDE2OjUxOjMy
IENFU1QgamUgTWF4aW1lIFJpcGFyZCBuYXBpc2FsKGEpOgo+ID4gPiA+IEZyb206IE1heGltZSBS
aXBhcmQgPG1heGltZS5yaXBhcmRAZnJlZS1lbGVjdHJvbnMuY29tPgo+ID4gPiA+Cj4gPiA+ID4g
UmV3cml0ZSB0aGUgY29tbWFuZCBsaW5lIHBhcnNlciBpbiBvcmRlciB0byBnZXQgYXdheSBmcm9t
IHRoZSBzdGF0ZSBtYWNoaW5lCj4gPiA+ID4gcGFyc2luZyB0aGUgdmlkZW8gbW9kZSBsaW5lcy4K
PiA+ID4gPgo+ID4gPiA+IEhvcGVmdWxseSwgdGhpcyB3aWxsIGFsbG93IHRvIGV4dGVuZCBpdCBt
b3JlIGVhc2lseSB0byBzdXBwb3J0IG5hbWVkIG1vZGVzCj4gPiA+ID4gYW5kIC8gb3IgcHJvcGVy
dGllcyBzZXQgZGlyZWN0bHkgb24gdGhlIGNvbW1hbmQgbGluZS4KPiA+ID4gPgo+ID4gPiA+IFJl
dmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGZyZWUtZWxlY3Ryb25z
LmNvbT4KPiA+ID4KPiA+ID4gVGhvbWFzIHJlcG9ydGVkIHRvIG1lIHRoYXQgdGhpcyBwYXRjaCBi
cmVha3MgInZpZGVvPUNPTk5FQ1RPUjplIiBrZXJuZWwKPiA+ID4gcGFyYW1ldGVyIHdoaWNoIGhl
IGN1cnJlbnRseSB1c2VzIGFzIGEgd29ya2Fyb3VuZCBmb3IgSDYgSERNSSBtb25pdG9yCj4gPiA+
IGRldGVjdGlvbiBpc3N1ZSBvbiBvbmUgU1RCLgo+ID4gPgo+ID4gPiBJIHN1cHBvc2UgdGhpcyBp
cyB0aGUgc2FtZSBpc3N1ZSB0aGF0IERtaXRyeSBub3RpY2VkLgo+ID4gPgo+ID4gPiBUaG9tYXMg
R3JhaWNoZW4gKGluIENDKSBjYW4gcHJvdmlkZSBtb3JlIGluZm9ybWF0aW9uIGlmIG5lZWRlZC4K
PiA+Cj4gPiBhcyBqZXJuZWogYWxyZWFkeSBtZW50aW9uZWQgaSBhbSBjdXJyZW50bHkgaGF2aW5n
IHRvIHVzZSB0aGUga2VybmVsCj4gPiBjbWRsaW5lIG9wdGlvbiB2aWRlbz1IRE1JLUEtMTplIHRv
IGdldCBhIHdvcmtpbmcgaGRtaSBvdXRwdXQgb24gYW4KPiA+IGVhY2hsaW5rIGg2IG1pbmkgdHYg
Ym94IGFuZCB3YXMgd29uZGVyaW5nIHRoYXQgaSBkaWQgbm90IGdldCBhbnkgaGRtaQo+ID4gb3V0
cHV0IGV2ZW4gd2l0aCB0aGlzIG9wdGlvbiB3aGVuIHN3aXRjaGluZyBmcm9tIHRoZQo+ID4gaHR0
cHM6Ly9naXRodWIuY29tL21lZ291cy9saW51eCBvcHJhbmdlLXBpLTUuMiB0byB0aGUgb3Jhbmdl
LXBpLTUuMwo+ID4gYnJhbmNoIHdoaWNoIHNlZW1zIHRvIGNvbnRhaW4gdGhpcyBwYXRjaC4KPgo+
IFdoaWNoIGtlcm5lbCB2ZXJzaW9uIGlzIHRoYXQgYmFzZWQgb24/Cgo1LjMtcmMzCgo+ID4gYXMg
aSBoYWQgbm8gaWRlYSB3aGF0IG1pZ2h0IGhhdmUgY2F1c2VkIHRoZSBicmVha2FnZSBvZiB0aGUg
aGRtaQo+ID4gb3V0cHV0IGFuZCBkaWQgYSBmdWxsIGJpc2VjdCBvZiB0aGUga2VybmVsIGJldHdl
ZW4gdGhvc2UgdHdvCj4gPiB2ZXJzaW9ucywgd2hpY2ggZW5kZWQgcmVsaWFibHkgYXQgZXhhY3Rs
eSB0aGlzIHBhdGNoIC0gc28gaSBndWVzcwo+ID4gdGhlcmUgaXMgYSByZWdyZXNzaW9uIGF0IGxl
YXN0IHdpdGggdGhlIHZpZGVvPUNPTk5FQ1RPUjplIG9wdGlvbgo+ID4gKG1heWJlIG90aGVycyB0
b28/KSB3aXRoIHRoaXMgcGF0Y2hlcyBjb2RlIHdoaWNoIG1ha2VzIGl0IG5vdAo+ID4gd29ya2lu
ZyBhbnltb3JlLgo+Cj4gSSdtIG5vdCBzdXJlIEknbGwgaGF2ZSB0aGUgdGltZSB0byBsb29rIGlu
dG8gaXQgdGhpcyB3ZWVrIChvciB0aGUKPiBuZXh0LCB1bmZvcnR1bmF0ZWx5KS4gSG93ZXZlciwg
dGhlIGUgcGFyYW1ldGVyIGlzIHN1cHBvc2VkIHRvIGJlCj4gcGFyc2VkIGJ5IGRybV9tb2RlX3Bh
cnNlX2NtZGxpbmVfZXh0cmEsIHdoaWNoIGluIHR1cm4gaXMgc3VwcG9zZWQgdG8KPiBiZSBjYWxs
ZWQgdGhlcmU6Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzUvc291
cmNlL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYyNMMTgxMAo+Cj4gSWYgeW91IGNhbiB0ZXN0
IHRoYXQsIGhhdmluZyBhbiBpZGVhIG9mIGlmIHRoYXQgZnVuY3Rpb24gaXMgY2FsbGVkLAo+IHdo
aWNoIHJldHVybiBjb2RlIGl0IHJldHVybnMsIGFuZCBpZiBpdCBpc24ndCBpZiB3aHkgd291bGQg
YmUgc3VwZXIKPiBoZWxwZnVsLgoKaSBqdXN0IGFkZGVkIGEgcHJpbnRrIGFuZCBpdCBsb29rcyBs
aWtlIGl0IGlzIG5vdCBnZXR0aW5nIGNhbGxlZDoKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX21vZGVzLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMKaW5kZXggYjAzNjll
NjkwZjM2Li40YzU4ZmRiMWQ3YmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9k
ZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMKQEAgLTE4MTMsNiArMTgxMyw3
IEBAIGJvb2wKZHJtX21vZGVfcGFyc2VfY29tbWFuZF9saW5lX2Zvcl9jb25uZWN0b3IoY29uc3Qg
Y2hhciAqbW9kZV9vcHRpb24sCgogICAgICAgICAgICAgICAgcmV0ID0gZHJtX21vZGVfcGFyc2Vf
Y21kbGluZV9leHRyYShleHRyYV9wdHIsIGxlbiwKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29ubmVjdG9yLCBtb2RlKTsKKyAgICAgICAgICAgICAg
IHByaW50ayhLRVJOX1dBUk5JTkcgIkRFQlVHIC0KZHJtX21vZGVfcGFyc2VfY21kbGluZV9leHRy
YSAlZCIsIHJldCk7CiAgICAgICAgICAgICAgICBpZiAocmV0KQogICAgICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gZmFsc2U7CiAgICAgICAgfQoKbm8gb3V0cHV0IGZyb20gaXQgaW4gZG1lc2cg
KG15IGxvZ2xldmVsPTggYW5kIG9uIHRoZSBrZXJuZWwgY21kbGluZQphbmQgaW4gL3Byb2MvY21k
bGluZSBpIGhhdmUgInZpZGVvPUhETUktQS0xOmUiKSAtIHNvIGxvb2tzIGxpa2UgaXQKcmVhbGx5
IGdldHMgbG9zdCBzb21ld2hlcmUgYWxvbmcgdGhlIHdheSAuLi4KCmJlc3Qgd2lzaGVzIC0gdGhv
bWFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
