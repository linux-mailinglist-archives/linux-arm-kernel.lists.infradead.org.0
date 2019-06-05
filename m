Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0462E3586E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FE8lZCPGr8+9c1NvCQLG6BW2eFINRvUSQhLbocooAM0=; b=N3gVZoUOPryR1p
	DliWIjJm+ho/nIMLwOU5Y63j3WSUbS5mQOOd9g9pkf9psvZQq8EUVY5SF/GaiY9QRYM5HU+5RSGGK
	5Zm20w+C8uYXk5g6LCtXUHp7I+/Q2WRMkCaRam4Na/aGH/yrzE/jgcWzLoIv1c0CRYOlP/lNu6Gdy
	lT559eS0q/MZfMlnyllqT8B5n939+L7hVheCSx1orhF9J09WPLu2yP38cURDD2jYnQKsF8FpMHpZp
	dDHrt9xIq26wlvToqMdjf5tPD7InnNV5cxM3/7CUoqSfaAY+kBtse7vOSCQhZwPcLtoXmfr7peYbr
	5g5w7KAIXzRSETYTekVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRAK-00065Q-Br; Wed, 05 Jun 2019 08:21:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRAD-00064i-1J
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:20:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id r18so9477959wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=4N4wbbPbH5vFPQ02lIzPzQHg+yDqqNmeJgiKq0aKWHQ=;
 b=EEsoVwHJfcVfB0ReGOh4L2CQa6hWhl7NbcxauHoct4OV4K/eJmfkm8ODRylrWf0538
 cFa6Ud53SF9GDxPzTf2QH8ClrklK6SAbghEFIvkPB08cXK8dmhn83Xof+s2ZK+q518Aj
 2GSJmz2YyAyeCySlO/be4cLEbL9RVXGU2l/CaV+hYuqsyJZHVcKKnBUKrOw96GNUV40b
 KNe4oyVp/g92y3oHSnA66Q/gFpFB8Qukzyhelc9SvseBGDW6imI5ONkiObzQkjBsYMub
 PuXqEPcOMPhEBrpFa02315DvejuZd4l+e3SZjyFqd8VDsFe7rOanchMNtkmv8jUP81la
 /Ovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4N4wbbPbH5vFPQ02lIzPzQHg+yDqqNmeJgiKq0aKWHQ=;
 b=SPtl/yt9RvQq7Owr9SNBvl60SVDdf/0ha9OC8vgNbsGRy7Mc/iPssF4k/K4s59jcQ+
 ekMkggfYv5EFB2L5v52+eFx9CrDeOOxaBRUbdhKLI20Tw8hWunzuRHkOBCCSg4Thm+lI
 p/jaYBTvE3dTpd720egcPStvq8OMEyT2++9/FeUCDF+u7c2rZL34r+h4qTZcjqZTSjA7
 jnnpeL/bcfBs7JuV8Ry/XvrHs8IEoaBZZ3g9fG5rz7kYWftgvCbUWuUzRUxtU/jRRSUf
 tkuEcBFZndVDpfrCTH0SU4aKD32/cMGRLpnG0YKZ8wdDX4BXKYsnmPR46xdccbtZpMTq
 /uQA==
X-Gm-Message-State: APjAAAWxP8Dw2mS09LTSHpd85GvSVU/LimzIiSf5b8cKowakU0a7SKNh
 qIIipo6DJD13ccAcDB1g9TGMPg==
X-Google-Smtp-Source: APXvYqx/8oIyrbj4ascfwZpwcyMAKVAvtaBu7KaV63F4l5bAfkhGLPkaQF18jo6DwFQGyXdhimt4dQ==
X-Received: by 2002:adf:f38a:: with SMTP id m10mr9150235wro.81.1559722850820; 
 Wed, 05 Jun 2019 01:20:50 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id a62sm21930094wmf.19.2019.06.05.01.20.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 01:20:49 -0700 (PDT)
Date: Wed, 5 Jun 2019 09:20:47 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605082047.GM4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
 <20190605075656.GC29637@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605075656.GC29637@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_012053_107665_192CA05B 
