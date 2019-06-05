Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1C4358A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hbi8bFtVmgEEXU1JW/DR9bSW+ykK0QCXTFgJccrX300=; b=WdwY4N4sdB0z0u
	VLzfceo15Ze0gOZ3r2ZVOm9AstzszSOyboaVH8/YmV89gEx8m4WPuBIbr2eLjaU71liJ6harXEelR
	0XjZkD7etIS1HaFk25axXGfx/6YA0WLDnJ0t8QZhSeA28+rTSFLgwooJQgY7XUzI5NMcuAH20A63P
	gPW/tfvf+XtKRh9uWV5SVEzSosEfkvuEGY6bm/2ysQCiyd/PfawCav4V4soaiAqJRhh1F1u++nrre
	IyC5Usmf13Ex/+qUPyFBMqEeje9OCOaGMwHu6PWJUKMqKkr80Iur6gPdGC8x8+qV6XbLncA5xKO1j
	f4UwFFshnmro04/Y4jlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRO1-0002Fx-9m; Wed, 05 Jun 2019 08:35:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRNq-0002Fb-6u
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:34:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id f9so3802205wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=8g/yZPWG+i1WVLfgMfiKNG8jFuss04L+NM2N8hvdwuU=;
 b=duvNpDjeQMy8g7ArkYr8qMf4P0vqAOFHxA5m7OA3dSPpU8Whx3HYz22J+tcP5H7fOz
 1ZznSkXdDIq1nnKilrD3TGhV6t0zrEzaOq/RDvyjaAgxf+XUcwJDO2lqoZatoK/3+uEv
 E1ftDeSUC01zpeAkA7vyZLU2On3x8YyfiVJahVLLzeMbOahAR0cqVBbKFDa/Ugz1wHB3
 UMHBitPjZbAQiG/2VorRB9SUdv0NGaqay8xKb1H1u2QaGjKA/kIoGylOE3Bfimw5OUx+
 2Ymtzqpo1AFcxBExsqvimaZHp7e8G0QiKtMS1YsnBb+6XhWmqv39jUJRcnuuHgtAq/Ek
 56Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8g/yZPWG+i1WVLfgMfiKNG8jFuss04L+NM2N8hvdwuU=;
 b=siaZmRrrNduhXUt/FG4Wg6xtm/pZIbgANhE7rXM/3CRcw7XAJrQgldItHu9K3N5nld
 d7NESrn083T+orDcb/TT1oxFndWM/bHobI1FLKuNTHnNJVG0F2A6J4S8rubtGz59tQAQ
 W/j8k6tlwSmVHT3tdlQKIWczWk4ScHCgCu3TuKpgnB/Tuj196+S4KKgQDaRBaxJ+gNTg
 Tqe+pRmK92319erXerZiHN0IrJ8WvXU/fCWjOzO/HgTxgtlbrtmspnWCrbSqceA/q03K
 sfddCVkDsW8+PYQeHu0eLZgbRHLD4TkV3qxGUBXVI/UTTIYxGwE75orCL6uMHVEX952U
 FQ9w==
X-Gm-Message-State: APjAAAXkOWFUQTs597AEu87+TYpXO/3U9UZlnUgpuszxlfnEg/DKH81C
 6OokYJ45Wpkn+TM5GHp29L66P55Fmj4=
X-Google-Smtp-Source: APXvYqzBuf1OKbs5PAYFvIiTv6Ji1rE3PaXYvKbhChwv5f9DahKjEOxWETTF4saSPngpiLUNQ3p1Qw==
X-Received: by 2002:a5d:4e46:: with SMTP id r6mr8473126wrt.290.1559723696792; 
 Wed, 05 Jun 2019 01:34:56 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 128sm2231857wme.12.2019.06.05.01.34.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 01:34:56 -0700 (PDT)
Date: Wed, 5 Jun 2019 09:34:54 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
Message-ID: <20190605083454.GO4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-7-lee.jones@linaro.org>
 <20190605070029.GN22737@tuxbook-pro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605070029.GN22737@tuxbook-pro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_013458_263524_17A8411C 
