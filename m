Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42394EFDCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:59:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzkoIgedze7bchNzeuWxrVgcld4dDB32nD/M67b7PjI=; b=XaXsKA5o/LoVQ9
	H9EZbPUfsJgjKPqPRuj63jglBhwlCKmOzd3JU4AMHsIFnvIAgGBRxNI+qXCFf9tCcDsxkpXdq+O2Y
	KGWXKQGE96r/duJYyTA47qadw3+QT4CSBsd7u7X8kSZ9z7HKgi2yXIzhg+WA1uB16FMqiB2XN7Kq4
	t+2wYeJPmZ1Qip10abRxASTLjgFETuJq0/FCCnIbMO3dulN9KWaHcjVvLFhe0i9J20S97br3Y25ZV
	wT/iYiUkzSnAtzGCdmx3faOZVuYjXcofuebErLxmJB/ObWDYGfvA+o0ZOLNXC3U+EbKkPBnl8vXgh
	t09jnnBy0zBAZHnMomiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyQB-0002c5-EO; Tue, 05 Nov 2019 12:58:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyQ0-0002bZ-SH
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:58:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id n1so21248960wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 04:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EbBVKTp3TAv641EyIKDqjqojRLx2ND1gdrPY2el5f7g=;
 b=VZEcu9xz9shvIsdGNSkSlsc2gfEgSSDku4HPpaR2nVZkeVS653tgcsFFeM+1PwScLP
 uFIfYRckoWBrGJj/vWEjitpWe1bSL/OrJuw3+IyUnQDUgQbv/Y2sSrm0SgHZMPoZhhGm
 t7L5sg80wT4jnLt3T3v0zzSvJqTYMq6YyTkr5ricx/VwzvdHFQ8cSyBmXRsrwGMR1O9q
 by6C/ug3oECowAguTc27m1SuyN9noC0lEEnQ99DqN+i/81ztkaXjcpGXGj7YAw6/8MeU
 +DxuWdodANOT+5MbUrtYDb6Tepg1inwTLNxSgy+5OBhXGRK1TrUpTW1gsM5f86B7+Tf9
 1SdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EbBVKTp3TAv641EyIKDqjqojRLx2ND1gdrPY2el5f7g=;
 b=AXMEHTDoKB0kDjvcP30EzP9LbEYPCLIl/xTw8qrS8KHfk3vBKd5oeIMMjp//D1EJsW
 wm9H0BdQKsnEhn3Vbpq5RXs8/AjmzgRjGAffNmuPyh//cnxRxv8RTOa0FLpEK1gqLWj1
 KM+NHW6DdreVethuP+PwWSxCazZZwW5OiCdCEkM+HhFsQWVZFAmE/SODtv1rZyHB9d9c
 nKhdoaBvKpKslUuuK/TI12ZYY7IBC7aSojhFbQwlNev8UsjSIbE2Q3JY4dq5f+qPxef9
 LJo1WaB+99WQ/HKk3T5vqwnmUbDxjQCf4xEQ7JO6qFYHmvN8Em1MaVPMv7Ju9tS04joc
 XjuQ==
X-Gm-Message-State: APjAAAXSGIcFBYQNSIqCxoV9cQ9AKukQgicNz9Kd2BmhHc+DAH/r4KxN
 qc45eZazy3k9U3vjB4cmWIwHByAd7FE2ajtTjss=
X-Google-Smtp-Source: APXvYqzXcIldjXyqcQeNIUogKwZf4MmDYxHvGPy9t8BV0gGj8v8HgjgDjpF+P0vtdFNp+pJ5lsj4oW7eNcIaJp/y7q0=
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr28130527wrw.167.1572958722979; 
 Tue, 05 Nov 2019 04:58:42 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-5-peron.clem@gmail.com>
 <20191104083835.m2pd4fvhn2ze6bjt@pengutronix.de>
 <CAJiuCccjgtMcJa-pZCB_DGN6L8m9bDTgQRoV6WUKPSjv8kn8vA@mail.gmail.com>
 <20191105072922.rku2of3cfphpfirq@pengutronix.de>
