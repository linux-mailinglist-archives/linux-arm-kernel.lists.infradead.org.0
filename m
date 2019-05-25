Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49D72A69F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7QlzQX/iBfazgHq/Y2KnSOLRz+OOIHYuLGafXnawY1U=; b=mx3f2PPhNrL7ELpfS2dzCGRVNF
	dvDAL2O0c6W2FeSDLLANFa3ojm3aFvFnz8nlUYi2H4Kzuik923+lapC0zn5x6W/AmtxN3VOGVTiKt
	WDs32OWlHkmpDbctOpMtzu8SfmWbkYw9Hz/Wb1JpEPtWvkoT/YAfC1gx3rETUH3u1ZeMPkclfa5yA
	qTeOhoglAMveaKFX6iJRX8RWDgKitkyU3YiBDReuxCywmKpkzHBDDKyBvKAZjFHCNyl7Nq8tDawPi
	Uml6KPICz46QcGvx/vMoKtvoHODhMMuuKb07UGS7YsFAaJ7KQCaMnglFtafVjCQCCEmHHJLyhjWRS
	2qGszdyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbio-0003mK-7q; Sat, 25 May 2019 18:48:46 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbiU-0003VV-Q2
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:48:28 +0000
Received: by mail-it1-x143.google.com with SMTP id t184so3709297itf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sZoCbpozx2WzELJxdxaEDmEhop+Xro7Vi+HBCV+TS1o=;
 b=g0VlUeJTLjDj5kTn6r0gK/cmgEqbLqLXv/SixD12M7rAecVh4wyIoDyB1RIZZX1bNq
 XLZzlKhjoNlZTRqsXwAiyjiSA8j+2YKfYWaGWwMHigj9naufogTW+W09t2VTXJ1IgVop
 ezhiQ5R7WL0pj3/99Xxt9Xgl7KrlCfyKwKRsarGozt2fCLtwNeCf/6awYLoIDQBDZzar
 dnYzUd+rKaezLtLUlWf8Pr/7+zWAYQAuCCHGB3rScQ7vrjmbvBgAM3bwpApjMyjOEkxL
 kw7joZYoRDgo2uXv6tTjCNhrVmCo4XowRbYPNsw/IBGiiH8rtAktmYkE0c05OP3LFx0b
 U8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=sZoCbpozx2WzELJxdxaEDmEhop+Xro7Vi+HBCV+TS1o=;
 b=Q40wXxFZX6NPlXiE96dL8kxSmEOZCDdqvoLyc0M1T+a2N5FlzhGjdHORqaSTzinUF1
 TUoSXFJijMiytwLT5oDA8D/iaDkXDUld6RAa7ulRnshAjevXGkE8Hfg39rk0sAZLNJLH
 TTsBvyjGKxKWt+FNiyN45hPBAMIRTn+4jzjGHFzlhQGDv79/Hau4JdEJLAXuM6MEXtrI
 iNJtCy8jBjOxTMt09mNKHsF8S8LOmv5+fojm8Q7SjiwlhK0vsI2pMkdG6KageFMdU4DB
 uPF/XEThiBJOJP3Bm3mlddBd7N6HPUYtIMN1nULUUwiQaflFSZX1137G2RXNswsEhKQ6
 JziA==
X-Gm-Message-State: APjAAAV+6ik8j/enkYUMB1wQ4SIfL6Mq3+msbiWlaHD2swxuLAZDscjD
 4JhjMjnH+8V7Acm7KRRw2a1Rpgb8XyyCYPjYT4Y=
X-Google-Smtp-Source: APXvYqztVIy2Z3QZqJKHiF6I+2B4HprXc4s8f7rIl/bjVuS8V9KQ9z4GtrTMWDdHlIylrt/2fcxNBjuSxvgr6pbHjE4=
X-Received: by 2002:a02:cabb:: with SMTP id e27mr19684986jap.12.1558810105828; 
 Sat, 25 May 2019 11:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512221612.ubmknvim4utnqpl4@core.my.home>
 <CAEExFWv5A5mhpV7afQT=AaYx2ko5QnfbM6HvfuTgT1Na=ssOcw@mail.gmail.com>
 <20190516182936.h6xdzp3gtg4ikave@core.my.home>
 <CAEExFWvDO3wJd6wp1hFudf3EGF0NixgKAwAd5-b1=VLF+7-jCw@mail.gmail.com>
 <20190519142239.eolisexp5mrdyafz@core.my.home>
