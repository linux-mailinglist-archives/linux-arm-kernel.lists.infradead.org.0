Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5476C76B08
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WsEhkcQ722+dTNHxJkQDVd2D9PB8LqCYViELgOw61I=; b=KJvxhJmLJD8APA
	YKyc4iD8G2u1n8sdp5+jgaajYQTjKgUdKCpzZnATgvbIdsLyqPpIYoxItW2k+aCgQlelsI0hf0Ix4
	B487/6zH2yHfvdvRaK6SK0Y13FVJrKTAO/u1B3JdoybtnfiD7xQ1CT8gyNhfxCs5pq6TdSeovPjbk
	Lbi3KnihActdHJtxBU1y93+jCqLLJeMG8oZ9xkpMouciV+YknOvrC086xpHWrOD98SY+BdbbxthmX
	Mp/fxot4ReRDyGqk2YHKZ04MXLoV071niOZX2Pyw61A7Bl53sfFw02EZVfyo0G3DIZ26f7WxnzWsR
	H7mEGqIZtistVpA5SW1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0qm-0000g2-Jm; Fri, 26 Jul 2019 14:05:36 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0qR-0000Zm-Kb
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:05:17 +0000
Received: by mail-lf1-x141.google.com with SMTP id b29so29923800lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 07:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XRsk0iEI3zTElR2u2jt3WIaXl85qXr9Noy6MPl/LLlU=;
 b=OX77yu642sxgg1HWdyQx9x41cx1WuDT18/aO9UX6rY4u4nAODv+wC6yhBaw3+9QX5T
 dBV1+B9FKTO/C+WlDI5n+NiBhKRsKNedmV8BCjk0uTgaB5MapIid4HUVGa8JaZKYD3yD
 nlg5wjSYvBF7Gf8MnPUS+JftzW8zigSkaenRy2Uw5jyAdHFjkJIQ8Oe3qzzp0Jl3BdRY
 UvCzsbkTsgl3SeExNSjo80CItXkQUHBePxaN2g7ANgbH7nPjhp5EV5EQ5W5GwhhAT7za
 mYlEKOBBkzDnZNJeVptuM4S9BVNtUQrKp6ObQSUIgCqUFZn3URJCZvD2air0iweLKLrk
 Y+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XRsk0iEI3zTElR2u2jt3WIaXl85qXr9Noy6MPl/LLlU=;
 b=udfmbx0ibSWhWUxlIDqbRNU4WbWPk730r+/RyQ96VytzuPOVYMD/5Ad1V8xOj5ND/T
 HFPzRmpwIDcDegUfum/k/+hdOIHDSWn8r5ilStVAhDSuvrfzMU1ZOAK3sWpTPMVPYagu
 oAx1k0YFY+liHbloH5OLRHJHm8fEkPVE+fCaRfabGhlmGkYWPfkp6YTiH3rvmVP5lGIr
 xHPkwxyWhgPaTS1lDqZWFwpKO04RoeIkn7T6mOQfKcciNmfK3muARDDrdQcFiCB7uEu+
 3887L74ujRwMSItz78R653OnaEnWxPVcxcl08QaIzn2VNYAevi047fsU9sasVmB1c9jD
 Nlhg==
X-Gm-Message-State: APjAAAVM4pja1nMjPUPOJz8eV7mPfjbB++PeVcPOjawnzo1WeUSYvqtY
 QRpMOktSthi8KwGIgR8z1Kx3kGG0YORJwOnHOijhXQ==
X-Google-Smtp-Source: APXvYqwa4920tCYVHHu9I4QKSrBmf0RTIQ5b6Q2RM0JOBEekZMUOdfpLbKuHuoNm3VkGJHdz7S50cU4xJ9G0jxWt3ec=
X-Received: by 2002:ac2:44b1:: with SMTP id c17mr33687690lfm.87.1564149912518; 
 Fri, 26 Jul 2019 07:05:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190726112705.19000-1-anders.roxell@linaro.org>
 <86ef2dnfkb.wl-marc.zyngier@arm.com>