In-Reply-To: <20191105072922.rku2of3cfphpfirq@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 5 Nov 2019 13:58:31 +0100
Message-ID: <CAJiuCcdxvhra7L927UXMHHt3JZmWf8BCoWH4Jijyam2aEHfTPg@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_045844_943112_C198DBCC 
X-CRM114-Status: GOOD (  37.25  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVHVlLCA1IE5vdiAyMDE5IGF0IDA4OjI5LCBVd2UgS2xlaW5lLUvDtm5pZwo8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhpIENsw6ltZW50LAo+
Cj4gT24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMTA6Mjg6NTRQTSArMDEwMCwgQ2zDqW1lbnQgUMOp
cm9uIHdyb3RlOgo+ID4gT24gTW9uLCA0IE5vdiAyMDE5IGF0IDA5OjM4LCBVd2UgS2xlaW5lLUvD
tm5pZwo+ID4gPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+IE9u
IFN1biwgTm92IDAzLCAyMDE5IGF0IDA5OjMzOjMxUE0gKzAxMDAsIENsw6ltZW50IFDDqXJvbiB3
cm90ZToKPiA+ID4gPiBGcm9tOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5u
ZXQ+Cj4gPiA+ID4KPiA+ID4gPiBQV00gY29yZSBoYXMgYW4gb3B0aW9uIHRvIGJ5cGFzcyB3aG9s
ZSBsb2dpYyBhbmQgb3V0cHV0IHVuY2hhbmdlZCBzb3VyY2UKPiA+ID4gPiBjbG9jayBhcyBQV00g
b3V0cHV0LiBUaGlzIGlzIGFjaGlldmVkIGJ5IGVuYWJsaW5nIGJ5cGFzcyBiaXQuCj4gPiA+ID4K
PiA+ID4gPiBOb3RlIHRoYXQgd2hlbiBieXBhc3MgaXMgZW5hYmxlZCwgbm8gb3RoZXIgc2V0dGlu
ZyBoYXMgYW55IG1lYW5pbmcsIG5vdAo+ID4gPiA+IGV2ZW4gZW5hYmxlIGJpdC4KPiA+ID4gPgo+
ID4gPiA+IFRoaXMgbW9kZSBvZiBvcGVyYXRpb24gaXMgbmVlZGVkIHRvIGFjaGlldmUgaGlnaCBl
bm91Z2ggZnJlcXVlbmN5IHRvCj4gPiA+ID4gc2VydmUgYXMgY2xvY2sgc291cmNlIGZvciBBQzIw
MCBjaGlwLCB3aGljaCBpcyBpbnRlZ3JhdGVkIGludG8gc2FtZQo+ID4gPiA+IHBhY2thZ2UgYXMg
SDYgU29DLgo+ID4gPgo+ID4gPiBJIHRoaW5rIHRoZSAsIHNob3VsZCBiZSBkcm9wcGVkLgo+ID4g
Pgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0Bz
aW9sLm5ldD4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3B3bS9wd20tc3VuNGku
YyB8IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPiA+Cj4g
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20v
cHdtLXN1bjRpLmMKPiA+ID4gPiBpbmRleCBiNWU3YWMzNjRmNTkuLjI0NDE1NzQ2NzRkOSAxMDA2
NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiA+ICsrKyBiL2Ry
aXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiA+ID4gQEAgLTMsNiArMywxMCBAQAo+ID4gPiA+ICAg
KiBEcml2ZXIgZm9yIEFsbHdpbm5lciBzdW40aSBQdWxzZSBXaWR0aCBNb2R1bGF0aW9uIENvbnRy
b2xsZXIKPiA+ID4gPiAgICoKPiA+ID4gPiAgICogQ29weXJpZ2h0IChDKSAyMDE0IEFsZXhhbmRy
ZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBmcmVlLWVsZWN0cm9ucy5jb20+Cj4gPiA+ID4g
KyAqCj4gPiA+ID4gKyAqIExpbWl0YXRpb25zOgo+ID4gPiA+ICsgKiAtIFdoZW4gb3V0cHV0aW5n
IHRoZSBzb3VyY2UgY2xvY2sgZGlyZWN0bHksIHRoZSBQV00gbG9naWMgd2lsbCBiZSBieXBhc3Nl
ZAo+ID4gPiA+ICsgKiAgIGFuZCB0aGUgY3VycmVudGx5IHJ1bm5pbmcgcGVyaW9kIGlzIG5vdCBn
dWFyYW50ZWQgdG8gYmUgY29tcGxldGVkCj4gPiA+Cj4gPiA+IFR5cG86IGd1YXJhbnRlZCAgLT4g
Z3VhcmFudGVlZAo+ID4gPgo+ID4gPiA+ICAgKi8KPiA+ID4gPgo+ID4gPiA+ICAjaW5jbHVkZSA8
bGludXgvYml0b3BzLmg+Cj4gPiA+ID4gQEAgLTczLDYgKzc3LDcgQEAgc3RhdGljIGNvbnN0IHUz
MiBwcmVzY2FsZXJfdGFibGVbXSA9IHsKPiA+ID4gPgo+ID4gPiA+ICBzdHJ1Y3Qgc3VuNGlfcHdt
X2RhdGEgewo+ID4gPiA+ICAgICAgIGJvb2wgaGFzX3ByZXNjYWxlcl9ieXBhc3M7Cj4gPiA+ID4g
KyAgICAgYm9vbCBoYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0Owo+ID4gPiA+ICAgICAgIHVuc2ln
bmVkIGludCBucHdtOwo+ID4gPiA+ICB9Owo+ID4gPiA+Cj4gPiA+ID4gQEAgLTExOCw2ICsxMjMs
MjAgQEAgc3RhdGljIHZvaWQgc3VuNGlfcHdtX2dldF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNo
aXAsCj4gPiA+ID4KPiA+ID4gPiAgICAgICB2YWwgPSBzdW40aV9wd21fcmVhZGwoc3VuNGlfcHdt
LCBQV01fQ1RSTF9SRUcpOwo+ID4gPiA+Cj4gPiA+ID4gKyAgICAgLyoKPiA+ID4gPiArICAgICAg
KiBQV00gY2hhcHRlciBpbiBINiBtYW51YWwgaGFzIGEgZGlhZ3JhbSB3aGljaCBleHBsYWlucyB0
aGF0IGlmIGJ5cGFzcwo+ID4gPiA+ICsgICAgICAqIGJpdCBpcyBzZXQsIG5vIG90aGVyIHNldHRp
bmcgaGFzIGFueSBtZWFuaW5nLiBFdmVuIG1vcmUsIGV4cGVyaW1lbnQKPiA+ID4gPiArICAgICAg
KiBwcm92ZWQgdGhhdCBhbHNvIGVuYWJsZSBiaXQgaXMgaWdub3JlZCBpbiB0aGlzIGNhc2UuCj4g
PiA+ID4gKyAgICAgICovCj4gPiA+ID4gKyAgICAgaWYgKCh2YWwgJiBCSVRfQ0goUFdNX0JZUEFT
UywgcHdtLT5od3B3bSkpICYmCj4gPiA+ID4gKyAgICAgICAgIGRhdGEtPmhhc19kaXJlY3RfbW9k
X2Nsa19vdXRwdXQpIHsKPiA+ID4gPiArICAgICAgICAgICAgIHN0YXRlLT5wZXJpb2QgPSBESVZf
Uk9VTkRfQ0xPU0VTVF9VTEwoTlNFQ19QRVJfU0VDLCBjbGtfcmF0ZSk7Cj4gPiA+ID4gKyAgICAg
ICAgICAgICBzdGF0ZS0+ZHV0eV9jeWNsZSA9IHN0YXRlLT5wZXJpb2QgLyAyOwo+ID4gPiA+ICsg
ICAgICAgICAgICAgc3RhdGUtPnBvbGFyaXR5ID0gUFdNX1BPTEFSSVRZX05PUk1BTDsKPiA+ID4g
PiArICAgICAgICAgICAgIHN0YXRlLT5lbmFibGVkID0gdHJ1ZTsKPiA+ID4gPiArICAgICAgICAg
ICAgIHJldHVybjsKPiA+ID4gPiArICAgICB9Cj4gPiA+Cj4gPiA+IE5vdCBzdXJlIGhvdyB0aGUg
cmVzdCBvZiBzdW40aV9wd21fZ2V0X3N0YXRlIGJlaGF2ZXMsIGJ1dCBJIHdvdWxkIHByZWZlcgo+
ID4gPiB0byBsZXQgLmdldF9zdGF0ZSgpIHJvdW5kIHVwIHdoaWNoIHRvZ2V0aGVyIHdpdGggLmFw
cGx5X3N0YXRlKCkgcm91bmRpbmcKPiA+ID4gZG93biB5aWVsZHMgc291bmQgYmVoYXZpb3VyLgo+
ID4gT2sKPiA+ID4KPiA+ID4gPiArCj4gPiA+ID4gICAgICAgaWYgKChQV01fUkVHX1BSRVNDQUwo
dmFsLCBwd20tPmh3cHdtKSA9PSBQV01fUFJFU0NBTF9NQVNLKSAmJgo+ID4gPiA+ICAgICAgICAg
ICBzdW40aV9wd20tPmRhdGEtPmhhc19wcmVzY2FsZXJfYnlwYXNzKQo+ID4gPiA+ICAgICAgICAg
ICAgICAgcHJlc2NhbGVyID0gMTsKPiA+ID4gPiBAQCAtMjAzLDcgKzIyMiw4IEBAIHN0YXRpYyBp
bnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZp
Y2UgKnB3bSwKPiA+ID4gPiAgewo+ID4gPiA+ICAgICAgIHN0cnVjdCBzdW40aV9wd21fY2hpcCAq
c3VuNGlfcHdtID0gdG9fc3VuNGlfcHdtX2NoaXAoY2hpcCk7Cj4gPiA+ID4gICAgICAgc3RydWN0
IHB3bV9zdGF0ZSBjc3RhdGU7Cj4gPiA+ID4gLSAgICAgdTMyIGN0cmw7Cj4gPiA+ID4gKyAgICAg
dTMyIGN0cmwsIGNsa19yYXRlOwo+ID4gPiA+ICsgICAgIGJvb2wgYnlwYXNzOwo+ID4gPiA+ICAg
ICAgIGludCByZXQ7Cj4gPiA+ID4gICAgICAgdW5zaWduZWQgaW50IGRlbGF5X3VzOwo+ID4gPiA+
ICAgICAgIHVuc2lnbmVkIGxvbmcgbm93Owo+ID4gPiA+IEBAIC0yMTgsNiArMjM4LDE2IEBAIHN0
YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3
bV9kZXZpY2UgKnB3bSwKPiA+ID4gPiAgICAgICAgICAgICAgIH0KPiA+ID4gPiAgICAgICB9Cj4g
PiA+ID4KPiA+ID4gPiArICAgICAvKgo+ID4gPiA+ICsgICAgICAqIEFsdGhvdWdoIGl0IHdvdWxk
IG1ha2UgbXVjaCBtb3JlIHNlbnNlIHRvIGNoZWNrIGZvciBieXBhc3MgaW4KPiA+ID4gPiArICAg
ICAgKiBzdW40aV9wd21fY2FsY3VsYXRlKCksIHZhbHVlIG9mIGJ5cGFzcyBiaXQgYWxzbyBkZXBl
bmRzIG9uICJlbmFibGVkIi4KPiA+ID4gPiArICAgICAgKiBQZXJpb2QgaXMgYWxsb3dlZCB0byBi
ZSByb3VuZGVkIHVwIG9yIGRvd24uCj4gPiA+ID4gKyAgICAgICovCj4gPiA+ID4gKyAgICAgY2xr
X3JhdGUgPSBjbGtfZ2V0X3JhdGUoc3VuNGlfcHdtLT5jbGspOwo+ID4gPiA+ICsgICAgIGJ5cGFz
cyA9ICgoc3RhdGUtPnBlcmlvZCAqIGNsa19yYXRlID49IE5TRUNfUEVSX1NFQyAmJgo+ID4gPiA+
ICsgICAgICAgICAgICAgICAgc3RhdGUtPnBlcmlvZCAqIGNsa19yYXRlIDwgTlNFQ19QRVJfU0VD
ICsgY2xrX3JhdGUpICYmCj4gPiA+ID4gKyAgICAgICAgICAgICAgIHN0YXRlLT5lbmFibGVkKTsK
PiA+ID4KPiA+ID4gSSBndWVzcyB0aGUgY29tcGlsZXIgaXMgc21hcnQgZW5vdWdoIGhlcmUsIGJ1
dCBjaGVja2luZyBmb3IKPiA+ID4gc3RhdGUtPmVuYWJsZWQgaXMgY2hlYXBlciB0aGFuIHRoZSBv
dGhlciBjaGVja3MsIHNvIHB1dHRpbmcgdGhpcyBhdCB0aGUKPiA+ID4gc3RhcnQgb2YgdGhlIGV4
cHJlc3Npb24gc2VlbXMgc2Vuc2libGUuCj4gPiA+Cj4gPiA+IFRoZSBjb21tZW50IGRvZXNuJ3Qg
bWF0Y2ggdGhlIGNvZGUuIFlvdSBkb24ndCByb3VuZCB1cCBzdGF0ZS0+cGVyaW9kLgo+ID4gPiAo
VGhpcyBpcyBnb29kLCBwbGVhc2UgZml4IHRoZSBjb21tZW50LikgSSB0aGluayBkcm9wcGluZyB0
aGUgY2hlY2sKPiA+ID4KPiA+ID4gICAgICAgICBzdGF0ZS0+cGVyaW9kICogY2xrX3JhdGUgPCBO
U0VDX1BFUl9TRUMgKyBjbGtfcmF0ZQo+ID4gPgo+ID4gPiB3b3VsZCBiZSBmaW5lLCB0b28uCj4g
PiBPawo+ID4KPiA+ID4KPiA+ID4gSSdkIGxpa2UgdG8gaGF2ZSBhIGNoZWNrIGZvcgo+ID4gPgo+
ID4gPiAgICAgICAgIHN0YXRlLT5kdXR5X2N5Y2xlICogY2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VD
IC8gMiAmJgo+ID4gPiAgICAgICAgIHN0YXRlLT5kdXR5X2N5Y2xlICogY2xrX3JhdGUgPCBOU0VD
X1BFUl9TRUMKPiA+ID4KPiA+ID4gaGVyZS4gSWYgdGhpcyBpc24ndCB0cnVlIHJhdGhlciBkaXNh
YmxlIHRoZSBQV00gb3Igb3V0cHV0IGEgMTAwJSBkdXR5Cj4gPiA+IGN5Y2xlIHdpdGggYSBsYXJn
ZXIgcGVyaW9kLgo+ID4KPiA+IFdoeSBub3QganVzdCBoYXZpbmcgdGhlIGR1dHlfY3ljbGUgaXMg
NTAlIG9ubHkgPwo+ID4gc3RhdGUtPmR1dHlfY3ljbGUgKiAyID09IHN0YXRlLT5wZXJpb2Q7Cj4K
PiBZZWFoLCBmb3IgdGhlIGJ5cGFzcyBjYXNlIHlvdSBjYW4gb25seSBwcm92aWRlIGEgNTAlIGR1
dHkgY3ljbGUuIFRoZQo+IHByb2JsZW0geW91IGhhdmUgdG8gYWRkcmVzcyBpcyB0aGF0IHlvdSBj
YW5ub3QgcmVseSBvbiB5b3VyIGNvbnN1bWVyIHRvCj4gcmVxdWVzdCBvbmx5IDUwJSBkdXR5IGN5
Y2xlcy4gU28geW91IGhhdmUgdG8gaW1wbGVtZW50IHNvbWUgYmVoYXZpb3VyIGlmCj4geW91ciBj
b25zdW1lciByZXF1ZXN0cyBwZXJpb2QgPSAxIC8gY2xrX3JhdGUgYW5kIDIwJSBkdXR5IGN5Y2xl
LgoKU28geW91IHJlcXVlc3QgdG8gYWRkIGEgbmV3IHBhdGNoIGluIHRoaXMgc2VyaWVzIGZvciBm
aXhpbmcgdGhlIGFjdHVhbApQV00gYmVoYXZpb3IgYXQgY29ybmVyIGNhc2U/CgpUaGlzIHNlcmll
cyBqdXN0IHdhbnQgdG8gYWRkIGEgbmV3IGRldmljZSBhbmQgYSBuZXcgYnlwYXNzCmZ1bmN0aW9u
YWxpdHkgYW5kIEkgY2FuJ3QgbWVhc3VyZSB0aGUgb3V0cHV0IG9mIFBXTSBhbmQgdGVzdGluZyBp
dApwcm9wZXJseS4KQ2FuIHRoaXMgYmUgZG9uZSBpbiBhbm90aGVyIHBhdGNoL3NlcmllcyA/CgpS
ZWdhcmRzLApDbMOpbWVudAoKPgo+IFdoZXJlIEkgd2FudCB0byBnZXQgdGhlIHB3bSBmcmFtZXdv
cmsgYXMgYSB3aG9sZSBpcyB0byBsZXQgbG93bGV2ZWwKPiBkcml2ZXJzIHJvdW5kIGRvd24gYm90
aCBkdXR5X2N5Y2xlIGFuZCBwZXJpb2QgdG8gdGhlIG5leHQgcG9zc2libGUgdmFsdWVzCj4gaW4g
dGhlaXIgLmFwcGx5IGNhbGxiYWNrIHRvIGJlIGFibGUgdG8gcHJvdmlkZSBhIG1vcmUgdW5pZm9y
bSBiZWhhdmlvdXIKPiBmb3IgY29uc3VtZXJzLiBTbyBoZXJlIHRoaXMgd291bGQgbWVhbjoKPgo+
ICAtIDEgLyBjbGtfcmF0ZSA8PSBzdGF0ZS0+cGVyaW9kIDwgc21hbGxlc3QgdmFsdWUgd2l0aG91
dCBieXBhc3MgJiYKPiAgICAwIDw9IHN0YXRlLT5kdXR5X2N5Y2xlIDwgc3RhdGUtPnBlcmlvZCAv
IDIKPiAgICAgICAgID0+IHByb3ZpZGUgYSBjb25zdGFudCAwCj4KPiAgLSAxIC8gY2xrX3JhdGUg
PD0gc3RhdGUtPnBlcmlvZCA8IHNtYWxsZXN0IHZhbHVlIHdpdGhvdXQgYnlwYXNzICYmCj4gICAg
c3RhdGUtPnBlcmlvZCAvIDIgPD0gc3RhdGUtPmR1dHlfY3ljbGUgPCBzdGF0ZS0+cGVyaW9kCj4g
ICAgICAgICA9PiB1c2UgYnlwYXNzIG1vZGUgcHJvdmlkaW5nIDUwJSBkdXR5IGN5Y2xlCj4KPiAg
LSAxIC8gY2xrX3JhdGUgPD0gc3RhdGUtPnBlcmlvZCA8IHNtYWxsZXN0IHZhbHVlIHdpdGhvdXQg
YnlwYXNzICYmCj4gICAgc3RhdGUtPnBlcmlvZCA9PSBzdGF0ZS0+ZHV0eV9jeWNsZQo+ICAgICAg
ICAgPT4gcHJvdmlkZSBhIGNvbnN0YW50IDEKPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gLS0K
PiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5l
LUvDtm5pZyAgICAgICAgICAgIHwKPiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAg
ICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
