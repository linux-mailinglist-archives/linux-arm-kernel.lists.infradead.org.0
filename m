Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19244EB7CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 20:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4wqP2t38iP2i76nQu/kPZz+vHtxCZgonlXW54aLkt8=; b=EGFaN93A+mnB7d
	rcFk16V+0HFESmTkU34ktGrpm0WSVxQo9UnKvV8x1YMApwla19Y4CrxQeKXP7zOZ53AeDkdXgYR7x
	/NmsLQGyYzcJU2UMVnYladCmEZhK7yUWTJyHFH77oMNKlBQJCO53UqwjDWRZTcxqUWo0jC0sWQCyz
	L8O4GWFaXE4lkENiCQ9OIM6bs78HftyvAUPPUHfHYB9LYc7EFjztMkqX52TQO4uQAnaOK8irDZrax
	j3k3OiyJ6ikJolAUS57u2RsKzPSIoIFXu81kxMomdY/QuoE8NkK+doVRkO9rsyuMX/vajif2wewpW
	z/6JYIq9BH0XMDxfD5aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFqB-0002Yj-D0; Thu, 31 Oct 2019 19:10:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFq1-0002YD-Q0
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 19:10:31 +0000
Received: by mail-wm1-x342.google.com with SMTP id g24so7126381wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 12:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Jmn2P1ld/NeoSnxg7DOmQ98R2sPr7Eaq2YhqfnjLpSs=;
 b=CH4+kRM7vdK1gdk6cFx9eWuWLEa5CnW1s/j51KQGHPAntwlwEXDzPQAaHQzhVhtT3b
 SnoQuscBwdZxOHLdTLp+VvZvGQI/nwKGRdb9tBUfc02zP4vWmS1Nn9SVrzdzs96hDP7r
 UXWe5pN0ERUBiFgUL5KU/JGcauynTOKyb3JLxwFuylDyq/mfxQLHsdoZ/BMK2yuaESij
 E1x4gYrPcmtwu8TTPFDu7FkaXXu7jAuFqSmXOswa3a8p04UX8YO0toA8AAumCVDK8Tql
 UAZKSbZ7WDBoEwyaD80rA5/KoMAF6MHq2eyEyK6xT4acDJf1P/zvlDjRLvm6EWB6qXpn
 P1qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Jmn2P1ld/NeoSnxg7DOmQ98R2sPr7Eaq2YhqfnjLpSs=;
 b=nKGOuRdcKuOtWdLnsqgHlp3jv+5f16B2LwlEiNf371jCKN+J/sUNkjGX/TOl8cjOqJ
 DJVnW94giPSmr9uEqDVdmxXO6c2UCwMJ8VhF3Gn/XaoVb3wF+ppCWzbRAwSeHevEHJz/
 OKnvS+Xl07mAJTQBSZ+I0yLKPobeN6nxJpE5iFbx+YMt71K5aHrVqXpeYWCuKfQNPLCc
 X+CCILAqgCSizMkeuwrgPXWz4B01DG5xbUWwjvV7cwi2uBFuyGDkfS51dujJTRAKmKjw
 pRJyz9DrZskAQdUcQdEp+cEh8DbiPc4SGk9UPrGROf4/K/v43dZK8A5vIVkitbIIMdVy
 om6A==
X-Gm-Message-State: APjAAAXTUQb93+j//6rD9d3z6g9bzv16xxiTQ+N9Ua2fEGdTsVbKCIiV
 EL9BBAqiy5EfkFFosciCTUAz4bwxaW4SC+5RQrc=
