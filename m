Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4B81F4679
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLGoCeOOwxBq3uYUTxS6IBLiV2g/DZI8ReYbs0DCr1c=; b=i1MfqE00+mNbgG
	ulWAK+C7dSVdGTLKXBjBO3LmEr+iAp31sBdjL+mG8COoinTiJ0rkSNlnBUjN3epr9k1PIHWHOyBjV
	+HpDkeybJNrZSSyMRKhXcjyS1lBmgu32U91+CHetLzkZTz34bU2/irdpz326iflyl4ZIQTbZUr2A4
	z8736hxvX5nF8t4koU3zB4PJ1HYve/zQNWD3bQoRbM67MTjnSh7HyOFbXl0+1ra2G8Uh45OCiAOo8
	ruoFTGQnsUK5FKO7RgeM7Ren5iF/3DwJuCOWvV9JWbGIQQvwd6Mm3JY2fJGi/5pq37QtXSRlc8DZl
	4SgbMy8PRRDviN+lS0TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijC7-0006g7-IK; Tue, 09 Jun 2020 18:41:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijBy-0006fd-Vg
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:41:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id q11so22493807wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 11:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nmaejAPqL7w5RZ3rYBTgKoizKjTpzF9/rXO7+RKEnFs=;
 b=bT+muX/ZHRyFVoKnvmGjZYEBoJBSQhFE7M258fsMuSAMDYowHgy3BXIG/jHiBLN3Eu
 j44yKp2S1Qr5XCQKMWibyk0jNOe5ZUqG43z0mTcQgB8TqqYUAilZ/+TflAKsIoD+DYg1
 GiUnrBLUYvuXERBXq188+PcxnG+tGm3IfxkW3Wq0xTDoNESuL/TXFOE+ZgasGd5La3cx
 0RN999iXgJC2v/eadBv1wABQnyJuHz70FaHCXXpaWaEftcJLu5dCN01Qk2HOHHG4dywz
 Noa2fAHca/bEcEoRRIgF3kdGyr3gXsT44NPGuPONy9VKwePCyay2oPzNkfZ81KyeTGx+
 F5zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nmaejAPqL7w5RZ3rYBTgKoizKjTpzF9/rXO7+RKEnFs=;
 b=HOOlQc3W+v2mux3b8jmGc4cqfVJoGsWPwisFP0pZ4pFEU2yYQKXoHyaW7pCBncuRfS
 ZeWeWa5U+3tq0h0YgJG6XuwBQqyeXNPuxgjHRS6v1oZ/mwiURK37RTvjpzVth5u630ue
 uzebRqDDwTJLVfqTvH9El92Z783ffeUn01OHpQu7miqfUfokQbBCA0oS4s6/VCbFvRn/
 qpfCCMQEdYcPCkemvU40a3fofGdpP07u4TOcql61cgGTWppeCUGKNpGxEcwg/wOtRmth
 XEygochbsMzoCd6AC3RVeDo3QBGRowxb+J9KAjiVL4FjoXTXiWLD0SEU3L6wNR/yd2Nu
 dGXg==
X-Gm-Message-State: AOAM5335fJwKM9KfGvlOtelwGqMu8SMEsBVpXJNdoo3LNsOb1j6pZNsT
 orYPum6Hpy2tg1Mb3cc0MfbK1Q==
X-Google-Smtp-Source: ABdhPJx5FO/vEubUSX2PK6P+KpZvhjPdNngyh29RNODEGr7a4h7Gn46X2+6wYsXyxNUmt6ZTCXwdvQ==
X-Received: by 2002:adf:f44b:: with SMTP id f11mr5884154wrp.165.1591728105471; 
 Tue, 09 Jun 2020 11:41:45 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id 40sm4694407wrc.15.2020.06.09.11.41.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 11:41:44 -0700 (PDT)
Date: Tue, 9 Jun 2020 19:41:42 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200609184142.GN4106@dell>
References: <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
 <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
 <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609144201.GK4583@sirena.org.uk>
 <a2bae71634fe288f067d5e92090b7561@walle.cc>
 <20200609171520.GC1019634@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609171520.GC1019634@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_114147_053633_DE20F99E 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 david.m.ertman@intel.com, Guenter Roeck <linux@roeck-us.net>,
 devicetree <devicetree@vger.kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwOSBKdW4gMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE9uIFR1ZSwgSnVuIDA5
