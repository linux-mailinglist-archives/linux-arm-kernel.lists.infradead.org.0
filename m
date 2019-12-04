Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5181122CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 07:10:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDsX8ZVnXPh7LdnUYT1rWVDYb/Ebf5mSuTXnOqakrXw=; b=BH5MynMEqB4T0z
	yEW77PTjPePJF2FlB0iRLHwNvMBj6IQCsYSi5zdq27xG5Ai72or1yzHQUjjddjALXJftxxF0y+rd9
	9Tc3lBsv9exvV3X9j9SepiHL611oF/YAyVlxwkOumfnZVe1Qcw10dyjtmuBkMdQOQvAe3yvGRhXHy
	HwU0boQkYVNGXJ+685/vwm2mh0t7nHrufm/OQ9JnOZr1OYAc0Oy0Lv88TcQat6BSp8fUYHsOa1wy/
	UELHwrg/vQdYq/BYDcogZHlMv9VIafNK4ohw0DAL7rd2XenYz7PO1aZVmb0oW7Lgw345L+Uy1twF+
	wXdlEf00+WYKPEQzyxRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icNrQ-0006nX-Ty; Wed, 04 Dec 2019 06:10:04 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icNrG-0006n1-9r
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 06:09:56 +0000
Received: by mail-io1-xd44.google.com with SMTP id i11so6640634iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 22:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4jzAFltpu0J+4vz8XE00BFWN2RjNCAxYJnQznX1Z+Xg=;
 b=jnGMJDQlP6VnaR/rzSND//h22uscV3GaIcecJmwnWbQyjfsWW2OzOZGBb6nidrLPsz
 CgyQchVePdI42BNGVg4L/9tRHTdxEhHvVewB7auycAq332EiEhADTSAzZ5+stzHyooLC
 mWLULsHZpkT79hQc8BKhGB10A6xIa/gGHEn/WYj3C8uG6rH7FCr/rYDzdFQQvKzdwuxd
 DGkSKg+WPk6M8yaWK/xbtQHxfzDRokFKyPBOO5lFwjlBI7wCc3E7vE6CxT8Si0wnXaen
 ARFz3euhhRKDEvWGeBBrpjlE0aIocRuFfdovElYHo9xvezzUtsQa2msR37o1w9K0Oeh7
 WE1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4jzAFltpu0J+4vz8XE00BFWN2RjNCAxYJnQznX1Z+Xg=;
 b=q0Kp7m9TIlg5EtuywOu77DU2VpWaA8se2RQRrDJDXoCDovkeTPRS4QUiYBfg6l6hrm
 RzcFTL/6yDt9HKHmxYR33B+PT7/cVohNOdY1oXOQKesWbU0NvrWKaTOyYeaHrHzzfd7H
 e5nUIPMNKVzS4cmXW/yygqOVhOCu7mMehz0fHkI/fxwtUG3YSil00gcahVWzloZ7twpM
 hbhT3uzUzVJWfPxct7oLp0iQpro0GB2NWC1PCn4Q7h1ryvuQwRKx3kyE/8SjVKNVg8+7
 mAVcMclNsGpzX72QkMLUU3pOuzihp7/A4gFNfOEcrjk5bsxpWcGganSCoNb74CiKgXWX
 TGKA==
X-Gm-Message-State: APjAAAWDz/j/z9wb5FX+orqdlzLMq5sWdbJZKsWOwX9w4a1F5Eo/DGhg
 NNZcwk5KeHN61ZrrQTaVRIEzLd5VzgNE3TGBhUS5Yg==
X-Google-Smtp-Source: APXvYqz4Pw88LRkEnmh2SH8eskVaSjidohBjwfV2t8JDl1TAfhGM8m+OJSmsI+r/sywEWrSf3mMBwpV5V2BEoOsl1lM=
X-Received: by 2002:a02:3309:: with SMTP id c9mr1560177jae.52.1575439792493;
 Tue, 03 Dec 2019 22:09:52 -0800 (PST)
