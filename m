Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF20C2DD70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxSv3F6yPhsikocv6oGZt61X1AMsv3bLz4kSu7Wgrxo=; b=uTFdb4u9TrBAYI
	ZN8orA4xP+SOI+QXi3qZswA4tPpdBZB+7T5FN/gqKdrw9qoJH80fQaIQHXfdX3aaWhcP6ZzYLtSKp
	PHqoya0hvcAB0iEOP5T+2myeZCqbHkQU8+rW/miar7m8nq+4bPfmEB3zGmGZKXPs1teorGRltV1nr
	6JW+OU51NfCwi17pry2FXPd4KSZfaEJu0nYsv8LC3vR70+cbaEruFPDjxK6DsSS0kXhGB0Cu0rb14
	4Xqx8Eu6hu4vSEYq0mvDyI0jjKZVi+DfIWldna4t7lQwx+5Vd+4mXSJrGQhSSGeENv5AMcT7rY9zj
	nT/hwyLa64etiKLUHSvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVy2S-0007pY-9G; Wed, 29 May 2019 12:50:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVy2K-0007oz-AZ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:50:33 +0000
Received: by mail-lj1-x241.google.com with SMTP id 188so2310623ljf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 05:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Y/GjW0ggTr+KDX5N1qvSh09429RppJ4FAnZ8i4WBnhY=;
 b=Fo1s04OMp+eFPrWrP1AbzDVpYhsfTrEJzNw2UnF8XZs4eMkMJ1jXUwBdKd0vdglyH5
 Cz2SByoPwre6bVExbfWGTwdTLHPQYK9CtIMOzDzbSlZGSq4L3qOASARaA4Jex+uSyrKY
 zYGwLVO/ClM9QTjLU+2kmN+m9cuBQj4gQcHYni3G5gdJwwFysC2aV6Ptz0JUBrH2zxNO
 hL7chCs/AP30bnDzOh+pSH66dQ34Xp1x7PazS+ns7Hiqt1UrEvZHrVgaKfok6eQqpGvg
 JSLuRdnOgPE8OEtC8gOBbRR/351gL5oBJBIWP9IoQ1TP5tknLTg2L0DunfMi6ufJFngV
 w+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y/GjW0ggTr+KDX5N1qvSh09429RppJ4FAnZ8i4WBnhY=;
 b=e4ggmSg1weWItEjXDea1hNyOcjYkgwwkNvsVN9v9seRkEmalL2vQqceaUyOu8ng6bx
 Ej/7Et3TwBLz+PAJF/FiQooQcRGj5gFz/n2CfRTaWAIIMVfNB67qZ9B4JYaEIpY1n74F
 IBLS9ESZ6qhwyVWNB8pAZqHBeS/CTKFsXCUGBDqyxo0oWXs6jov1IYW3TIzzurcIOQPd
 tJrL1clHc4T+4O3XnMcVT1ThT/gqsJBYPx4+ANJeieWUyX56XGQPbEB7XyCxRpyWHrv5
 /ABg0g2Tr7vGeoLYi91A9xI8YqoVizIsipx/bJ02Gq8hiMsils7ix/I5mJdOZU4byiPB
 dEgw==
X-Gm-Message-State: APjAAAWOkZwMqYcT3vKXxLXlgnW41wnaCnjoGHm3U/g7Tr0BQF1jK38f
 Nz5MI5JnKoVcx9/4O3XbZf+fTKfg
X-Google-Smtp-Source: APXvYqwRjJQjY7ixX0sxWEjupCb/IAECR01S9LEOiDFrhg1gvxe+Qd7Qxpq7qkk3ohQI57Gk8nusvw==
X-Received: by 2002:a2e:89cc:: with SMTP id c12mr60915243ljk.90.1559134226037; 
 Wed, 29 May 2019 05:50:26 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id 20sm3452950ljw.7.2019.05.29.05.50.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 05:50:24 -0700 (PDT)
Subject: Re: [PATCH V4 7/8] clk: tegra: Remove the old emc_mux clock for
 Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-8-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <6651442d-d501-9363-ff95-988e1a4a3982@gmail.com>
