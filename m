Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EA91170B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 16:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sF9X4GjhH5WdB2IO217XSExKXsOX6GGXp8/X9nXBblk=; b=hBOCM1iEYF95ZI
	Yqye+w6ESajcvaf72QFf2NlZHEMCUBJszQHwcueScpiT3DgfMBzdmf1CO14kIpPunn5A/ftSHFPok
	i9g5ox7M6VPQf+I2S/H5p7Bv/4RtGMjragW0K6PkxVoiQvGftaFyoCuAHZCxngyKZvKBe7Y4RnzLM
	CjbHOh/mzLtL1cR10v2BonjBLTvFzEmIrFOaJcpVga4Q5RTiPTVl8HtpiIsfi7abxMhv8xqpEf3My
	S7Ja/Accao+/SNOjdbXvvlIkldBcgim/c6OGc3xA5t67+/f2Kc91FvZ544X6+35PnfI4bih8H1Imp
	Dxg103EBSDKwz5/ZHRvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieL7b-0001Mg-7z; Mon, 09 Dec 2019 15:38:51 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieL7U-0001MI-KG; Mon, 09 Dec 2019 15:38:46 +0000
Received: by mail-io1-xd41.google.com with SMTP id z26so15196662iot.8;
 Mon, 09 Dec 2019 07:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZJHtdl64eSg7tX1bls5wY/hgwg2SeBy1mqhpZlCukvg=;
 b=sYWBiNewuyqeitxp4PMfrWb8D5LArfvGYVlnna4mBtaRMWcybALmK4TSqg7M/HKA1i
 85aVtTxdrFrUZO5be9qMmHnxoj2f16hCkwRN6gtWVx+L9JUsxL5DLcePNscgNynYhloC
 VEm6MCqqrVLY1aRK63NYHp9pg3+pwb5JS4nOdvLU+JWQh1qcMOXZjhrE9qxaP0Q4BehK
 Gsn2K/LiOp2/s0TUyEEvu1PvhZpNTUN8pemOAMe5iT4VX7Ac1b2opKqp8pl7TSLhmffY
 HobeBr/5FkeX5fDbHWmaxUGCJKWKMFHairadzP8yQM6TqaCNEtvIec58Uw99BqricfOM
 k+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZJHtdl64eSg7tX1bls5wY/hgwg2SeBy1mqhpZlCukvg=;
 b=nZE4K33EUEHTwbhUzw+wnk2KTPT2YaiZZrHMWDQ1VJ5GxykFA0Du8xuZaWbnP00ayA
 6jHRtB/+qVrotYv1ygIIOqSvpP65kW9nJGepgw5D9pmkX8rUx4wZMlTfBbBmz4355bq1
 d4/LymNdN9XwcM772f47UFCQq+4bo1pXmxqK8wxEKPyidLaVXHCi2/CF2FA41vb6GEU7
 w8BzgQGUdLuUiBTb50T6++leFzStSFU03MvtiQBtlRoUE37AOJU4PClUFnwcRcYrM8pa
 KAdFUPfZxjCG1tdScIlYS02pRAjiysvgaJZFClo/C4prVg//Mk2CcZdtztCbnV0Rp6iM
 zWOA==
X-Gm-Message-State: APjAAAXxoQAOgvpU0a4o50VFGvbXOdQq/SBOiuY1bX4vxBfMl1RqT65+
 iFw+s/5NFde2YyV2qBblWAITigjijsMGTt7ZwaM=
X-Google-Smtp-Source: APXvYqyKe81SV620SWPT3vlC+s2nmZV57gLiyzYp6LoXO4TmESagI9KWQZJxUmkLqawCteKkmS0vffcB403S2IYmD8Y=
X-Received: by 2002:a02:8817:: with SMTP id r23mr28310766jai.120.1575905923417; 
 Mon, 09 Dec 2019 07:38:43 -0800 (PST)
MIME-Version: 1.0
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <20191206184536.2507-3-linux.amoon@gmail.com>
 <f1327196-66c9-d152-c0ca-914d43d6f55e@arm.com>
