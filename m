Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916437A884
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3x/M19w8Y/NAY9xF5VfdPV7JTd8sLdGV7AZCY+05ACo=; b=DP0Z4sGV/93Gxh
	H09w95RMuofemnMynR5AL4BcjF1FGhfuhDW88q+42FFZAYF0UkJ9McjSkWBQQpJV4HBTY0q0fx3at
	J2a1ye8w5mw21YugwfsNdmYKDQhkHAHuYwIgzv9hrThuPYNZ4tVKi6+/0z/wo2RO1TJnAJlYGQ/DE
	tssYA/cVVc+Ey6SaHiD76mbgGAleSh6Xi5jxGa7FBZDnCu3SctBZemrmMOL8k197glZRqppicJiDC
	Ct6TUSXo7FZb6eo5ONxePaLKahJYqncBRITG88F0sZSqkCINIrpJuOv/BO34NWLUOadPtWZcfazcR
	8eW/q/I7yhLHvomiuLtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRHM-00066S-9x; Tue, 30 Jul 2019 12:30:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRH6-00064k-Oy
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:30:42 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so44684367lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CSfAM+gQ83XDaCNQg7r2LymDSaYozQKa9yvOaipRrHw=;
 b=YcHbAFaq93T4Zd6Gr5USiR2fPHQ71TjN2iFO68zfokUsiUXHtSvTQhdwY4Fwwhw4p2
 QAFwFQe3kSqg7/+Ad4vM4NoB5JGqpFcMIDw38BlA9kIe8YNk3A89nlp9hz5D9hNSAdxR
 51sz9+kqtPSfhaH4zUX6M2DK9Gl46AeG3S/uvMj68hNHzdgx4Uas/1yi4sP0kkJuSIf+
 DloKwpPnqTb+gN4kQEj3C/DOiShZrBI979u3ZLjl9we3uYL5sMQdidw5IN1h9v2C24k1
 gP7wOmDYR4KBmq1AQTULDiNPw61vGuHnG4HiCjYNdSTEX/0J/yZX8K2kz1PR98Ic2abB
 zMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CSfAM+gQ83XDaCNQg7r2LymDSaYozQKa9yvOaipRrHw=;
 b=MnB9vMic6WyuIn99O7tOD5TEzxDOjK6nb0I1ZgR+m5rEnBj5nrG5Sed00OcGOibzSH
 ZD7jUBQTaXE5kGDKZBpOPZKCNzlGmIA7K0eHN2iIh6bcwwg+sIdyeOd4YdLTtjqJBCMY
 h9LtpMu9YHVDpc0HyOHdErFD60fQFOZK0EEN7ayJ/OO7m5lLizookmxXHZ3SMGBTR6Ez
 j797++JhFaNAyepeOfQVNTP5I5mS/CJTjxJMIas0ZqjGUuiFM+bB4KUlZAjlVp+Q2nPj
 aGxNbJ7UNgmyKpOs7iZ64ueKPAzKLol9rtIgs16VPF8JfAGI46iOTkTJyAnN3jj18Yx4
 TqKw==
X-Gm-Message-State: APjAAAXTeGSdaj9+57tnIa3U/p01mOzHpGcG1zF1H6LntwjCSdeerGkR
 gxEj5mMzQuBCf8U0cuqi0TVXdEutCD9ItgS4ohPl2w==
X-Google-Smtp-Source: APXvYqwfYsLN+ZvekCLKF3p2gBcRgDY5HwZspqX9F2tsBCNfvaaPjNDOymzkH2LYNrRBJDwAY/7q4iGv3TvWJHaT59o=
X-Received: by 2002:ac2:4c82:: with SMTP id d2mr37163207lfl.89.1564489838284; 
 Tue, 30 Jul 2019 05:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190726112737.19309-1-anders.roxell@linaro.org>
 <20190726122956.GC26088@lakrids.cambridge.arm.com>
 <20190726151825.GA12552@e121166-lin.cambridge.arm.com>
 <20190730112415.GB51922@lakrids.cambridge.arm.com>
 <20190730112758.ctgg6l5gldsefdgs@willie-the-truck>
