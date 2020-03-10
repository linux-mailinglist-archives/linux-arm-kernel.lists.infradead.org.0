Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7CB18028E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V85cGsiaoLu21FOpGLkPUKQim7/RbDJPlADFKshmMfA=; b=bBTVSfm6V7+JB7
	eejAprD+OoPN/GT1uU3HVl7bnY/rk+eEC1T76kgwPzox8Bxh7xE4ruHwDWgQVYMXRn1Dfqmq9PLUG
	t6H2AtvWcIonV7XDzNFeJHwiJK9MAPq6JDHhq03LXnCNWbWj/U8AK+bY7YHgKf+0K1DQV9qxVaHW/
	oafNB6FFHKdrqFudV4SVV/9yDw1mFTvUwv7wC6m6/kSCjGnkzN/DF9PstIlQh5lsJCCkSG+5xKhji
	+zMCMsQi2TGwp0ofsRj2vVReRPz/1BuvwgCHxgu2upxnWWJbb8vAEj7ecx0IBQAEoJIiQEHXFgCs+
	X9hHu89Zd3M5UQvi+EGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhEK-0003Am-3Q; Tue, 10 Mar 2020 15:55:40 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhEC-0003A0-Cs
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:55:34 +0000
Received: by mail-ot1-x344.google.com with SMTP id a6so5712006otb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TgqmscoWWwUwE2N+wjkp7klbD8Llg5aD9QxcbbWM91M=;
 b=SbYgGqz6Iv/cF2Xk6HbsmaZYROCsChtMTCZqVrowfSBNRknWfl4l1M2KOEsbDuDViG
 gz35NNiTeGIUs6AKuQ85hd+LpOAnbrCsiqXjdX8KQqXe7sYPAN3+qsNvVCKZfIlRisfw
 d8FdhZRhYobG0/brLgrhPttDTXvZDKY2co3aN4RN+AwRGvicLAZZiSbWUv4cmlcMSEYV
 y3pCA+lmAWxqQ1Zt2ktlka8bQcuydF8d6bzmMRc/6QhsiRaYsUAFs5SzkAyLyKI8wrmc
 s1TDcwRI8TNmjAenvUK7oftIL/kYKvWncS50htb8hL0Me+hB5c2JE7d9rw/gD2+mtj4P
 5H5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TgqmscoWWwUwE2N+wjkp7klbD8Llg5aD9QxcbbWM91M=;
 b=TFco9Jc8XEjWV1AwpVMnbTKZjtdbNht5qPpu1Fpj5v6AZW/11Gm7awm2kI4Vue+Wru
 SQKpn6drLUU3tGHFxsol3IvSmJK+OAUmut1f2hnpzDALz2T0Gu+9OUeZIeW6YXvxjLeg
 g0E41AAmopO/mApV+w6j2kI5/biPdWjzNdGvfanSy5UBamDmh6GD+U/NSBs2HKDkWU39
 8BiGdfudUSlZWQCWcojn10028Q8E0BXjPk5stQ0sBE8NcPgZHc8zW1dDTfNegn2nMNIj
 iWH2JYVes7zSPPuZot1+f/uWHXLehAiIXLKKnDXJzjjLa8jDiNmbPDfRxm8x3waUDHC/
 9NHg==
X-Gm-Message-State: ANhLgQ1dsxp79nbGQpdnKJmsRRiE3irma1aUpPFzVKoEtunCcplp/TXv
 NKfZhWdBJrI2ATY32S9qWkbJ+TOHCtTtma5bM8O4bQ==
X-Google-Smtp-Source: ADFU+vva3WOrofQsiULBwLdHFTnTgcGCFkvcJUnV+SV2B4eVtEQKOTmFmG4oUCa5cat2xXUgVCBlj6+tobSNOz5bcMI=
X-Received: by 2002:a9d:19e9:: with SMTP id k96mr17670341otk.68.1583855731083; 
 Tue, 10 Mar 2020 08:55:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-3-robert.foss@linaro.org>
 <20200310142652.GK1922688@smile.fi.intel.com>
