Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B596CE7F12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 05:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkfVLmsHu1+HyHXReUrSASykelH6jrT+ESWQl+1WKFc=; b=geEt1MNFdWAEAD
	IXxdZRNLLuqQjXFOWZSZh4ViSgoaZ2T3psjgT+srurf8ixCAaGlxFcBnk9vws8xD7aL4/x7fV9ThC
	wW1PAyUuLHL0uKGSvqQlacBuX3AHv49GVBl+Tnmy5lEzp5xHiuS6q9XNXUmj9n6pUU+gltcRQmQBL
	vTPoSxeRtYLxwpmKCLrxiJKkQBwJSIvaKoPUAR1lC0RhWoHLXub0krugvcQkS6kYkXJlRWKarfzxH
	lVc+xTmBkdBopI0J6TLZRkq23EEqFEGnKhp0OtQgbZpOtuaTkAbqzwMIwrTXemPwvZDq77kYoyXYY
	pi+tl5dhnXU40//wn1ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPIxa-0001a5-3D; Tue, 29 Oct 2019 04:18:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPIxN-0001ZC-Kp
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 04:18:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id b25so8552905pfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 21:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=8w3+F/NRSYuWbxpxqVHy506WX7nChC3gJ2i3v/zu854=;
 b=G1vRPXC7mR/Hj3dOxKE0LnRjqCjOasSMLljE/JM3jCD1T+ALipbaQynyQs/p98r9WA
 RqeXtRuN3icbtDgKVriE585SkM8cwktgDfVMKt1WfURjxYPONABim6t/JLtyuscTIL+m
 yHTz5xJJrAxUWhdzfR8Kr2AwNgXPzT6aXxLff+Nz4CLFv6VGh0dFjTcZDg1aTI5Qvxax
 79HMixohdwwOXdf5ajRdU7zaRFRxup8Y7twrnKPYjGuD9lidXEMJdPcgQOejYTvJULsJ
 afsFo0dOnkGbPvSOKXoigUHzybOe8IjEisgQgV6ifxbbRlNoVl5Umzs17pgtPrlvg8rS
 KHQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8w3+F/NRSYuWbxpxqVHy506WX7nChC3gJ2i3v/zu854=;
 b=dbJumie3AevgB7RcLSx3izn1Gl4OaHoQM8PKWdApKeR1zpxWIiOn3iTVU0Bgryt6WD
 ih/+ucnNwBAP5NNjwJQEJVmur+5QAD0vvnS4fwium5LDF6Rp0HuIrbt9r2/u2UhRcgBV
 2+7f0ffz0LwCbVHJSK4FubBJN2wPOA7mPLZ38kTl+R+RMBfYRO+eekcS9RFvhF9T5Zq2
 VOjANz59FSl1CRaKE40U2WdFl7pEU1dw3WMb62hnRngFcWBJXukXPLHUBCNmekTYq/V+
 waZAXocnabuS1/wz4su2wFSzJNEQ/0xTAkFxGdjbqiaX7iM3s20+9ywTQ8gtx7dzlHgA
 n5Eg==
X-Gm-Message-State: APjAAAUTM8a6LlZ1HF/R0pwkYCv4uNNkvwD1ECfcqlJCJ6Yy7Cfzp13q
 RcfgbGes/njXwifjfN9vxHw=
X-Google-Smtp-Source: APXvYqzyOsDVc2pYvZW8V97U+norsDRTXZ2KH2nEwtSVP2VMGY8ysMCwrrssH8+4jkYcPx9rv8iuvA==
X-Received: by 2002:a63:4d0d:: with SMTP id a13mr20138350pgb.451.1572322688343; 
 Mon, 28 Oct 2019 21:18:08 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id f17sm14072917pgd.8.2019.10.28.21.18.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 21:18:06 -0700 (PDT)
Date: Mon, 28 Oct 2019 21:18:04 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: linux-sunxi@googlegroups.com, Hans de Goede <hdegoede@redhat.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [linux-sunxi] Re: [PATCH] input: sun4i-lradc-keys: Add wakup
 support
Message-ID: <20191029041804.GF57214@dtor-ws>
References: <20191028221502.3503543-1-megous@megous.com>
 <20191028233828.GA57214@dtor-ws>
 <20191028235626.5afvszxtppsieywi@core.my.home>
 <20191029001250.GB57214@dtor-ws>
 <20191029014559.gif3ay7anq24un2i@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029014559.gif3ay7anq24un2i@core.my.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_211809_706147_B0D20419 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMDI6NDU6NTlBTSArMDEwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gT24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDU6MTI6NTBQTSAtMDcwMCwgRG1pdHJ5
