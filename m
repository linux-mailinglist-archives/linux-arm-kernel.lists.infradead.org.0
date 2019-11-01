Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B68EC1E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 12:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDkylbJNaTykAZfdS1pH1OjPtCpH2x2Qz/uUO0u7WKI=; b=DTzLFg/RXGJ0b0
	ZO0YwAz/AwAdZ1qL+7SkI1HVRbSz1M984IRBFkwV8tAQjFwunY3xxCBJ+L5O9T8XIJHEw97sFyd+d
	yWwbTqJhrimPgPQq3nqQZsgvT47/G0FZvvqsYD17A3nWcVaxlX58xDGE5JPTZbear++kS59vTNg0o
	GEX7dd7gTQWh8PZM1gyRPe+U4EA+3C8cENipB2tbz+5BYG0/Ca+Q/NWwRFQ2OSAvIK6erZXsNi5R9
	tcyo42MNnGKUvQfrj7Mhqgx9VLJJRK/Y1+XHl5quHaaYndjbyO8FszwRoXPee3w4JsKV+/QjFUO/P
	Q/N+MnCVB467J84aDDag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQV8i-00007P-8N; Fri, 01 Nov 2019 11:30:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQV8L-0008L8-3K
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 11:30:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id q13so9346725wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 04:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=R4syCX2+rbby40ZaE8PkjBwbJN5LlvdrVrHq+IDW1jU=;
 b=n24VmXW/yTXjtCdA3Z1LUPWdyiOR0bcu7P9XIcl3wtpiguJwpGnd9fT8UkKEGhCmMc
 GA/xtbtt1+v6DrROZxBAu3SN9A1eKIrPylD8W4hPw0PauGppqHNFsQwZKt8cLXrt/EM4
 fFO5Ztn+07HB5TUTUHp5bgontyK2W0sN7PXc5Ieog5bs9qBcJGH2ZukuhtN0a9KMvINn
 lcSCUiOdlKBhN/ry941KF6PuphPp643x8C7AiJ/bhcssieElDw0m18JG4MmR3Ge1FhDV
 cZ7yzoSlsAFEBeEntGn3XmvbXHZqV7KKQgBeQVmZzIeGS3dawa+o3C/CORFHkwxVwfge
 DdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=R4syCX2+rbby40ZaE8PkjBwbJN5LlvdrVrHq+IDW1jU=;
 b=N9PcsZ/K8lWL7u5zp1RYx9jIQrmMDCv7zjWrInQHl/Gxfk+5JXhUaaYPYwHzG/td0Z
 2TBLM6u50/ooT82KMbC996aDMeZ8YJ4sCszaXx8iGW7uU7+Vj9Xp2QJCK3ziVD1GNNQm
 e6cdZDBkdbZEjRKB9+YLJa+FbQltzygZsNq9schWLx53azQ/JcuCW1Z6nQ4XYpWrfQjH
 BK/VBNxIPcks8N2iKYIBXLRI8EzVhwIZweLDKnY3woANgp+0PyPT19bHce8jaD6MJRLw
 EBjPu/JOKT1cJEpcl26GnUUT8CPw7jJ9vuXyufxtSSSMpkl55cSJu3KlRc6xwUGq2XKk
 EdfQ==
X-Gm-Message-State: APjAAAX9R1bqixzKSxtKPGjnItJRSnFXfgFeOcMPMlBc2aSnPKWuzRaF
 BtoZTege07/PhhONl5ilS4XhXy0AEFAy95V27WKvX15tvUDSUA==
X-Google-Smtp-Source: APXvYqyM/mqK/VWcCqRMAYxiKZnA437b7QfAY99b1X5lSRZ/Yi9364xcnYIHibsLYRCYUI2OcnfEaOxMv31oFWnTZcM=
X-Received: by 2002:a5d:63c1:: with SMTP id c1mr9800942wrw.332.1572607821817; 
 Fri, 01 Nov 2019 04:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
 <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
 <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
 <20190925110844.qfm5ris7xeze44th@gilmour>
 <CAJiuCcfcmkb_BgDcDJziUwoZXAgLN4Bh0GGZKR3NVNRpnFhBEQ@mail.gmail.com>
 <CA+E=qVeopby6zn1PBsOGb0JjA6-viTN_iXxRnWF6+NGtbZ_BtQ@mail.gmail.com>