In-Reply-To: <86ef2dnfkb.wl-marc.zyngier@arm.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Fri, 26 Jul 2019 16:05:01 +0200
Message-ID: <CADYN=9+RpC1xkBwvjUO=Figy5VSw-LFxazEE32fx9eLoPPMjRA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: KVM: regmap: Mark expected switch fall-through
To: Marc Zyngier <marc.zyngier@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070515_684269_C832B9AB 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyNiBKdWwgMjAxOSBhdCAxNDozMCwgTWFyYyBaeW5naWVyIDxtYXJjLnp5bmdpZXJA
YXJtLmNvbT4gd3JvdGU6Cj4KPiBIaSBBbmRlcnMsCj4KPiBPbiBGcmksIDI2IEp1bCAyMDE5IDEy
OjI3OjA1ICswMTAwLAo+IEFuZGVycyBSb3hlbGwgPGFuZGVycy5yb3hlbGxAbGluYXJvLm9yZz4g
d3JvdGU6Cj4gPgo+ID4gV2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkg
ZGVmYXVsdCwgY29tbWl0IGQ5MzUxMmVmMGYwZQo+ID4gKCJNYWtlZmlsZTogR2xvYmFsbHkgZW5h
YmxlIGZhbGwtdGhyb3VnaCB3YXJuaW5nIiksIHRoZSBmb2xsb3dpbmcKPiA+IHdhcm5pbmdzIHdh
cyBzdGFydGluZyB0byBzaG93IHVwOgo+ID4KPiA+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSAuLi9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9lbXVsYXRlLmg6MTksCj4gPiAgICAgICAgICAgICAg
ICAgIGZyb20gLi4vYXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6MTM6Cj4gPiAuLi9hcmNoL2FybTY0
L2t2bS9yZWdtYXAuYzogSW4gZnVuY3Rpb24g4oCYdmNwdV93cml0ZV9zcHNyMzLigJk6Cj4gPiAu
Li9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9oeXAuaDozMTozOiB3YXJuaW5nOiB0aGlzIHN0
YXRlbWVudCBtYXkgZmFsbAo+ID4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+
ID4gICAgYXNtIHZvbGF0aWxlKEFMVEVSTkFUSVZFKF9fbXNyX3MociMjbnZoLCAiJXgwIiksIFwK
PiA+ICAgIF5+fgo+ID4gLi4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9rdm1faHlwLmg6NDY6MzE6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJh3cml0ZV9zeXNyZWdfZWx44oCZCj4gPiAg
I2RlZmluZSB3cml0ZV9zeXNyZWdfZWwxKHYscikgd3JpdGVfc3lzcmVnX2VseCh2LCByLCBfRUwx
LCBfRUwxMikKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+
fn5+Cj4gPiAuLi9hcmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxODA6Mzogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIOKAmHdyaXRlX3N5c3JlZ19lbDHigJkKPiA+ICAgIHdyaXRlX3N5c3JlZ19l
bDEodiwgU1lTX1NQU1IpOwo+ID4gICAgXn5+fn5+fn5+fn5+fn5+fgo+ID4gLi4vYXJjaC9hcm02
NC9rdm0vcmVnbWFwLmM6MTgxOjI6IG5vdGU6IGhlcmUKPiA+ICAgY2FzZSBLVk1fU1BTUl9BQlQ6
Cj4gPiAgIF5+fn4KPiA+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSAuLi9hcmNoL2FybTY0L2luY2x1
ZGUvYXNtL2NwdXR5cGUuaDoxMzIsCj4gPiAgICAgICAgICAgICAgICAgIGZyb20gLi4vYXJjaC9h
cm02NC9pbmNsdWRlL2FzbS9jYWNoZS5oOjgsCj4gPiAgICAgICAgICAgICAgICAgIGZyb20gLi4v
aW5jbHVkZS9saW51eC9jYWNoZS5oOjYsCj4gPiAgICAgICAgICAgICAgICAgIGZyb20gLi4vaW5j
bHVkZS9saW51eC9wcmludGsuaDo5LAo+ID4gICAgICAgICAgICAgICAgICBmcm9tIC4uL2luY2x1
ZGUvbGludXgva2VybmVsLmg6MTUsCj4gPiAgICAgICAgICAgICAgICAgIGZyb20gLi4vaW5jbHVk
ZS9hc20tZ2VuZXJpYy9idWcuaDoxOCwKPiA+ICAgICAgICAgICAgICAgICAgZnJvbSAuLi9hcmNo
L2FybTY0L2luY2x1ZGUvYXNtL2J1Zy5oOjI2LAo+ID4gICAgICAgICAgICAgICAgICBmcm9tIC4u
L2luY2x1ZGUvbGludXgvYnVnLmg6NSwKPiA+ICAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNs
dWRlL2xpbnV4L21tZGVidWcuaDo1LAo+ID4gICAgICAgICAgICAgICAgICBmcm9tIC4uL2luY2x1
ZGUvbGludXgvbW0uaDo5LAo+ID4gICAgICAgICAgICAgICAgICBmcm9tIC4uL2FyY2gvYXJtNjQv
a3ZtL3JlZ21hcC5jOjExOgo+ID4gLi4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaDo4
Mzc6Mjogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwKPiA+ICB0aHJvdWdoIFstV2lt
cGxpY2l0LWZhbGx0aHJvdWdoPV0KPiA+ICAgYXNtIHZvbGF0aWxlKCJtc3IgIiBfX3N0cmluZ2lm
eShyKSAiLCAleDAiICBcCj4gPiAgIF5+fgo+ID4gLi4vYXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6
MTgyOjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJh3cml0ZV9zeXNyZWfigJkKPiA+
ICAgIHdyaXRlX3N5c3JlZyh2LCBzcHNyX2FidCk7Cj4gPiAgICBefn5+fn5+fn5+fn4KPiA+IC4u
L2FyY2gvYXJtNjQva3ZtL3JlZ21hcC5jOjE4MzoyOiBub3RlOiBoZXJlCj4gPiAgIGNhc2UgS1ZN
X1NQU1JfVU5EOgo+ID4gICBefn5+Cj4gPgo+ID4gUmV3b3JrIHRvIGFkZCBhICdicmVhazsnIGlu
IHRoZSBzd2ljaC1jYXNlIHNpbmNlIGl0IGRpZG4ndCBoYXZlIHRoYXQuCj4gPiBUaGF0IGFsc28g
bWFkZSB0aGUgY29tcGlsZXIgaGFwcHkgYW5kIGRpZG4ndCB3YXJuIGFib3V0IGZhbGwtdGhyb3Vn
aC4KPiA+Cj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHYzLjE2Kwo+Cj4gRXJtLi4u
IEFyZSB5b3Ugc3VyZSBhYm91dCB0aGF0PwoKSSBtYWRlIHR3byBtaXN0YWtlcy4KMS4gc2F5aW5n
IDMueCBpbnN0ZWFkIG9mIDQueAoyLiBJIHNhaWQgdGhlIHNhbWUga2VybmVsIHRoYXQgJ2dpdCBk
ZXNjcmliZScgc2hvd2VkIGFuZCBub3QgdGhlIGxhdGVyIG9uZS4KCkkgZGlkIG5vdCBrbm93IGFi
b3V0ICctLW1hdGNoPScuCgo+IEhlcmUncyB3aGF0IEkgaGF2ZToKPgo+ICQgZ2l0IGRlc2NyaWJl
IC0tY29udGFpbnMgIGE4OTI4MTk1NjBjNAo+IGt2bS1hcm0tZm9yLXY0LjE3fjQ0Cj4gJCBnaXQg
ZGVzY3JpYmUgLS1jb250YWlucyAtLW1hdGNoPSd2KicgYTg5MjgxOTU2MGM0Cj4gdjQuMTctcmMx
fjcyXjJ+MzZeMn40NAoKVGhhdCdzIGNvcnJlY3QuCgo+Cj4KPiA+IEZpeGVzOiBhODkyODE5NTYw
YzQgKCJLVk06IGFybTY0OiBQcmVwYXJlIHRvIGhhbmRsZSBkZWZlcnJlZCBzYXZlL3Jlc3RvcmUg
b2YgMzItYml0IHJlZ2lzdGVycyIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxh
bmRlcnMucm94ZWxsQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2t2bS9yZWdt
YXAuYyB8IDUgKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva3ZtL3JlZ21hcC5jIGIvYXJjaC9hcm02NC9rdm0v
cmVnbWFwLmMKPiA+IGluZGV4IDBkNjBlNGYwYWY2Ni4uYTkwMDE4MWUzODY3IDEwMDY0NAo+ID4g
LS0tIGEvYXJjaC9hcm02NC9rdm0vcmVnbWFwLmMKPiA+ICsrKyBiL2FyY2gvYXJtNjQva3ZtL3Jl
Z21hcC5jCj4gPiBAQCAtMTc4LDEzICsxNzgsMTggQEAgdm9pZCB2Y3B1X3dyaXRlX3Nwc3IzMihz
dHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsIHVuc2lnbmVkIGxvbmcgdikKPiA+ICAgICAgIHN3aXRjaCAo
c3Bzcl9pZHgpIHsKPiA+ICAgICAgIGNhc2UgS1ZNX1NQU1JfU1ZDOgo+ID4gICAgICAgICAgICAg
ICB3cml0ZV9zeXNyZWdfZWwxKHYsIFNZU19TUFNSKTsKPiA+ICsgICAgICAgICAgICAgYnJlYWs7
Cj4gPiAgICAgICBjYXNlIEtWTV9TUFNSX0FCVDoKPiA+ICAgICAgICAgICAgICAgd3JpdGVfc3lz
cmVnKHYsIHNwc3JfYWJ0KTsKPiA+ICsgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICBjYXNl
IEtWTV9TUFNSX1VORDoKPiA+ICAgICAgICAgICAgICAgd3JpdGVfc3lzcmVnKHYsIHNwc3JfdW5k
KTsKPiA+ICsgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICBjYXNlIEtWTV9TUFNSX0lSUToK
PiA+ICAgICAgICAgICAgICAgd3JpdGVfc3lzcmVnKHYsIHNwc3JfaXJxKTsKPiA+ICsgICAgICAg
ICAgICAgYnJlYWs7Cj4gPiAgICAgICBjYXNlIEtWTV9TUFNSX0ZJUToKPiA+ICAgICAgICAgICAg
ICAgd3JpdGVfc3lzcmVnKHYsIHNwc3JfZmlxKTsKPiA+ICsgICAgICAgICAgICAgYnJlYWs7Cj4g
PiAgICAgICB9Cj4gPiAgfQo+Cj4gT3RoZXJ3aXNlIGxvb2tzIGxpa2UgdGhlIHJpZ2h0IGZpeCB0
byBtZS4gTGV0IG1lIGtub3cgd2hhdCB5b3UgdGhpbmsKPiBhYm91dCB0aGUgRml4ZXM6IHRhZyAo
bm8gbmVlZCB0byByZXNlbmQgZm9yIHRoYXQpLgoKSXQgc2hvdWxkIGJlIHY0LjE3Ky4KCkNoZWVy
cywKQW5kZXJzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
