Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB692A9D3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 14:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JLKE2d4ORcaSf5tujTnLw1zesLy8DKTo/Pq3CuYc00=; b=iN9ZYB6QhYRJ7L
	Tg0jwK/MaJ5KrKSeeWVuDoW4dezw+mt86x5Egb8usR1I1egvW85aL7f1zIymVM93cOiaBqaV+ua46
	FtOy7fVDB9javWiF/jPDMI1zhUaxIWXYig1IBOKi2ehW+q/ffzxCg/EAqePgZj7HIn6cvL5CsTkJI
	sWCsUOzXx/hJAXHW8QM0g9rNpUB6nNr8LO49eaRGrK/MicVInpLYMu62Ju/MdSVkltzm3v27wo4P7
	lZipvzszWVl+Yz6dQWQEbOqWNbVTy3uhjyCi/4AyD9DmCBsUuRwKhmybTuzIJivi98BLtVMcNFhzE
	ceUHtEH4UgSTSNRcJ0Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUsjU-0005SN-6N; Sun, 26 May 2019 12:58:36 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUsjM-0005RT-Bv
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 12:58:30 +0000
Received: by mail-it1-x144.google.com with SMTP id t184so5607717itf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 05:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=inQTV1Z0gJKzbwP6Z2SUXZUk5axOrsDl8jgpMomhBw0=;
 b=GO350rD9D39nyve7Hxv9YlVGqQNk4NLMXGeXRsTRnVyESPeO03TcRfW4bcxuB8x57m
 a6TUvYly2npSbut+4p5l1sYKG5rIu8itny7ijgSllmyHXfze9QH1boOXaz+DiyBan/Uo
 52uApQ2zH43rmlc3QuWC8EZ6q9AW9GqQMNDZKLxVcgg95gCdogf+rglA+p3WwuaG69Ri
 oD7rLa0ZOf1lU//XxGc2xWWZFEotBiqOUaNiKNCKmqTKnCkEn3OWqkMZni8X8fCLepRQ
 nPSSILhVbHUFFZ30hnfOohKxyTuk66xey2FuCrGeA+L0JS4xBhCxUwR8SvrkET4cNJNa
 bgIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=inQTV1Z0gJKzbwP6Z2SUXZUk5axOrsDl8jgpMomhBw0=;
 b=g+f0A3Uox72PDZOq68M6b9ZQqFSeKXJ7Qv25eBIOw0wzUk1HsmEGuxUXU2jTjkbihO
 Gzig8afZ/2wDO1F4ZoPC77hAt/+ETKtzvuedevxjlZFlyi7524pu2cLYLHHDtX/jmqEZ
 rcTeGM8QC1NKMfC8zW03W+e9d8qRhwUEA9CdnD+OrtD2uY3SWvDzQFZOn83WMxR1zVtN
 04FwsFCJxUnAb5lIh7KtqlJddvmHlORrS53CSB7j3ITN0b6Iz7KCz0/pKM8W2vCZzJAS
 512Cv8BBaZ5e9v4glafAf1TmqFbVmVZDWP/cO3w/Q0t9lJ5UTsrcFLBd3GKI6EDU4MRA
 Khdg==
X-Gm-Message-State: APjAAAVzbwhQAhiTHEMDoAHvlbarOl7FS/HnBF7OvTOP0K+E5Y5W+v92
 vCJqOKqME6b1AAtRbESUjRNOkgdo83Ia0ggzWTd6eg==
X-Google-Smtp-Source: APXvYqzeoIYFh+RLz4ra4CSSNh1VULShRpWGDrIz41W1gMP2WaH/WejFL5gpVrJiDfZfSN/uyYdJ0KvN1uIeWkGOyVY=
X-Received: by 2002:a24:910b:: with SMTP id i11mr27031774ite.76.1558875504923; 
 Sun, 26 May 2019 05:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <0ae6261e-96b3-cf8b-d523-a6b8851c951b@gmx.net>
 <CAKv9HNaJg3OB3DrC_aJe0M97dFP9A0_Jew_wFqReHvzDoFF+sg@mail.gmail.com>
