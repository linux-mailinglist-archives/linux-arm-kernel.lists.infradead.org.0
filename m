Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E9AA5341
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju4GwkRRewro/fYPHe9NqOxMoNR+1KOQcojk01oOcf8=; b=HqaLrvB0HBmcYE
	DAFjaiyOgv8TKeJNRiglzBJ2qFqxpzj06dLfRD8YjTV0NP9++eQPPmjJxUalZy4dcvPC1ueH2RkSD
	HzXlldZ0mHWY6DwdqxmwOM2bXDpprzSelt0yzB/BBSJ3SQjOmM5cPW60aTSdkM18vlMhhanjh8v4C
	l3nKsxQ2etsTWOSCnZr7yDtLS4VbhtxIHkvQsZ+8OOfb2ABBphdGTfb2QBFvivsj/dSgX3gdc+hF1
	k78Hr1MLq2nKsHh/dVy+hL1yY9vsOSOAKCeduQ+Va7KWu9x73Fvcfit/xkk2M4gaA+hbrNEKfTeuT
	dPd6fbBdTGRxPtezl4Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ive-0008Ng-E4; Mon, 02 Sep 2019 09:47:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ivQ-0008M6-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:47:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id k1so13814651wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=d0Fmd8+tPhsncECjkpyfN40FKyAZ9dwp7GhgzrHppXE=;
 b=qVngIIwui1J9tByelwV/mGZbVHFBFHyDB8d+zUgLu3YBU/pt2PyBLaNu6aJVP3PZu+
 ihkRHhUgNreGoIsCbkx1FNEXIz6W3YzxsPtykCOFZra1Ph5YrfDGBk5pUhNPXnyQhdOw
 D9ABWajSIFLGxjIDL3ZgE8fjcP4o/qvxAq8ScG/ooH2FuTnduj/fyZWm7jHaTjH42E/D
 Ei0dGMTfBr8owiAqXxN0DezEgPDMt9Z1EvGzVnLLyrgPVWZ3lXxJ9oZIffCqMvqKZt1l
 C76KOLTdO84oTFmQbF26UtdsQg6gT2TxP7R0Ue3uQ2+bt919+f7rtplpS6l1WtkiwEYy
 +qOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=d0Fmd8+tPhsncECjkpyfN40FKyAZ9dwp7GhgzrHppXE=;
 b=C8CnD4eFnIQEoHeOJm3ZCYT4h5QQiahRfAMz/M78PoNXUXx9G5YdmGtHX9/+UzKuMS
 a2adBvUmDDmcX6gOuopAIeAtxeph3jp2d8lN+/1wdDQgrOrL+LzIjvYhDrLet61EqOeD
 jDsi5QshpHM2NbUU6odBc2621Q7KsAZIpQhrzZoMMOWeVQunZ3z7WjKn92ZLA08JqGXG
 OeuJeRBimOfYdaqI7zQ2+NO58d3qrXOSZYS6n7gfV+62Yxw2MLr64qdbZ5IYtBJPSJ8g
 uGuKRxdOliN1xM+cscvPggdrka3olKOv3O1wQRP2do8qu8gIX9r+BJAPh6XojKxPHcmO
 Fiyw==
X-Gm-Message-State: APjAAAW+aJrQahi/MYa7+MaPugzd2323LGhs+IhUN2PB6Q1nwfbjyNSI
 2Rj0hSc2E9YVOa8fjqAauh2sKQ==
X-Google-Smtp-Source: APXvYqzpAmIdXWUOa0YAoYYeALNbgpYYaMFH/Rih64cJ0rC02eyJ+NoygykybAEJqvvgTgzMlJYBEA==
X-Received: by 2002:a1c:f106:: with SMTP id p6mr31938241wmh.148.1567417622917; 
 Mon, 02 Sep 2019 02:47:02 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id b18sm18199417wro.34.2019.09.02.02.47.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:47:02 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:47:00 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 05/13] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190902094700.GS32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-6-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-6-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024704_970690_9697162E 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gbW92ZSBjb2RlIHRvIHNlcGFy
