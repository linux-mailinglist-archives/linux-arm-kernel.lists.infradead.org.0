Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579B1EE695
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGDQkORULO8VP0Lxz1PGBDJmOwJDtsnhvlU0L1lMbG4=; b=gfIACL3adLTcWm
	efW0Q3eNtSxkXRwV1UWEXJDs6zkf02yowD7xCgRe1i7HXm5l1ih4FE2kkgju0wlSPmTRKewTUIYhE
	GI8dzr8Kq0LYMZ0tzMHn8fbv2IZY72G1uIs/vBDot2nXzDFl0T6uivVwR+k0SBC5p0GL1J5XKalCV
	I7qlMhC9u6G5qg2Nh97GF3abRvNnVxwjXZSzMmjTckHKovmT0h3mkhH0Jed0z/9cgNenwpuSALMiP
	bpwQUe18zypC/hVw6HBOSGBXvu1Zl4eawCpAi8noj9N7+wsF2d81tbOX+mweXtPskBP0oimsTPFUg
	WGBIfAXdXGocNxdUMczw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgTh-0005cL-Tv; Mon, 04 Nov 2019 17:49:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgTZ-0005aX-NZ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:49:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id q130so17008456wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 09:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=p2xKl9sk3AGAtQ4LlnI3zNkpScq7gYHsvOfvGfAQyL4=;
 b=hDuEqnDhVk7kPLTfGLMq/WeOZAhbhSMAJJbCeOf+BLERB82koHBkKphxwkbknhDs3J
 Obr+dHWwQWzWiEy1P9TZaAGqTwD9QQLPDKlpSq2UeZQ72RKbsbQW2kmOjIH3jjybyQar
 jiapj0psw8heQmPX0/1XhGmakh5EQEDo03gownZn2neuCbngAF1WMIJ2w4VvaB7zLmNR
 smmZAcW1rzVodKEX6DURemUVuZhKbcuxtcg+h7b7+J/bdYiMga1q9epRQj6i+BVp/fOi
 AMd5GIZyPG55XP9KQuaqH6yfrfUaKokf2Rzc+DBfmeurrUhAuhXpu3805K50ix2tLlgm
 W4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=p2xKl9sk3AGAtQ4LlnI3zNkpScq7gYHsvOfvGfAQyL4=;
 b=WQHAquiQjxGrDcdwyGIi381YNQyX/7g9pJj9B0p6FHEeb7qqJO2IjE73SLoMA6z4NC
 Io7Gxrb94vZjpXoCI1gF8KOVvaq4HgOTJvkK72WcP8Bu1ouSsAvHKaOkZymXOiDJJ/TS
 pLaZ5bz7GzFLX9IjqYQ/hFrT7+CdArD7yCz/8sDt/re4uAvYR0SvB4D2Ycb/kvTzOl1h
 +noeuhn0TmqXbkG6B+dzlWVUKSq67+e4mS217WZWQ36uBwqznR9hzskYAmXTxCTaIfk5
 0sjWn9WUYt4prtrJwSRuBNAhzJCDO6c7r2aCrBTDtNK2hvjP7yW/L8w/IBCQAH+ta1eE
 A6Mg==
X-Gm-Message-State: APjAAAWB1F0DlVUGb6mpszTg95HjtCejm+Uyn3tNrezZR+Jut4m7pfo9
 BoqCGJKmEEZJ8enjopy/fEYcRJ04SR0hVsZbLuM=
X-Google-Smtp-Source: APXvYqwOHtKxgzOFlIXHimPJ2owhRc/to3TzER1kse9EqS8W/w1eEg9DUEJJUI1U5VQmdGnU3C50BansJnwSlPsMMA0=
X-Received: by 2002:a05:600c:228e:: with SMTP id
 14mr241937wmf.119.1572889751662; 
 Mon, 04 Nov 2019 09:49:11 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-2-peron.clem@gmail.com>
 <20191104080359.6kjugbt3yi63ywhb@pengutronix.de>