In-Reply-To: <CAKv9HNaJg3OB3DrC_aJe0M97dFP9A0_Jew_wFqReHvzDoFF+sg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sun, 26 May 2019 14:58:12 +0200
Message-ID: <CAKv+Gu8fHfmMk63jzvtUGpHb=Nf1bzUvXay8_Hi4YTz=96pQNg@mail.gmail.com>
Subject: Re: usb: dwc2: RODATA_FULL_DEFAULT_ENABLED causes kernel oops
To: =?UTF-8?B?QW50dGkgU2VwcMOkbMOk?= <a.seppala@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_055828_542302_2CC25333 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>, Will Deacon <will.deacon@arm.com>,
 Stefan Wahren <wahrenst@gmx.net>, Minas Harutyunyan <hminas@synopsys.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyNiBNYXkgMjAxOSBhdCAxMjo0NSwgQW50dGkgU2VwcMOkbMOkIDxhLnNlcHBhbGFA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIFN1biwgMjYgTWF5IDIwMTkgYXQgMTM6MTEsIFN0ZWZh
biBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+IHdyb3RlOgo+ID4KPiA+IEhpLAo+ID4KPiA+IGkg
d2FudCB0byByZW1pbmQgYWJvdXQgYW4gaXNzdWUgd2hpY2ggd2FzIG9yaWdpbmFsbHkgcmVwb3J0
ZWQgYnkgV2F5bmUKPiA+IFBpZWthcnNraSBbMV0uIEknbSBhYmxlIHRvIHJlcHJvZHVjZSB0aGlz
IG9vcHMgd2l0aCBNYWlubGluZSBMaW51eCA1LjAuMgo+ID4gb24gYSBSYXNwYmVycnkgUGkgM0Ir
IChhcm02NC9kZWZjb25maWcpIGFuZCBhY2NvcmRpbmcgdG8gSmFuIEtyYXRvY2h2aWwKPiA+IFsy
XSB0aGlzIGFwcGxpZXMgdG8gNS4xLjAgYW5kIDUuMi4wLgo+ID4KPiA+IFRoZSBjcmFzaCBpcyBy
ZXByb2R1Y2libGUgc2luY2UgY29tbWl0IGM1NTE5MWU5NmNhICgiYXJtNjQ6IG1tOiBhcHBseQo+
ID4gci9vIHBlcm1pc3Npb25zIG9mIFZNIGFyZWFzIHRvIGl0cyBsaW5lYXIgYWxpYXMgYXMgd2Vs
bCIpLCBidXQgdGhlIHJvb3QKPiA+IGNhdXNlIG9mIHRoZSBjcmFzaCB3YXMgaW50cm9kdWNlZCBt
dWNoIGVhcmxpZXIgd2l0aCBjb21taXQgNTY0MDZlMDE3YTg4Cj4gPiAoInVzYjogZHdjMjogRml4
IERNQSBhbGlnbm1lbnQgdG8gc3RhcnQgYXQgYWxsb2NhdGVkIGJvdW5kYXJ5IikuCj4gPgo+ID4g
SSB0ZXN0ZWQgc3VjY2Vzc2Z1bGx5IHRoZSBmb2xsb3dpbmcgd29ya2Fyb3VuZHMgd2l0aCB0aGUg
UlBpIDNCKzoKPiA+Cj4gPiAxKSBEaXNhYmxlIFJPREFUQV9GVUxMX0RFRkFVTFRfRU5BQkxFRAo+
ID4KPiA+IDIpIHJldmVydCBjb21taXQgNTY0MDZlMDE3YTg4ICgidXNiOiBkd2MyOiBGaXggRE1B
IGFsaWdubWVudCB0byBzdGFydCBhdAo+ID4gYWxsb2NhdGVkIGJvdW5kYXJ5IikKPiA+Cj4gPiBJ
dCB3b3VsZCBiZSBuaWNlIGlmIHNvbWVvbmUgY2FuIGNvbWUgdXAgd2l0aCBhIHByb3BlciBzb2x1
dGlvbi4KPiA+Cj4gPiBSZWdhcmRzCj4gPiBTdGVmYW4KPiA+Cj4gPiBbMV0gLSBodHRwczovL21h
cmMuaW5mby8/bD1saW51eC11c2ImbT0xNTU0NDAyNDM3MDI2NTAmdz0yCj4gPiBbMl0gLSBodHRw
czovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIwMzE0OQo+ID4KPgo+IEhl
bGxvLgo+Cj4gVGhpcyBpcyBqdXN0IGEgc2hvdCBpbiB0aGUgZGFyayBidXQgaGF2ZSB5b3UgdHJp
ZWQgdG8gYXBwbHkgRE1BIGNhY2hlCj4gYWxpZ25tZW50IGlzc3VlIGZpeCBbMV0gYXMgYSB0aGly
ZCB3b3JrYXJvdW5kIGFsdGVybmF0aXZlPwo+IElmIGl0IGhlbHBzIHRoZSBmaXggc2hvdWxkIGJl
IG1lcmdlZCB1cHN0cmVhbS4KPgoKSXMgdHJhbnNmZXJfYnVmZmVyX2xlbmd0aCBndWFyYW50ZWVk
IHRvIGJlIGEgbXVsdGlwbGUgb2YgdGhlIG1heApELWNhY2hlIGxpbmUgc2l6ZSBpbiB0aGUgc3lz
dGVtPyBJZiBub3QsIHlvdSB3aWxsIG5lZWQgdG8gZXhwbGljaXRseQpmbHVzaCB0aGUgY2FjaGUg
aW4gZHdjMl9hbGxvY19hbGlnbmVkX2J1ZmZlcigpIGFmdGVyIG1lbWNweSgpaW5nIHRoZQpvcmln
aW5hbCBidWZmZXIgYWRkcmVzcyBpbnRvIHRoZSBuZXdseSBhbGxvY2F0ZWQgYnVmZmVyLCBvciBz
dWJzZXF1ZW50CmNhY2hlIGludmFsaWRhdGlvbiBkb25lIGluIHRoZSBETUEgbGF5ZXIgbWF5IHdp
cGUgaXQuCgpBbHRlcm5hdGl2ZWx5LCB5b3UgY2FuIHJvdW5kIHVwIHRyYW5zZmVyX2J1ZmZlcl9s
ZW5ndGggdG8gYmUgYQptdWx0aXBsZSBvZiBMMV9DQUNIRV9CWVRFUywgZS5nLiwKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3VzYi9kd2MyL2hjZC5jIGIvZHJpdmVycy91c2IvZHdjMi9oY2QuYwppbmRl
eCBiNTBlYzM3MTRmZDguLjg0ZDQzNDM1ZDg2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy91c2IvZHdj
Mi9oY2QuYworKysgYi9kcml2ZXJzL3VzYi9kd2MyL2hjZC5jCkBAIC0yNDgwLDggKzI0ODAsOSBA
QCBzdGF0aWMgdm9pZCBkd2MyX2ZyZWVfZG1hX2FsaWduZWRfYnVmZmVyKHN0cnVjdCB1cmIgKnVy
YikKICAgICAgICAgICAgICAgIHJldHVybjsKCiAgICAgICAgLyogUmVzdG9yZSB1cmItPnRyYW5z
ZmVyX2J1ZmZlciBmcm9tIHRoZSBlbmQgb2YgdGhlIGFsbG9jYXRlZCBhcmVhICovCi0gICAgICAg
bWVtY3B5KCZzdG9yZWRfeGZlcl9idWZmZXIsIHVyYi0+dHJhbnNmZXJfYnVmZmVyICsKLSAgICAg
ICAgICAgICAgdXJiLT50cmFuc2Zlcl9idWZmZXJfbGVuZ3RoLCBzaXplb2YodXJiLT50cmFuc2Zl
cl9idWZmZXIpKTsKKyAgICAgICBtZW1jcHkoJnN0b3JlZF94ZmVyX2J1ZmZlciwKKyAgICAgICAg
ICAgICAgdXJiLT50cmFuc2Zlcl9idWZmZXIgKwpMMV9DQUNIRV9BTElHTih1cmItPnRyYW5zZmVy
X2J1ZmZlcl9sZW5ndGgpLAorICAgICAgICAgICAgICBzaXplb2YodXJiLT50cmFuc2Zlcl9idWZm
ZXIpKTsKCiAgICAgICAgaWYgKHVzYl91cmJfZGlyX2luKHVyYikpIHsKICAgICAgICAgICAgICAg
IGlmICh1c2JfcGlwZWlzb2ModXJiLT5waXBlKSkKQEAgLTI1MTIsNyArMjUxNSw3IEBAIHN0YXRp
YyBpbnQgZHdjMl9hbGxvY19kbWFfYWxpZ25lZF9idWZmZXIoc3RydWN0CnVyYiAqdXJiLCBnZnBf
dCBtZW1fZmxhZ3MpCiAgICAgICAgICogcG9pbnRlci4gVGhpcyBhbGxvY2F0aW9uIGlzIGd1YXJh
bnRlZWQgdG8gYmUgYWxpZ25lZCBwcm9wZXJseSBmb3IKICAgICAgICAgKiBETUEKICAgICAgICAg
Ki8KLSAgICAgICBrbWFsbG9jX3NpemUgPSB1cmItPnRyYW5zZmVyX2J1ZmZlcl9sZW5ndGggKwor
ICAgICAgIGttYWxsb2Nfc2l6ZSA9IEwxX0NBQ0hFX0FMSUdOKHVyYi0+dHJhbnNmZXJfYnVmZmVy
X2xlbmd0aCkgKwogICAgICAgICAgICAgICAgc2l6ZW9mKHVyYi0+dHJhbnNmZXJfYnVmZmVyKTsK
CiAgICAgICAga21hbGxvY19wdHIgPSBrbWFsbG9jKGttYWxsb2Nfc2l6ZSwgbWVtX2ZsYWdzKTsK
QEAgLTI1MjMsNyArMjUyNiw3IEBAIHN0YXRpYyBpbnQgZHdjMl9hbGxvY19kbWFfYWxpZ25lZF9i
dWZmZXIoc3RydWN0CnVyYiAqdXJiLCBnZnBfdCBtZW1fZmxhZ3MpCiAgICAgICAgICogUG9zaXRp
b24gdmFsdWUgb2Ygb3JpZ2luYWwgdXJiLT50cmFuc2Zlcl9idWZmZXIgcG9pbnRlciB0byB0aGUg
ZW5kCiAgICAgICAgICogb2YgYWxsb2NhdGlvbiBmb3IgbGF0ZXIgcmVmZXJlbmNpbmcKICAgICAg
ICAgKi8KLSAgICAgICBtZW1jcHkoa21hbGxvY19wdHIgKyB1cmItPnRyYW5zZmVyX2J1ZmZlcl9s
ZW5ndGgsCisgICAgICAgbWVtY3B5KGttYWxsb2NfcHRyICsgTDFfQ0FDSEVfQUxJR04odXJiLT50
cmFuc2Zlcl9idWZmZXJfbGVuZ3RoKSwKICAgICAgICAgICAgICAgJnVyYi0+dHJhbnNmZXJfYnVm
ZmVyLCBzaXplb2YodXJiLT50cmFuc2Zlcl9idWZmZXIpKTsKCiAgICAgICAgaWYgKHVzYl91cmJf
ZGlyX291dCh1cmIpKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