Date: Wed, 29 May 2019 15:49:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529082139.5581-8-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_055032_401283_C04436D6 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjkuMDUuMjAxOSAxMToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gUmVtb3ZlIHRoZSBvbGQg
ZW1jX211eCBjbG9jayBhbmQgZG9uJ3QgdXNlIHRoZSBjb21tb24gRU1DIGNsb2NrCj4gZGVmaW5p
dGlvbi4gVGhpcyB3aWxsIGJlIHJlcGxhY2VkIGJ5IGEgbmV3IGNsb2NrIGRlZmluZWQgaW4gdGhl
Cj4gRU1DIGRyaXZlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb3NlcGggTG8gPGpvc2VwaGxAbnZp
ZGlhLmNvbT4KPiAtLS0KPiB2NDoKPiAtIG1ha2Ugc3VyZSB0aGUgYmVoYXZpb3IgaXMgY29tcGF0
aWJsZSB3aXRoIGNhc2UgaWYgdGhlIGtlcm5lbCBzdGlsbAo+ICAgdXNlcyB0aGUgb2xkZXIgRFRC
IHdoaWNoIGRvZXNuJ3QgaGF2ZSBFTUMgbm9kZS4gQW5kIHRoZSBNQyBhbmQgRU1DCj4gICBjbG9j
ayBjYW4gc3RpbGwgYmUgcmVnaXN0ZXJlZCBzdWNjZXNzdWZsbHkuCj4gdjM6Cj4gLSBzcGxpdCB0
byAzIHBhdGNoZXMgZnJvbSB0aGUgcHJldmlvdXMgdmVyc2lvbgo+IC0tLQo+ICBkcml2ZXJzL2Ns
ay90ZWdyYS9jbGstdGVncmEyMTAuYyB8IDQyICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMjEwLmMgYi9kcml2
ZXJzL2Nsay90ZWdyYS9jbGstdGVncmEyMTAuYwo+IGluZGV4IDFkNTIzNTQ4MjBjYS4uOGIyMDll
OGI1ZWFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdyYTIxMC5jCj4g
KysrIGIvZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMjEwLmMKPiBAQCAtMjgsNiArMjgsNyBA
QAo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvdGVncmEyMTAtY2FyLmg+Cj4gICNpbmNs
dWRlIDxsaW51eC9pb3BvbGwuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3NpemVzLmg+Cj4gKyNpbmNs
dWRlIDxzb2MvdGVncmEvZW1jLmg+Cj4gICNpbmNsdWRlIDxzb2MvdGVncmEvcG1jLmg+Cj4gIAo+
ICAjaW5jbHVkZSAiY2xrLmgiCj4gQEAgLTMyNCwxMiArMzI1LDYgQEAgc3RhdGljIHVuc2lnbmVk
IGxvbmcgdGVncmEyMTBfaW5wdXRfZnJlcVtdID0gewo+ICAJWzhdID0gMTIwMDAwMDAsCj4gIH07
Cj4gIAo+IC1zdGF0aWMgY29uc3QgY2hhciAqbXV4X3BsbG1jcF9jbGttW10gPSB7Cj4gLQkicGxs
X20iLCAicGxsX2MiLCAicGxsX3AiLCAiY2xrX20iLCAicGxsX21fdWQiLCAicGxsX21iIiwgInBs
bF9tYiIsCj4gLQkicGxsX3AiLAo+IC19Owo+IC0jZGVmaW5lIG11eF9wbGxtY3BfY2xrbV9pZHgg
TlVMTAo+IC0KPiAgI2RlZmluZSBQTExfRU5BQkxFCQkJKDEgPDwgMzApCj4gIAo+ICAjZGVmaW5l
IFBMTENYX01JU0MxX0lERFEJCSgxIDw8IDI3KQo+IEBAIC0yMzQ2LDcgKzIzNDEsNiBAQCBzdGF0
aWMgc3RydWN0IHRlZ3JhX2NsayB0ZWdyYTIxMF9jbGtzW3RlZ3JhX2Nsa19tYXhdIF9faW5pdGRh
dGEgPSB7Cj4gIAlbdGVncmFfY2xrX2kyYzJdID0geyAuZHRfaWQgPSBURUdSQTIxMF9DTEtfSTJD
MiwgLnByZXNlbnQgPSB0cnVlIH0sCj4gIAlbdGVncmFfY2xrX3VhcnRjXzhdID0geyAuZHRfaWQg
PSBURUdSQTIxMF9DTEtfVUFSVEMsIC5wcmVzZW50ID0gdHJ1ZSB9LAo+ICAJW3RlZ3JhX2Nsa19t
aXBpX2NhbF0gPSB7IC5kdF9pZCA9IFRFR1JBMjEwX0NMS19NSVBJX0NBTCwgLnByZXNlbnQgPSB0
cnVlIH0sCj4gLQlbdGVncmFfY2xrX2VtY10gPSB7IC5kdF9pZCA9IFRFR1JBMjEwX0NMS19FTUMs
IC5wcmVzZW50ID0gdHJ1ZSB9LAo+ICAJW3RlZ3JhX2Nsa191c2IyXSA9IHsgLmR0X2lkID0gVEVH
UkEyMTBfQ0xLX1VTQjIsIC5wcmVzZW50ID0gdHJ1ZSB9LAo+ICAJW3RlZ3JhX2Nsa19ic2V2XSA9
IHsgLmR0X2lkID0gVEVHUkEyMTBfQ0xLX0JTRVYsIC5wcmVzZW50ID0gdHJ1ZSB9LAo+ICAJW3Rl
Z3JhX2Nsa191YXJ0ZF84XSA9IHsgLmR0X2lkID0gVEVHUkEyMTBfQ0xLX1VBUlRELCAucHJlc2Vu
dCA9IHRydWUgfSwKPiBAQCAtMjk1Nyw2ICsyOTUxLDI3IEBAIHN0YXRpYyBpbnQgdGVncmEyMTBf
aW5pdF9wbGx1KHZvaWQpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIGNvbnN0IHN0
cnVjdCBjbGtfZGl2X3RhYmxlIG1jX2Rpdl90YWJsZV90ZWdyYTIxMFtdID0gewo+ICsJeyAudmFs
ID0gMCwgLmRpdiA9IDIgfSwKPiArCXsgLnZhbCA9IDEsIC5kaXYgPSA0IH0sCj4gKwl7IC52YWwg
PSAyLCAuZGl2ID0gMSB9LAo+ICsJeyAudmFsID0gMywgLmRpdiA9IDIgfSwKPiArCXsgLnZhbCA9
IDAsIC5kaXYgPSAwIH0sCj4gK307Cj4gKwo+ICtzdGF0aWMgdm9pZCB0ZWdyYTIxMF9jbGtfcmVn
aXN0ZXJfbWMoY29uc3QgY2hhciAqbmFtZSwKPiArCQkJCSAgICAgY29uc3QgY2hhciAqcGFyZW50
X25hbWUpCj4gK3sKPiArCXN0cnVjdCBjbGsgKmNsazsKPiArCj4gKwljbGsgPSBjbGtfcmVnaXN0
ZXJfZGl2aWRlcl90YWJsZShOVUxMLCBuYW1lLCBwYXJlbnRfbmFtZSwKPiArCQkJCQkgQ0xLX0lT
X0NSSVRJQ0FMLAo+ICsJCQkJCSBjbGtfYmFzZSArIENMS19TT1VSQ0VfRU1DLAo+ICsJCQkJCSAx
NSwgMiwgQ0xLX0RJVklERVJfUkVBRF9PTkxZLAo+ICsJCQkJCSBtY19kaXZfdGFibGVfdGVncmEy
MTAsICZlbWNfbG9jayk7CgpUaGlzIGRvZXNuJ3QgbG9vayByaWdodCwgeW91J3JlIG1peGluZyB1
cCB0aGUgTUMgZGl2aWRlciB3aXRoIHRoZSBFTUMKZGl2aWRlciBoZXJlLiBUaGUgTUMgY2xvY2sg
aXMgYWx3YXlzIHNvdXJjZWQgZnJvbSBFTUMgYW5kIHRoZXJlIGlzIG9ubHkKb25lIGJpdCBmb3Ig
dGhlIE1DIGRpdmlkZXIsIHRoZSBiaXQgMTYgTUNfRU1DX1NBTUVfRlJFUS4KCldoZW4gRU1DIGNs
b2NrIGlzIGRpdmlkZWQgZG93biBieSAyIChiaXQgMTUgRU1DX0NMS19ESVYyX0VOKSwgdGhlbiB0
aGUKY2xrLWZyYW1ld29yayB3aWxsIHRha2UgY2FyZSBvZiBpdCBieSBjYWxjdWxhdGluZyB0aGUg
TUMgcmF0ZSBiYXNlZCBvbgp0aGUgYWN0dWFsIHBhcmVudCBFTUMgcmF0ZS4KCj4gKwljbGtzW1RF
R1JBMjEwX0NMS19NQ10gPSBjbGs7Cj4gK30KPiArCj4gIHN0YXRpYyBjb25zdCBjaGFyICogY29u
c3Qgc29yMV9vdXRfcGFyZW50c1tdID0gewo+ICAJLyoKPiAgCSAqIEJpdCAwIG9mIHRoZSBtdXgg
c2VsZWN0cyBzb3IxX3BhZF9jbGtvdXQsIGlycmVzcGVjdGl2ZSBvZiBiaXQgMSwgc28KPiBAQCAt
MzA0MCwxNSArMzA1NSwxMiBAQCBzdGF0aWMgX19pbml0IHZvaWQgdGVncmEyMTBfcGVyaXBoX2Ns
a19pbml0KHZvaWQgX19pb21lbSAqY2xrX2Jhc2UsCj4gIAkJCUNMS19TT1VSQ0VfTEEsIDApOwo+
ICAJY2xrc1tURUdSQTIxMF9DTEtfTEFdID0gY2xrOwo+ICAKPiAtCS8qIGVtYyBtdXggKi8KPiAt
CWNsayA9IGNsa19yZWdpc3Rlcl9tdXgoTlVMTCwgImVtY19tdXgiLCBtdXhfcGxsbWNwX2Nsa20s
Cj4gLQkJCSAgICAgICBBUlJBWV9TSVpFKG11eF9wbGxtY3BfY2xrbSksIDAsCj4gLQkJCSAgICAg
ICBjbGtfYmFzZSArIENMS19TT1VSQ0VfRU1DLAo+IC0JCQkgICAgICAgMjksIDMsIDAsICZlbWNf
bG9jayk7Cj4gKwkvKiBlbWMgKi8KPiArCWNsayA9IHRlZ3JhMjEwX2Nsa19yZWdpc3Rlcl9lbWMo
KTsKPiArCWNsa3NbVEVHUkEyMTBfQ0xLX0VNQ10gPSBjbGs7Cj4gIAo+IC0JY2xrID0gdGVncmFf
Y2xrX3JlZ2lzdGVyX21jKCJtYyIsICJlbWNfbXV4IiwgY2xrX2Jhc2UgKyBDTEtfU09VUkNFX0VN
QywKPiAtCQkJCSAgICAmZW1jX2xvY2spOwo+IC0JY2xrc1tURUdSQTIxMF9DTEtfTUNdID0gY2xr
Owo+ICsJLyogbWMgKi8KPiArCXRlZ3JhMjEwX2Nsa19yZWdpc3Rlcl9tYygibWMiLCAiZW1jIik7
Cj4gIAo+ICAJLyogY21sMCAqLwo+ICAJY2xrID0gY2xrX3JlZ2lzdGVyX2dhdGUoTlVMTCwgImNt
bDAiLCAicGxsX2UiLCAwLCBjbGtfYmFzZSArIFBMTEVfQVVYLAo+IAoKWW91IHNob3VsZCBsZWF2
ZSB0aGUgY29tbW9uIHRlZ3JhX2Nsa19yZWdpc3Rlcl9tYygpIHVzYWdlIGFzLWlzIGFuZCBvbmx5
CnMvZW1jX211eC9lbWMvIGluIHRoZSBhcmd1bWVudC4KCi0tIApEbWl0cnkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