In-Reply-To: <20191104080359.6kjugbt3yi63ywhb@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 4 Nov 2019 18:49:00 +0100
Message-ID: <CAJiuCccf3=McRfJ85SiudDHZ4nDOT+d7hh+nKDgC1u6nTpphPQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_094913_791844_C7B69E46 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCA0IE5vdiAyMDE5IGF0IDA5OjA0LCBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVpbmUt
a29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIFN1biwgTm92IDAzLCAyMDE5IGF0
IDA5OjMzOjI4UE0gKzAxMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEZyb206IEplcm5l
aiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+Cj4gPiBINiBQV00gYmxvY2sg
aXMgYmFzaWNhbGx5IHRoZSBzYW1lIGFzIEEyMCBQV00sIGV4Y2VwdCB0aGF0IGl0IGFsc28gaGFz
Cj4gPiBidXMgY2xvY2sgYW5kIHJlc2V0IGxpbmUgd2hpY2ggbmVlZHMgdG8gYmUgaGFuZGxlZCBh
Y2NvcmRpbmdseS4KPiA+Cj4gPiBFeHBhbmQgQWxsd2lubmVyIFBXTSBiaW5kaW5nIHdpdGggSDYg
UFdNIHNwZWNpZmljcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVy
bmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL3B3bS9hbGx3
aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sIHwgNDUgKysrKysrKysrKysrKysrKysrLQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lubmVy
LHN1bjRpLWExMC1wd20ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
d20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbAo+ID4gaW5kZXggMGFjNTJmODNhNThjLi5i
ZjM2ZWE1MDlmMzEgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFt
bAo+ID4gQEAgLTMwLDEzICszMCw0NiBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgICAgIC0gaXRlbXM6
Cj4gPiAgICAgICAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW41MGktaDUtcHdtCj4gPiAgICAg
ICAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW41aS1hMTMtcHdtCj4gPiArICAgICAgLSBjb25z
dDogYWxsd2lubmVyLHN1bjUwaS1oNi1wd20KPiA+Cj4gPiAgICByZWc6Cj4gPiAgICAgIG1heEl0
ZW1zOiAxCj4gPgo+ID4gLSAgY2xvY2tzOgo+ID4gKyAgIyBFdmVuIHRob3VnaCBpdCBvbmx5IGFw
cGxpZXMgdG8gc3Vic2NoZW1hcyB1bmRlciB0aGUgY29uZGl0aW9uYWxzLAo+ID4gKyAgIyBub3Qg
bGlzdGluZyB0aGVtIGhlcmUgd2lsbCB0cmlnZ2VyIGEgd2FybmluZyBiZWNhdXNlIG9mIHRoZQo+
ID4gKyAgIyBhZGRpdGlvbmFsc1Byb3BlcnRpZXMgc2V0IHRvIGZhbHNlLgo+ID4gKyAgY2xvY2tz
OiB0cnVlCj4gPiArICBjbG9jay1uYW1lczogdHJ1ZQo+ID4gKyAgcmVzZXRzOgo+ID4gICAgICBt
YXhJdGVtczogMQo+ID4KPiA+ICsgIGlmOgo+ID4gKyAgICBwcm9wZXJ0aWVzOgo+ID4gKyAgICAg
IGNvbXBhdGlibGU6Cj4gPiArICAgICAgICBjb250YWluczoKPiA+ICsgICAgICAgICAgY29uc3Q6
IGFsbHdpbm5lcixzdW41MGktaDYtcHdtCj4gPiArCj4gPiArICB0aGVuOgo+ID4gKyAgICBwcm9w
ZXJ0aWVzOgo+ID4gKyAgICAgIGNsb2NrczoKPiA+ICsgICAgICAgIGl0ZW1zOgo+ID4gKyAgICAg
ICAgICAtIGRlc2NyaXB0aW9uOiBNb2R1bGUgQ2xvY2sKPiA+ICsgICAgICAgICAgLSBkZXNjcmlw
dGlvbjogQnVzIENsb2NrCj4gPiArCj4gPiArICAgICAgY2xvY2stbmFtZXM6Cj4gPiArICAgICAg
ICBpdGVtczoKPiA+ICsgICAgICAgICAgLSBjb25zdDogbW9kCj4gPiArICAgICAgICAgIC0gY29u
c3Q6IGJ1cwo+ID4gKwo+ID4gKyAgICByZXF1aXJlZDoKPiA+ICsgICAgICAtIGNsb2NrLW5hbWVz
Cj4gPiArICAgICAgLSByZXNldHMKPiA+ICsKPiA+ICsgIGVsc2U6Cj4gPiArICAgIHByb3BlcnRp
ZXM6Cj4gPiArICAgICAgY2xvY2tzOgo+ID4gKyAgICAgICAgbWF4SXRlbXM6IDEKPiA+ICsKPgo+
IEkgZ3Vlc3MgdGhpcyBodW5rIHNheXMgIklmIHRoaXMgaXMgYSBhbGx3aW5uZXIsc3VuNTBpLWg2
LXB3bSwgYSBtb2QgYW5kCj4gYnVzIGNsb2NrIGlzIHJlcXVpcmVkLiIsIHJpZ2h0PwoKQ29ycmVj
dC4KPgo+Cj4gSSB3b25kZXIgaWYgaXQgaXMgc2Vuc2libGUgdG8gcmVxdWlyZSBhIGNsb2NrLW5h
bWVzIHByb3BlcnR5IGluIHRoZSBlbHNlCj4gYnJhbmNoLCB0b28uIFRoaXMgd291bGQgbWFrZSBp
dCBvYnZpb3VzIGlmIHRoZSBjbG9jayB0aGVyZSBjb3JyZXNwb25kcwo+IHRvIHRoZSAibW9kIiBv
ciB0aGUgImJ1cyIgY2xvY2sgb24gSDYuIChJIGd1ZXNzIGl0J3MgIm1vZCIuKQoKVGhpcyB3aWxs
IGFsc28gcmVxdWlyZSB0byBjaGFuZ2UgZXhhbXBsZSBhbmQgYWxsIHRoZSBjdXJyZW50IGFsbHdp
bm5lcgpkZXZpY2UtdHJlZSB0aGF0IGhhdmUgYSBQV00gZGVjbGFyZWQuCgpSZWdhcmRzLApDbMOp
bWVudAoKPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwK
PiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3
LnBlbmd1dHJvbml4LmRlLyAgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