MIME-Version: 1.0
References: <20191202144524.5391-1-jun.nie@linaro.org>
 <20191202144524.5391-3-jun.nie@linaro.org>
 <449968d8f085a1d1fcf4018bb8efe454fa35b3e3.camel@pengutronix.de>
 <CABymUCNDZSH+mB9TyyUBwgRu-qTRbgUv89va2HuBs4VeJWn6uA@mail.gmail.com>
 <5ca8ff65b8489195ef5349cd2d074d412c9d0036.camel@pengutronix.de>
In-Reply-To: <5ca8ff65b8489195ef5349cd2d074d412c9d0036.camel@pengutronix.de>
From: Jun Nie <jun.nie@linaro.org>
Date: Wed, 4 Dec 2019 14:09:41 +0800
Message-ID: <CABymUCORzaeaD--wPLSD66x1Y3StSW624u7LxykM_j-1bzWsXg@mail.gmail.com>
Subject: Re: [PATCH 2/3] reset: hisilicon: Extend reset operation type
To: Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_220954_550180_09D60C3C 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 sboyd@kernel.org, Michael Turquette <mturquette@baylibre.com>,
 yuehaibing@huawei.com, Wei Xu <xuwei5@hisilicon.com>,
 xuejiancheng@hisilicon.com, Rob Herring <robh+dt@kernel.org>,
 swinslow@gmail.com, opensource@jilayne.com, tglx@linutronix.de,
 linux-clk@vger.kernel.org, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4g5LqOMjAxOeW5tDEy5pyIM+aX
