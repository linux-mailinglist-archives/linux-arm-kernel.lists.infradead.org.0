Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F02991F93E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERACIWGOzFYO/NXGgjx9sN92BNc8pveahY7WNI4W57w=; b=h5TK4jWsYnrpoQ
	5xsH0OmMUHRv5v8WfnqEYaGB8T9EhAsmG5+WsSYLYhEV5hCO/of4tGGztRwjn8pc05WVao+GawbtX
	CkMudgkrqfTlNQc0XJzMHpUABQDdyFIzRh+p8WW/L4ve/gfjVowgocdW3bEhWXbEciSzOFrocxSMT
	jLiTBh0wjLiGW2Zv56L/nc0LfWSQFsY8Ej9PVZJkFFTpXgl0Rpk2X1nxr5ff5EZqUeI2+6ab23oSy
	CTsklNjPUd6ZykpHlZzGFTvFJdyGM9iIBdzsg/621CnS3+z2r5z3U2euTQ/urw/1xKKlGywkPlRTl
	jMn5q+UF7a5huXbu7ADg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklk1-0001XP-Ql; Mon, 15 Jun 2020 09:49:21 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkljr-0001WH-RF; Mon, 15 Jun 2020 09:49:13 +0000
Received: by mail-io1-xd42.google.com with SMTP id r77so17122138ior.3;
 Mon, 15 Jun 2020 02:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VXrYkWGJrAVwMKl7EpALp308abGzBC/xarfEjXsxyt8=;
 b=stNWaVR9mILoXoa35qUlmQKoIfjReV21Ygcw+kmOknzdyAd47EecdwrcHgyRIiCHc1
 kQCq9ajBuZH0EJcKAEy41F5r1lmg3Xev/NaEqR0jd32aw7B93AXyVciu8HlaioBsrRMa
 K7pPbZ5Hun7PnTPlPf5NuynGDQOxVE/YVHxIVl0QfCfgsQXN3QkPEgKr16OI3zfTVvXm
 jpxgMZCcczb2muIjitZvQEWmx8fQMMOFJUYtyfZ8LcgYQiO9lgA8ZWnm1GzkJnvbizYr
 568nqQkmYJRdlD94NgsZ4GOm/ePu02U7PzSC2Tb7IfKNchJUi/Aeb/K1M6dPJXfapOmD
 A7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VXrYkWGJrAVwMKl7EpALp308abGzBC/xarfEjXsxyt8=;
 b=anHmUaac0a/8zg6/zzQa4KR/SOu0yYc9jnjbzhMAWY7p8Q4/S7UMqVx4nOQpcvMo9Z
 CDr4D/1nUjbcIE9aVh+L/k6GsULUxB5JWuW6rK6uxQh/qjM0dNJUoQ1znLZa2pbWUy/T
 T5HNOoOP30QlatRoa5NcWxRrc4hMUvKh1AWZsO9o9IvB8QzUG0HCNcAXoSkZdSPRgVAL
 wXxqvtucTUexRPu22LM5s52qfVL5HcPge29YdcgUGtO/Zsw/JL14+LXeRxe6kOcRnghG
 5Eys3PWRvmX9iAfRG4rsMuelmAHaHbuAA2L3vXSJiiCMhXw6mzSlkzVRYw86Z+etlAXu
 pRmA==
X-Gm-Message-State: AOAM532DU+gwywT54HCYKXOqsBjonqww5jWMVFoMiA+uh6beOlnna7FL
 uAPLuOeuzqqVUz7xgx8t1TfzFxqYHd33EWSTfsg=
X-Google-Smtp-Source: ABdhPJxtXsKmf8Rv/T8eBzugDRbZKh4vUmXzvKagG59avK0BfoIYZLDJkcITgkfHBgVawjBi74gfiqsC3RANgxO/XoI=
X-Received: by 2002:a5e:aa14:: with SMTP id s20mr27326679ioe.58.1592214546938; 
 Mon, 15 Jun 2020 02:49:06 -0700 (PDT)
MIME-Version: 1.0
References: <1591254387-10304-1-git-send-email-gene.chen.richtek@gmail.com>
 <20200604133943.GE6644@sirena.org.uk>
