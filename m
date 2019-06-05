Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77953359FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FglfkC+X51C8f9s/JAYpRO1MQANIdpocftRrBzdsdcU=; b=SojlSZgjEseSQv
	TLRGk2bFVTx17AsTLlYZ2Bq5qXu3o/mdTwoVX/e0qiMIw3iBAYHwE1A6wOgF451qdUCAjpZRtAcW3
	XAzwJvmR1GZ7hHSa6h5r611nCbiPmVHVnJuUhUQJOfWyH1zfUusBqfHblHXzZ2oimkkFSGCt3s+Dn
	twPENqQKm9e5GU+wEWB9jIXM18UFG9Cw0TbA2W1ANTs2oAYf1jwM2IKXTj8U3LTWEwmU6M/Zp0iLo
	nP4th5tzKw+S/aFnmMrlKG4PtuuQj6ynXznSANKX2LKcatilvxf/Xw8zI+Pwngwt1j9ejPtnn78Di
	ty8ba1zvOjOw0ZvXLUZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSdr-000330-Hl; Wed, 05 Jun 2019 09:55:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSdk-00032W-HS
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:55:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so1587696wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 02:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=T2lb6BFKyo6qFGuGkYXia4Pk+2dP0QxKBCkXd6OlypE=;
 b=CPgOTuOq7c9MOvfUWJ5q/1+tOxgwn+XFG+0Um2QDTbUUUZanzLWDdj11nBOM2fIwB7
 kEstullEcq59rr+WijeSFS9WnI3Qt9gjYsTf935hVMLJqfnOazzwxLxIHcji5TjkcosG
 Y9XeYmQEDs6JbYlcEA7MiiEoYVV0BhB9r3suWTxQwm2++AJs9fMMbvBXj41wWMXxBHMd
 Jf9fOl3L6hWXn6ofOl5x36eliDoR4Kpmq+BhUX/CuX//P1ZfkmcraAPARmc95tEHq9iI
 iCz+Nm6D2SuuWiuOfBEm9CAkUqn9XEWtOrlUjSO+W80Dvqivdf9+b0ODE40uSn7iXy5B
 3ZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=T2lb6BFKyo6qFGuGkYXia4Pk+2dP0QxKBCkXd6OlypE=;
 b=IKsz0V789iJ6AXblZ4uRbdjc+S1KwvI+HaH9SRKqxRJpSsHe5PowF3I05AgyvPXcTY
 xLA5gm5Sybhsxo3O3U1CVdESGl6G+fDpMGKQDufud3azzWi0SapY9ByWEptWjoumXNEo
 jyupJRJFV5as59jCqlTdUdaVzQIx8nrXN4iePQZhbNVzUZt8lYRbpeIKLspuy2iPeOxQ
 3txKCKT+Tqcgm95m/sUJfpJKBcaDX/oCTS4RpuHUjLPI1FJ/pNThhnfI/wOPSNWlsjHE
 2jlK7Xw5qD8vtLx2HLQ8JfMj+HiwpGawKgkhHOzKzH95FUgFx3fujhgcE6POvDtFQME5
 Fe9g==
X-Gm-Message-State: APjAAAU8EjFPpRNNOI+tXJKX8nDs9qSMCDXAdXGmEy+YVQLXqiMbSsbY
 D88EknI9ZROBCPxWxenb/Jqp7A==
X-Google-Smtp-Source: APXvYqwb15JLdo1InhCZA1cwpY0KvOYdXxpte37lxvn/nhB25qLp3J8HUS7DEBlgQIXew3zQcT8Cbw==
X-Received: by 2002:a1c:dc07:: with SMTP id t7mr15208355wmg.164.1559728526806; 
 Wed, 05 Jun 2019 02:55:26 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id z14sm7127245wre.96.2019.06.05.02.55.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 02:55:26 -0700 (PDT)
Date: Wed, 5 Jun 2019 10:55:24 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 6/8] usb: dwc3: qcom: Add support for booting with ACPI
Message-ID: <20190605095524.GS4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-6-lee.jones@linaro.org>
 <20190605063507.GM22737@tuxbook-pro> <20190605070928.GJ4797@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605070928.GJ4797@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_025528_602775_42485830 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