X-CRM114-Status: GOOD (  25.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNSBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBUdWUgMDQg
SnVuIDAzOjQ0IFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBXaGVuIGJvb3Rpbmcg
d2l0aCBEZXZpY2UgVHJlZSwgdGhlIGN1cnJlbnQgZGVmYXVsdCBib290IGNvbmZpZ3VyYXRpb24K
PiA+IHRhYmxlIG9wdGlvbiwgdGhlIHJlcXVlc3QgdG8gYm9vdCB2aWEgJ2hvc3QgbW9kZScgY29t
ZXMgZnJvbSB0aGUKPiA+ICJkcl9tb2RlIiBwcm9wZXJ0eS4KPiAKPiBUaGlzIGhhcyBiZWVuIHRo
ZSBkZWZhdWx0IG9uIHRoZSBNVFAsIGJ1dCB0aGlzIGlzIGNoYW5naW5nIGFzIHRoaXMgaXMKPiBj
YXVzaW5nIGlzc3VlcyB3aGVuIGNvbm5lY3RlZCBkb3duc3RyZWFtIGZyb20gYSBodWIgKHRoZSB0
eXBpY2FsCj4gZGV2ZWxvcG1lbnQgY2FzZSBmb3IgdGhlIHByaW1hcnkgVVNCIHBvcnQgb2YgYSBw
aG9uZSBsaWtlIGRldmljZSkgYW5kCj4gbW9yZSBpbXBvcnRhbnRseSB3ZSBkb24ndCBoYXZlIHN1
cHBvcnQgZm9yIHRoZSBQTUlDIGJsb2NrcyB0aGF0IGNvbnRyb2wKPiBWQlVTLgoKTXkgcG9pbnQg
aXMgbm90IGFib3V0IHdoaWNoIG1vZGUgaXMgY3VycmVudGx5IGNob3Nlbi4gIEl0J3MgbW9yZSBh
Ym91dAp0aGUgY2FwYWJpbGl0eSBvZiBjaG9vc2luZyB3aGljaCBtb2RlIGlzIGFwcHJvcHJpYXRl
IGZvciBhIGdpdmVuCnN5c3RlbSB2aWEgRFQuCgo+IE9uY2UgdGhlc2UgaXNzdWVzIGFyZSByZXNv
bHZlZCB0aGUgZHJfbW9kZSB3b3VsZCBiZSAib3RnIi4KCk9URyBkb2Vzbid0IHdvcmsgb24gdGhp
cyBIL1csIHNvIHdlIG5lZWQgdG8gc3BlY2lmeSAiaG9zdCIgbW9kZS4KCj4gPiBBIHByb3BlcnR5
IG9mIHRoZSBzYW1lIG5hbWUgY2FuIGJlIHVzZWQgaW5zaWRlCj4gPiBBQ1BJIHRhYmxlcyB0b28u
ICBIb3dldmVyIGl0IGlzIG1pc3NpbmcgZnJvbSB0aGUgU0RNODQ1J3MgQUNQSSB0YWJsZXMKPiA+
IHNvIHdlIGhhdmUgdG8gc3VwcGx5IHRoaXMgaW5mb3JtYXRpb24gdXNpbmcgUGxhdGZvcm0gRGV2
aWNlIFByb3Blcml0ZXMKPiA+IGluc3RlYWQuCj4gPiAKPiAKPiBBZmFpY3QgdGhpcyB3b3VsZCBp
bnN0YWxsIGEgZmFsbC1iYWNrIHByb3BlcnR5LCBzbyBpbiB0aGUgY2FzZSB0aGF0IHdlCj4gaGF2
ZSBzcGVjaWZpZWQgZHJfbW9kZSBpbiBEVCAob3IgQUNQSSkgdGhhdCB3b3VsZCB0YWtlIHByZWNl
ZGVuY2UuIFNvCgpUaGF0J3MgY29ycmVjdC4KCj4gdGhlIGNvbW1pdCBtZXNzYWdlIHNob3VsZCBy
ZWZsZWN0IHRoYXQgdGhpcyByZWRlZmluZXMgdGhlIGRlZmF1bHQgY2hvaWNlCj4gdG8gYmUgImhv
c3QiLCByYXRoZXIgdGhhbiAib3RnIi4KCk5vIHByb2JsZW0uCgo+IFdoaWNoIGlzIGluIGNvbmZs
aWN0IHdpdGggd2hhdCdzIGRlc2NyaWJlZCBmb3IgZHJfbW9kZSBpbgo+IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy50eHQKClRoaXMgaW1wbGVtZW50YXRpb24g
b25seSBhZmZlY3RzIEFDUEkgYmFzZWQgcGxhdGZvcm1zLiAgV2hlbiBib290aW5nCndpdGggRFQs
IHRoZSBkZXNjcmlwdGlvbiBpbiB0aGF0IERUIHJlbGF0ZWQgZG9jdW1lbnQgaXMgc3RpbGwKYWNj
dXJhdGUuCgo+IEFuZCB0aGlzIGRyaXZlciBpcyB1c2VkIG9uIGEgcmFuZ2Ugb2YgZGlmZmVyZW50
IFF1YWxjb21tIHBsYXRmb3Jtcywgc28gSQo+IGRvbid0IHRoaW5rIHRoaXMgaXMgU0RNODQ1IHNw
ZWNpZmljLgoKQUNQSSBiYXNlZCBwbGF0Zm9ybXM/CgpBbGwgdGhlIG9uZXMgSSd2ZSBzZWVuIHVz
ZSB0aGUgWEhDSSBVU0IgZHJpdmVyIGRpcmVjdGx5ICgiUE5QMEQxMCIpLgogCj4gPiBTaWduZWQt
b2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy91c2IvZHdjMy9kd2MzLXFjb20uYyB8IDEyICsrKysrKysrKysrKwo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vz
Yi9kd2MzL2R3YzMtcWNvbS5jIGIvZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYwo+ID4gaW5k
ZXggMzQ5YmY1NDllZTQ0Li5mMjFmZGQ2Y2RkMWEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3Vz
Yi9kd2MzL2R3YzMtcWNvbS5jCj4gPiArKysgYi9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtcWNvbS5j
Cj4gPiBAQCAtNDY4LDYgKzQ2OCwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFjcGlfZGV2aWNl
X2lkIGR3YzNfcWNvbV9hY3BpX21hdGNoW10gPSB7Cj4gPiAgfTsKPiA+ICBNT0RVTEVfREVWSUNF
X1RBQkxFKGFjcGksIGR3YzNfcWNvbV9hY3BpX21hdGNoKTsKPiA+ICAKPiA+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IHByb3BlcnR5X2VudHJ5IGR3YzNfcWNvbV9hY3BpX3Byb3BlcnRpZXNbXSA9IHsK
PiA+ICsJUFJPUEVSVFlfRU5UUllfU1RSSU5HKCJkcl9tb2RlIiwgImhvc3QiKSwKPiA+ICsJe30K
PiA+ICt9Owo+ID4gKwo+ID4gIHN0YXRpYyBpbnQgZHdjM19xY29tX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgewo+ID4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUJKm5wID0g
cGRldi0+ZGV2Lm9mX25vZGUsICpkd2MzX25wOwo+ID4gQEAgLTYwMyw2ICs2MDgsMTMgQEAgc3Rh
dGljIGludCBkd2MzX3Fjb21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+
ICAJCQlnb3RvIHBsYXRmb3JtX3VuYWxsb2M7Cj4gPiAgCQl9Cj4gPiAgCj4gPiArCQlyZXQgPSBw
bGF0Zm9ybV9kZXZpY2VfYWRkX3Byb3BlcnRpZXMocWNvbS0+ZHdjMywKPiA+ICsJCQkJCQkgICAg
IGR3YzNfcWNvbV9hY3BpX3Byb3BlcnRpZXMpOwo+ID4gKwkJaWYgKHJldCA8IDApIHsKPiA+ICsJ
CQlkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gYWRkIHByb3BlcnRpZXNcbiIpOwo+ID4g
KwkJCWdvdG8gcGxhdGZvcm1fdW5hbGxvYzsKPiA+ICsJCX0KPiA+ICsKPiA+ICAJCXJldCA9IHBs
YXRmb3JtX2RldmljZV9hZGQocWNvbS0+ZHdjMyk7Cj4gPiAgCQlpZiAocmV0KSB7Cj4gPiAgCQkJ
ZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZpY2VcbiIpOwoKLS0gCkxlZSBK
b25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9y
ZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZh
Y2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