LCAyMDIwIGF0IDA1OjAxOjE3UE0gKzAyMDAsIE1pY2hhZWwgV2FsbGUgd3JvdGU6Cj4gPiBBbSAy
MDIwLTA2LTA5IDE2OjQyLCBzY2hyaWViIE1hcmsgQnJvd246Cj4gPiA+IE9uIFR1ZSwgSnVuIDA5
LCAyMDIwIGF0IDA0OjM4OjMxUE0gKzAyMDAsIE1pY2hhZWwgV2FsbGUgd3JvdGU6Cj4gPiA+IAo+
ID4gPiA+ICAgbWZkLWRldmljZUAxMCB7Cj4gPiA+ID4gICAgIGNvbXBhdGlibGUgPSAic2ltcGxl
LXJlZ21hcCIsICJzaW1wbGUtbWZkIjsKPiA+ID4gPiAgICAgcmVnID0gPDEwPjsKPiA+ID4gPiAg
ICAgcmVnbWFwLHJlZy1iaXRzID0gPDg+Owo+ID4gPiA+ICAgICByZWdtYXAsdmFsLWJpdHMgPSA8
OD47Cj4gPiA+ID4gICAgIHN1Yi1kZXZpY2VAMCB7Cj4gPiA+ID4gICAgICAgY29tcGF0aWJsZSA9
ICJ2ZW5kb3Isc3ViLWRldmljZTAiOwo+ID4gPiA+ICAgICAgIHJlZyA9IDwwPjsKPiA+ID4gPiAg
ICAgfTsKPiA+ID4gCj4gPiA+IEEgRFQgYmluZGluZyBsaWtlIHRoaXMgaXMgbm90IGEgZ29vZCBp
ZGVhLCBlbmNvZGluZyB0aGUgZGV0YWlscyBvZiB0aGUKPiA+ID4gcmVnaXN0ZXIgbWFwIGludG8g
dGhlIERUIGJpbmRpbmcgbWFrZXMgaXQgYW4gQUJJIHdoaWNoIGlzIGJlZ2dpbmcgZm9yCj4gPiA+
IHRyb3VibGUuICBJJ2QgYWxzbyBzdWdnZXN0IHRoYXQgYW55IGRldmljZSB1c2luZyBhIGdlbmVy
aWMgZHJpdmVyIGxpa2UKPiA+ID4gdGhpcyBzaG91bGQgaGF2ZSBhIHNwZWNpZmljIGNvbXBhdGli
bGUgc3RyaW5nIGZvciB0aGUgZGV2aWNlIHNvIHdlIGNhbgo+ID4gPiBnbyBiYWNrIGFuZCBhZGQg
cXVpcmtzIGxhdGVyIGlmIHdlIG5lZWQgdGhlbS4KPiA+IAo+ID4gTGlrZSBpbiB0aGUgc3BpZGV2
IGNhc2UsIHllcy4gQnV0IE9UT0ggaWYgSSBfanVzdF8gZW5jb2RlIHRoZSBwYXJhbWV0ZXJzCj4g
PiBmb3IgdGhlIHJlZ21hcCBhIE1GRCwgTGVlIGRvbid0IGFncmVlIGJlY2F1c2UgaXRzIGp1c3Qg
YSBzaGltLiBTbyBlaXRoZXIKPiA+IHdheSBJIHNlZW0gdG8gYmUgc3R1Y2sgaGVyZS4KPiA+IAo+
ID4gV2hlcmUgc2hvdWxkIEkgcHV0IHRoZSBjb2RlIHRvIGNyZWF0ZSBhbiBpMmMgZHJpdmVyLCBp
bml0IGEgcmVnbWFwIGFuZAo+ID4gcG9wdWxhdGUgaXRzIGNoaWxkZW4/Cj4gCj4gRmluZCBhbm90
aGVyIGRyaXZlciBkb2luZyB0aGlzIGFscmVhZHkgYW5kIHJlbmFtZSBpdCAnc2ltcGxlLW1mZCcg
KG5vIAo+IHJlbGF0aW9uIHRvIHRoZSBEVCBiaW5kaW5nKSBhbmQgYWRkIHlvdXIgY29tcGF0aWJs
ZSBzdHJpbmcgdG8gaXQuIAo+ICdHZW5lcmljJyBvciAnc2ltcGxlJyBkcml2ZXJzIGRvbid0IHJl
cXVpcmUgZ2VuZXJpYy9zaW1wbGUgRFQgYmluZGluZ3MuCgpDcmVhdGluZyBhIGdlbmVyaWMgZHJp
dmVyIGlzIG9uZSBvZiB0aGUgb3B0aW9ucyBzcGlubmluZyBhcm91bmQgaW4gbXkKaGVhZC4gIElm
IG5vdGhpbmcgYmV0dGVyIGNvbWVzIG9mIHRoZXNlIGRpc2N1c3Npb25zLCBJJ2xsIHR1cm4gbXkg
aGFuZAp0byBpdCBzb29uLgoKPiBPciBleHRlbmQgdGhlIGV4aXN0aW5nIHN5c2NvbiBkcml2ZXIg
dG8gbG9vayB1cCB0aGUgYnVzX3R5cGUgYW5kIGNyZWF0ZSAKPiB0aGUgcmVnbWFwIGJhc2VkIG9u
IHRoZSBidXMgdHlwZT8KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNh
bCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBC
bG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