T24gV2VkLCAwNSBKdW4gMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBUdWUsIDA0IEp1biAy
MDE5LCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gCj4gPiBPbiBUdWUgMDQgSnVuIDAzOjQ0IFBE
VCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9k
d2MzL2R3YzMtcWNvbS5jIGIvZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYwo+ID4gWy4uXQo+
ID4gPiBAQCAtMzczLDcgKzQxNiw3IEBAIHN0YXRpYyBpbnQgZHdjM19xY29tX2Nsa19pbml0KHN0
cnVjdCBkd2MzX3Fjb20gKnFjb20sIGludCBjb3VudCkKPiA+ID4gIAo+ID4gPiAgCXFjb20tPm51
bV9jbG9ja3MgPSBjb3VudDsKPiA+ID4gIAo+ID4gPiAtCWlmICghY291bnQpCj4gPiA+ICsJaWYg
KCFjb3VudCB8fCBBQ1BJX0hBTkRMRShkZXYpKQo+ID4gPiAgCQlyZXR1cm4gMDsKPiA+IAo+ID4g
QWZhaWN0IHlvdSBjYWxsIHRoaXMgd2l0aCBjb3VudCA9IG9mX2NvdW50X3BoYW5kbGVfd2l0aF9h
cmdzKCksIHdoaWNoCj4gPiBzaG91bGQgYmUgMC4gQnV0IHdoeSBub3Qgc2tpcCBjYWxsaW5nIHRo
aXMgYXQgYWxsPwo+IAo+IEFjdHVhbGx5IGNvdW50IGNhbiBiZSA8MCwgd2hpY2ggaXMgd2h5IEkg
bXVzdCBoYXZlIG5lZWRlZCBpdCBhdCB0aGUKPiBiZWdpbm5pbmcuICBUaGVyZSBpcyBhbm90aGVy
IHBhdGNoIGluIHRoaXMgc2V0IHdoaWNoIGNoZWNrcyBmb3IKPiBlcnJvcnMsIHRodXMgdGhlIEFD
UElfSEFORExFKCkgY2FsbCBzaG91bGQgbm93IGJlIHN1cGVyZmx1b3VzLiAgSQo+IHdpbGwgdGVz
dCBhbmQgcmVtb3ZlIGl0LgoKSnVzdCBsb29rZWQgaW50byB0aGlzIC0gaXQgaXMgc3RpbGwgcmVx
dWlyZWQuCgpvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncygpIHJldHVybnMgYW4gZXJyb3Igbm90
IHRvIGJlIGhlZWRlZCBpbiB0aGUKQUNQSSBjYXNlLiAgU28gdGhlIGxvZ2ljIGdvZXM6CgpbVGhp
cyBwYXRjaF0KICogSXQncyBmaW5lIHRvIGJvb3QgRFQgd2l0aCBubyBjbG9ja3MgdG8gaW5pdGlh
bGlzZSAocmV0dXJuIDApCiAqIFRoZXJlIGFyZSBubyBjbG9ja3MgdG8gZW5hYmxlIHdoZW4gYm9v
dGluZyBBQ1BJIChyZXR1cm4gMCkKCltBbm90aGVyIHBhdGNoXQogKiBJdCdzIG5vdCBmaW5lIHRv
IGJvb3QgRFQgYW5kIGZvciAnY291bnQgPCAwJyAocmV0dXJuIGNvdW50KQoKPiA+ID4gIAlxY29t
LT5jbGtzID0gZGV2bV9rY2FsbG9jKGRldiwgcWNvbS0+bnVtX2Nsb2NrcywKPiA+ID4gQEAgLTQw
OSwxMiArNDUyLDI4IEBAIHN0YXRpYyBpbnQgZHdjM19xY29tX2Nsa19pbml0KHN0cnVjdCBkd2Mz
X3Fjb20gKnFjb20sIGludCBjb3VudCkKPiA+ID4gIAlyZXR1cm4gMDsKPiA+ID4gIH0KPiA+ID4g
IAo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkd2MzX2FjcGlfcGRhdGEgc2RtODQ1X2FjcGlf
cGRhdGEgPSB7Cj4gPiA+ICsJLnFzY3JhdGNoX2Jhc2Vfb2Zmc2V0ID0gU0RNODQ1X1FTQ1JBVENI
X0JBU0VfT0ZGU0VULAo+ID4gPiArCS5xc2NyYXRjaF9iYXNlX3NpemUgPSBTRE04NDVfUVNDUkFU
Q0hfU0laRSwKPiA+ID4gKwkuZHdjM19jb3JlX2Jhc2Vfc2l6ZSA9IFNETTg0NV9EV0MzX0NPUkVf
U0laRSwKPiA+ID4gKwkuaHNfcGh5X2lycV9pbmRleCA9IDEsCj4gPiA+ICsJLmRwX2hzX3BoeV9p
cnFfaW5kZXggPSA0LAo+ID4gPiArCS5kbV9oc19waHlfaXJxX2luZGV4ID0gMywKPiA+ID4gKwku
c3NfcGh5X2lycV9pbmRleCA9IDIKPiA+ID4gK307Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgYWNwaV9kZXZpY2VfaWQgZHdjM19xY29tX2FjcGlfbWF0Y2hbXSA9IHsKPiA+ID4g
Kwl7ICJRQ09NMjQzMCIsICh1bnNpZ25lZCBsb25nKSZzZG04NDVfYWNwaV9wZGF0YSB9LAo+ID4g
PiArCXsgfSwKPiA+ID4gK307Cj4gPiA+ICtNT0RVTEVfREVWSUNFX1RBQkxFKGFjcGksIGR3YzNf
cWNvbV9hY3BpX21hdGNoKTsKPiA+IAo+ID4gQW5hbG9nIHRvIG9mX2RldmljZV9nZXRfbWF0Y2hf
ZGF0YSgpIHRoZXJlIHNlZW1zIHRvIGJlIGEKPiA+IGFjcGlfZGV2aWNlX2dldF9tYXRjaF9kYXRh
KCksIGlmIHlvdSB1c2UgdGhpcyB5b3Ugc2hvdWxkIGJlIGFibGUgdG8KPiA+IGhhdmUgeW91IGFj
cGlfZGV2aWNlX2lkIGFycmF5IG5leHQgdG8gdGhlIG9mX2RldmljZV9pZC4KPiAKPiBEbyB5b3Ug
bWVhbiAiQW5hbG9nb3VzIj8KPiAKPiBJIHdpbGwgdHJ5IHRvIGdyb3VwIHRoZW0sIHRoYW5rcy4K
PiAKPiA+ID4gKwo+ID4gPiAgc3RhdGljIGludCBkd2MzX3Fjb21fcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiA+IAo+ID4gSXQgc2VlbXMgdGhhdCBhbGwgdGhhdCdzIGxlZnQg
dW5jb25kaXRpb25hbCBvbiBBQ1BJX0hBTkRMRSgpIGluIHRoaXMKPiA+IGZ1bmN0aW9uIGFyZSB0
aGUgb3B0aW9uYWwgcGllY2VzIGFuZCB0aGUgdGFpbC4gV291bGRuJ3QgaXQgYmUgY2xlYW5lciB0
bwo+ID4gc3BsaXQgaXQgb3V0IGluIGRpZmZlcmVudCBmdW5jdGlvbnM/Cj4gCj4gVGhlcmUgYXJl
IH41MCBsaW5lcyBvZiBzaGFyZWQgY29kZSBpbiBkd2MzX3Fjb21fcHJvYmUoKSwgbW9zdCBvZiBp
dCBpcwo+IGludGVyc3BlcnNlZCBiZXR3ZWVuIHRoZSBjb25maWd1cmF0aW9uIHRhYmxlIChEVCwg
QUNQSSkgcGllY2VzLCB3aGljaAo+IGlzIHdoeSBpdCdzIGZvcm1hdHRlZCBpbiB0aGUgY3VycmVu
dCB3YXkuCj4gCj4gSSBjYW4gc3BsaXQgYSBmZXcgdGhpbmdzIG91dCBpbnRvIHNlcGFyYXRlIGZ1
bmN0aW9ucyBpZiB5b3UgdGhpbmsKPiBpdCdsbCBoZWxwLgo+IAoKLS0gCkxlZSBKb25lcyBb5p2O
55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
