Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4172A6D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 21:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjaJUQNOVMVBZ7vPPCFuKCOf8ZdRqdFmmeJplNOa7oM=; b=OIm4Yq6l2jvEQ/
	f6U7E+JUf7oRO8rn2n86HAcw/xQO/TFICGKfGrK40MDEMrqfjnmYk4bDREYi7ov7ZPNHOn74Qq+35
	dRrtxkYVmE8pZcCwooqD/79vZ2zwGMRb+vtLBnR8VsNO/rDHkOgxCrSBIgM76B+2QYMtiPa9AexWt
	vNTOH4L+S5Qox1GA+iG4PfMsGanhPivJVwAGCOr3jVu7J4kQkPwM4cnth/weYS1PgZj9NeGQbns6D
	3JSq+cqCLlIL/FwbWODbTCzu2PQUNbZ1VVbPDeIfyzXRZVwzHUI+hTMx2nWz51CPU8rlu2XkUCHJA
	I98lM6QfqCsdBemt4mfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUckO-0001So-TG; Sat, 25 May 2019 19:54:28 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUckG-0001SI-K3
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 19:54:22 +0000
Received: by mail-oi1-x243.google.com with SMTP id a132so9411069oib.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 12:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MiFSpRCSp24Ovn+p+q+QqpmdaSoOgSym7akYhtXt+h8=;
 b=TAWdiDzE7CU0f6ehW5cYCYaClprWPXR9y9MbZYEbuUP4so0d7Zy5eRj+Ip6tvfu1Vt
 G+LwiVWoOX8FbqhTrbfH2oGSx8xN60n9Gs2Lu13dLEfN/ZuNBBT27nduRMVsDk6jjGVg
 dDBsELMenH0f4u3ulcDUylwIBz6NQjBJ4n2m+qObQeI4s+P/vqSTp0bZjT6ieX3dReLB
 7RzFP/ZDb+J6i91w88qxgQeR2NhYedJSkKE9CIJGfDWkNV0YZcMhBczI0Dst/fdh5F6i
 UCTb4Svj6/l1un1jEWM9CYU41RYR8NHKxia7YBUlGaK/0Gsg3/tdsyxjQ+gUt/fIowzS
 BGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MiFSpRCSp24Ovn+p+q+QqpmdaSoOgSym7akYhtXt+h8=;
 b=CR1TRAXQakwK8tnSUNMyaZ45fLEDBjZMwJDTcvUMJkCJo/S/ln63sc6Z3MF7BPET2a
 DXigUwi8gsyqe+z00zpfVKC+q84j9xyb9sKT0POq4Bpld7HhJWCYrS9CMGNKssVxRqtv
 xOHiSXAEU+4kFG+NCzS6lFKlN8JOIq5dHGh19JAqMvNnO9uxeuxBwtBqwrLKvhTHJwSQ
 abwbC2oObsLpR1xk6XAshPwnvklPyFuiF/OpJxlSbE1BvPb+BrweffSQyck6/9AJJnin
 AXvri1Z7Tq3bnDV446Be2s0CQcU0nVWKUlLyNFvtDjOim80C9ATqbna7uKUQrUXRyG2N
 +8/A==
X-Gm-Message-State: APjAAAWEsBWozS6QijpyRZP8oDwTNZGY0Ab/UpTmWFIgfABzrTYJvpfO
 qCDazzR2b6AJkYWykFYU5eAMLri9LAywGzev2zo=
X-Google-Smtp-Source: APXvYqxC3tWZGGyDyNmsSGvqCq/nSAwp9yvM8hPorR7bIHGAKxlyQ2kmVjiRL4SvmyG/zMD0uE/oyKHqvCch/0yfawg=
X-Received: by 2002:aca:38d4:: with SMTP id f203mr10741251oia.88.1558814059186; 
 Sat, 25 May 2019 12:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512221612.ubmknvim4utnqpl4@core.my.home>
 <CAEExFWv5A5mhpV7afQT=AaYx2ko5QnfbM6HvfuTgT1Na=ssOcw@mail.gmail.com>
 <20190516182936.h6xdzp3gtg4ikave@core.my.home>
 <CAEExFWvDO3wJd6wp1hFudf3EGF0NixgKAwAd5-b1=VLF+7-jCw@mail.gmail.com>
 <20190519142239.eolisexp5mrdyafz@core.my.home>
 <CAEExFWsc_YB8NORW4ULfuoicL=xr_oAdtHSaxz4ELv53qvCAsQ@mail.gmail.com>