In-Reply-To: <20200310142652.GK1922688@smile.fi.intel.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 10 Mar 2020 16:55:20 +0100
Message-ID: <CAG3jFyu5S1H=r6pV92tc_a2LoCUnhb0mDbOegP2BCO8a5C1nVg@mail.gmail.com>
Subject: Re: [v1 2/3] media: ov8856: Add devicetree support
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_085532_431821_DB8E4F98 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, ben.kao@intel.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, matthias.bgg@gmail.com, mchehab@kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5keSwKCk9uIFR1ZSwgMTAgTWFyIDIwMjAgYXQgMTU6MjYsIEFuZHkgU2hldmNoZW5rbwo8
YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWFy
IDEwLCAyMDIwIGF0IDAyOjQ2OjAyUE0gKzAxMDAsIFJvYmVydCBGb3NzIHdyb3RlOgo+ID4gQWRk
IGRldmljZXRyZWUgbWF0Y2ggdGFibGUsIGFuZCBlbmFibGUgb3Y4ODU2X3Byb2JlKCkKPiA+IHRv
IGluaXRpYWxpemUgcG93ZXIsIGNsb2NrcyBhbmQgcmVzZXQgcGlucy4KPgo+IC4uLgo+Cj4gPiAr
I2RlZmluZSBPVjg4NTZfTlVNX1NVUFBMSUVTIEFSUkFZX1NJWkUob3Y4ODU2X3N1cHBseV9uYW1l
cykKPgo+IFVzZSBBUlJBWV9TSVpFKCkgZGlyZWN0bHkuCgpBY2suCgo+Cj4gSGF2ZSB5b3Ugc2Vl
biBTYWthcmkncyBjb21tZW50cz8KPiBTYWthcmksIGRvIEkgaGF2ZSBkw6lqxIUgdnUgb3IgeW91
IGluZGVlZCBjb21tZW50ZWQgdGhpcyBkcml2ZXI/CgpZZXMsIEkgbWF5IGhhdmUgbWlzc2VkIHNv
bWUgcGFydCBvZiBpdCwgc28gcGxlYXNlIHRlbGwgbWUgaWYgSSBoYXZlLgoKVGhlcmUgaXMgYSBw
YXRjaHNldCBmbG9hdGluZyBhcm91bmQgdGhhdCBpbXBsZW1lbnRzIGEgbGFyZ2VyIGNodW5rIG9m
CmZ1bmN0aW9uYWxpdHksCmluY2x1ZGluZyBhIGNvdXBsZSBvZiBuZXcgbW9kZXMuIFRoaXMgaXMg
YmFzZWQgb24gdGhhdCBzZXJpZXMuCgo+Cj4gLi4uCj4KPiA+ICsgICAgIGdwaW9kX3NldF92YWx1
ZV9jYW5zbGVlcChvdjg4NTYtPm5fc2h1dGRuX2dwaW8sIEdQSU9EX09VVF9MT1cpOwo+Cj4gPiAr
ICAgICBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAob3Y4ODU2LT5uX3NodXRkbl9ncGlvLCBHUElP
RF9PVVRfSElHSCk7Cj4KPiBZZXMsIHNlZW1zIHRoaXMgb25lIGlzIGludmVydGVkLgo+Cj4gLi4u
Cj4KPiA+ICt7Cj4gPiArICAgICBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAob3Y4ODU2LT5uX3No
dXRkbl9ncGlvLCBHUElPRF9PVVRfTE9XKTsKPiA+ICsgICAgIHJlZ3VsYXRvcl9idWxrX2Rpc2Fi
bGUoT1Y4ODU2X05VTV9TVVBQTElFUywgb3Y4ODU2LT5zdXBwbGllcyk7Cj4gPiArICAgICBjbGtf
ZGlzYWJsZV91bnByZXBhcmUob3Y4ODU2LT54dmNsayk7Cj4gPiArfQo+ID4gKwo+ID4gKwo+Cj4g
T25lIGJsYW5rIGxpbmUgaXMgZW5vdWdoLgo+Cj4gLi4uCj4KPiA+ICsgICAgIG92ODg1Ni0+eHZj
bGsgPSBkZXZtX2Nsa19nZXQoJmNsaWVudC0+ZGV2LCAieHZjbGsiKTsKPiA+ICsgICAgIGlmIChJ
U19FUlIob3Y4ODU2LT54dmNsaykpIHsKPiA+ICsgICAgICAgICAgICAgZGV2X2VycigmY2xpZW50
LT5kZXYsICJmYWlsZWQgdG8gZ2V0IHh2Y2xrXG4iKTsKPiA+ICsgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7Cj4gPiArICAgICB9Cj4KPiBQcmV2aW91c2x5IGl0IHdvcmtlZCB3aXRob3V0IGNs
b2NrIHByb3ZpZGVyLCBub3cgeW91IG1ha2UgYSBkZXBlbmRlbmN5Lgo+Cj4gVGhpcyB3b24ndCB3
b3JrLgoKU28gdGhlIGlkZWFsIGJlaGF2aW9yIHdvdWxkIGJlIHRvIG9ubHkgdXNlIHRoZSB4Y2xr
IGlmIGl0IGlzIHByb3ZpZGVkPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