X-CRM114-Status: GOOD (  26.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: balbi@kernel.org, david.brown@linaro.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 wsa+renesas@sang-engineering.com, alokc@codeaurora.org,
 kramasub@codeaurora.org, linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNSBKdW4gMjAxOSwgSm9oYW4gSG92b2xkIHdyb3RlOgoKPiBPbiBXZWQsIEp1biAw
NSwgMjAxOSBhdCAwODoxNjoyNUFNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBUdWUs
IDA0IEp1biAyMDE5LCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gPiAKPiA+ID4gT24gVHVlIDA0
IEp1biAwMzo0NCBQRFQgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBUaGUg
UXVhbGNvbW0gR2VuaSBJMkMgZHJpdmVyIGN1cnJlbnRseSBwcm9iZXMgc2lsZW50bHkgd2hpY2gg
Y2FuIGJlCj4gPiA+ID4gY29uZnVzaW5nIHdoZW4gZGVidWdnaW5nIHBvdGVudGlhbCBpc3N1ZXMu
ICBBZGQgYSBsb3cgbGV2ZWwgKElORk8pCj4gPiA+ID4gcHJpbnQgd2hlbiBlYWNoIEkyQyBjb250
cm9sbGVyIGlzIHN1Y2Nlc3NmdWxseSBpbml0aWFsbHkgc2V0LXVwLgo+ID4gPiA+IAo+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiA+ID4g
LS0tCj4gPiA+ID4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMgfCAyICsrCj4g
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+ID4gPiAKPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmkuYyBiL2RyaXZlcnMv
aTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMKPiA+ID4gPiBpbmRleCAwZmE5M2I0NDhlOGQuLmUy
NzQ2NmQ3Nzc2NyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXFj
b20tZ2VuaS5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmku
Ywo+ID4gPiA+IEBAIC01OTgsNiArNTk4LDggQEAgc3RhdGljIGludCBnZW5pX2kyY19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiA+ICAJCXJldHVybiByZXQ7Cj4gPiA+
ID4gIAl9Cj4gPiA+ID4gIAo+ID4gPiA+ICsJZGV2X2luZm8oJnBkZXYtPmRldiwgIkdlbmktSTJD
IGFkYXB0b3Igc3VjY2Vzc2Z1bGx5IGFkZGVkXG4iKTsKPiA+ID4gPiArCj4gPiA+IAo+ID4gPiBJ
IHdvdWxkIHByZWZlciB0aGF0IHdlIGRvIG5vdCBhZGQgc3VjaCBwcmludHMsIGFzIGl0IHdvdWxk
IGJlIHRvIGFjY2VwdAo+ID4gPiB0aGUgZG93bnN0cmVhbSBiZWhhdmlvdXIgb2Ygc3BhbW1pbmcg
dGhlIGxvZyB0byB0aGUgcG9pbnQgd2hlcmUgbm8gb25lCj4gPiA+IHdpbGwgZXZlciBsb29rIHRo
cm91Z2ggaXQuCj4gPiAKPiA+IFdlIHNob3VsZCBiZSBhYmxlIHRvIGZpbmQgYSBtaWRkbGUgZ3Jv
dW5kLiAgU3BhbW1pbmcgdGhlIGxvZyB3aXRoIGFsbAo+ID4gc29ydHMgb2YgZGV2aWNlIHNwZWNp
ZmljIGluZm9ybWF0aW9uL2RlYnVnIGlzIG9idmlvdXNseSBub3QKPiA+IGNvbnN0cnVjdGl2ZSwg
YnV0IGEgc2luZ2xlIGxpbmVyIHRvIGFkdmVydGlzZSB0aGF0IGFuIGltcG9ydGFudAo+ID4gZGV2
aWNlL2NvbnRyb2xsZXIgaGFzIGJlZW4gc3VjY2Vzc2Z1bGx5IGluaXRpYWxpc2VkIGlzIG1vcmUg
aGVscGZ1bAo+ID4gdGhhbiBpdCBpcyBoaW5kZXJvdXMuCj4gPiAKPiA+IFRoaXMgcHJpbnQgd2Fz
IGFkZGVkIGR1ZSB0byB0aGUgc2lsZW50IGluaXRpYWxpc2F0aW9uIGNvc3RpbmcgbWUKPiA+IHNl
dmVyYWwgaG91cnMgb2YgZGVidWdnaW5nIEFDUEkgZGV2aWNlL2RyaXZlciBjb2RlIChhbGJlaXQg
bGVhcm5pbmcgYQo+ID4gbG90IGFib3V0IEFDUEkgYXMgSSBnbykganVzdCB0byBmaW5kIG91dCB0
aGF0IGl0IHdhcyBhbHJlYWR5IGRvaW5nIHRoZQo+ID4gcmlnaHQgdGhpbmcgLSBqdXN0IHZlcnkg
cXVpZXRseS4KPiAKPiBObywgd2UgZG9uJ3QgYWRkIG5vaXNlIGxpa2UgdGhpcyB0byB0aGUgbG9n
cyBqdXN0IGJlY2F1c2UgaXQgbWF5IGJlCj4gdXNlZnVsIHdoaWxlIGRlYnVnZ2luZy4gRXZlbiBv
bmUtbGluZXJzIGFkZCB1cC4KCk9uZSBsaW5lIHBlciBkZXZpY2UgaXMgc2hvdWxkIG5vdCBjYXVz
ZSBhbiBpc3N1ZS4KClByb2JsZW1zIG9jY3VyIHdoZW4gZGV2ZWxvcGVycyB0cnkgdG8gcHJpbnQg
YWxsIGtpbmRzIG9mIGRldmljZQpzcGVjaWZpY3MgdG8gdGhlIGJvb3QgbG9nLiAgQSBzaW1wbGUs
IHNpbmdsZSBsaW5lIGZvciBzdWNoIGFuCmltcG9ydGFudCBkZXZpY2UvY29udHJvbGxlciBoYXMg
bW9yZSBiZW5lZml0cyB0aGFuIGRyYXdiYWNrcy4KCj4gVGhlcmUgYXJlIHBsZW50eSBvZiBvcHRp
b25zIGZvciBkZWJ1Z2dpbmcgYWxyZWFkeSByYW5naW5nIGZyb20gYWRkaW5nIGEKPiB0ZW1wb3Jh
cnkgZGV2X2luZm8oKSB0byB0aGUgcHJvYmUgZnVuY3Rpb24gaW4gcXVlc3Rpb24gdG8gdXNpbmcg
ZHluYW1pYwo+IGRlYnVnZ2luZyB0byBoYXZlIGRyaXZlciBjb3JlIGxvZyBldmVyeSBzdWNjZXNz
ZnVsIHByb2JlLgoKVGhpcyBpcyB3aGF0IEkgZW5kZWQgdXAgZG9pbmcuICBJdCB3YXMgdGltZSBj
b25zdW1pbmcgdG8gcGFyc2UgdGhvdWdoCmEgbG9nIG9mIHRoYXQgc2l6ZSB3aGVuIHlvdSBoYXZl
IG5vIHBhZ2luZyBvciBrZXlib2FyZC4KCj4gQW5kIGluIHRoaXMgY2FzZSB5b3Ugc2F5IHRoZSBk
cml2ZXIgd2FzIGluIGZhY3QgYWxyZWFkeSBib3VuZDsgdGhhdCBjYW4KPiBlYXNpbHkgYmUgdmVy
aWZpZWQgdGhyb3VnaCBzeXNmcyB0b28gaW4gY2FzZSB0aGluZ3MgYXJlbid0IGJlaGF2aW5nIHRo
ZQo+IHdheSB5b3UgZXhwZWN0LgoKTm90IGluIGEgbm9uLWJvb3Rpbmcgc3lzdGVtIHdpdGggbm8g
a2V5Ym9hcmQgeW91IGNhbid0LiA7KQoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8g
U2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
