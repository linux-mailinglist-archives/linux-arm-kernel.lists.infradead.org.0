Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8CE143585
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 03:00:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYIuRILko9VtrZJcPpI9WqQDsjMe4mHmOTHa0QvPDA0=; b=RyiCUdDbO84Hoj
	APRM2CDPigHdxZ9acOlFHn+3XOTgKAbJwawlayL7sqP5Q8mdjW4AN0/jkuhmFSekNK1/GIFqbYnbB
	Q+jsic28PTTJelvjmA58/oeCJj05ig12/pkRq3o8oUfkqo/dFd5OJphn5aPyeaikGtKJMeTBjgwbp
	rfuxxLtepCLwyW6tSstyac7+wt+LpPeSbF66Mae0Ex8QXeNEj2m1HUBe0BbgYqkIZ1CEIrccUU3yz
	3kzkOn/zSKYd5kva2ZnceN2H78ZL8jBa0D0iy9qcr7aKxn5Dkwt+vGmUQNxGW5CUbQAgExDiVIygK
	uoEZ61hLdXAb44x8rzdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itiqE-00072q-Go; Tue, 21 Jan 2020 02:00:30 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itiq3-00072A-7c
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 02:00:23 +0000
Received: by mail-qk1-x742.google.com with SMTP id v195so1063872qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 18:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=upNueX43qx8SNiTkkymLpWe1nZzcm1rfEbeUh4i39po=;
 b=IFupxmd60gC+cjVHiSKGpYfpmgQ/wjjHeohRWFcSHq/k2/sV+q9HSle4UMjyAIsz5X
 DAZAEHs+ZHF57rw9lqwOk7NW6PPmI3eneDGvx+Ac/GusWGZkrc05xuGy8xHtuAQxV3e3
 Geu6jk+DTGgjZLM059mWRXqskObBKD6R1MAp3SBV1r0sSIgNUqfZ1/7jlLlAb9HMqMGS
 qjOT3GdpnWI9nD9S1ysiGOOngvVD5s0bsIAwM/NgNbrLRstU+nxKryGa2smYcPpCf6xS
 wbCWKPjzf1eFq3GXBOl1P7eBrGk64eYgqUvtjJud8K9SaxPvM77BceJzrxrHYlQED2gL
 mR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=upNueX43qx8SNiTkkymLpWe1nZzcm1rfEbeUh4i39po=;
 b=BDGKJzas8iwB0KOiegETvIR4QMsqRTYaMOVgkawjGIn7zgyyiasz8tFaVELpDArN/j
 s88tf+zHI1XSmqAsA/TK+mOs5sCv3AXQ08DFfANgDnJ/fdd4HtOuf95UZ7R3gos/Aml4
 cd6xU6VnEfKulQETP+yaVwMtuHW0tHD+zBWQJTag3wn3srfEE4xFqrr69fdNFAI5d0Lf
 sFvYOwybHBRHS7+9uSI4jqIrdGiybVdDcew4NgNELBp2qI6J0hLxWK0ROvEVcXEy1wQ0
 XrPMJda536vuEInGCFizvWSN3XJL6QXF0li0T+grplM+bB0tu0GDaq+K4XaIfcyErGYd
 Ct6g==
X-Gm-Message-State: APjAAAWwn7KskhqnB4Io83SpKREd7bZfE5wDZ8lRjM6vKV8pilT0/zRF
 Nnc8czBl15Ps4MvTZCElm+s9x0rP3g+VpKDMm3U=
X-Google-Smtp-Source: APXvYqy/kX8nvfjkwgUvD3CgwDoEmqiPhRp2Xir/IzRoqOTnx5cVtKlMi3AzJkpSEHZqIIXm0tVxDgbFh6vxtqzz3Zg=
X-Received: by 2002:a37:5d0:: with SMTP id 199mr2327381qkf.131.1579572016362; 
 Mon, 20 Jan 2020 18:00:16 -0800 (PST)
