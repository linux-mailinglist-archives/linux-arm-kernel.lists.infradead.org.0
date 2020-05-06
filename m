Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1299A1C65B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 04:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CDs6UMofq/aUgreBVBiWxVratLVnFKKBRjvOLeDLCw=; b=J7bhtzM0DrhTEM
	mi1GLu3jkgRNUl0+oUvQvfVNjXgAm2DL2GqcFU5CR2VezNk+NFVAe+J2ONs+FbLdOkuGnmCNW67Dr
	7uH25wj4CT0GjT4Zo3z92JaO4RLif7i+BlX7A4FLcDfbX/Jt/F+rR2ABncNr1/zlwqCiSd2g4qNZV
	HueMjGkIwEZD9LxIyffYw7v4PG650r7tpCiFACbSRqcFXlwL7B3XsJtzYxlOBvITr5J2Qtb9Smlas
	2DRfaohiYMolMx9UCONgpoSGuo6IjQKHY5OC2KLd8iV8P4N7iMdbunJ0vx7xKYAWjp8QdhHy1Gv8i
	RLwqEVEFTxlym1gn+tTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW9MG-0003oB-If; Wed, 06 May 2020 02:00:24 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW9M9-0003nW-7v
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 02:00:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id k18so626360ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 19:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=is/f9lJRydmfYeeCbU+RnBFZuSbTWrc8UHpyzlFC57M=;
 b=Ga8nCOrixg8y3/t8w6KNB0cajWD48PWrb3D6zrt3z5Y0lH7M1dGpqZ4JP5bPJuvrtb
 0WGOE1ZSIxE5DxHwaC9WYSrJ6WED6CeE32gL5mLvKO/pVQABGSFHtGrWOj5FWCgewJLN
 CBAznpZ0NYa2uXiIF1Rj60AuJpsPtlJiVVf9ihZFA5kaWA1S17nDWxT3EwiEjPAoYc3s
 0ghKss571/jng+jaUtoYCe7I5N4i1zg1kT8E0s30iBOGTvda5VTJRw6zVl5EQizQg6Oh
 WGWttZVV7sdBh/7Uafe4wXt7QU8JDxFI4MkaPi3hrcupQbkfftsIroYhZa9Kh/uTbxcp
 PvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=is/f9lJRydmfYeeCbU+RnBFZuSbTWrc8UHpyzlFC57M=;
 b=WT7zYEKdicphd3+mA04xt4D6IdT+fhXftH1mTthSLlD5fIevQVG0hI6681yaeSxJKp
 b/MCk+xPlWCoAoPk8aJoJtBkPJMt1XVIz55oRscFHtDBfmdo9DxixAPRYismhfGzG0oI
 EaBZTU01v3RqftYskkPMTWu9dLKQ1zZ4EOkLOWsY17j5N1e6d7oRBG6SaoQ8kijOcjDc
 j1pr/rO5R/qTtGJIusNJCaj46gOnpkOphGwpOovUNSKZSDLWNIzENjXslbqsniYUSuLx
 F4i0vtHB7bY0ot01p9O66UsJiKK5kTrntcBl7RL2MMdzfJK2rwquAp7jN7gR+GMWHLC/
 oYSg==
X-Gm-Message-State: AGi0PuY68O08A+nnodlsDFh6Hs/Llf9kEZsBgfqlQnLVsdUj7WEgOCz3
 AoD7lpGySe2/eYG5pljb94Nr+UJgjClVcy1QKP2gaD8j
X-Google-Smtp-Source: APiQypKhFydfSfUpZYF135H4hWAdjDFiSpV9iPZdCku6rzurU3pf9X2ys+U6C+mhzVtDXmdF6hsWgLHf19bX0cZ1zFs=
X-Received: by 2002:a6b:6a13:: with SMTP id x19mr6321986iog.175.1588730415972; 
 Tue, 05 May 2020 19:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200505125930.26901-1-mark.rutland@arm.com>
 <CANW9uyt4LorH7cZ+qj51T+yiHwLB+V8d=GjR=yae4APUwyQo+w@mail.gmail.com>
 <20200505143149.GG82823@C02TD0UTHF1T.local>