peWRqOS6jCDkuIvljYgxMDoxNeWGmemBk++8mgo+Cj4gSGkgSnVuLAo+Cj4gT24gVHVlLCAyMDE5
LTEyLTAzIGF0IDExOjUzICswODAwLCBKdW4gTmllIHdyb3RlOgo+IFsuLi5dCj4gPiBAQCAtNDgs
MTMgKzU2LDMzIEBAIHN0YXRpYyBpbnQgaGlzaV9yZXNldF9hc3NlcnQoc3RydWN0IHJlc2V0X2Nv
bnRyb2xsZXJfZGV2ICpyY2RldiwKPiA+ID4gPiAgICAgICB1MzIgb2Zmc2V0LCByZWc7Cj4gPiA+
ID4gICAgICAgdTggYml0Owo+ID4gPiA+Cj4gPiA+ID4gKyAgICAgZmxhZ3MgPSAoaWQgJiBISVNJ
X1JFU0VUX0ZMQUdfTUFTSykgPj4gSElTSV9SRVNFVF9GTEFHX1NISUZUOwo+ID4gPiA+ICsgICAg
IGlmIChmbGFncyAmIEhJU0lfQVNTRVJUX05PTkUpCj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1
cm4gLUVOT1RTVVBQOyAvKiBhc3NlcnQgbm90IHN1cHBvcnRlZCBmb3IgdGhpcyByZXNldCAqLwo+
ID4gPgo+ID4gPiBBcyBsb25nIGFzIC5hc3NlcnQgYW5kIC5kZWFzc2VydCBhcmUgdGhlIG9ubHkg
aW1wbGVtZW50ZWQgb3BlcmF0aW9ucyBmb3IKPiA+ID4gdGhpcyByZXNldCBjb250cm9sbGVyLCB0
aGlzIGRvZXMgbm90IG1ha2UgYW55IHNlbnNlIHRvIG1lLiBBcmUgdGhlcmUKPiA+ID4gcmVzZXRz
IHRoYXQgY2FuIG9ubHkgYmUgZGVhc3NlcnRlZD8KPiA+Cj4gPiBTb21lIHJlc2V0IGlzIGFzc2Vy
dGVkIG9uIHBvd2VyIG9uIGF1dG9tYXRpY2FsbHkuIFNvIG9ubHkgLmRlYXNzZXJ0IGlzIG5lZWRl
ZC4KPgo+IEJ1dCBpZiB0aGUgYml0IHdhcyBzZXQvY2xlYXJlZCBhZ2FpbiBhZnRlciBiZWluZyBk
ZWFzc2VydGVkLCB3b3VsZCBpdAo+IGFzc2VydCB0aGUgcmVzZXQgbGluZT8gQmFzaWNhbGx5LCBJ
IHdvbmRlciBpZiB0aG9zZSBiaXRzIGFyZSB3cml0ZS1vbmNlCj4gb3Igbm90LgoKSSBkaWQgbm90
IHNlZSB2ZW5kb3IncyBjb2RlIHRvIGNsZWFyIGl0LCBzZWVtcyB0aGUgYml0IGlzIG9ubHkgcG9s
bGVkCnRvIGJlIHNldCBvbiBldmVyeQpkZXZpY2UgZW5hYmxlbWVudC4KPgo+IFsuLi5dCj4gPiA+
ID4gKyAgICAgICAgICAgICBpZiAoZmxhZ3MgJiBISVNJX0FTU0VSVF9TRVQpCj4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiByZWFkbF9wb2xsX3RpbWVvdXQocnN0Yy0+bWVtYmFz
ZSArIG9mZnNldCwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZWcsIHJlZyAmIEJJVChiaXQpLCAwLCA1MDAwKTsKPiA+ID4gPiArICAgICAg
ICAgICAgIGVsc2UKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJlYWRsX3Bv
bGxfdGltZW91dChyc3RjLT5tZW1iYXNlICsgb2Zmc2V0LAo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZywgIShyZWcgJiBCSVQoYml0KSks
Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
MCwgNTAwMCk7Cj4gPiA+Cj4gPiA+IEFuZCB0aGlzIGlzIGVmZmVjdGl2ZWx5IGRlYWQgY29kZS4g
RG8geW91IHJlYWxseSBoYXZlIGhhcmR3YXJlIHRoYXQKPiA+ID4gYXNzZXJ0cyBvciBhc3NlcnRz
IGEgcmVzZXQgbGluZSBpbiByZWFjdGlvbiB0byBhIHJlYWQgYWNjZXNzPwo+ID4gPgo+ID4gPiBT
aG91bGQgSElTSV9BU1NFUlRfUE9MTCBhbmQgSElTSV9ERUFTU0VSVF9QT0xMIGJlIG11dHVhbGx5
IGV4Y2x1c2l2ZT8KPgo+IFRoaXMgaXMgbWlzc2luZyBhbiBleHBsYW5hdGlvbi4KClRoZXkgYXJl
IG5vdCBtdXR1YWxseSBleGNsdXNpdmUgaW4gbG9naWMuIEJ1dCBJIGRpZCBub3Qgc2VlIHRoZSBu
ZWVkCnRvIHBvbGwgZm9yIGEgYXNzZXJ0IHlldC4KPgo+IFsuLi5dCj4gPiA+ID4gKyAgICAgd3Jp
dGVsKHJlZywgcnN0Yy0+bWVtYmFzZSArIG9mZnNldCk7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICBz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZyc3RjLT5sb2NrLCBmbGFncyk7Cj4gPiA+ID4KPiA+ID4g
PiBAQCAtNjksMTMgKzk3LDMzIEBAIHN0YXRpYyBpbnQgaGlzaV9yZXNldF9kZWFzc2VydChzdHJ1
Y3QgcmVzZXRfY29udHJvbGxlcl9kZXYgKnJjZGV2LAo+ID4gPiA+ICAgICAgIHUzMiBvZmZzZXQs
IHJlZzsKPiA+ID4gPiAgICAgICB1OCBiaXQ7Cj4gPiA+ID4KPiA+ID4gPiArICAgICBmbGFncyA9
IChpZCAmIEhJU0lfUkVTRVRfRkxBR19NQVNLKSA+PiBISVNJX1JFU0VUX0ZMQUdfU0hJRlQ7Cj4g
PiA+ID4gKyAgICAgaWYgKGZsYWdzICYgSElTSV9ERUFTU0VSVF9OT05FKQo+ID4gPiA+ICsgICAg
ICAgICAgICAgcmV0dXJuIC1FTk9UU1VQUDsgLyogZGVhc3NlcnQgbm90IHN1cHBvcnRlZCBmb3Ig
dGhpcyByZXNldCAqLwo+ID4gPiA+ICsKPiA+ID4KPiA+ID4gQXJlIHRoZXJlIHJlc2V0cyB0aGF0
IGNhbiBvbmx5IGV2ZXIgYmUgYXNzZXJ0ZWQ/Cj4gPgo+ID4gSSBkbyBub3Qga25vdyB5ZXQuIE9u
bHkgZXh0ZW5kIHRoaXMgZHJpdmVyIHdpdGggYWxsIGNvbWJpbmF0aW9uIGluIGxvZ2ljLgo+Cj4g
SWYgdGhpcyBpcyBub3QgdXNlZCwgbGV0J3MgbGVhdmUgaXQgb3V0Lgo+Cj4gWy4uLl0KPiA+ID4g
PiBAQCAtMTAzLDcgKzE1MSw3IEBAIHN0cnVjdCBoaXNpX3Jlc2V0X2NvbnRyb2xsZXIgKmhpc2lf
cmVzZXRfaW5pdChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiA+ICAgICAgIHJz
dGMtPnJjZGV2Lm93bmVyID0gVEhJU19NT0RVTEU7Cj4gPiA+ID4gICAgICAgcnN0Yy0+cmNkZXYu
b3BzID0gJmhpc2lfcmVzZXRfb3BzOwo+ID4gPiA+ICAgICAgIHJzdGMtPnJjZGV2Lm9mX25vZGUg
PSBwZGV2LT5kZXYub2Zfbm9kZTsKPiA+ID4gPiAtICAgICByc3RjLT5yY2Rldi5vZl9yZXNldF9u
X2NlbGxzID0gMjsKPiA+ID4gPiArICAgICByc3RjLT5yY2Rldi5vZl9yZXNldF9uX2NlbGxzID0g
MzsKPiA+ID4KPiA+ID4gVGhpcyBicmVha3MgY3VycmVudCBkZXZpY2UgdHJlZXMgKGJlZm9yZSBw
YXRjaCAzKS4gWW91IGNhbiBtYWtlIHN1cmUKPiA+ID4gZGV2aWNlIHRyZWVzIHdpdGggI3Jlc2V0
LWNlbGxzID0gPDI+IGtlZXAgd29ya2luZyBieSBwYXJzaW5nIHRoZSAjcmVzZXQtCj4gPiA+IGNl
bGxzIGFuZCBzZXR0aW5nIHRoaXMgdmFsdWUgdG8gMiBmb3Igb2xkIERUcy4KPiA+Cj4gPiBBbGwg
Y3VycmVudCBkdHMgZmlsZSBhcmUgbW9kaWZpZWQgYWNjb3JkaW5nbHkuIEJ1dCBleGlzdGluZyBk
dGIgYmluYXJ5IHN1cHBvcnQKPiA+IGlzIGFuIGlzc3VlLiBEbyB5b3UgaGF2ZSBhbnkgc3VnZ2Vz
dGlvbj8KPgo+IFNpbmNlIHRoaXMgaXMgZm9yIGEgbmV3IFNvQywgeW91IHNob3VsZCBrZWVwIHVz
aW5nIG9mX3Jlc2V0X25fY2VsbHMgPSAyCj4gZm9yIHRoZSBjdXJyZW50IFNvQ3MgYW5kIG9ubHkg
c2V0IGl0IHRvIDMgZm9yIGEgbmV3IGNvbXBhdGlibGUsIGZvcgo+IGV4YW1wbGUgdXNpbmcgb2Zf
ZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkuCgpZZWFoLCB0aGlzIHNob3VsZCBiZSB0aGUgc29sdXRp
b24uIEkgd2lsbCBjaGVjayB0aGUgZGV0YWlsLCB0aGFua3MhCgpSZWdhcmRzLApKdW4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