IFRvcm9raG92IHdyb3RlOgo+ID4gT24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTI6NTY6MjZBTSAr
MDEwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiA+IE9uIE1vbiwgT2N0IDI4LCAyMDE5IGF0
IDA0OjM4OjI4UE0gLTA3MDAsIERtaXRyeSBUb3Jva2hvdiB3cm90ZToKPiA+ID4gPiA+ICsKPiA+
ID4gPiA+ICsJZXJyb3IgPSBkZXZfcG1fc2V0X3dha2VfaXJxKGRldiwgaXJxKTsKPiA+ID4gPiA+
ICsJaWYgKGVycm9yKSB7Cj4gPiA+ID4gPiArCQlkZXZfZXJyKGRldiwgIkNvdWxkIG5vdCBzZXQg
d2FrZSBJUlFcbiIpOwo+ID4gPiA+ID4gKwkJcmV0dXJuIGVycm9yOwo+ID4gPiA+ID4gKwl9Cj4g
PiA+ID4gPiArCj4gPiA+ID4gCj4gPiA+ID4gSSB3b25kZXIgaWYgd2UgY291bGQgdGVhY2ggcGxh
dGZvcm0gZHJpdmVyIGNvcmUgdG8gaGFuZGxlIHRoaXMgZm9yIHVzLgo+ID4gPiAKPiA+ID4gTm90
IHN1cmUsIHNvbWUgZHJpdmVycyBkbyBlbmFibGUvZGlzYWJsZSB3YWtlX2lycSBieSBoYW5kIGlu
IHN1c3BlbmQvcmVzdW1lCj4gPiA+IGNhbGxiYWNrcywgc28gaXQgd291bGQgcHJvYmFibHkgbmVl
ZCB0byBiZSBvcHQtaW4gc29tZWhvdy4gSSBndWVzcyBjYWxsaW5nIHRoZQo+ID4gPiBmdW5jdGlv
biBsaWtlIHRoaXMgaXMgb25lIHdheSB0byBtYWtlIGl0IG9wdC1pbi4KPiA+ID4gCj4gPiA+IFRo
ZSBvdGhlciB3YXkgbWF5IGJlIGJ5IHBhc3NpbmcgYSBmbGFnIHNvbWV3aGVyZSwgbGlrZSB0bwo+
ID4gPiByZXF1ZXN0X3RocmVhZGVkX2lycS4gRGlkIHlvdSBoYXZlIHNvbWV0aGluZyBtb3JlIGNv
bmNyZXRlIGluIG1pbmQ/Cj4gPiAKPiA+IEkgdGhpbmsgaXQgaXMgcGVyZmVjdGx5IGZpbmUgdG8g
Y29udGludWUgdXNpbmcgZW5hYmxlX2lycV93YWtlIGFuZAo+ID4gZGlzYWJsZV9pcnFfd2FrZSBm
cm9tIHRoZSBkcml2ZXIgd2hpbGUgbWFya2luZyBpcnEgYXMgYmVpbmcgd2FrZSBpcnEKPiA+IGZv
cm0gdGhlIGNvcmUuCj4gCj4gSSBzZWUsIGl0IGxvb2tzIGxpa2UgaXJxX3NldF9pcnFfd2FrZSB3
aWxsIHRyYWNrIHRoZSBjYWxscyB2aWEgd2FrZV9kZXB0aAo+IAo+IGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2Uva2VybmVsL2lycS9tYW5hZ2UuYyNMNzE0Cj4g
Cj4gQnV0IGFsbCBpcnFzIGFyZSBub3QgbmVjZXNzYXJpbHkgd2FrZSBpcnFzLCBubz8gU28gaXQg
c3RpbGwgbWF5IG5lZWQgdG8gYmUKPiBvcHQtaW4gc29tZWhvdy4KCkkgdGhvdWdodCB3ZSdkIGRv
IHRoYXQgZm9yIElSUSBuYW1lZCAid2FrZWlycSIgb3IgdGhlIHZlcnkgZmlyc3QgSVJRIGlmCnRo
ZXJlIGlzIG5vIG5hbWVkIElSUSwgYW5kIHdoZW4gd2UgaGF2ZSB0aGUgIndha2V1cC1zb3VyY2Ui
IHByb3BlcnR5LApzaW1pbGFybHkgdG8gd2hhdCB3ZSBkbyBpbiBJMkMgYnVzLgoKVGhhbmtzLgoK
LS0gCkRtaXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
