Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE5481431
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 10:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ex3gckDQT6M22AjAcPuYuZN2GwyO06FE76FKgQidYV0=; b=boTIMAhnTCv9/E
	l7tRqTqXTcPVfbO0PRUPmV0Ut9+3yMI2jbY0/vxzf+snECD4yKo1r2UgltAn0F+OcgbBFBUkrfPR2
	dOR7TFrETYZ3A2RKFWDv0puDp7LAigssP0EBs7Rgyex1u7lEN55AKDHTFjBcI18zjQuOB4tZbyeOv
	f6/9WKsYDo/Q/HAIo9QStekhmXH3LhESAYWAm1WKoBlynRmwdcXOY8CQNU5LVuezaKa8t/jSaHfUh
	Lumq6iu6+n3FPYwEHoiTLAJXXJciqcj4Q7VEPYCjzk3zSz9awHKnx45gd8PaB+d6xWoYBE7BNmBsA
	wx1BbukO2aI2omGvoieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYNG-0004mp-QL; Mon, 05 Aug 2019 08:29:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYN2-0004mA-12
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:29:33 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so165606804iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iLxJtjvXmnF0ClD5rX3LT66tsg88jqzkH20ohifxwQc=;
 b=fOraWGwyfxhB92mLPGjz/00Oak+jbQ+YLpTRbpVWHWcuxwikZZV4Of05k6816R1PkW
 7d0icsS6v/Mr2SltIwhV/Th3NQjkDlur+6GG/CHRMUtl6sN2ZQ0pQO3SsVKBwczn982P
 OkDJlwBXNREB19EESaDahW0RMPwWP6zvVra1NuFR8cH4TofWH0JmbNI79DkY+BGuerhB
 JQU607ENwNbf/K5WagQ2ifbpl6+6+VQ0ZNKrhALxAk0+u4SNh5iP5MTzpZWrKW2JA8Cl
 3DeAG8CwTjr6euCzQSFFABsCahSFE2qIl6SFnCeJd88c6jNJvl4Nwhel7BG+2hoo1oaD
 6bJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iLxJtjvXmnF0ClD5rX3LT66tsg88jqzkH20ohifxwQc=;
 b=fDYom3h143/XYqfav5S6r47BWZ157PaLRyIciCWZU7OnCqHc3o8kgzz6qyo/8kqstB
 MkJix1pZRaHzoUmo1rIFUnZ0c0JIFkPCohnk8yUa2XJ2+Cuq8BO6gY2sKSSdyBcvXyn3
 kuyWpmC0ditLECoqHHcR3d6eDi28RL/4mEHM6W160RvEKB9duMgvkGfufCNfhL+eGsaN
 kG0l5SH5+quWampL6KGUjAs78M5vN7d/Cry9SlsQxwANYOEOwfFMGVWuQhkJkX+D1wdy
 HFXZRwoHlLQVtxoQYEmRsMjxv/G/TYsifw38GH5BvqFIdM30sgYpK36g72rmg+xMJeOZ
 hHBw==
X-Gm-Message-State: APjAAAXaOfUNzUnxvS5FO+QCsIicBNUbP4G6W2/2pBhHpvTNWXhSX4oy
 elwxF2RUmn6uXKciMikZSQ97zUhmjD4tABRdu94=
X-Google-Smtp-Source: APXvYqylC6BqYsdA/aIm6a0Duvol+v8+fZeSGpRVX9SM+u0ucmphSUpMjlqG3Pt4pNABoMPLDxbhEMxTtxwJnjkklQs=
X-Received: by 2002:a6b:bc42:: with SMTP id m63mr8748988iof.189.1564993770755; 
 Mon, 05 Aug 2019 01:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190722131748.30319-1-brgl@bgdev.pl>