In-Reply-To: <20190730112758.ctgg6l5gldsefdgs@willie-the-truck>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 30 Jul 2019 14:30:27 +0200
Message-ID: <CADYN=9+9wnpX1jSaDmowDov9GerQsdobxnVqwAf=WGk=7-VcRw@mail.gmail.com>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_053040_814118_2D6C3EFA 
X-CRM114-Status: GOOD (  18.94  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxMzoyOCwgV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAxMjoyNDoxNVBNICswMTAwLCBN
YXJrIFJ1dGxhbmQgd3JvdGU6Cj4gPiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwNDoxODoyNVBN
ICswMTAwLCBMb3JlbnpvIFBpZXJhbGlzaSB3cm90ZToKPiA+ID4gT24gRnJpLCBKdWwgMjYsIDIw
MTkgYXQgMDE6Mjk6NTZQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdyb3RlOgo+ID4gPiA+IE9uIEZy
aSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI3OjM3UE0gKzAyMDAsIEFuZGVycyBSb3hlbGwgd3JvdGU6
Cj4gPiA+ID4gPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBieSBkZWZh
dWx0IHRoZSBmb2xsb3dpbmcgd2FybmluZwo+ID4gPiA+ID4gd2FzIHN0YXJ0aW5nIHRvIHNob3cg
dXA6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzogSW4gZnVu
Y3Rpb24g4oCYY3B1X3BtX3BtdV9ub3RpZnnigJk6Cj4gPiA+ID4gPiAuLi9kcml2ZXJzL3BlcmYv
YXJtX3BtdS5jOjcyNjozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAo+ID4gPiA+
ID4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ID4gPiA+ID4gICAgY3B1X3Bt
X3BtdV9zZXR1cChhcm1wbXUsIGNtZCk7Cj4gPiA+ID4gPiAgICBefn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fgo+ID4gPiA+ID4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzo3Mjc6Mjogbm90
ZTogaGVyZQo+ID4gPiA+ID4gICBjYXNlIENQVV9QTV9FTlRFUl9GQUlMRUQ6Cj4gPiA+ID4gPiAg
IF5+fn4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBSZXdvcmsgc28gdGhhdCB0aGUgY29tcGlsZXIgZG9l
c24ndCB3YXJuIGFib3V0IGZhbGwtdGhyb3VnaC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBGaXhlczog
ZDkzNTEyZWYwZjBlICgiTWFrZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxsLXRocm91Z2ggd2Fy
bmluZyIpCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94
ZWxsQGxpbmFyby5vcmc+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJJ20gbm90
IGNvbnZpbmNlZCB0aGF0IHRoaXMgaXMgdGhlIGNvcnJlY3QgcGF0Y2ggdG8gZml4IHRoaXMgaXNz
dWUuCj4gPiA+ID4gPiBIb3dldmVyLCBJIGNhbid0IHNlZSB3aHkgd2UgZG8gJ2FybXBtdS0+c3Rh
cnQoYXJtcG11KTsnIG9ubHkgaW4gJ2Nhc2UKPiA+ID4gPiA+IENQVV9QTV9FTlRFUl9GQUlMRUQn
IGFuZCB3aHkgd2Ugbm90IGNhbGwgZnVuY3Rpb24gY3B1X3BtX3BtdV9zZXR1cCgpCj4gPiA+ID4g
PiB0aGVyZSBhbHNvLCBzaW5jZSBpbiBjcHVfcG1fcG11X3NldHVwKCkgaGFzIGEgY2FzZSBwcmVw
YXJlZCBmb3IKPiA+ID4gPiA+IENQVV9QTV9FTlRFUl9GQUlMRUQuCj4gPiA+ID4KPiA+ID4gPiBJ
IGFncmVlLCB0aGluayB0aGF0IHNob3VsZCBiZToKPiA+ID4gPgo+ID4gPiA+ICAgY2FzZSBDUFVf
UE1fRVhJVDoKPiA+ID4gPiAgIGNhc2UgQ1BVX1BNX0VOVEVSX0ZBSUxFRDoKPiA+ID4gPiAgICAg
ICAgICAgY3B1X3BtX3BtdV9zZXR1cChhcm1wbXUsIGNtZCk7Cj4gPiA+ID4gICAgICAgICAgIGFy
bXBtdS0+c3RhcnQoYXJtcG11KTsKPiA+ID4gPiAgICAgICAgICAgYnJlYWs7Cj4gPiA+ID4KPiA+
ID4gPiAuLi4gc28gdGhhdCB3ZSByZS1zdGFydCB0aGUgZXZlbnRzIGJlZm9yZSB3ZSBzdGFydCB0
aGUgUE1VLgo+ID4gPiA+Cj4gPiA+ID4gVGhhdCB3b3VsZCBiZSBhIGZpeCBmb3IgY29tbWl0Ogo+
ID4gPiA+Cj4gPiA+ID4gICBkYTRlNGYxOGFmZTBmMzcyICgiZHJpdmVycy9wZXJmOiBhcm1fcG11
OiBpbXBsZW1lbnQgQ1BVX1BNIG5vdGlmaWVyIikKPiA+ID4KPiA+ID4gWWVzIHRoYXQncyBjb3Jy
ZWN0LCBhcG9sb2dpZXMuIFByb2JhYmx5IHdlIGRpZCBub3QgaGl0IGl0IGJlY2F1c2UgQ1BVIFBN
Cj4gPiA+IG5vdGlmaWVyIGVudHJ5IGZhaWx1cmVzIGFyZSBhIHByZXR0eSByYXJlIGV2ZW50OyBy
ZWdhcmRsZXNzOgo+ID4gPgo+ID4gPiBBY2tlZC1ieTogTG9yZW56byBQaWVyYWxpc2kgPGxvcmVu
em8ucGllcmFsaXNpQGFybS5jb20+Cj4gPiA+Cj4gPiA+IEkgY2FuIHNlbmQgdGhlIHVwZGF0ZWQg
Zml4LCBqdXN0IGxldCBtZSBrbm93Lgo+ID4KPiA+IEknbSBub3Qgc3VyZSB3aGF0IFdpbGwgd2Fu
dHMsIGJ1dCBhc3N1bWluZyB5b3UgZG8gc286Cj4gPgo+ID4gQWNrZWQtYnk6IE1hcmsgUnV0bGFu
ZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4KPiBJIGdhdmUgdXAgd2FpdGluZwoKSSdtIHNvcnJ5
IGZvciBsZXR0aW5nIHlvdSB3YWl0LgoKPiwgc28gaXQncyBhbHJlYWR5IHF1ZXVlZCBoZXJlOgo+
Cj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQv
bGludXguZ2l0L2NvbW1pdC8/aD1mb3ItbmV4dC9maXhlcyZpZD0wZDdmZDcwZjI2MDM5YmQ0YjMz
NDQ0Y2E0N2YwZTY5Y2UzYWUwMzU0CgpUaGFua3MgZm9yIGZpeGluZyBpdC4KCkNoZWVycywKQW5k
ZXJzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
