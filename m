Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6652221C75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 19:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1PeKKgLfe8YyO01oDgbj4dwSr90nekqm5hGQlrX/ts=; b=u5l+KAj17L25ER
	X9A/VzmuYkVPoC0+KeryVdIrR7rGS1SPuWqlJxBmN7qdt0AiJ2y8v7ZwfMwZ6lzwJHu9SUzBoMa38
	/JJBOv0uykjX/09Q7Nrng1XELuQ+2puzbgmsL6QjkjisnGQqd/sHtAySKNV3VBzOINCwqkLoJURM9
	fqxj8W+BXtHIRjw7MhiBPseVPKAl3ltderQqpBg4FKoB8v3d0bbNOUeGL1ASDLC3xm330QSkIlpKH
	xv/1IQSZCTqg2jt9hU4G4dmOEpjqeUlLQrGmSf33Sgtl8OHDuiLQGbIYFRxZKaqYTisGo+e2IkmkN
	riNAVeXh/MLl5P+iQ0/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRgeG-0003O9-OY; Fri, 17 May 2019 17:28:00 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRge8-0003NF-2f
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 17:27:53 +0000
Received: by mail-it1-x143.google.com with SMTP id u16so11461380itc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 10:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8ICI9CdfR+Sv6JXgOHP/5oOIpKavCtZL50883X2efRw=;
 b=f4wV8lPNseh7Fo79RC+jiQD8g9H/sL1IxsS3OB4PaJnsQsdm4AR617fEQuI9BFkj6c
 f5aDiGoJg91SJxZIBKQ1Y0wsogLz9A8cNw/rYVB5DC6jFHe0bHj1v5oAMKjc1Sminwp6
 Rr60ashoJRiDEFqwJU+zoFQzmhRClCnhuSlMLPzlfI3Jbb/TUGt8HTKHvjCSji4/upYd
 rcbmS3KKywLEEOgP2FT5o0lhatDAKBHN4Sse2rBjSEw6e9WQq6x4vX2TiQoL2kh7adl+
 efVJKln3csKNlFGlAd1lcLSo+zzsAZZIsiuREN+1p9L/NeDOfG1piVexmrO7PrBkzVXU
 MNNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8ICI9CdfR+Sv6JXgOHP/5oOIpKavCtZL50883X2efRw=;
 b=KUAOqxgEiTrqUAOj8M2FtO4VHcpPThRceU47CjVM52Lo72wuio9+naeBGKyj8hprsb
 F/NKiKyw8jBxP2z/2EmaOYcfBBLkJG3TPaqixqAcliGoirmLDZVH+++GM08AYlmCue3L
 fft/1Jp2r73bnT4Sugw4Gbhs1ueLbE0VX9eenO6utqjCoARaJbYhWZNxMLKlNEvFRine
 bSkaN7ATzdHVRdSeJJFs77bLFB0hwVPs2o4VHZ47gsTirvGXOsEa9kfCoYdcNMNAzPa4
 yRCbZ4+qQ9Z7ZdhTK7WzzI0D3drYmen/IHEaSFHgHlGgqPC1k5WFWsNvEfWT3/5coljc
 y5jQ==
X-Gm-Message-State: APjAAAVLi0OKP70l3ggAfX+ovoGs3ySQoyxkh7hiMirxKydfYJMLUelN
 J+NupLMV5TKkG1tqau2qVij4Z8lQiUr/AwLsS2A=
X-Google-Smtp-Source: APXvYqxGGY6AszlnM3hxh5GgSKjuChgf1o9wkHmEJUdEHLYWP1w6j+Lk8W0j7JyVaVmdjCGOzUC6vJPhgT9EpOorAec=
X-Received: by 2002:a02:a794:: with SMTP id e20mr36184091jaj.12.1558114070786; 
 Fri, 17 May 2019 10:27:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <CAEExFWvcMbiCJ4HD0UAtv1P6AuBJ=oUdmhu886BNZhrRz483Ug@mail.gmail.com>
 <20190517073634.izdmba3yqvxviyg3@flea>