In-Reply-To: <CA+E=qVeopby6zn1PBsOGb0JjA6-viTN_iXxRnWF6+NGtbZ_BtQ@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Fri, 1 Nov 2019 12:30:10 +0100
Message-ID: <CAJiuCcdZfbO+s2L-PcKA4PEm8B8=niYMO1w1nLVQ9hzq6Fjv=A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Vasily Khoruzhick <anarsoul@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_043025_237042_E72AF5E9 
X-CRM114-Status: GOOD (  37.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Harald Geyer <harald@ccbib.org>, Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkKCk9uIFRodSwgMzEgT2N0IDIwMTkgYXQgMjE6MzUsIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFy
c291bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgMTI6MTAg
UE0gQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4g
SGksCj4gPgo+ID4gSnVzdCBhIHJlbWFyayBoZXJlIGJ1dCB0aGUgaW50ZXJydXB0IGFyZSBmcm9t
IDE1MiB0byAxNTUgU1BJLgo+ID4gQnV0IHRoZXJlIGlzIGFuIG9mZnNldCBvZiAzMiBubyAocmVt
b3ZlIFNHSS9QUEkpPwo+ID4gVGhpcyBzaG91bGQgYmUgZnJvbSAxMjAgdG8gMTIzCj4KPiBJIGFs
cmVhZHkgdHJpZWQgaXQgKGFuZCBJIGJlbGlldmUgc29tZW9uZSBhbHJlYWR5IHN1Z2dlc3RlZCBp
dCBhYm92ZSksCj4gaXQgZG9lc24ndCBmaXggUE1VIGludGVycnVwdHMgdGhvdWdoLgoKT2sgdGhh
bmtzIGZvciB0aGUgY29uZmlybWF0aW9uLgoKTWFkZSBhIHJlc2VhcmNoIGFib3V0IHRoZSBQTVUg
Zm9yIEE2NCBhbmQgZm91bmQgdGhhdCBBbmRyZSBQcnp5d2FyYQptYWRlIGEgcGF0Y2ggdG8gZW5h
YmxlIGl0OgpodHRwczovL2dpc3QuZ2l0aHViLmNvbS9hcHJpdHplbC9kMDI1YWJhYTE0MjVmY2Fm
NTk5MWI1ZmZjZjE4YTBhMwoKTWF5YmUgaGUgY2FuIGNvbmZpcm0gb3Igbm90IHRoZSBpc3N1ZSBv
biBBNjQgPwoKUmVnYXJkcywKQ2zDqW1lbnQKCj4KPiA+IFJlZ2FyZHMsCj4gPiBDbMOpbWVudAo+
ID4KPiA+IE9uIFdlZCwgMjUgU2VwIDIwMTkgYXQgMTM6MDksIE1heGltZSBSaXBhcmQgPG1yaXBh
cmRAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIE1vbiwgU2VwIDIzLCAyMDE5IGF0
IDA0OjU1OjU5UE0gLTA3MDAsIFZhc2lseSBLaG9ydXpoaWNrIHdyb3RlOgo+ID4gPiA+IE9uIE1v
biwgU2VwIDIzLCAyMDE5IGF0IDQ6NTEgUE0gVmFzaWx5IEtob3J1emhpY2sgPGFuYXJzb3VsQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gT24gTW9uLCBBdWcgMTIsIDIwMTkg
YXQgMTA6MzkgUE0gTWF4aW1lIFJpcGFyZAo+ID4gPiA+ID4gPG1heGltZS5yaXBhcmRAYm9vdGxp
bi5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBPbiBNb24sIEF1ZyAxMiwgMjAx
OSBhdCAxMTowMTo1MUFNIC0wNzAwLCBWYXNpbHkgS2hvcnV6aGljayB3cm90ZToKPiA+ID4gPiA+
ID4gPiBPbiBNb24sIEF1ZyAxMiwgMjAxOSBhdCAxOjA0IEFNIE1heGltZSBSaXBhcmQgPG1heGlt
ZS5yaXBhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
PiA+IE9uIFRodSwgQXVnIDA4LCAyMDE5IGF0IDEyOjU5OjA3UE0gLTA3MDAsIFZhc2lseSBLaG9y
dXpoaWNrIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiBPbiBUaHUsIEF1ZyA4LCAyMDE5IGF0IDk6
MjYgQU0gTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4g
PiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBPbiBXZWQsIEF1ZyAwNywgMjAx
OSBhdCAxMDozNjowOEFNIC0wNzAwLCBWYXNpbHkgS2hvcnV6aGljayB3cm90ZToKPiA+ID4gPiA+
ID4gPiA+ID4gPiA+IE9uIFdlZCwgQXVnIDcsIDIwMTkgYXQgNDo1NiBBTSBNYXhpbWUgUmlwYXJk
IDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gT24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDc6Mzk6
MjZQTSAtMDcwMCwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gT24gVHVlLCBBdWcgNiwgMjAxOSBhdCAyOjE0IFBNIFJvYmluIE11cnBoeSA8cm9iaW4u
bXVycGh5QGFybS5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IE9uIDIwMTktMDgtMDYgOTo1MiBwbSwgVmFzaWx5IEtob3J1
emhpY2sgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgQXVnIDYs
IDIwMTkgYXQgMToxOSBQTSBIYXJhbGQgR2V5ZXIgPGhhcmFsZEBjY2JpYi5vcmc+IHdyb3RlOgo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4+IFZhc2lseSBLaG9ydXpoaWNrIHdyaXRlczoKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4+PiBPbiBUdWUsIEF1ZyA2LCAyMDE5IGF0IDc6MzUgQU0gUm9iaW4gTXVycGh5IDxyb2Jpbi5t
dXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Pj4+Cj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Pj4+IE9uIDA2LzA4LzIwMTkgMTU6MDEsIFZhc2ls
eSBLaG9ydXpoaWNrIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4+Pj4gTG9v
a3MgbGlrZSBQTVUgaW4gQTY0IGlzIGJyb2tlbiwgaXQgZ2VuZXJhdGVzIG5vIGludGVycnVwdHMg
YXQgYWxsIGFuZAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4+Pj4gYXMgcmVzdWx0ICdw
ZXJmIHRvcCcgc2hvd3Mgbm8gZXZlbnRzLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4+
Pgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4+PiBEb2VzIHNvbWV0aGluZyBsaWtlICdw
ZXJmIHN0YXQgc2xlZXAgMScgYXQgbGVhc3QgY291bnQgY3ljbGVzIGNvcnJlY3RseT8KPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+Pj4gSXQgY291bGQgd2VsbCBqdXN0IGJlIHRoYXQgdGhl
IGludGVycnVwdCBudW1iZXJzIGFyZSB3cm9uZy4uLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gPj4+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Pj4gTG9va3MgbGlrZSBpdCBkb2Vz
LCBhdCBsZWFzdCByZXN1bHQgbG9va3MgcGxhdXNpYmxlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPj4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+IEknbSB1c2luZyBwZXJmIHN0
YXQgcmVndWxhcmx5IChjYWNoZSBiZW5jaG1hcmtzKSBhbmQgaXQgd29ya3MgZmluZS4KPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+PiBV
bmZvcnR1bmF0ZWx5IEkgd2Fzbid0IGF3YXJlIHRoYXQgcGVyZiBzdGF0IGlzIGEgcG9vciB0ZXN0
IGZvcgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4gdGhlIGludGVycnVwdHMgcGFydCBv
ZiB0aGUgbm9kZSwgd2hlbiBJIGFkZGVkIGl0LiBTbyBJJ20gbm90IHRvbwo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gPj4gc3VycHJpc2VkIEkgZ290IGl0IHdyb25nLgo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+IEhvd2V2ZXIs
IGl0IHdvdWxkIGJlIHVuZm9ydHVuYXRlIGlmIHRoZSBub2RlIGdvdCByZW1vdmVkIGNvbXBsZXRl
bHksCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+PiBiZWNhdXNlIHBlcmYgc3RhdCB3b3Vs
ZCBub3Qgd29yayBhbnltb3JlLiBNYXliZSB3ZSBjYW4gb25seSByZW1vdmUKPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4+IHRoZSBpbnRlcnJ1cHRzIG9yIGp1c3QgZml4IHRoZW0gZXZlbiBp
ZiB0aGUgSFcgZG9lc24ndCB3b3JrPwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBJJ20gbm90IGZhbWlsaWFyIHdpdGggUE1VIGRyaXZl
ci4gSXMgaXQgcG9zc2libGUgdG8gZ2V0IGl0IHdvcmtpbmcKPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gd2l0aG91dCBpbnRlcnJ1cHRzPwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFl1cCAtIHlvdSBnZXQgYSBncnVtcHkgbWVzc2Fn
ZSBmcm9tIHRoZSBkcml2ZXIsIGl0IHdpbGwgcmVmdXNlIHNhbXBsaW5nCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiBldmVudHMgKHRoZSBvbmVzIHdoaWNoIHdlcmVuJ3Qgd29ya2luZyBhbnl3
YXkpLCBhbmQgaWYgeW91IG1lYXN1cmUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGFueXRo
aW5nIGZvciBsb25nIGVub3VnaCB0aGF0IGEgY291bnRlciBvdmVyZmxvd3MgeW91J2xsIGdldCB3
b25reQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gcmVzdWx0cy4gQnV0IGZvciBjb3VudGlu
ZyBoYXJkd2FyZSBldmVudHMgb3ZlciByZWxhdGl2ZWx5IHNob3J0IHBlcmlvZHMKPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IGl0J2xsIHN0aWxsIGRvIHRoZSBqb2IuCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBJIHRyaWVkIHRvIGRyb3AgaW50
ZXJydXB0cyBjb21wbGV0ZWx5IGZyb20gdGhlIG5vZGUgYnV0ICdwZXJmIHRvcCcgaXMKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiBzdGlsbCBicm9rZW4uIFRob3VnaCBub3cgaW4gZGlmZmVyZW50
IHdheTogaXQgY29tcGxhaW5zICJjeWNsZXM6IFBNVQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+
IEhhcmR3YXJlIGRvZXNuJ3Qgc3VwcG9ydCBzYW1wbGluZy9vdmVyZmxvdy1pbnRlcnJ1cHRzLiBU
cnkgJ3BlcmYKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBzdGF0JyIKPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gSSBoYXZlIG5vIGlkZWEgaWYgdGhhdCdz
IHRoZSBjdWxwcml0LCBidXQgd2hhdCBpcyB0aGUgc3RhdGUgb2YgdGhlCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+IDB4MDkwMTAwMDAgcmVnaXN0ZXI/Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gV2hhdCByZWdpc3RlciBpcyB0aGF0IGFuZCBob3cgZG8gSSBjaGVj
ayBpdD8KPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+IEl0J3MgaW4gdGhl
IENQVVggQ29uZmlndXJhdGlvbiBibG9jaywgYW5kIHRoZSBiaXRzIGFyZSBsYWJlbGxlZCBhcyBD
UFUKPiA+ID4gPiA+ID4gPiA+ID4gPiBEZWJ1ZyBSZXNldC4KPiA+ID4gPiA+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+ID4gPiA+IEFuZCBpZiB5b3UgaGF2ZSBidXN5Ym94LCB5b3UgY2FuIHVzZSBk
ZXZtZW0uCj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IENQVVggY29uZmlndXJh
dGlvbiBibG9jayBpcyBhdCAweDAxNzAwMDAwIGFjY29yZGluZyB0byBBNjQgdXNlcgo+ID4gPiA+
ID4gPiA+ID4gPiBtYW51YWwsIGFuZCBwYXJ0aWN1bGFyIHJlZ2lzdGVyIHlvdSdyZSBpbnRlcmVz
dGVkIGluIGlzIGF0IDB4MDE3MDAwODAsCj4gPiA+ID4gPiA+ID4gPiA+IGl0cyB2YWx1ZSBpcyAw
eDExMTAxMTBGLgo+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiBCaXRzIDE2LTE5
IGFyZSBub3QgZGVmaW5lZCBpbiB1c2VyIG1hbnVhbCBhbmQgYXJlIG5vdCBzZXQuCj4gPiA+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gU29ycnksIEkgc29tZWhvdyB0aG91Z2h0IHRoaXMgd2Fz
IGZvciB0aGUgSDYuLi4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBJIGRvbid0IGhh
dmUgYW55IGlkZWEgdGhlbiA6Lwo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gT0ssIHNvIHdo
YXQgc2hvdWxkIHdlIGRvPyAncGVyZiB0b3AnLydwZXJmIHJlY29yZCcgd29yayBmaW5lIGlmIFBN
VQo+ID4gPiA+ID4gPiA+IG5vZGUgaXMgZHJvcHBlZCwgYnV0IHRoZXkgZG9uJ3Qgd29yayBpZiBQ
TVUgbm9kZSBpcyBwcmVzZW50IChldmVuIHdpdGgKPiA+ID4gPiA+ID4gPiBpbnRlcnJ1cHRzIGRy
b3BwZWQpLiBJJ2QgcHJlZmVyIHRvIGhhdmUgJ3BlcmYgdG9wJyBhbmQgJ3BlcmYgcmVjb3JkJwo+
ID4gPiA+ID4gPiA+IHdvcmtpbmcgaW5zdGVhZCBvZiAncGVyZiBzdGF0Jwo+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiBXZWxsLCBpdCBkb2Vzbid0IHdvcmsgc28gd2Ugc2hvdWxkIGp1c3QgcmVtb3Zl
IHRoZSBub2RlLCBhbmQgaWYKPiA+ID4gPiA+ID4gc29tZW9uZSB3YW50cyBpdCBiYWNrLCB0aGV5
IHNob3VsZCBmaWd1cmUgaXQgb3V0Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IEhleSBNYXhpbWUsCj4g
PiA+ID4gPgo+ID4gPiA+ID4gU28gY2FuIHlvdSBtZXJnZSB0aGlzIHBhdGNoPwo+ID4gPiA+Cj4g
PiA+ID4gQWRkZWQgbmV3IE1heGltZSdzIGVtYWlsIHRvIENDCj4gPiA+Cj4gPiA+IFF1ZXVlZCBh
cyBhIGZpeCBmb3IgNS40LCB0aGFua3MhCj4gPiA+IE1heGltZQo+ID4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdAo+ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiA+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