MIME-Version: 1.0
References: <20200120193328.17007-1-uwe@kleine-koenig.org>
In-Reply-To: <20200120193328.17007-1-uwe@kleine-koenig.org>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 20 Jan 2020 18:01:04 -0800
Message-ID: <CA+E=qVeEscYryOjD4FB+EH=JqFg6bVA3PHbx7sWrR7=9Zn003g@mail.gmail.com>
Subject: Re: [PATCH] ARM: s3c24xx/rx1950: switch to atomic pwm API
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_180019_274851_8244A9E8 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKYW4gMjAsIDIwMjAgYXQgMTE6MzMgQU0gVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBr
bGVpbmUta29lbmlnLm9yZz4gd3JvdGU6Cj4KPiBTdG9wIHVzaW5nIHRoZSBsZWdhY3kgUFdNIEFQ
SSB3aGljaCBvbmx5IHN0aWxsIGV4aXN0cyBiZWNhdXNlIHRoZXJlIGFyZQo+IHNvbWUgdXNlcnMg
bGVmdC4KPgo+IE5vdGUgdGhpcyBjaGFuZ2UgbWFrZSB1c2Ugb2YgdGhlIGZhY3QgdGhhdCB0aGUg
dmFsdWUgb2Ygc3RydWN0Cj4gcHdtX3N0YXRlOjpkdXR5X2N5Y2xlIGRvZXNuJ3QgbWF0dGVyIGZv
ciBhIGRpc2FibGVkIFBXTSBhbmQgc28gaXRzIHZhbHVlCj4gY2FuIHN0YXkgY29uc3RhbnQgc2lt
cGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCj4KPiBBIHNpZGUgZWZmZWN0IG9mIHRoZSBjb252ZXJz
aW9uIGlzIHRoYXQgdGhlIHB3bSBpc24ndCBzdG9wcGVkIGluCj4gcngxOTUwX2JhY2tsaWdodF9p
bml0KCkgYnkgdGhlIGNhbGwgdG8gcHdtX2FwcGx5X2FyZ3MoKSBqdXN0IGJlZm9yZQo+IHJlZW5h
YmxpbmcgaXQgd2hlbiByeDE5NTBfbGNkX3Bvd2VyKDEpIGlzIGNhbGxlZC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+CgpSZXZpZXdl
ZC1ieTogVmFzaWx5IEtob3J1emhpY2sgPGFuYXJzb3VsQGdtYWlsLmNvbT4KCj4gLS0tCj4gIGFy
Y2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLXJ4MTk1MC5jIHwgMTkgKysrKysrKysrKysrLS0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPgo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1yeDE5NTAuYyBiL2FyY2gv
YXJtL21hY2gtczNjMjR4eC9tYWNoLXJ4MTk1MC5jCj4gaW5kZXggMjlmOWIzNDVhNTMxLi4wM2Q4
ZjI3Y2RjMzIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtcngxOTUw
LmMKPiArKysgYi9hcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1yeDE5NTAuYwo+IEBAIC0zNzcs
NiArMzc3LDcgQEAgc3RhdGljIHN0cnVjdCBwd21fbG9va3VwIHJ4MTk1MF9wd21fbG9va3VwW10g
PSB7Cj4gIH07Cj4KPiAgc3RhdGljIHN0cnVjdCBwd21fZGV2aWNlICpsY2RfcHdtOwo+ICtzdGF0
aWMgc3RydWN0IHB3bV9zdGF0ZSBsY2RfcHdtX3N0YXRlOwo+Cj4gIHN0YXRpYyB2b2lkIHJ4MTk1
MF9sY2RfcG93ZXIoaW50IGVuYWJsZSkKPiAgewo+IEBAIC00MjksMTUgKzQzMCwxNiBAQCBzdGF0
aWMgdm9pZCByeDE5NTBfbGNkX3Bvd2VyKGludCBlbmFibGUpCj4KPiAgICAgICAgICAgICAgICAg
LyogR1BCMS0+T1VUUFVULCBHUEIxLT4wICovCj4gICAgICAgICAgICAgICAgIGdwaW9fZGlyZWN0
aW9uX291dHB1dChTM0MyNDEwX0dQQigxKSwgMCk7Cj4gLSAgICAgICAgICAgICAgIHB3bV9jb25m
aWcobGNkX3B3bSwgMCwgTENEX1BXTV9QRVJJT0QpOwo+IC0gICAgICAgICAgICAgICBwd21fZGlz
YWJsZShsY2RfcHdtKTsKPiArCj4gKyAgICAgICAgICAgICAgIGxjZF9wd21fc3RhdGUuZW5hYmxl
ZCA9IGZhbHNlOwo+ICsgICAgICAgICAgICAgICBwd21fYXBwbHlfc3RhdGUobGNkX3B3bSwgJmxj
ZF9wd21fc3RhdGUpOwo+Cj4gICAgICAgICAgICAgICAgIC8qIEdQQzAtPjAsIEdQQzEwLT4wICov
Cj4gICAgICAgICAgICAgICAgIGdwaW9fZGlyZWN0aW9uX291dHB1dChTM0MyNDEwX0dQQygwKSwg
MCk7Cj4gICAgICAgICAgICAgICAgIGdwaW9fZGlyZWN0aW9uX291dHB1dChTM0MyNDEwX0dQQygx
MCksIDApOwo+ICAgICAgICAgfSBlbHNlIHsKPiAtICAgICAgICAgICAgICAgcHdtX2NvbmZpZyhs
Y2RfcHdtLCBMQ0RfUFdNX0RVVFksIExDRF9QV01fUEVSSU9EKTsKPiAtICAgICAgICAgICAgICAg
cHdtX2VuYWJsZShsY2RfcHdtKTsKPiArICAgICAgICAgICAgICAgbGNkX3B3bV9zdGF0ZS5lbmFi
bGVkID0gdHJ1ZTsKPiArICAgICAgICAgICAgICAgcHdtX2FwcGx5X3N0YXRlKGxjZF9wd20sICZs
Y2RfcHdtX3N0YXRlKTsKPgo+ICAgICAgICAgICAgICAgICBncGlvX2RpcmVjdGlvbl9vdXRwdXQo
UzNDMjQxMF9HUEMoMCksIDEpOwo+ICAgICAgICAgICAgICAgICBncGlvX2RpcmVjdGlvbl9vdXRw
dXQoUzNDMjQxMF9HUEMoNSksIDEpOwo+IEBAIC00OTMsMTAgKzQ5NSwxMyBAQCBzdGF0aWMgaW50
IHJ4MTk1MF9iYWNrbGlnaHRfaW5pdChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gICAgICAgICB9Cj4K
PiAgICAgICAgIC8qCj4gLSAgICAgICAgKiBGSVhNRTogcHdtX2FwcGx5X2FyZ3MoKSBzaG91bGQg
YmUgcmVtb3ZlZCB3aGVuIHN3aXRjaGluZyB0bwo+IC0gICAgICAgICogdGhlIGF0b21pYyBQV00g
QVBJLgo+ICsgICAgICAgICogVGhpcyBpcyBvbmx5IHJlcXVpcmVkIHRvIGluaXRpYWxpemUgLnBv
bGFyaXR5OyBhbGwgb3RoZXIgdmFsdWVzIGFyZQo+ICsgICAgICAgICogZml4ZWQgaW4gdGhpcyBk
cml2ZXIuCj4gICAgICAgICAgKi8KPiAtICAgICAgIHB3bV9hcHBseV9hcmdzKGxjZF9wd20pOwo+
ICsgICAgICAgcHdtX2luaXRfc3RhdGUobGNkX3B3bSwgJmxjZF9wd21fc3RhdGUpOwo+ICsKPiAr
ICAgICAgIGxjZF9wd21fc3RhdGUucGVyaW9kID0gTENEX1BXTV9QRVJJT0Q7Cj4gKyAgICAgICBs
Y2RfcHdtX3N0YXRlLmR1dHlfY3ljbGUgPSBMQ0RfUFdNX0RVVFk7Cj4KPiAgICAgICAgIHJ4MTk1
MF9sY2RfcG93ZXIoMSk7Cj4gICAgICAgICByeDE5NTBfYmxfcG93ZXIoMSk7Cj4gLS0KPiAyLjI0
LjAKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