In-Reply-To: <20190519142239.eolisexp5mrdyafz@core.my.home>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 26 May 2019 02:48:13 +0800
Message-ID: <CAEExFWsc_YB8NORW4ULfuoicL=xr_oAdtHSaxz4ELv53qvCAsQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
To: Frank Lee <tiny.windzz@gmail.com>, rui.zhang@intel.com, 
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, robh+dt@kernel.org, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, catalin.marinas@arm.com, will.deacon@arm.com, 
 David Miller <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan.Cameron@huawei.com, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, paulmck@linux.ibm.com, 
 Andy Gross <andy.gross@linaro.org>, olof@lixom.net, bjorn.andersson@linaro.org,
 Jagan Teki <jagan@amarulasolutions.com>, marc.w.gonzalez@free.fr, 
 stefan.wahren@i2se.com, enric.balletbo@collabora.com, 
 devicetree@vger.kernel.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_114826_865963_8C3DD510 
X-CRM114-Status: GOOD (  34.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SEkgT25kxZllaiwKCk9uIFN1biwgTWF5IDE5LCAyMDE5IGF0IDEwOjIyIFBNIE9uZMWZZWogSmly
bWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4KPiBIZWxsbyBZYW5ndGFvLAo+Cj4gT24g
U2F0LCBNYXkgMTgsIDIwMTkgYXQgMTI6MzQ6NTdBTSArMDgwMCwgRnJhbmsgTGVlIHdyb3RlOgo+
ID4gSEksCj4gPgo+ID4gT24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMjoyOSBBTSBPbmTFmWVqIEpp
cm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaSBZYW5ndGFvLAo+
ID4gPgo+ID4gPiB0aGFuayB5b3UgZm9yIHdvcmsgb24gdGhpcyBkcml2ZXIuCj4gPiA+Cj4gPiA+
IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDAyOjA2OjUzQU0gKzA4MDAsIEZyYW5rIExlZSB3cm90
ZToKPiA+ID4gPiBISSBPbmTFmWVqLAo+ID4gPiA+Cj4gPiA+ID4gT24gTW9uLCBNYXkgMTMsIDIw
MTkgYXQgNjoxNiBBTSBPbmTFmWVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+
ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsvKiBUZW1wIFVuaXQ6IG1pbGxpZGVncmVlIENlbHNp
dXMgKi8KPiA+ID4gPiA+ID4gK3N0YXRpYyBpbnQgdHNlbnNfcmVnMnRlbXAoc3RydWN0IHRzZW5z
X2RldmljZSAqdG1kZXYsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBp
bnQgcmVnKQo+ID4gPiA+ID4KPiA+ID4gPiA+IFBsZWFzZSBuYW1lIGFsbCBmdW5jdGlvbnMgc28g
dGhhdCB0aGV5IGFyZSBtb3JlIGNsZWFybHkgaWRlbnRpZmlhYmxlCj4gPiA+ID4gPiBpbiBzdGFj
ayB0cmFjZXMgYXMgYmVsb25naW5nIHRvIHRoaXMgZHJpdmVyLiBGb3IgZXhhbXBsZToKPiA+ID4g
PiA+Cj4gPiA+ID4gPiAgIHN1bjhpX3Roc19yZWcydGVtcAo+ID4gPiA+ID4KPiA+ID4gPiA+IFRo
ZSBzYW1lIGFwcGxpZXMgZm9yIGFsbCB0c2Vuc18qIGZ1bmN0aW9ucyBiZWxvdy4gdHNlbnNfKiBp
cyB0b28KPiA+ID4gPiA+IGdlbmVyaWMuCj4gPiA+ID4KPiA+ID4gPiBEb25lIGJ1dCBubyBzdW44
aV90aHNfcmVnMnRlbXAuCj4gPiA+ID4KPiA+ID4gPiB0aHNfcmVnMnRlbSgpIHNob3VsZCBiZSBh
IGdlbmVyaWMgZnVuYy4KPiA+ID4gPiBJIHRoaW5rIGl0IHNob3VsZCBiZSBzdWl0YWJsZSBmb3Ig
YWxsIHBsYXRmb3Jtc++8jCBzbyBubyBwbGF0Zm9ybSBwcmVmaXguCj4gPiA+Cj4gPiA+IFlvdSd2
ZSBtaXNzZWQgbXkgcG9pbnQuIFRoZSBkcml2ZXIgbmFtZSBpcyBzdW44aV90aGVybWFsIGFuZCBp
ZiB5b3UgZ2V0Cj4gPiA+IGFuZCBvb3BzIGZyb20gdGhlIGtlcm5lbCB5b3UnbGwgZ2V0IGEgc3Rh
Y2sgdHJhY2Ugd2hlcmUgdGhlcmUgYXJlIGp1c3QgZnVuY3Rpb24KPiA+ID4gbmFtZXMuIElmIHlv
dSB1c2UgdG9vIGdlbmVyaWMgZnVuY3Rpb24gbmFtZXMsIGl0IHdpbGwgbm90IGJlIGNsZWFyIHdo
aWNoCj4gPiA+IGRyaXZlciBpcyBvb3BzaW5nLgo+ID4gPgo+ID4gPiAgIC0gc3VuOGlfdGhzX3Jl
ZzJ0ZW1wIHdpbGwgdGVsbCB5b3UgbXVjaCBtb3JlIGNsZWFybHkgd2hlcmUgdG8gc2VhcmNoIHRo
YW4KPiA+ID4gICAtIHRoc19yZWcydGVtcAo+ID4gPgo+ID4gPiBPZiBjb3Vyc2UgeW91IGNhbiBh
bHdheXMgZ3JlcCwgYnV0IG1vc3QgdGhlcm1hbCBkcml2ZXJzIGFyZSB0aGVybWFsIHNlbnNvciAo
dGhzKQo+ID4gPiBkcml2ZXJzLCBhbmQgaWYgbXVsdGlwbGUgb2YgdGhlbSB1c2VkIHRoaXMgdG9v
LWdlbmVyaWMgbmFtaW5nIHNjaGVtZSB5b3UnZAo+ID4gPiBoYXZlIGhhcmQgdGltZSBkZWJ1Z2dp
bmcuCj4gPiA+Cj4gPiA+IExvb2sgYXQgb3RoZXIgdGhlcm1hbCBkcml2ZXJzLiBUaGV5IHVzdWFs
bHkgZW5jb2RlIGRyaXZlciBuYW1lIGluIHRoZSBmdW5jdGlvbgo+ID4gPiBuYW1lcyB0byBoZWxw
IHdpdGggaWRlbnRpZmljYXRpb24gKGV2ZW4gaWYgdGhlc2UgYXJlIHN0YXRpYyBkcml2ZXItbG9j
YWwKPiA+ID4gZnVuY3Rpb25zKS4KPiA+ID4KPiA+Cj4gPiBDYW4gd2UgY2hhbmdlIHRvIHN1bnhp
X3Roc18gcHJlZml4Pwo+Cj4gSXQgc2hvdWxkIHByb2JhYmx5IG1hdGNoIHRoZSBkcml2ZXIgbmFt
ZSwgYnV0IHllcywgdGhhdCdzIGJldHRlci4KPgo+ID4gPiA+ID4gPiArc3RhdGljIGludCB0c2Vu
c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiA+ID4gPiArewo+ID4g
PiA+ID4gPiArICAgICBzdHJ1Y3QgdHNlbnNfZGV2aWNlICp0bWRldjsKPiA+ID4gPiA+ID4gKyAg
ICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+ID4gPiA+ID4gKyAgICAgaW50
IHJldDsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICB0bWRldiA9IGRldm1fa3phbGxv
YyhkZXYsIHNpemVvZigqdG1kZXYpLCBHRlBfS0VSTkVMKTsKPiA+ID4gPiA+ID4gKyAgICAgaWYg
KCF0bWRldikKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICB0bWRldi0+ZGV2ID0gZGV2Owo+ID4gPiA+ID4gPiAr
ICAgICB0bWRldi0+Y2hpcCA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgmcGRldi0+ZGV2KTsK
PiA+ID4gPiA+ID4gKyAgICAgaWYgKCF0bWRldi0+Y2hpcCkKPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICByZXQg
PSB0c2Vuc19pbml0KHRtZGV2KTsKPiA+ID4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiA+
ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsg
ICAgIHJldCA9IHRzZW5zX3JlZ2lzdGVyKHRtZGV2KTsKPiA+ID4gPiA+ID4gKyAgICAgaWYgKHJl
dCkKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4KPiA+ID4g
PiA+IFdoeSBzcGxpdCB0aGlzIG91dCBvZiBwcm9iZSBpbnRvIHNlcGFyYXRlIGZ1bmN0aW9ucz8K
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICsgICAgIHJldCA9IHRtZGV2LT5jaGlwLT5lbmFibGUodG1k
ZXYpOwo+ID4gPiA+ID4gPiArICAgICBpZiAocmV0KQo+ID4gPiA+ID4gPiArICAgICAgICAgICAg
IHJldHVybiByZXQ7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgcGxhdGZvcm1fc2V0
X2RydmRhdGEocGRldiwgdG1kZXYpOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgIHJl
dHVybiByZXQ7Cj4gPiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gK3N0YXRp
YyBpbnQgdHNlbnNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ID4g
PiA+ICt7Cj4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCB0c2Vuc19kZXZpY2UgKnRtZGV2ID0gcGxh
dGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAg
dG1kZXYtPmNoaXAtPmRpc2FibGUodG1kZXYpOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsg
ICAgIHJldHVybiAwOwo+ID4gPiA+ID4gPiArfQo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICtz
dGF0aWMgaW50IHN1bjUwaV90aGVybWFsX2VuYWJsZShzdHJ1Y3QgdHNlbnNfZGV2aWNlICp0bWRl
dikKPiA+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ID4gKyAgICAgaW50IHJldCwgdmFsOwo+ID4gPiA+
ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgIHJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQodG1k
ZXYtPnJlc2V0KTsKPiA+ID4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgIHJldCA9
IGNsa19wcmVwYXJlX2VuYWJsZSh0bWRldi0+YnVzX2Nsayk7Cj4gPiA+ID4gPiA+ICsgICAgIGlm
IChyZXQpCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgZ290byBhc3NlcnRfcmVzZXQ7Cj4gPiA+
ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgcmV0ID0gdHNlbnNfY2FsaWJyYXRlKHRtZGV2KTsK
PiA+ID4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1
cm4gcmV0Owo+ID4gPiA+ID4KPiA+ID4gPiA+IElmIHRoaXMgZmFpbHMgKGl0IG1heSBsaWtlbHkg
ZmFpbCB3aXRoIEVQUk9CRV9ERUZFUikgeW91IGFyZSBsZWF2aW5nIHJlc2V0Cj4gPiA+ID4gPiBk
ZWFzc2VydGVkLCBhbmQgY2xvY2sgZW5hYmxlZC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBPdmVyYWxs
LCBJIHRoaW5rLCByZXNldC9jbG9jayBtYW5hZ2VtZW50IGFuZCBudm1lbSByZWFkaW5nIHdpbGwg
YmUgY29tbW9uCj4gPiA+ID4gPiB0byBhbGwgdGhlIEhXIHZhcmlhbnRzLCBzbyBpdCBkb2Vzbid0
IG1ha2UgbXVjaCBzZW5zZSBzcGxpdHRpbmcgaXQgb3V0Cj4gPiA+ID4gPiBvZiBwcm9iZSBpbnRv
IHNlcGFyYXRlIGZ1bmN0aW9ucywgYW5kIG1ha2VzIGl0IG1vcmUgZXJyb3IgcHJvbmUuCj4gPiA+
ID4KPiA+ID4gPiBPdXIgbG9uZy10ZXJtIGdvYWwgaXMgdG8gc3VwcG9ydCBhbGwgcGxhdGZvcm1z
Lgo+ID4gPiA+IEJhY2ljYWxsdCB0aGVyZSBpcyBhIGRpZmZlcmVuY3IgYmV0d2VlbiBlYWNoIGdl
bmVyYXRpb24uCj4gPiA+ID4gU28gSSBmZWVsIGl0IG5lY2Vzc2FyeSB0byBpc29sYXRlIHRoZXNl
IGRpZmZlcmVuY2VzLgo+ID4gPiA+Cj4gPiA+ID4gTWF5YmU6Cj4gPiA+ID4gQXQgc29tZSBwb2lu
dCwgd2UgY2FuIGRyYXcgYSBwYXJ0IG9mIHRoZSBwdWJsaWMgcGFydCBhbmQgcGxhdGZvcm0KPiA+
ID4gPiBkaWZmZXJlbmNlIGludG8gZGlmZmVyZW50Cj4gPiA+ID4gZmlsZXMuIHNvbWV0aGluZyBs
aWtlIHFjb20gdGhlcm1hbCBkcml2ZXIuCj4gPiA+Cj4gPiA+IEkgdW5kZXJzdGFuZCwgYnV0IEkg
d3JvdGUgdGhzIGRyaXZlcnMgZm9yIEgzL0g1L0E4M1QgYW5kIGl0IHNvIGZhciBpdCBsb29rcyBs
aWtlCj4gPiA+IGFsbCBvZiB0aGVtIHdvdWxkIHNoYXJlIHRoZXNlIDMgY2FsbHMuCj4gPiA+Cj4g
PiA+IFlvdSdsbCBiZSBlbmFibGluZyBjbG9jay9yZXNldCBhbmQgY2FsbGlicmF0aW5nIGV2ZXJ5
d2hlcmUuIFNvIHB1dHRpbmcgdGhpcyB0bwo+ID4gPiBwZXItU29DIGZ1bmN0aW9uIHNlZW1zIHBy
ZW1hdHVyZS4KPiA+Cj4gPiBJbiBmYWN0LCBlbmFsYmUgYW5kIGRpc2FibGUgYXJlIHRoZSBzdXNw
ZW5kIGFuZCByZXN1bWUgZnVuY3Rpb25zLihQTQo+ID4gY2FsbGJhY2sgd2lsbCBiZSBhZGRlZCBp
biB0aGUgZnV0dXJlKQo+ID4gV2hlbiBleGl0aW5nIGZyb20gczJyYW0sIHRoZSByZWdpc3RlciB3
aWxsIGJlY29tZSB0aGUgaW5pdGlhbCB2YWx1ZS4KPiA+IFdlIG5lZWQgdG8gZG8gYWxsIHRoZSB3
b3JrLCBlbmFibGluZyByZXNldC9jbGsgLGNhbGlicmF0aW5nIGFuZAo+ID4gaW5pdGlhbGl6aW5n
IG90aGVyIHJlZy4KPiA+Cj4gPiBTbyBJIHRoaW5rIGl0IGlzIG5vIG5lZWQgdG8gcHV0IGVuYWJs
aW5nIHJlc2V0L2NsayBhbmQgY2FsaWJyYXRpbmcgdG8KPiA+IHByb2JlIGZ1bmMsIGFuZCBJJ2Qg
bGlrZQo+ID4gdG8ga2VlcCBlbmFibGUgYW5kIGRpc2FibGUgZnVuYy4KPgo+IEkga25vdywgSSBk
b24ndCB0aGluayBpdCBuZWVkcyB0byBiZSBwZXItc29jLiBUaGVzZSBhY3Rpb25zIGFyZSBhbGwg
c2hhcmVkIGJ5Cj4gYWxsIFNvQ3MuIE1heWJlIHdpdGggYW4gZXhjZXB0aW9uIHRoYXQgc29tZSBT
b0NzIG1heSBuZWVkIG9uZSBtb3JlIGNsb2NrLCBidXQKPiB0aGF0IGNhbiBiZSBtYWRlIG9wdGlv
bmFsbHktcmVxdWlyZWQgYnkgc29tZSBmbGFnIGluIHN0cnVjdCBzdW54aV90aGVybWFsX2NoaXAu
Cj4KPiBPbmx5IGhpZ2hseSBTb0Mgc3BlY2lmaWMgdGhpbmcgaXMgY29uZmlndXJpbmcgdGhlIFRI
UyByZWdpc3RlcnMgZm9yIHNhbXBsaW5nCj4gZnJlcXVlbmN5L2F2ZXJhZ2luZy9lbmFibGluZyBp
bnRlcnJ1cHRzLiBUaGUgcmVzZXQvY2xvY2sgZW5hYmxlIGlzIGdlbmVyaWMsIGFuZAo+IGFscmVh
ZHkgYWJzdHJhY3RlZCBieSB0aGUgY2xvY2svcmVzZXQgZnJhbWV3b3JrLgo+Cj4gU28gd2hhdCBJ
IHN1Z2dlc3QgaXMgaGF2aW5nOgo+Cj4gc3VueGlfdGhzX2VuYWJsZSgpCj4gICAgICAgICByZXNl
dCBkZWFzc2VydAo+ICAgICAgICAgYnVzIGNsb2NrIHByZXBhcmUgZW5hYmxlCj4gICAgICAgICBv
cHRpb25hbGx5IG1vZHVsZSBjbG9jayBwcmVwYXJlIGVuYWJsZSAoaW4gdGhlIGZ1dHVyZSkKPiAg
ICAgICAgIGNhbGwgcGVyLXNvYyBjYWxpYnJhdGlvbgo+ICAgICAgICAgY2FsbCBwZXItc29jIHNl
dHVwIGNhbGxiYWNrCj4KPiBzdW54aV90aHNfZGlzYWJsZSgpCj4gICAgICAgICByZXNldCBhc3Nl
cnQKPiAgICAgICAgIGJ1cyBjbG9jayB1bnByZXBhcmUgZGlzYWJsZQo+ICAgICAgICAgb3B0aW9u
YWxseSBtb2R1bGUgY2xvY2sgdW5wcmVwYXJlIGRpc2FibGUKPgo+IEFuZCBpZiB5b3UgY291bGQg
bW92ZSBkZXZtX252bWVtX2NlbGxfZ2V0IHRvIHByb2JlIHRoYXQgc2hvdWxkIG1ha2UgcGVyLVNv
Qwo+IGNhbGlicmF0aW9uIGNhbGxiYWNrIGFsc28gbGVzcyByZXBldGl0aXZlIGFuZCBjb3VsZCBh
dm9pZCB1bmRvaW5nIHRoZSBlbmFibGUKPiBpbiBjYXNlIGl0IHJldHVybnMgRVBST0JFX0RFRkVS
ICh3aGljaCBpcyBwb3NzaWJsZSkuCj4KPiBBbGwgdGhpcyBzaG91bGQgbWFrZSBpdCBlYXNpZXIg
dG8gc3VwcG9ydCBQTSBpbiB0aGUgZnV0dXJlIGFuZCBhZGQgbGVzcwo+IGN1bWJlcnNvbWUgdG8g
YWRkIHN1cHBvcnQgZm9yIEE4M1QgYW5kIEgzL0g1Lgo+Cj4gQlRXLCB3aGF0IGFyZSB5b3VyIHBs
YW5zIGZvciBtb3JlIFNvQyBzdXBwb3J0PyBJJ2QgbGlrZSB0byBhZGQgc3VwcG9ydCBmb3IKPiBB
ODNUIGFuZCBIMy9INSwgbWF5YmUgZXZlbiBkdXJpbmcgdGhlIDUuMyBjeWNsZSBpZiB0aGlzIGRy
aXZlciBoYXBwZW5zIHRvIGxhbmQKPiBlYXJseSBlbm91Z2guIElmIHlvdSBkb24ndCBoYXZlIGFu
eSBwbGFucyBJJ2xsIHRha2UgaXQgb24uCj4KCkkgcGxhbiB0byBzdXBwb3J0IGgzIGFuZCBhMzMg
bGF0ZXIuCkNhbiB5b3Ugc3VwcG9ydCBvdGhlciBwbGF0Zm9ybXM/CgpDaGVlcnMsCllhbmd0YW8K
Cj4gdGhhbmsgeW91IGFuZCByZWdhcmRzLAo+ICAgICAgICAgby4KPgo+ID4gPgo+ID4gPiB0aGFu
ayB5b3UgYW5kIHJlZ2FyZHMsCj4gPiA+ICAgICAgICAgby4KPiA+ID4KPiA+ID4gPiBSZWdhcmRz
LAo+ID4gPiA+IFlhbmd0YW8KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