In-Reply-To: <f1327196-66c9-d152-c0ca-914d43d6f55e@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 9 Dec 2019 21:08:31 +0530
Message-ID: <CANAwSgTSDX=36eF3UxVyVykguRjd90=x4iT27s=nJg5ezG_V7w@mail.gmail.com>
Subject: Re: [RFCv1 2/8] mfd: rk808: use syscore for RK805 PMIC shutdown
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_073844_690358_63A36C75 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiBNb24sIDkgRGVjIDIwMTkgYXQgMTk6MDQsIFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMDYvMTIvMjAxOSA2OjQ1IHBtLCBBbmFu
ZCBNb29uIHdyb3RlOgo+ID4gVXNlIGNvbW1vbiBzeXNjb3JlX3NodXRkb3duIGZvciBSSzgwNSBQ
TUlDIHRvIGRvCj4gPiBjbGVhbiBJMkMgc2h1dGRvd24sIGRyb3AgdGhlIHVudXNlZCBwbV9wd3Jv
ZmZfcHJlcF9mbgo+ID4gYW5kIHBtX3B3cm9mZl9mbiBmdW5jdGlvbiBwb2ludGVycy4KPgo+IENv
aW5jaWRlbnRhbGx5LCBJJ3ZlIGFsc28gYmVlbiBsb29raW5nIGF0IFJLODA1IGZvciB0aGUgc2Fr
ZSBvZiB0cnlpbmcKPiB0byBnZXQgc3VzcGVuZCB0byBiZWhhdmUgb24gbXkgUkszMzI4IGJveCwg
YW5kIEkndmUgZW5kZWQgdXAgd2l0aCBzb21lCj4gc2xpZ2h0bHkgZGlmZmVyZW50IGNsZWFudXAg
cGF0Y2hlcyAtIEknbGwgdGlkeSB0aGVtIHVwIGFuZCBwb3N0IHRoZW0gZm9yCj4gY29tcGFyaXNv
biBhcyBzb29uIGFzIEkgY2FuLgoKTm8gaXNzdWUgaWYgdGhlaXIgaXMgYmV0dGVyIGNsZWFuIGFw
cHJvYWNoLCBJIHdpbGwgZGVmaW5pdGVseSB0ZXN0IHRoYXQgc2VyaWVzLgo+Cj4gPiBDYzogSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1v
b24gPGxpbnV4LmFtb29uQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL21mZC9yazgw
OC5jIHwgMzMgKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCj4gPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZmQvcms4MDguYyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKPiA+IGluZGV4
IGU2MzdmNWJjYzhiYi4uNzEzZDk4OTA2NGJhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZmQv
cms4MDguYwo+ID4gKysrIGIvZHJpdmVycy9tZmQvcms4MDguYwo+ID4gQEAgLTQ2NywxNiArNDY3
LDYgQEAgc3RhdGljIHZvaWQgcms4MDhfdXBkYXRlX2JpdHModW5zaWduZWQgaW50IHJlZywgdW5z
aWduZWQgaW50IG1hc2ssCj4gPiAgICAgICAgICAgICAgICAgICAgICAgImNhbid0IHdyaXRlIHRv
IHJlZ2lzdGVyIDB4JXg6ICV4IVxuIiwgcmVnLCByZXQpOwo+ID4gICB9Cj4gPgo+ID4gLXN0YXRp
YyB2b2lkIHJrODA1X2RldmljZV9zaHV0ZG93bih2b2lkKQo+ID4gLXsKPiA+IC0gICAgIHJrODA4
X3VwZGF0ZV9iaXRzKFJLODA1X0RFVl9DVFJMX1JFRywgREVWX09GRiwgREVWX09GRik7Cj4gPiAt
fQo+ID4gLQo+ID4gLXN0YXRpYyB2b2lkIHJrODA1X2RldmljZV9zaHV0ZG93bl9wcmVwYXJlKHZv
aWQpCj4gPiAtewo+ID4gLSAgICAgcms4MDhfdXBkYXRlX2JpdHMoUks4MDVfR1BJT19JT19QT0xf
UkVHLCBTTFBfU0RfTVNLLCBTSFVURE9XTl9GVU4pOwo+ID4gLX0KPiA+IC0KPiA+ICAgc3RhdGlj
IHZvaWQgcms4MDhfZGV2aWNlX3NodXRkb3duKHZvaWQpCj4gPiAgIHsKPiA+ICAgICAgIHJrODA4
X3VwZGF0ZV9iaXRzKFJLODA4X0RFVkNUUkxfUkVHLCBERVZfT0ZGX1JTVCwgREVWX09GRl9SU1Qp
Owo+ID4gQEAgLTQ5MSwxMCArNDgxLDIzIEBAIHN0YXRpYyB2b2lkIHJrOHh4X3N5c2NvcmVfc2h1
dGRvd24odm9pZCkKPiA+ICAgewo+ID4gICAgICAgc3RydWN0IHJrODA4ICpyazgwOCA9IGkyY19n
ZXRfY2xpZW50ZGF0YShyazgwOF9pMmNfY2xpZW50KTsKPiA+Cj4gPiAtICAgICBpZiAoc3lzdGVt
X3N0YXRlID09IFNZU1RFTV9QT1dFUl9PRkYgJiYKPiA+IC0gICAgICAgICAocms4MDgtPnZhcmlh
bnQgPT0gUks4MDlfSUQgfHwgcms4MDgtPnZhcmlhbnQgPT0gUks4MTdfSUQpKSB7Cj4gPiAtICAg
ICAgICAgICAgIHJrODA4X3VwZGF0ZV9iaXRzKFJLODE3X1NZU19DRkcoMyksIFJLODE3X1NMUFBJ
Tl9GVU5DX01TSywKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNMUFBJTl9ETl9G
VU4pOwo+ID4gKyAgICAgaWYgKHN5c3RlbV9zdGF0ZSA9PSBTWVNURU1fUE9XRVJfT0ZGKSB7Cj4g
PiArICAgICAgICAgICAgIGRldl9pbmZvKCZyazgwOF9pMmNfY2xpZW50LT5kZXYsICJTeXN0ZW0g
U2h1dGRvd24gRXZlbnRcbiIpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBzd2l0Y2ggKHJrODA4
LT52YXJpYW50KSB7Cj4gPiArICAgICAgICAgICAgIGNhc2UgUks4MDVfSUQ6Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgcms4MDhfdXBkYXRlX2JpdHMoUks4MDVfR1BJT19JT19QT0xfUkVHLAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTTFBfU0RfTVNLLCBTSFVU
RE9XTl9GVU4pOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJrODA4X3VwZGF0ZV9iaXRzKFJL
ODA1X0RFVl9DVFJMX1JFRywgREVWX09GRiwgREVWX09GRik7Cj4KPiBXaHkgdGhpcyBjaGFuZ2U/
IFNodXRkb3duIHZpYSB0aGUgU0xFRVAgcGluIGlzIHdvcmtpbmcganVzdCBmaW5lIG9uIG15Cj4g
Ym94IDovCj4KPiBSb2Jpbi4KCkFzIHBlciBSSy04MDUgZGF0YXNoZWV0IFswXSBiZWxvdy4KRm9y
IGNsZWFuIHBvd2Vyb2ZmIHdlIG5lZWQgdG8gc2V0IGluIERFVl9DVFJMX1JFRyByZWcKQml0IDAg
REVWX09GRjogd3JpdGUg4oCcMeKAnSB0byB0dXJuIGRvd24gdGhlIFBNVS4KClswXSBodHRwOi8v
ZmlsZXMucGluZTY0Lm9yZy9kb2Mvcm9jazY0L1JvY2tjaGlwX1JLODA1X0RhdGFzaGVldF9WMS4x
JUMyJUEwMjAxNjA5MjEucGRmCgotQW5hbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