X-Google-Smtp-Source: APXvYqzD6tyzrMQtB5mYa7a1zAvNnZlKCvaIwiMX0TlT5De5CqiNFj8/i0WW76jPnlanpmKm1dLU9j4TzA2JBtH6+5c=
X-Received: by 2002:a1c:a512:: with SMTP id o18mr6335335wme.4.1572549027764;
 Thu, 31 Oct 2019 12:10:27 -0700 (PDT)
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
In-Reply-To: <20190925110844.qfm5ris7xeze44th@gilmour>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 31 Oct 2019 20:10:16 +0100
Message-ID: <CAJiuCcfcmkb_BgDcDJziUwoZXAgLN4Bh0GGZKR3NVNRpnFhBEQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_121029_867235_6CF023B5 
X-CRM114-Status: GOOD (  35.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Jared D . McNeill" <jmcneill@netbsd.org>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpKdXN0IGEgcmVtYXJrIGhlcmUgYnV0IHRoZSBpbnRlcnJ1cHQgYXJlIGZyb20gMTUyIHRv
IDE1NSBTUEkuCkJ1dCB0aGVyZSBpcyBhbiBvZmZzZXQgb2YgMzIgbm8gKHJlbW92ZSBTR0kvUFBJ
KT8KVGhpcyBzaG91bGQgYmUgZnJvbSAxMjAgdG8gMTIzCgpSZWdhcmRzLApDbMOpbWVudAoKT24g
V2VkLCAyNSBTZXAgMjAxOSBhdCAxMzowOSwgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwu
b3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgU2VwIDIzLCAyMDE5IGF0IDA0OjU1OjU5UE0gLTA3MDAs
IFZhc2lseSBLaG9ydXpoaWNrIHdyb3RlOgo+ID4gT24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgNDo1
MSBQTSBWYXNpbHkgS2hvcnV6aGljayA8YW5hcnNvdWxAZ21haWwuY29tPiB3cm90ZToKPiA+ID4K
PiA+ID4gT24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMTA6MzkgUE0gTWF4aW1lIFJpcGFyZAo+ID4g
PiA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBPbiBN
b24sIEF1ZyAxMiwgMjAxOSBhdCAxMTowMTo1MUFNIC0wNzAwLCBWYXNpbHkgS2hvcnV6aGljayB3
cm90ZToKPiA+ID4gPiA+IE9uIE1vbiwgQXVnIDEyLCAyMDE5IGF0IDE6MDQgQU0gTWF4aW1lIFJp
cGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+IE9uIFRodSwgQXVnIDA4LCAyMDE5IGF0IDEyOjU5OjA3UE0gLTA3MDAsIFZhc2lseSBL
aG9ydXpoaWNrIHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9uIFRodSwgQXVnIDgsIDIwMTkgYXQgOToy
NiBBTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+
ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBPbiBXZWQsIEF1ZyAwNywgMjAxOSBhdCAxMDoz
NjowOEFNIC0wNzAwLCBWYXNpbHkgS2hvcnV6aGljayB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4g
T24gV2VkLCBBdWcgNywgMjAxOSBhdCA0OjU2IEFNIE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBh
cmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gT24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDc6Mzk6MjZQTSAtMDcwMCwgVmFzaWx5IEto
b3J1emhpY2sgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBPbiBUdWUsIEF1ZyA2LCAyMDE5
IGF0IDI6MTQgUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IE9uIDIwMTktMDgt
MDYgOTo1MiBwbSwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gT24gVHVlLCBBdWcgNiwgMjAxOSBhdCAxOjE5IFBNIEhhcmFsZCBHZXllciA8aGFyYWxk
QGNjYmliLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4+IFZhc2lseSBLaG9ydXpoaWNrIHdyaXRlczoKPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPj4+IE9uIFR1ZSwgQXVnIDYsIDIwMTkgYXQgNzozNSBBTSBSb2JpbiBNdXJwaHkg
PHJvYmluLm11cnBoeUBhcm0uY29tPiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4+
Pgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Pj4+IE9uIDA2LzA4LzIwMTkgMTU6MDEsIFZhc2ls
eSBLaG9ydXpoaWNrIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Pj4+PiBMb29rcyBs
aWtlIFBNVSBpbiBBNjQgaXMgYnJva2VuLCBpdCBnZW5lcmF0ZXMgbm8gaW50ZXJydXB0cyBhdCBh
bGwgYW5kCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+Pj4+IGFzIHJlc3VsdCAncGVyZiB0b3An
IHNob3dzIG5vIGV2ZW50cy4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4+Pgo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+Pj4+IERvZXMgc29tZXRoaW5nIGxpa2UgJ3BlcmYgc3RhdCBzbGVlcCAx
JyBhdCBsZWFzdCBjb3VudCBjeWNsZXMgY29ycmVjdGx5Pwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+Pj4+IEl0IGNvdWxkIHdlbGwganVzdCBiZSB0aGF0IHRoZSBpbnRlcnJ1cHQgbnVtYmVycyBh
cmUgd3JvbmcuLi4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4+Cj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4+PiBMb29rcyBsaWtlIGl0IGRvZXMsIGF0IGxlYXN0IHJlc3VsdCBsb29rcyBwbGF1
c2libGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4+IEknbSB1c2luZyBwZXJmIHN0YXQgcmVndWxhcmx5IChjYWNoZSBiZW5jaG1hcmtzKSBhbmQg
aXQgd29ya3MgZmluZS4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPj4gVW5mb3J0dW5hdGVseSBJIHdhc24ndCBhd2FyZSB0aGF0IHBlcmYgc3RhdCBp
cyBhIHBvb3IgdGVzdCBmb3IKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4gdGhlIGludGVycnVw
dHMgcGFydCBvZiB0aGUgbm9kZSwgd2hlbiBJIGFkZGVkIGl0LiBTbyBJJ20gbm90IHRvbwo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+PiBzdXJwcmlzZWQgSSBnb3QgaXQgd3JvbmcuCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+IEhvd2V2ZXIsIGl0
IHdvdWxkIGJlIHVuZm9ydHVuYXRlIGlmIHRoZSBub2RlIGdvdCByZW1vdmVkIGNvbXBsZXRlbHks
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+IGJlY2F1c2UgcGVyZiBzdGF0IHdvdWxkIG5vdCB3
b3JrIGFueW1vcmUuIE1heWJlIHdlIGNhbiBvbmx5IHJlbW92ZQo+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+PiB0aGUgaW50ZXJydXB0cyBvciBqdXN0IGZpeCB0aGVtIGV2ZW4gaWYgdGhlIEhXIGRv
ZXNuJ3Qgd29yaz8KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+IEknbSBub3QgZmFtaWxpYXIgd2l0aCBQTVUgZHJpdmVyLiBJcyBpdCBwb3NzaWJsZSB0
byBnZXQgaXQgd29ya2luZwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHdpdGhvdXQgaW50ZXJy
dXB0cz8KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gWXVw
IC0geW91IGdldCBhIGdydW1weSBtZXNzYWdlIGZyb20gdGhlIGRyaXZlciwgaXQgd2lsbCByZWZ1
c2Ugc2FtcGxpbmcKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gZXZlbnRzICh0aGUgb25lcyB3aGlj
aCB3ZXJlbid0IHdvcmtpbmcgYW55d2F5KSwgYW5kIGlmIHlvdSBtZWFzdXJlCj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+IGFueXRoaW5nIGZvciBsb25nIGVub3VnaCB0aGF0IGEgY291bnRlciBvdmVy
Zmxvd3MgeW91J2xsIGdldCB3b25reQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiByZXN1bHRzLiBC
dXQgZm9yIGNvdW50aW5nIGhhcmR3YXJlIGV2ZW50cyBvdmVyIHJlbGF0aXZlbHkgc2hvcnQgcGVy
aW9kcwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBpdCdsbCBzdGlsbCBkbyB0aGUgam9iLgo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEkgdHJpZWQgdG8gZHJvcCBp
bnRlcnJ1cHRzIGNvbXBsZXRlbHkgZnJvbSB0aGUgbm9kZSBidXQgJ3BlcmYgdG9wJyBpcwo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gc3RpbGwgYnJva2VuLiBUaG91Z2ggbm93IGluIGRpZmZlcmVudCB3
YXk6IGl0IGNvbXBsYWlucyAiY3ljbGVzOiBQTVUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEhhcmR3
YXJlIGRvZXNuJ3Qgc3VwcG9ydCBzYW1wbGluZy9vdmVyZmxvdy1pbnRlcnJ1cHRzLiBUcnkgJ3Bl
cmYKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHN0YXQnIgo+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gSSBoYXZlIG5vIGlkZWEgaWYgdGhhdCdzIHRoZSBjdWxwcml0LCBidXQg
d2hhdCBpcyB0aGUgc3RhdGUgb2YgdGhlCj4gPiA+ID4gPiA+ID4gPiA+ID4gMHgwOTAxMDAwMCBy
ZWdpc3Rlcj8KPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gV2hhdCByZWdpc3Rl
ciBpcyB0aGF0IGFuZCBob3cgZG8gSSBjaGVjayBpdD8KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ID4gPiBJdCdzIGluIHRoZSBDUFVYIENvbmZpZ3VyYXRpb24gYmxvY2ssIGFuZCB0aGUgYml0
cyBhcmUgbGFiZWxsZWQgYXMgQ1BVCj4gPiA+ID4gPiA+ID4gPiBEZWJ1ZyBSZXNldC4KPiA+ID4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBBbmQgaWYgeW91IGhhdmUgYnVzeWJveCwgeW91IGNh
biB1c2UgZGV2bWVtLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gQ1BVWCBjb25maWd1cmF0
aW9uIGJsb2NrIGlzIGF0IDB4MDE3MDAwMDAgYWNjb3JkaW5nIHRvIEE2NCB1c2VyCj4gPiA+ID4g
PiA+ID4gbWFudWFsLCBhbmQgcGFydGljdWxhciByZWdpc3RlciB5b3UncmUgaW50ZXJlc3RlZCBp
biBpcyBhdCAweDAxNzAwMDgwLAo+ID4gPiA+ID4gPiA+IGl0cyB2YWx1ZSBpcyAweDExMTAxMTBG
Lgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gQml0cyAxNi0xOSBhcmUgbm90IGRlZmluZWQg
aW4gdXNlciBtYW51YWwgYW5kIGFyZSBub3Qgc2V0Lgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBT
b3JyeSwgSSBzb21laG93IHRob3VnaHQgdGhpcyB3YXMgZm9yIHRoZSBINi4uLgo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiBJIGRvbid0IGhhdmUgYW55IGlkZWEgdGhlbiA6Lwo+ID4gPiA+ID4KPiA+
ID4gPiA+IE9LLCBzbyB3aGF0IHNob3VsZCB3ZSBkbz8gJ3BlcmYgdG9wJy8ncGVyZiByZWNvcmQn
IHdvcmsgZmluZSBpZiBQTVUKPiA+ID4gPiA+IG5vZGUgaXMgZHJvcHBlZCwgYnV0IHRoZXkgZG9u
J3Qgd29yayBpZiBQTVUgbm9kZSBpcyBwcmVzZW50IChldmVuIHdpdGgKPiA+ID4gPiA+IGludGVy
cnVwdHMgZHJvcHBlZCkuIEknZCBwcmVmZXIgdG8gaGF2ZSAncGVyZiB0b3AnIGFuZCAncGVyZiBy
ZWNvcmQnCj4gPiA+ID4gPiB3b3JraW5nIGluc3RlYWQgb2YgJ3BlcmYgc3RhdCcKPiA+ID4gPgo+
ID4gPiA+IFdlbGwsIGl0IGRvZXNuJ3Qgd29yayBzbyB3ZSBzaG91bGQganVzdCByZW1vdmUgdGhl
IG5vZGUsIGFuZCBpZgo+ID4gPiA+IHNvbWVvbmUgd2FudHMgaXQgYmFjaywgdGhleSBzaG91bGQg
ZmlndXJlIGl0IG91dC4KPiA+ID4KPiA+ID4gSGV5IE1heGltZSwKPiA+ID4KPiA+ID4gU28gY2Fu
IHlvdSBtZXJnZSB0aGlzIHBhdGNoPwo+ID4KPiA+IEFkZGVkIG5ldyBNYXhpbWUncyBlbWFpbCB0
byBDQwo+Cj4gUXVldWVkIGFzIGEgZml4IGZvciA1LjQsIHRoYW5rcyEKPiBNYXhpbWUKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