In-Reply-To: <20200604133943.GE6644@sirena.org.uk>
From: Gene Chen <gene.chen.richtek@gmail.com>
Date: Mon, 15 Jun 2020 17:48:55 +0800
Message-ID: <CAE+NS35ktxq2MiNXNWh7Q-gzdbm7Xoj2tXqrgzjkkv8W_tR3Sw@mail.gmail.com>
Subject: Re: [PATCH] regulator: mt6360: Add support for MT6360 regulator
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_024911_898523_5098388F 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
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
Cc: Gene Chen <gene_chen@richtek.com>, Lee Jones <lee.jones@linaro.org>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 benjamin.chao@mediatek.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TG9vcCBNRkQgbWFpbnRhaW5lciwKCk1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4g5pa8
IDIwMjDlubQ25pyINOaXpSDpgLHlm5sg5LiL5Y2IOTozOeWvq+mBk++8mgo+Cj4gT24gVGh1LCBK
dW4gMDQsIDIwMjAgYXQgMDM6MDY6MjdQTSArMDgwMCwgR2VuZSBDaGVuIHdyb3RlOgo+Cj4gVGhp
cyBsb29rcyBuaWNlIGFuZCBzaW1wbGUsIGEgZmV3IGZhaXJseSBzbWFsbCBjb21tZW50cyBiZWxv
dyBidXQgaGlnaAo+IGxldmVsIGl0J3MgYmFzaWNhbGx5IGZpbmUuCj4KPiA+IC0tLSAvZGV2L251
bGwKPiA+ICsrKyBiL2RyaXZlcnMvcmVndWxhdG9yL210NjM2MC1yZWd1bGF0b3IuYwo+ID4gQEAg
LTAsMCArMSw1NzEgQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+
ID4gKy8qCj4gPiArICogQ29weXJpZ2h0IChjKSAyMDIwIE1lZGlhVGVrIEluYy4KPgo+IFBsZWFz
ZSBtYWtlIHRoZSBlbnRpcmUgY29tbWVudCBhIEMrKyBvbmUgc28gdGhpbmdzIGxvb2sgbW9yZQo+
IGludGVudGlvbmFsLgo+CgpBQ0sKCj4gPiArICAgICBmb3IgKGkgPSAwOyBpIDwgZGV2ZGF0YS0+
bnVtX2lycV9kZXNjczsgaSsrKSB7Cj4gPiArICAgICAgICAgICAgIGlycV9kZXNjID0gZGV2ZGF0
YS0+aXJxX2Rlc2NzICsgaTsKPiA+ICsgICAgICAgICAgICAgaWYgKHVubGlrZWx5KCFpcnFfZGVz
Yy0+bmFtZSkpCj4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4KPiBEbyB3ZSBy
ZWFsbHkgbmVlZCBhbiB1bmxpa2VseSBoZXJlPyAgVGhpcyBzaG91bGRuJ3QgYmUgYSBob3QgcGF0
aC4KPgoKQUNLLCB3ZSB3aWxsIHJlbW92ZSBpdAoKPiA+ICtzdGF0aWMgaW50IG10NjM2MF9yZWd1
bGF0b3Jfc2V0X21vZGUoCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCByZWd1bGF0b3JfZGV2ICpyZGV2LCB1bnNpZ25lZCBpbnQgbW9kZSkKPiA+ICt7Cj4KPiA+ICsg
ICAgIHN3aXRjaCAoMSA8PCAoZmZzKG1vZGUpIC0gMSkpIHsKPiA+ICsgICAgIGNhc2UgUkVHVUxB
VE9SX01PREVfTk9STUFMOgo+Cj4gSSBkb24ndCB1bmRlcnN0YW5kIHdoeSB0aGlzIGlzbid0IGp1
c3QgYSBzdHJhaWdodCBzd2l0Y2ggb24gbW9kZT8KPgoKQUNLCgo+ID4gK3N0YXRpYyB1bnNpZ25l
ZCBpbnQgbXQ2MzYwX3JlZ3VsYXRvcl9nZXRfbW9kZShzdHJ1Y3QgcmVndWxhdG9yX2RldiAqcmRl
dikKPiA+ICt7Cj4gPiArICAgICBjb25zdCBzdHJ1Y3QgbXQ2MzYwX3JlZ3VsYXRvcl9kZXNjICpk
ZXNjID0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGNvbnN0IHN0cnVjdCBtdDYz
NjBfcmVndWxhdG9yX2Rlc2MgKilyZGV2LT5kZXNjOwo+ID4gKyAgICAgaW50IHNoaWZ0ID0gZmZz
KGRlc2MtPm1vZGVfZ2V0X21hc2spIC0gMSwgcmV0Owo+ID4gKyAgICAgdW5zaWduZWQgaW50IHZh
bCA9IDA7Cj4gPiArCj4gPiArICAgICBkZWZhdWx0Ogo+ID4gKyAgICAgICAgICAgICByZXQgPSAw
Owo+ID4gKyAgICAgfQo+Cj4gSWYgd2UgY2FuJ3QgcGFyc2UgYSB2YWxpZCB2YWx1ZSBmcm9tIHRo
ZSBoYXJkd2FyZSB0aGVuIHRoYXQncyBhbiBlcnJvci4KPgoKQUNLCgo+ID4gK3N0YXRpYyBpbnQg
bXQ2MzYwX3JlZ3VsYXRvcl9yZWdfd3JpdGUodm9pZCAqY29udGV4dCwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCByZWcsIHVuc2lnbmVkIGludCB2
YWwpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IG10NjM2MF9yZWd1bGF0b3JfZGF0YSAqbXJkID0g
Y29udGV4dDsKPiA+ICsgICAgIHU4IGNodW5rWzRdID0gezB9Owo+ID4gKwo+ID4gKyAgICAgLyog
Y2h1bmsgMCAtPmkyYyBhZGRyLCAxIC0+IHJlZ19hZGRyLCAyIC0+IHJlZ192YWwgMy0+IGNyYzgg
Ki8KPiA+ICsgICAgIGNodW5rWzBdID0gKG1yZC0+aTJjLT5hZGRyICYgMHg3ZikgPDwgMTsKPiA+
ICsgICAgIGNodW5rWzFdID0gcmVnICYgMHgzZjsKPiA+ICsgICAgIGNodW5rWzJdID0gKHU4KXZh
bDsKPiA+ICsgICAgIGNodW5rWzNdID0gY3JjOChtcmQtPmNyYzhfdGFibGUsIGNodW5rLCAzLCAw
KTsKPiA+ICsgICAgIC8qIGFsc28gZHVtbXkgb25lIGJ5dGUgKi8KPiA+ICsgICAgIHJldHVybiBp
MmNfc21idXNfd3JpdGVfaTJjX2Jsb2NrX2RhdGEobXJkLT5pMmMsIGNodW5rWzFdLCAzLCBjaHVu
ayArIDIpOwo+ID4gK30KPgo+IE9oLCB3b3cgLSB0aGF0J3MgYSBmdW4gSS9PIGludGVyZmFjZSEK
Pgo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIF9fbWF5YmVfdW51c2VkIG10
NjM2MF9yZWd1bGF0b3Jfb2ZfaWRbXSA9IHsKPiA+ICsgICAgIHsKPiA+ICsgICAgICAgICAgICAg
LmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ2MzYwX3BtaWMiLAo+ID4gKyAgICAgICAgICAgICAu
ZGF0YSA9ICh2b2lkICopJm10NjM2MF9wbWljX2RldmRhdGEsCj4gPiArICAgICB9LAo+ID4gKyAg
ICAgewo+ID4gKyAgICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDYzNjBfbGRv
IiwKPiA+ICsgICAgICAgICAgICAgLmRhdGEgPSAodm9pZCAqKSZtdDYzNjBfbGRvX2RldmRhdGEs
Cj4gPiArICAgICB9LAo+ID4gKyAgICAge30sCj4gPiArfTsKPiA+ICtNT0RVTEVfREVWSUNFX1RB
QkxFKG9mLCBtdDYzNjBfcmVndWxhdG9yX29mX2lkKTsKPgo+IEkgZG9uJ3Qgc2VlIGFueSBEVCBi
aW5kaW5ncyBkb2N1bWVudGF0aW9uIGZvciB0aGlzLCBkb2N1bWVudGF0aW9uIGlzCj4gcmVxdWly
ZWQgZm9yIGFsbCBuZXcgYmluZGluZ3MuCj4KCkFDSywgd2Ugd2lsbCB1cGRhdGUgYmluZGluZyBk
b2N1bWVudCBsYXRlci4KCj4gPiArICAgICBtcmQtPnJlZ21hcCA9IGRldm1fcmVnbWFwX2luaXQo
JihtcmQtPmkyYy0+ZGV2KSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBOVUxMLCBtcmQsIGRldmRhdGEtPnJlZ21hcF9jb25maWcpOwo+ID4gKyAgICAgaWYgKElTX0VS
UihtcmQtPnJlZ21hcCkpIHsKPiA+ICsgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAi
RmFpbGVkIHRvIHJlZ2lzdGVyIHJlZ21hcFxuIik7Cj4gPiArICAgICAgICAgICAgIHJldHVybiBQ
VFJfRVJSKG1yZC0+cmVnbWFwKTsKPiA+ICsgICAgIH0KPgo+IFRoaXMgbG9va3MgbGlrZSBhIE1G
RCBzbyBpdCdzIHN1cnByaXNpbmcgdG8gc2VlIHVzIGRlZmluaW5nIGEgcmVnbWFwIGF0Cj4gdGhp
cyBsZXZlbC4gIFdoeSBhcmUgd2UgZG9pbmcgdGhpcz8KCkJlY2F1c2UgTVQ2MzYwIGluY2x1ZGUg
UE1VL1BNSUMvTERPL1RZUEVDIHBhcnQsIG9ubHkgUE1JQy9MRE8gaTJjIFIvVwpuZWVkIGNvbnRh
aW4gQ1JDIGZvcm1hdC4KV2Ugd2lsbCB1cGRhdGUgbmV3IHBhdGNoIHRvIGNvbmNsdWRlIHIvdyBp
biBtZmQgZHJpdmVyLgpBY2NvcmRpbmcgdG8gZGlmZmVyZW50IHJlZ2lzdGVyIGFkZHJlc3Mgd2l0
aCBiYW5rIG51bWJlciwgd2UgY2FuCmRpc3Rpbmd1aXNoIGRpZmZlcmVudCBwYXJ0IG9mIG1vZHVs
ZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