In-Reply-To: <20190517073634.izdmba3yqvxviyg3@flea>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sat, 18 May 2019 01:27:39 +0800
Message-ID: <CAEExFWtNhTqLR+v3o6vn0Y4L65i_XsrEeiex6DNLEPEkhseCjA@mail.gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_102752_146189_7EA3CB38 
X-CRM114-Status: GOOD (  26.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Linux PM <linux-pm@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 Eduardo Valentin <edubezval@gmail.com>, enric.balletbo@collabora.com,
 robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, olof@lixom.net,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMzozNiBQTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlw
YXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDAxOjUx
OjU2QU0gKzA4MDAsIEZyYW5rIExlZSB3cm90ZToKPiA+ID4gPiArc3RydWN0IHN1bjUwaV90aGVy
bWFsX2NoaXAgewo+ID4gPiA+ICsgICAgIGludCAgICAgc2Vuc29yX251bTsKPiA+ID4gPiArICAg
ICBpbnQgICAgIG9mZnNldDsKPiA+ID4gPiArICAgICBpbnQgICAgIHNjYWxlOwo+ID4gPiA+ICsg
ICAgIGludCAgICAgZnRfZGV2aWF0aW9uOwo+ID4gPiA+ICsgICAgIGludCAgICAgdGVtcF9jYWxp
Yl9iYXNlOwo+ID4gPiA+ICsgICAgIGludCAgICAgdGVtcF9kYXRhX2Jhc2U7Cj4gPiA+ID4gKyAg
ICAgaW50ICAgICAoKmVuYWJsZSkoc3RydWN0IHRzZW5zX2RldmljZSAqdG1kZXYpOwo+ID4gPiA+
ICsgICAgIGludCAgICAgKCpkaXNhYmxlKShzdHJ1Y3QgdHNlbnNfZGV2aWNlICp0bWRldik7Cj4g
PiA+ID4gK307Cj4gPiA+Cj4gPiA+IEknbSBub3Qgc3VwZXIgZm9uZCBvZiBoYXZpbmcgYSBsb3Qg
b2YgcXVpcmtzIHRoYXQgYXJlIG5vdCBuZWVkZWQuIElmCj4gPiA+IHdlIGV2ZXIgbmVlZCB0aG9z
ZSBxdWlya3Mgd2hlbiBhZGRpbmcgc3VwcG9ydCBmb3IgYSBuZXcgU29DLCB0aGVuCj4gPiA+IHll
YWgsIHdlIHNob3VsZCB0b3RhbGx5IGhhdmUgc29tZSwgYnV0IG9ubHkgd2hlbiBhbmQgaWYgaXQn
cyBuZWVkZWQuCj4gPiA+Cj4gPiA+IE90aGVyd2lzZSwgdGhlIGRyaXZlciBpcyBtb3JlIGNvbXBs
aWNhdGVkIGZvciBubyBwYXJ0aWN1bGFyIHJlYXNvbi4KPiA+Cj4gPiBUaGlzIGlzIHVuYXZvaWRh
YmxlIGJlY2F1c2Ugb2YgdGhlIGRpZmZlcmVuY2UgaW4gc29jLgo+Cj4gSSBrbm93LCBidXQgdGhp
cyBpc24ndCBteSBwb2ludC4KPgo+IE15IHBvaW50IGlzIHRoYXQgYXQgdGhpcyB0aW1lIG9mIHRo
ZSBkcml2ZXIgZGV2ZWxvcG1lbnQsIHdlIGRvbid0IGtub3cKPiB3aGF0IGlzIGdvaW5nIHRvIGJl
IG5lZWRlZCB0byBzdXBwb3J0IGFsbCBvZiB0aG9zZSBTb0NzLgo+Cj4gU29tZSBvZiB0aGUgcGFy
YW1ldGVycyB5b3UgYWRkZWQgbWlnaHQgbm90IGJlIG5lZWRlZCwgc29tZSBwYXJhbWV0ZXJzCj4g
bWlnaHQgYmUgbWlzc2luZywgd2UgZG9uJ3Qga25vdy4gU28gbGV0J3Mga2VlcCBpdCBzaW1wbGUg
Zm9yIG5vdy4KPgo+ID4gPiA+ICtzdGF0aWMgaW50IHRzZW5zX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gPiA+ID4gK3sKPiA+ID4gPiArICAgICBzdHJ1Y3QgdHNlbnNfZGV2
aWNlICp0bWRldjsKPiA+ID4gPiArICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2
Owo+ID4gPiA+ICsgICAgIGludCByZXQ7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIHRtZGV2ID0g
ZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCp0bWRldiksIEdGUF9LRVJORUwpOwo+ID4gPiA+ICsg
ICAgIGlmICghdG1kZXYpCj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+
ID4gPiArCj4gPiA+ID4gKyAgICAgdG1kZXYtPmRldiA9IGRldjsKPiA+ID4gPiArICAgICB0bWRl
di0+Y2hpcCA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgmcGRldi0+ZGV2KTsKPiA+ID4gPiAr
ICAgICBpZiAoIXRtZGV2LT5jaGlwKQo+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5W
QUw7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIHJldCA9IHRzZW5zX2luaXQodG1kZXYpOwo+ID4g
PiA+ICsgICAgIGlmIChyZXQpCj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4g
PiA+ICsKPiA+ID4gPiArICAgICByZXQgPSB0c2Vuc19yZWdpc3Rlcih0bWRldik7Cj4gPiA+ID4g
KyAgICAgaWYgKHJldCkKPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4g
Kwo+ID4gPiA+ICsgICAgIHJldCA9IHRtZGV2LT5jaGlwLT5lbmFibGUodG1kZXYpOwo+ID4gPiA+
ICsgICAgIGlmIChyZXQpCj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+
Cj4gPiA+ID4gKyAgICAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgdG1kZXYpOwo+ID4gPgo+
ID4gPiBZb3VyIHJlZ2lzdHJhdGlvbiBzaG91bGQgYmUgdGhlIHZlcnkgbGFzdCB0aGluZyB5b3Ug
ZG8uIE90aGVyd2lzZSwgeW91Cj4gPiA+IGhhdmUgYSBzbWFsbCB3aW5kb3cgd2hlcmUgdGhlIGdl
dF90ZW1wIGNhbGxiYWNrIGNhbiBiZSBjYWxsZWQsIGJ1dCB0aGUKPiA+ID4gZHJpdmVyIHdpbGwg
bm90IGJlIGZ1bmN0aW9uYWwgeWV0Lgo+ID4KPiA+IE5vLiBBbnl3YXksIHRocyBkYXRhIHFjcXVp
c2l0aW9uIGlzIG1zIGxldmVsLgo+Cj4gVGhhdCdzIGtpbmQgb2YgaXJyZWxldmFudC4gVGhlcmUn
cyBub3RoaW5nIHByZXZlbnRpbmcgZ2V0X3RlbXAgdG8gYmUKPiBjYWxsZWQgcmlnaHQgYXdheS4K
QXMgT25kxZllaiBzYWlkLAoKUmVnaXN0cmF0aW9uIGFmdGVyIGVuYWJsaW5nIHdpbGwgbGVhZCB0
byBjYWxsIHR6IHVwZGF0ZSBvbiBub24tcmVnaXN0ZXJlZCB0egpmcm9tIGFuIGludGVycnVwdCBo
YW5kbGVyLgoKPgo+ID4gPiA+ICsgICAgIHJldCA9IHRzZW5zX2NhbGlicmF0ZSh0bWRldik7Cj4g
PiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4g
PiA+ID4gKwo+ID4gPiA+ICsgICAgIC8qCj4gPiA+ID4gKyAgICAgICogY2xraW4gPSAyNE1Iego+
ID4gPiA+ICsgICAgICAqIFQgYWNxdWlyZSA9IGNsa2luIC8gKFNVTjUwSV9USFNfQ1RSTDBfVF9B
Q1EgKyAxKQo+ID4gPiA+ICsgICAgICAqICAgICAgICAgICA9IDIwdXMKPiA+ID4gPiArICAgICAg
Ki8KPiA+ID4gPiArICAgICByZWdtYXBfd3JpdGUodG1kZXYtPnJlZ21hcCwgU1VONTBJX1RIU19D
VFJMMCwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgU1VONTBJX1RIU19DVFJMMF9UX0FDUSg0
NzkpKTsKPiA+ID4gPiArICAgICAvKiBhdmVyYWdlIG92ZXIgNCBzYW1wbGVzICovCj4gPiA+ID4g
KyAgICAgcmVnbWFwX3dyaXRlKHRtZGV2LT5yZWdtYXAsIFNVTjUwSV9INl9USFNfTUZDLAo+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICBTVU41MElfVEhTX0ZJTFRFUl9FTiB8Cj4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgIFNVTjUwSV9USFNfRklMVEVSX1RZUEUoMSkpOwo+ID4gPiA+ICsgICAg
IC8qIHBlcmlvZCA9IChTVU41MElfSDZfVEhTX1BDX1RFTVBfUEVSSU9EICsgMSkgKiA0MDk2IC8g
Y2xraW47IH4xMG1zICovCj4gPiA+ID4gKyAgICAgcmVnbWFwX3dyaXRlKHRtZGV2LT5yZWdtYXAs
IFNVTjUwSV9INl9USFNfUEMsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgIFNVTjUwSV9INl9U
SFNfUENfVEVNUF9QRVJJT0QoNTgpKTsKPiA+ID4gPiArICAgICAvKiBlbmFibGUgc2Vuc29yICov
Cj4gPiA+ID4gKyAgICAgdmFsID0gR0VOTUFTSyh0bWRldi0+Y2hpcC0+c2Vuc29yX251bSAtIDEs
IDApOwo+ID4gPiA+ICsgICAgIHJlZ21hcF93cml0ZSh0bWRldi0+cmVnbWFwLCBTVU41MElfSDZf
VEhTX0VOQUJMRSwgdmFsKTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgcmV0dXJuIDA7Cj4gPiA+
ID4gKwo+ID4gPiA+ICthc3NlcnRfcmVzZXQ6Cj4gPiA+ID4gKyAgICAgcmVzZXRfY29udHJvbF9h
c3NlcnQodG1kZXYtPnJlc2V0KTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgcmV0dXJuIHJldDsK
PiA+ID4KPiA+ID4gQ2FuJ3Qgd2UgZG8gdGhhdCB3aXRoIHJ1bnRpbWVfcG0/Cj4gPgo+ID4gU2F2
aW5nIGVuZXJneSBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSBjb21wYXJlZCB0byBzeXN0ZW0gc2Vj
dXJpdHkuCj4KPiBJJ20gbm90IHN1cmUgd2hhdCB5b3UgbWVhbiBieSBzZWN1cml0eS4KClByb3Rl
Y3Qgc3lzdGVtIGhhcmR3YXJlIGZyb20gZGFtYWdlLgoKVGh4LApZYW5ndGFvCj4KPiBNYXhpbWUK
Pgo+IC0tCj4gTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJu
ZWwgZW5naW5lZXJpbmcKPiBodHRwczovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