In-Reply-To: <20200505143149.GG82823@C02TD0UTHF1T.local>
From: Itaru Kitayama <itaru.kitayama@gmail.com>
Date: Wed, 6 May 2020 11:00:05 +0900
Message-ID: <CANW9uyuFkrT_vfp=cvKzZ92cYbqSappBtYbD4BRhF3KQx7Mjfw@mail.gmail.com>
Subject: Re: [PATCH] arm64: hugetlb: avoid potential NULL dereference
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_190017_307896_E26F0621 
X-CRM114-Status: GOOD (  26.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [itaru.kitayama[at]gmail.com]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyaywKSSBsb29rZWQgaW4gdGhlIG1tIGFuZCBhcmNoL2FybTY0IGRpcmVjdG9yaWVzIGFu
ZCBhbGwgdGhlIGNhbGxzIHRvCnBtZF9hbGxvYygpIGFyZSB0ZXN0ZWQKd2hldGhlciBpdCByZXR1
cm5zIGEgTlVMTCBvciBub3QsIHNvIHlvdXIgcGF0Y2gganVzdCBmaXhlcyB0aGUgaHVnZXRsYgpj
b2RlIHRvIGZvbGxvdyB0aGUgc3RhbmRhcmQuCgoKT24gVHVlLCBNYXkgNSwgMjAyMCBhdCAxMToz
MSBQTSBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPiB3cm90ZToKPgo+IE9uIFR1
ZSwgTWF5IDA1LCAyMDIwIGF0IDEwOjEyOjAyUE0gKzA5MDAsIEl0YXJ1IEtpdGF5YW1hIHdyb3Rl
Ogo+ID4gVGhlIG92ZXJoZWFkIGlzIGp1c3QgbmVnbGlnaWJsZSBpbiB0aGUgcGF0aHM/Cj4KPiBT
b3JyeSwgSSdtIG5vdCBzdXJlIEkgdW5kZXJzdGFuZCB5b3VyIHF1ZXN0aW9uLiBBcmUgeW91IGFz
a2luZyBpZiB0aGlzCj4gaXMgbGlrZWx5IHRvIGFmZmVjdCBwZXJmb3JtYW5jZT8KPgo+IEkgZG9u
J3QgZXhwZWN0IHRoZXJlIHRvIGJlIGFueSBtZWFzdXJlYWJsZSBvdmVyaGVhZCBoZXJlLiBQcmFj
dGljYWxseQo+IHNwZWFraW5nIHRoZSBkaWZmZXJlbmNlIGlzIGEgQ0JaICsgUkVULCBhbmQgb3Ro
ZXIgZmFjdG9ycyB3aWxsIGRvbWluYXRlCj4gaGVyZS4KPgo+IFJlZ2FyZGxlc3MsIHRoaXMgaXMg
dHJpdmlhbCBlcnJvciBoYW5kbGluZyB0aGF0IHdhcyBtaXNzaW5nIGZyb20gdGhlCj4gb3JpZ2lu
YWwgcGF0Y2guCj4KPiBUaGFua3MsCj4gTWFyay4KPgo+ID4gT24gVHVlLCBNYXkgNSwgMjAyMCBh
dCAyMTo1OSBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPiB3cm90ZToKPiA+Cj4g
PiA+IFRoZSBzdGF0aWMgYW5hbHl6ZXIgaW4gR0NDIDEwIHNwb3R0ZWQgdGhhdCBpbiBodWdlX3B0
ZV9hbGxvYygpIHdlIG1heQo+ID4gPiBwYXNzIGEgTlVMTCBwbWRwIGludG8gcHRlX2FsbG9jX21h
cCgpIHdoZW4gcG1kX2FsbG9jKCkgcmV0dXJucyBOVUxMOgo+ID4gPgo+ID4gPiB8ICAgQ0MgICAg
ICBhcmNoL2FybTY0L21tL3BhZ2VhdHRyLm8KPiA+ID4gfCAgIENDICAgICAgYXJjaC9hcm02NC9t
bS9odWdldGxicGFnZS5vCj4gPiA+IHwgICAgICAgICAgICAgICAgICBmcm9tIGFyY2gvYXJtNjQv
bW0vaHVnZXRsYnBhZ2UuYzoxMDoKPiA+ID4gfCBhcmNoL2FybTY0L21tL2h1Z2V0bGJwYWdlLmM6
IEluIGZ1bmN0aW9uIOKAmGh1Z2VfcHRlX2FsbG9j4oCZOgo+ID4gPiB8IC4vYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9wZ3RhYmxlLXR5cGVzLmg6Mjg6MjQ6IHdhcm5pbmc6IGRlcmVmZXJlbmNlIG9m
Cj4gPiA+IE5VTEwg4oCYcG1kcOKAmSBbQ1dFLTY5MF0gWy1XYW5hbHl6ZXItbnVsbC1kZXJlZmVy
ZW5jZV0KPiA+ID4gfCAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oOjQzNjoyNjog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4gPiA+IOKAmHBtZF92YWzigJkKPiA+ID4gfCBh
cmNoL2FybTY0L21tL2h1Z2V0bGJwYWdlLmM6MjQyOjEwOiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8KPiA+ID4g4oCYcHRlX2FsbG9jX21hcOKAmQo+ID4gPiB8ICAgICB8YXJjaC9hcm02NC9t
bS9odWdldGxicGFnZS5jOjIzMjoxMDoKPiA+ID4gfCAgICAgfC4vYXJjaC9hcm02NC9pbmNsdWRl
L2FzbS9wZ3RhYmxlLXR5cGVzLmg6Mjg6MjQ6Cj4gPiA+IHwgLi9hcmNoL2FybTY0L2luY2x1ZGUv
YXNtL3BndGFibGUuaDo0MzY6MjY6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybwo+ID4gPiDi
gJhwbWRfdmFs4oCZCj4gPiA+IHwgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5jOjI0MjoxMDog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCj4gPiA+IOKAmHB0ZV9hbGxvY19tYXDigJkKPiA+
ID4KPiA+ID4gVGhpcyBjYW4gb25seSBvY2N1ciB3aGVuIHRoZSBrZXJuZWwgY2Fubm90IGFsbG9j
YXRlIGEgcGFnZSwgYW5kIHNvIGlzCj4gPiA+IHVubGlrZWx5IHRvIGhhcHBlbiBpbiBwcmFjdGlj
ZSBiZWZvcmUgb3RoZXIgc3lzdGVtcyBzdGFydCBmYWlsaW5nLgo+ID4gPgo+ID4gPiBXZSBjYW4g
YXZvaWQgdGhpcyBieSBiYWlsaW5nIG91dCBpZiBwbWRfYWxsb2MoKSBmYWlscywgYXMgd2UgZG8g
ZWFybGllcgo+ID4gPiBpbiB0aGUgZnVuY3Rpb24gaWYgcHVkX2FsbG9jKCkgZmFpbHMuCj4gPiA+
Cj4gPiA+IEZpeGVzOiA2NmIzOTIzYTFhMGY3N2E1ICgiYXJtNjQ6IGh1Z2V0bGI6IGFkZCBzdXBw
b3J0IGZvciBQVEUgY29udGlndW91cwo+ID4gPiBiaXQpIgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBN
YXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+ID4gPiBSZXBvcnRlZC1ieTogS3ly
aWxsIFRrYWNob3YgPGt5cnlsby50a2FjaG92QGFybS5jb20+Cj4gPiA+IENjOiBDYXRhbGluIE1h
cmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+ID4gPiBDYzogV2lsbCBEZWFjb24gPHdp
bGxAa2VybmVsLm9yZz4KPiA+ID4gLS0tCj4gPiA+ICBhcmNoL2FybTY0L21tL2h1Z2V0bGJwYWdl
LmMgfCAyICsrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPiA+Cj4g
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L21tL2h1Z2V0bGJwYWdlLmMgYi9hcmNoL2FybTY0
L21tL2h1Z2V0bGJwYWdlLmMKPiA+ID4gaW5kZXggYmJlYjZhNWE2YmE2Li4wYmUzMzU1ZTM0OTkg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvbW0vaHVnZXRsYnBhZ2UuYwo+ID4gPiArKysg
Yi9hcmNoL2FybTY0L21tL2h1Z2V0bGJwYWdlLmMKPiA+ID4gQEAgLTIzMCw2ICsyMzAsOCBAQCBw
dGVfdCAqaHVnZV9wdGVfYWxsb2Moc3RydWN0IG1tX3N0cnVjdCAqbW0sCj4gPiA+ICAgICAgICAg
ICAgICAgICBwdGVwID0gKHB0ZV90ICopcHVkcDsKPiA+ID4gICAgICAgICB9IGVsc2UgaWYgKHN6
ID09IChDT05UX1BURV9TSVpFKSkgewo+ID4gPiAgICAgICAgICAgICAgICAgcG1kcCA9IHBtZF9h
bGxvYyhtbSwgcHVkcCwgYWRkcik7Cj4gPiA+ICsgICAgICAgICAgICAgICBpZiAoIXBtZHApCj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4gPgo+ID4gPiAgICAg
ICAgICAgICAgICAgV0FSTl9PTihhZGRyICYgKHN6IC0gMSkpOwo+ID4gPiAgICAgICAgICAgICAg
ICAgLyoKPiA+ID4gLS0KPiA+ID4gMi4xMS4wCj4gPiA+Cj4gPiA+Cj4gPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IGxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0Cj4gPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwKPiA+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