In-Reply-To: <CAEExFWsc_YB8NORW4ULfuoicL=xr_oAdtHSaxz4ELv53qvCAsQ@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Sat, 25 May 2019 12:53:52 -0700
Message-ID: <CA+E=qVeq4XcQXo1vw-kYJ5eo94sF+n75ZM2kdF7szxOzZEGafQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_125420_663724_16654424 
X-CRM114-Status: GOOD (  41.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 bjorn.andersson@linaro.org, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 paulmck@linux.ibm.com, Stefan Wahren <stefan.wahren@i2se.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Andy Gross <andy.gross@linaro.org>,
 rui.zhang@intel.com, devicetree <devicetree@vger.kernel.org>,
 marc.w.gonzalez@free.fr, Eduardo Valentin <edubezval@gmail.com>,
 Olof Johansson <olof@lixom.net>, Rob Herring <robh+dt@kernel.org>,
 Jonathan.Cameron@huawei.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 enric.balletbo@collabora.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBNYXkgMjUsIDIwMTkgYXQgMTE6NDggQU0gRnJhbmsgTGVlIDx0aW55LndpbmR6ekBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gSEkgT25kxZllaiwKPgo+IE9uIFN1biwgTWF5IDE5LCAyMDE5
IGF0IDEwOjIyIFBNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gSGVsbG8gWWFuZ3RhbywKPiA+Cj4gPiBPbiBTYXQsIE1heSAxOCwgMjAxOSBhdCAxMjoz
NDo1N0FNICswODAwLCBGcmFuayBMZWUgd3JvdGU6Cj4gPiA+IEhJLAo+ID4gPgo+ID4gPiBPbiBG
cmksIE1heSAxNywgMjAxOSBhdCAyOjI5IEFNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3Vz
LmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBIaSBZYW5ndGFvLAo+ID4gPiA+Cj4gPiA+ID4g
dGhhbmsgeW91IGZvciB3b3JrIG9uIHRoaXMgZHJpdmVyLgo+ID4gPiA+Cj4gPiA+ID4gT24gRnJp
LCBNYXkgMTcsIDIwMTkgYXQgMDI6MDY6NTNBTSArMDgwMCwgRnJhbmsgTGVlIHdyb3RlOgo+ID4g
PiA+ID4gSEkgT25kxZllaiwKPiA+ID4gPiA+Cj4gPiA+ID4gPiBPbiBNb24sIE1heSAxMywgMjAx
OSBhdCA2OjE2IEFNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4g
PiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsvKiBUZW1wIFVuaXQ6IG1pbGxpZGVncmVlIENl
bHNpdXMgKi8KPiA+ID4gPiA+ID4gPiArc3RhdGljIGludCB0c2Vuc19yZWcydGVtcChzdHJ1Y3Qg
dHNlbnNfZGV2aWNlICp0bWRldiwKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW50IHJlZykKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gUGxlYXNlIG5hbWUgYWxsIGZ1
bmN0aW9ucyBzbyB0aGF0IHRoZXkgYXJlIG1vcmUgY2xlYXJseSBpZGVudGlmaWFibGUKPiA+ID4g
PiA+ID4gaW4gc3RhY2sgdHJhY2VzIGFzIGJlbG9uZ2luZyB0byB0aGlzIGRyaXZlci4gRm9yIGV4
YW1wbGU6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICAgc3VuOGlfdGhzX3JlZzJ0ZW1wCj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+IFRoZSBzYW1lIGFwcGxpZXMgZm9yIGFsbCB0c2Vuc18qIGZ1bmN0
aW9ucyBiZWxvdy4gdHNlbnNfKiBpcyB0b28KPiA+ID4gPiA+ID4gZ2VuZXJpYy4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiBEb25lIGJ1dCBubyBzdW44aV90aHNfcmVnMnRlbXAuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gdGhzX3JlZzJ0ZW0oKSBzaG91bGQgYmUgYSBnZW5lcmljIGZ1bmMuCj4gPiA+ID4gPiBJ
IHRoaW5rIGl0IHNob3VsZCBiZSBzdWl0YWJsZSBmb3IgYWxsIHBsYXRmb3Jtc++8jCBzbyBubyBw
bGF0Zm9ybSBwcmVmaXguCj4gPiA+ID4KPiA+ID4gPiBZb3UndmUgbWlzc2VkIG15IHBvaW50LiBU
aGUgZHJpdmVyIG5hbWUgaXMgc3VuOGlfdGhlcm1hbCBhbmQgaWYgeW91IGdldAo+ID4gPiA+IGFu
ZCBvb3BzIGZyb20gdGhlIGtlcm5lbCB5b3UnbGwgZ2V0IGEgc3RhY2sgdHJhY2Ugd2hlcmUgdGhl
cmUgYXJlIGp1c3QgZnVuY3Rpb24KPiA+ID4gPiBuYW1lcy4gSWYgeW91IHVzZSB0b28gZ2VuZXJp
YyBmdW5jdGlvbiBuYW1lcywgaXQgd2lsbCBub3QgYmUgY2xlYXIgd2hpY2gKPiA+ID4gPiBkcml2
ZXIgaXMgb29wc2luZy4KPiA+ID4gPgo+ID4gPiA+ICAgLSBzdW44aV90aHNfcmVnMnRlbXAgd2ls
bCB0ZWxsIHlvdSBtdWNoIG1vcmUgY2xlYXJseSB3aGVyZSB0byBzZWFyY2ggdGhhbgo+ID4gPiA+
ICAgLSB0aHNfcmVnMnRlbXAKPiA+ID4gPgo+ID4gPiA+IE9mIGNvdXJzZSB5b3UgY2FuIGFsd2F5
cyBncmVwLCBidXQgbW9zdCB0aGVybWFsIGRyaXZlcnMgYXJlIHRoZXJtYWwgc2Vuc29yICh0aHMp
Cj4gPiA+ID4gZHJpdmVycywgYW5kIGlmIG11bHRpcGxlIG9mIHRoZW0gdXNlZCB0aGlzIHRvby1n
ZW5lcmljIG5hbWluZyBzY2hlbWUgeW91J2QKPiA+ID4gPiBoYXZlIGhhcmQgdGltZSBkZWJ1Z2dp
bmcuCj4gPiA+ID4KPiA+ID4gPiBMb29rIGF0IG90aGVyIHRoZXJtYWwgZHJpdmVycy4gVGhleSB1
c3VhbGx5IGVuY29kZSBkcml2ZXIgbmFtZSBpbiB0aGUgZnVuY3Rpb24KPiA+ID4gPiBuYW1lcyB0
byBoZWxwIHdpdGggaWRlbnRpZmljYXRpb24gKGV2ZW4gaWYgdGhlc2UgYXJlIHN0YXRpYyBkcml2
ZXItbG9jYWwKPiA+ID4gPiBmdW5jdGlvbnMpLgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IENhbiB3ZSBj
aGFuZ2UgdG8gc3VueGlfdGhzXyBwcmVmaXg/Cj4gPgo+ID4gSXQgc2hvdWxkIHByb2JhYmx5IG1h
dGNoIHRoZSBkcml2ZXIgbmFtZSwgYnV0IHllcywgdGhhdCdzIGJldHRlci4KPiA+Cj4gPiA+ID4g
PiA+ID4gK3N0YXRpYyBpbnQgdHNlbnNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiA+ID4gPiA+ID4gPiArewo+ID4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCB0c2Vuc19kZXZp
Y2UgKnRtZGV2Owo+ID4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2
LT5kZXY7Cj4gPiA+ID4gPiA+ID4gKyAgICAgaW50IHJldDsKPiA+ID4gPiA+ID4gPiArCj4gPiA+
ID4gPiA+ID4gKyAgICAgdG1kZXYgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnRtZGV2KSwg
R0ZQX0tFUk5FTCk7Cj4gPiA+ID4gPiA+ID4gKyAgICAgaWYgKCF0bWRldikKPiA+ID4gPiA+ID4g
PiArICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ID4gPiArICAgICB0bWRldi0+ZGV2ID0gZGV2Owo+ID4gPiA+ID4gPiA+ICsgICAgIHRtZGV2LT5j
aGlwID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOwo+ID4gPiA+ID4gPiA+
ICsgICAgIGlmICghdG1kZXYtPmNoaXApCj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1
cm4gLUVJTlZBTDsKPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gKyAgICAgcmV0ID0gdHNl
bnNfaW5pdCh0bWRldik7Cj4gPiA+ID4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiA+ID4g
PiArICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+
ICsgICAgIHJldCA9IHRzZW5zX3JlZ2lzdGVyKHRtZGV2KTsKPiA+ID4gPiA+ID4gPiArICAgICBp
ZiAocmV0KQo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gV2h5IHNwbGl0IHRoaXMgb3V0IG9mIHByb2JlIGludG8gc2VwYXJhdGUg
ZnVuY3Rpb25zPwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ICsgICAgIHJldCA9IHRtZGV2LT5j
aGlwLT5lbmFibGUodG1kZXYpOwo+ID4gPiA+ID4gPiA+ICsgICAgIGlmIChyZXQpCj4gPiA+ID4g
PiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ID4gPiArICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCB0bWRldik7Cj4gPiA+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gPiA+ICsgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gPiA+ID4gK30KPiA+
ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gK3N0YXRpYyBpbnQgdHNlbnNfcmVtb3ZlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ID4gPiAr
ICAgICBzdHJ1Y3QgdHNlbnNfZGV2aWNlICp0bWRldiA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBk
ZXYpOwo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiArICAgICB0bWRldi0+Y2hpcC0+ZGlz
YWJsZSh0bWRldik7Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsgICAgIHJldHVybiAw
Owo+ID4gPiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICtzdGF0aWMg
aW50IHN1bjUwaV90aGVybWFsX2VuYWJsZShzdHJ1Y3QgdHNlbnNfZGV2aWNlICp0bWRldikKPiA+
ID4gPiA+ID4gPiArewo+ID4gPiA+ID4gPiA+ICsgICAgIGludCByZXQsIHZhbDsKPiA+ID4gPiA+
ID4gPiArCj4gPiA+ID4gPiA+ID4gKyAgICAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydCh0
bWRldi0+cmVzZXQpOwo+ID4gPiA+ID4gPiA+ICsgICAgIGlmIChyZXQpCj4gPiA+ID4gPiA+ID4g
KyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiAr
ICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUodG1kZXYtPmJ1c19jbGspOwo+ID4gPiA+ID4g
PiA+ICsgICAgIGlmIChyZXQpCj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBnb3RvIGFzc2Vy
dF9yZXNldDsKPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gKyAgICAgcmV0ID0gdHNlbnNf
Y2FsaWJyYXRlKHRtZGV2KTsKPiA+ID4gPiA+ID4gPiArICAgICBpZiAocmV0KQo+ID4gPiA+ID4g
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gSWYg
dGhpcyBmYWlscyAoaXQgbWF5IGxpa2VseSBmYWlsIHdpdGggRVBST0JFX0RFRkVSKSB5b3UgYXJl
IGxlYXZpbmcgcmVzZXQKPiA+ID4gPiA+ID4gZGVhc3NlcnRlZCwgYW5kIGNsb2NrIGVuYWJsZWQu
Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IE92ZXJhbGwsIEkgdGhpbmssIHJlc2V0L2Nsb2NrIG1h
bmFnZW1lbnQgYW5kIG52bWVtIHJlYWRpbmcgd2lsbCBiZSBjb21tb24KPiA+ID4gPiA+ID4gdG8g
YWxsIHRoZSBIVyB2YXJpYW50cywgc28gaXQgZG9lc24ndCBtYWtlIG11Y2ggc2Vuc2Ugc3BsaXR0
aW5nIGl0IG91dAo+ID4gPiA+ID4gPiBvZiBwcm9iZSBpbnRvIHNlcGFyYXRlIGZ1bmN0aW9ucywg
YW5kIG1ha2VzIGl0IG1vcmUgZXJyb3IgcHJvbmUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gT3VyIGxv
bmctdGVybSBnb2FsIGlzIHRvIHN1cHBvcnQgYWxsIHBsYXRmb3Jtcy4KPiA+ID4gPiA+IEJhY2lj
YWxsdCB0aGVyZSBpcyBhIGRpZmZlcmVuY3IgYmV0d2VlbiBlYWNoIGdlbmVyYXRpb24uCj4gPiA+
ID4gPiBTbyBJIGZlZWwgaXQgbmVjZXNzYXJ5IHRvIGlzb2xhdGUgdGhlc2UgZGlmZmVyZW5jZXMu
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gTWF5YmU6Cj4gPiA+ID4gPiBBdCBzb21lIHBvaW50LCB3ZSBj
YW4gZHJhdyBhIHBhcnQgb2YgdGhlIHB1YmxpYyBwYXJ0IGFuZCBwbGF0Zm9ybQo+ID4gPiA+ID4g
ZGlmZmVyZW5jZSBpbnRvIGRpZmZlcmVudAo+ID4gPiA+ID4gZmlsZXMuIHNvbWV0aGluZyBsaWtl
IHFjb20gdGhlcm1hbCBkcml2ZXIuCj4gPiA+ID4KPiA+ID4gPiBJIHVuZGVyc3RhbmQsIGJ1dCBJ
IHdyb3RlIHRocyBkcml2ZXJzIGZvciBIMy9INS9BODNUIGFuZCBpdCBzbyBmYXIgaXQgbG9va3Mg
bGlrZQo+ID4gPiA+IGFsbCBvZiB0aGVtIHdvdWxkIHNoYXJlIHRoZXNlIDMgY2FsbHMuCj4gPiA+
ID4KPiA+ID4gPiBZb3UnbGwgYmUgZW5hYmxpbmcgY2xvY2svcmVzZXQgYW5kIGNhbGxpYnJhdGlu
ZyBldmVyeXdoZXJlLiBTbyBwdXR0aW5nIHRoaXMgdG8KPiA+ID4gPiBwZXItU29DIGZ1bmN0aW9u
IHNlZW1zIHByZW1hdHVyZS4KPiA+ID4KPiA+ID4gSW4gZmFjdCwgZW5hbGJlIGFuZCBkaXNhYmxl
IGFyZSB0aGUgc3VzcGVuZCBhbmQgcmVzdW1lIGZ1bmN0aW9ucy4oUE0KPiA+ID4gY2FsbGJhY2sg
d2lsbCBiZSBhZGRlZCBpbiB0aGUgZnV0dXJlKQo+ID4gPiBXaGVuIGV4aXRpbmcgZnJvbSBzMnJh
bSwgdGhlIHJlZ2lzdGVyIHdpbGwgYmVjb21lIHRoZSBpbml0aWFsIHZhbHVlLgo+ID4gPiBXZSBu
ZWVkIHRvIGRvIGFsbCB0aGUgd29yaywgZW5hYmxpbmcgcmVzZXQvY2xrICxjYWxpYnJhdGluZyBh
bmQKPiA+ID4gaW5pdGlhbGl6aW5nIG90aGVyIHJlZy4KPiA+ID4KPiA+ID4gU28gSSB0aGluayBp
dCBpcyBubyBuZWVkIHRvIHB1dCBlbmFibGluZyByZXNldC9jbGsgYW5kIGNhbGlicmF0aW5nIHRv
Cj4gPiA+IHByb2JlIGZ1bmMsIGFuZCBJJ2QgbGlrZQo+ID4gPiB0byBrZWVwIGVuYWJsZSBhbmQg
ZGlzYWJsZSBmdW5jLgo+ID4KPiA+IEkga25vdywgSSBkb24ndCB0aGluayBpdCBuZWVkcyB0byBi
ZSBwZXItc29jLiBUaGVzZSBhY3Rpb25zIGFyZSBhbGwgc2hhcmVkIGJ5Cj4gPiBhbGwgU29Dcy4g
TWF5YmUgd2l0aCBhbiBleGNlcHRpb24gdGhhdCBzb21lIFNvQ3MgbWF5IG5lZWQgb25lIG1vcmUg
Y2xvY2ssIGJ1dAo+ID4gdGhhdCBjYW4gYmUgbWFkZSBvcHRpb25hbGx5LXJlcXVpcmVkIGJ5IHNv
bWUgZmxhZyBpbiBzdHJ1Y3Qgc3VueGlfdGhlcm1hbF9jaGlwLgo+ID4KPiA+IE9ubHkgaGlnaGx5
IFNvQyBzcGVjaWZpYyB0aGluZyBpcyBjb25maWd1cmluZyB0aGUgVEhTIHJlZ2lzdGVycyBmb3Ig
c2FtcGxpbmcKPiA+IGZyZXF1ZW5jeS9hdmVyYWdpbmcvZW5hYmxpbmcgaW50ZXJydXB0cy4gVGhl
IHJlc2V0L2Nsb2NrIGVuYWJsZSBpcyBnZW5lcmljLCBhbmQKPiA+IGFscmVhZHkgYWJzdHJhY3Rl
ZCBieSB0aGUgY2xvY2svcmVzZXQgZnJhbWV3b3JrLgo+ID4KPiA+IFNvIHdoYXQgSSBzdWdnZXN0
IGlzIGhhdmluZzoKPiA+Cj4gPiBzdW54aV90aHNfZW5hYmxlKCkKPiA+ICAgICAgICAgcmVzZXQg
ZGVhc3NlcnQKPiA+ICAgICAgICAgYnVzIGNsb2NrIHByZXBhcmUgZW5hYmxlCj4gPiAgICAgICAg
IG9wdGlvbmFsbHkgbW9kdWxlIGNsb2NrIHByZXBhcmUgZW5hYmxlIChpbiB0aGUgZnV0dXJlKQo+
ID4gICAgICAgICBjYWxsIHBlci1zb2MgY2FsaWJyYXRpb24KPiA+ICAgICAgICAgY2FsbCBwZXIt
c29jIHNldHVwIGNhbGxiYWNrCj4gPgo+ID4gc3VueGlfdGhzX2Rpc2FibGUoKQo+ID4gICAgICAg
ICByZXNldCBhc3NlcnQKPiA+ICAgICAgICAgYnVzIGNsb2NrIHVucHJlcGFyZSBkaXNhYmxlCj4g
PiAgICAgICAgIG9wdGlvbmFsbHkgbW9kdWxlIGNsb2NrIHVucHJlcGFyZSBkaXNhYmxlCj4gPgo+
ID4gQW5kIGlmIHlvdSBjb3VsZCBtb3ZlIGRldm1fbnZtZW1fY2VsbF9nZXQgdG8gcHJvYmUgdGhh
dCBzaG91bGQgbWFrZSBwZXItU29DCj4gPiBjYWxpYnJhdGlvbiBjYWxsYmFjayBhbHNvIGxlc3Mg
cmVwZXRpdGl2ZSBhbmQgY291bGQgYXZvaWQgdW5kb2luZyB0aGUgZW5hYmxlCj4gPiBpbiBjYXNl
IGl0IHJldHVybnMgRVBST0JFX0RFRkVSICh3aGljaCBpcyBwb3NzaWJsZSkuCj4gPgo+ID4gQWxs
IHRoaXMgc2hvdWxkIG1ha2UgaXQgZWFzaWVyIHRvIHN1cHBvcnQgUE0gaW4gdGhlIGZ1dHVyZSBh
bmQgYWRkIGxlc3MKPiA+IGN1bWJlcnNvbWUgdG8gYWRkIHN1cHBvcnQgZm9yIEE4M1QgYW5kIEgz
L0g1Lgo+ID4KPiA+IEJUVywgd2hhdCBhcmUgeW91ciBwbGFucyBmb3IgbW9yZSBTb0Mgc3VwcG9y
dD8gSSdkIGxpa2UgdG8gYWRkIHN1cHBvcnQgZm9yCj4gPiBBODNUIGFuZCBIMy9INSwgbWF5YmUg
ZXZlbiBkdXJpbmcgdGhlIDUuMyBjeWNsZSBpZiB0aGlzIGRyaXZlciBoYXBwZW5zIHRvIGxhbmQK
PiA+IGVhcmx5IGVub3VnaC4gSWYgeW91IGRvbid0IGhhdmUgYW55IHBsYW5zIEknbGwgdGFrZSBp
dCBvbi4KPiA+Cj4KPiBJIHBsYW4gdG8gc3VwcG9ydCBoMyBhbmQgYTMzIGxhdGVyLgo+IENhbiB5
b3Ugc3VwcG9ydCBvdGhlciBwbGF0Zm9ybXM/CgpJJ2xsIHdvcmsgb24gQTY0IG9uY2UgdGhpcyBk
cml2ZXIgbGFuZHMuCgo+IENoZWVycywKPiBZYW5ndGFvCj4KPiA+IHRoYW5rIHlvdSBhbmQgcmVn
YXJkcywKPiA+ICAgICAgICAgby4KPiA+Cj4gPiA+ID4KPiA+ID4gPiB0aGFuayB5b3UgYW5kIHJl
Z2FyZHMsCj4gPiA+ID4gICAgICAgICBvLgo+ID4gPiA+Cj4gPiA+ID4gPiBSZWdhcmRzLAo+ID4g
PiA+ID4gWWFuZ3Rhbwo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4g
PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