In-Reply-To: <20190722131748.30319-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 5 Aug 2019 10:29:19 +0200
Message-ID: <CAMRc=Mes8dEwscGU8LLQ5CcxmUnhBwt2iP0wk1qNRjRwy8CcFA@mail.gmail.com>
Subject: Re: [RESEND PATCH 00/10] ARM: davinci: use the new clocksource driver
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_012932_098732_C773309C 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgMjIgbGlwIDIwMTkgbyAxNToxNyBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2
LnBsPiBuYXBpc2HFgihhKToKPgo+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pl
d3NraUBiYXlsaWJyZS5jb20+Cj4KPiBTZWtoYXIsCj4KPiB0aGUgZm9sbG93aW5nIHBhdGNoZXMg
c3dpdGNoIERhVmluY2kgdG8gdXNpbmcgdGhlIG5ldyBjbG9ja3NvdXJjZSBkcml2ZXIgd2hpY2gK
PiBpcyBub3cgdXBzdHJlYW0uIFRoZXkgYXJlIHJlYmFzZWQgb24gdG9wIG9mIHY1LjMtcmMxLiBB
ZGRpdGlvbmFsbHkgdGhlCj4gZm9sbG93aW5nIHR3byBwYXRjaGVzIHdlcmUgcmV2ZXJ0ZWQgbG9j
YWxseSBkdWUgdG8gYSByZWdyZXNzaW9uIGluIHY1LjMtcmMxCj4gYWJvdXQgd2hpY2ggdGhlIHJl
bGV2YW50IG1haW50YWluZXJzIGhhdmUgYmVlbiBhbHJlYWR5IG5vdGlmaWVkOgo+Cj4gICAyZWVm
MTM5OWE4NjYgbW9kdWxlczogZml4IEJVRyB3aGVuIGxvYWQgbW9kdWxlIHdpdGggcm9kYXRhPW4K
PiAgIDkzNjUxZjgwZGNiNiBtb2R1bGVzOiBmaXggY29tcGlsZSBlcnJvciBpZiBkb24ndCBoYXZl
IHN0cmljdCBtb2R1bGUgcnd4Cj4KPiBCYXJ0b3N6IEdvbGFzemV3c2tpICgxMCk6Cj4gICBBUk06
IGRhdmluY2k6IGVuYWJsZSB0aGUgY2xvY2tzb3VyY2UgZHJpdmVyIGZvciBEVCBtb2RlCj4gICBB
Uk06IGRhdmluY2k6IFdBUk5fT04oKSBpZiBjbGtfZ2V0KCkgZmFpbHMKPiAgIEFSTTogZGF2aW5j
aTogZGE4NTA6IHN3aXRjaCB0byB1c2luZyB0aGUgY2xvY2tzb3VyY2UgZHJpdmVyCj4gICBBUk06
IGRhdmluY2k6IGRhODMwOiBzd2l0Y2ggdG8gdXNpbmcgdGhlIGNsb2Nrc291cmNlIGRyaXZlcgo+
ICAgQVJNOiBkYXZpbmNpOiBtb3ZlIHRpbWVyIGRlZmluaXRpb25zIHRvIGRhdmluY2kuaAo+ICAg
QVJNOiBkYXZpbmNpOiBkbTM1NTogc3dpdGNoIHRvIHVzaW5nIHRoZSBjbG9ja3NvdXJjZSBkcml2
ZXIKPiAgIEFSTTogZGF2aW5jaTogZG0zNjU6IHN3aXRjaCB0byB1c2luZyB0aGUgY2xvY2tzb3Vy
Y2UgZHJpdmVyCj4gICBBUk06IGRhdmluY2k6IGRtNjQ0eDogc3dpdGNoIHRvIHVzaW5nIHRoZSBj
bG9ja3NvdXJjZSBkcml2ZXIKPiAgIEFSTTogZGF2aW5jaTogZG02NDZ4OiBzd2l0Y2ggdG8gdXNp
bmcgdGhlIGNsb2Nrc291cmNlIGRyaXZlcgo+ICAgQVJNOiBkYXZpbmNpOiByZW1vdmUgbGVnYWN5
IHRpbWVyIHN1cHBvcnQKPgo+ICBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAxICsKPiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL01ha2VmaWxlICAgICAgICAg
ICAgICB8ICAgMyArLQo+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZGE4MzAuYyAgICAgICAgICAg
ICAgIHwgIDQ1ICstLQo+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZGE4NTAuYyAgICAgICAgICAg
ICAgIHwgIDUwICstLQo+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZGF2aW5jaS5oICAgICAgICAg
ICAgIHwgICAzICsKPiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2RldmljZXMtZGE4eHguYyAgICAg
ICB8ICAgMSAtCj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9kZXZpY2VzLmMgICAgICAgICAgICAg
fCAgMTkgLQo+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZG0zNTUuYyAgICAgICAgICAgICAgIHwg
IDI4ICstCj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9kbTM2NS5jICAgICAgICAgICAgICAgfCAg
MjYgKy0KPiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2RtNjQ0eC5jICAgICAgICAgICAgICB8ICAy
OCArLQo+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZG02NDZ4LmMgICAgICAgICAgICAgIHwgIDI4
ICstCj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9pbmNsdWRlL21hY2gvY29tbW9uLmggfCAgMTcg
LQo+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvaW5jbHVkZS9tYWNoL3RpbWUuaCAgIHwgIDM1IC0t
Cj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS90aW1lLmMgICAgICAgICAgICAgICAgfCA0MTQgLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPiAgMTQgZmlsZXMgY2hhbmdlZCwgMTEwIGluc2VydGlvbnMoKyks
IDU4OCBkZWxldGlvbnMoLSkKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtZGF2
aW5jaS9pbmNsdWRlL21hY2gvdGltZS5oCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9t
YWNoLWRhdmluY2kvdGltZS5jCj4KPiAtLQo+IDIuMjEuMAo+CgpIaSBTZWtoYXIsCgphIGdlbnRs
ZSBwaW5nLiBJcyB0aGlzIHNlcmllcyBnb29kIHRvIGdvIGluIGZvciB2NS40PwoKQmFydAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