YXRlIGhlYWRlci1maWxlIHRvIHJldXNlIGRlZmluaXRpb25zIGxhdGVyCj4gaW4gcG93ZXJvZmYt
ZHJpdmVyIChkcml2ZXJzL3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi5jKQo+IAo+IFN1Z2dl
c3RlZC1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gU2ln
bmVkLW9mZi1ieTogSm9zZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gU2lnbmVk
LW9mZi1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gLS0t
Cj4gY2hhbmdlcyBzaW5jZSB2NTogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjQ6IG5vbmUKPiBjaGFu
Z2VzIHNpbmNlIHYzOiBub25lCj4gY2hhbmdlcyBzaW5jZSB2MjogYWRkIG1pc3NpbmcgY29tbWl0
LW1lc3NhZ2UKPiAtLS0KPiAgZHJpdmVycy9ydGMvcnRjLW10NjM5Ny5jICAgICAgIHwgNTUgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5o
IHwgNzEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDcyIGluc2VydGlvbnMoKyksIDU0IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5oCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcnRjL3J0Yy1tdDYzOTcuYyBiL2RyaXZlcnMvcnRjL3J0Yy1tdDYzOTcuYwo+IGluZGV4IGI0
NmVkNGRjNzAxNS4uYzA4ZWU1ZWRmODY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcnRjL3J0Yy1t
dDYzOTcuYwo+ICsrKyBiL2RyaXZlcnMvcnRjL3J0Yy1tdDYzOTcuYwo+IEBAIC05LDYwICs5LDcg
QEAKPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcmVnbWFw
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9ydGMuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L2lycWRvbWFp
bi5oPgo+IC0jaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gLSNpbmNsdWRlIDxs
aW51eC9vZl9hZGRyZXNzLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4KPiAtI2luY2x1
ZGUgPGxpbnV4L2lvLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9tZmQvbXQ2Mzk3L2NvcmUuaD4KPiAt
Cj4gLSNkZWZpbmUgUlRDX0JCUFUJCTB4MDAwMAo+IC0jZGVmaW5lIFJUQ19CQlBVX0NCVVNZCQlC
SVQoNikKPiAtCj4gLSNkZWZpbmUgUlRDX1dSVEdSCQkweDAwM2MKPiAtCj4gLSNkZWZpbmUgUlRD
X0lSUV9TVEEJCTB4MDAwMgo+IC0jZGVmaW5lIFJUQ19JUlFfU1RBX0FMCQlCSVQoMCkKPiAtI2Rl
ZmluZSBSVENfSVJRX1NUQV9MUAkJQklUKDMpCj4gLQo+IC0jZGVmaW5lIFJUQ19JUlFfRU4JCTB4
MDAwNAo+IC0jZGVmaW5lIFJUQ19JUlFfRU5fQUwJCUJJVCgwKQo+IC0jZGVmaW5lIFJUQ19JUlFf
RU5fT05FU0hPVAlCSVQoMikKPiAtI2RlZmluZSBSVENfSVJRX0VOX0xQCQlCSVQoMykKPiAtI2Rl
ZmluZSBSVENfSVJRX0VOX09ORVNIT1RfQUwJKFJUQ19JUlFfRU5fT05FU0hPVCB8IFJUQ19JUlFf
RU5fQUwpCj4gLQo+IC0jZGVmaW5lIFJUQ19BTF9NQVNLCQkweDAwMDgKPiAtI2RlZmluZSBSVENf
QUxfTUFTS19ET1cJCUJJVCg0KQo+IC0KPiAtI2RlZmluZSBSVENfVENfU0VDCQkweDAwMGEKPiAt
LyogTWluLCBIb3VyLCBEb20uLi4gcmVnaXN0ZXIgb2Zmc2V0IHRvIFJUQ19UQ19TRUMgKi8KPiAt
I2RlZmluZSBSVENfT0ZGU0VUX1NFQwkJMAo+IC0jZGVmaW5lIFJUQ19PRkZTRVRfTUlOCQkxCj4g
LSNkZWZpbmUgUlRDX09GRlNFVF9IT1VSCQkyCj4gLSNkZWZpbmUgUlRDX09GRlNFVF9ET00JCTMK
PiAtI2RlZmluZSBSVENfT0ZGU0VUX0RPVwkJNAo+IC0jZGVmaW5lIFJUQ19PRkZTRVRfTVRICQk1
Cj4gLSNkZWZpbmUgUlRDX09GRlNFVF9ZRUFSCQk2Cj4gLSNkZWZpbmUgUlRDX09GRlNFVF9DT1VO
VAk3Cj4gLQo+IC0jZGVmaW5lIFJUQ19BTF9TRUMJCTB4MDAxOAo+IC0KPiAtI2RlZmluZSBSVENf
UEROMgkJMHgwMDJlCj4gLSNkZWZpbmUgUlRDX1BETjJfUFdST05fQUxBUk0JQklUKDQpCj4gLQo+
IC0jZGVmaW5lIFJUQ19NSU5fWUVBUgkJMTk2OAo+IC0jZGVmaW5lIFJUQ19CQVNFX1lFQVIJCTE5
MDAKPiAtI2RlZmluZSBSVENfTlVNX1lFQVJTCQkxMjgKPiAtI2RlZmluZSBSVENfTUlOX1lFQVJf
T0ZGU0VUCShSVENfTUlOX1lFQVIgLSBSVENfQkFTRV9ZRUFSKQo+IC0KPiAtc3RydWN0IG10NjM5
N19ydGMgewo+IC0Jc3RydWN0IGRldmljZQkJKmRldjsKPiAtCXN0cnVjdCBydGNfZGV2aWNlCSpy
dGNfZGV2Owo+IC0Jc3RydWN0IG11dGV4CQlsb2NrOwo+IC0Jc3RydWN0IHJlZ21hcAkJKnJlZ21h
cDsKPiAtCWludAkJCWlycTsKPiAtCXUzMgkJCWFkZHJfYmFzZTsKPiAtfTsKPiArI2luY2x1ZGUg
PGxpbnV4L21mZC9tdDYzOTcvcnRjLmg+Cj4gIAo+ICBzdGF0aWMgaW50IG10a19ydGNfd3JpdGVf
dHJpZ2dlcihzdHJ1Y3QgbXQ2Mzk3X3J0YyAqcnRjKQo+ICB7Cj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaCBiL2luY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMu
aAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5iNzAyYzI5ZThj
NzQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5o
Cj4gQEAgLTAsMCArMSw3MSBAQAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MCAqLwo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTQtMjAxOCBNZWRpYVRlayBJbmMuCgpU
aGlzIGlzIG91dCBvZiBkYXRlLgoKT25jZSBjb3JyZWN0ZWQsIHBsZWFzZSBhcHBseSBteToKCkZv
ciBteSBvd24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpv
bmVzQGxpbmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
