Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EE07D4E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 07:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbhkexI/W3az1Mfq0859KvRukPeEbB2H06W/Hm/tvcs=; b=pP4C33rtW1NZoT
	7XMANaFjBH14FMBg45aE0NvPoQy2LrM8ry2yToXInT5gZGs0B6xEj3p9zLHbnGkBKMZcgLZT5zUet
	Oe4evAj/zCoQejvdZxizmQzs376bRW6r1oXxlHOduvSJCArccRmKB0gu1HwEDdofaPwo7q13Z8wwq
	Q9e9I7o3uGnFJfx7uu1I7qyhrmy4zLhAdlqjpnDIIxjWUjQuEwNy3D/5pPUJ2Z5jkB6VMXgCy/s1f
	zEFRgzRJHeZewhbGV3TTt0Eye7NOBTxdf93E0I557gVJA5QrIaH/OvS29Z7LplTlv7VpoYzJw1Sc1
	yl0uVbCSfwrUqcPdmH3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht3h8-0001do-Gf; Thu, 01 Aug 2019 05:32:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht3h1-0001dS-UD
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 05:32:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so72097252wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 22:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=huNfAOKjl+kk+4Jtq0u6/qi6NLR+RYJid7AxvJTx6iY=;
 b=FWFYV5rxxlAYxAyoz/kKo31BDIaLqpIqBrNWI0UIl/b7/S4FYjmih8RX2OMahtJZ0P
 8su1AOW2vd6neyowrzCnQzv1dFWesGMLkemIjw/yETxa1X/2DXRPUr9JtSnSFMfgBsuU
 wlsEtfODcgAQ079oIj/sHHVU+6k3s9j8Lur5KGllD1lDFPmDO+MYO4ZojPr3gQq+GQtX
 NNy8zD4WNZO8+9Os0mlEw4IbovjIfQ6NoXG1JsVxiyNau5fs86qT8Ff8eJe034BW10Yz
 QldOQUWCevUbtw1eUE3LU83A8qzYOi1/rjPJ78QJDQUHbtOVRN2nlhS9pdGjO2ps+Ncg
 bLuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=huNfAOKjl+kk+4Jtq0u6/qi6NLR+RYJid7AxvJTx6iY=;
 b=fJRNoOTFMEgF8cCwpVvZUKKGobMCy58B9777uDqoBO9FLpFVcYyD/XV+f6OWcphUhU
 O6ei22a75PurtnwtXXAWNuu1yTFKkPtiPHIAQDiYbOVYBjbPejBKJdwiIX1Spumo/4jG
 gp+I0vnmf/u0O6o0cL+EEKIa+3Bmn5yZTeuLIPWzKzxu1mUCWEtyCJPLEWDcAzRHQ5i6
 VSqwlNNgIy00mcGYKUje85s9TdlXOL8+/l3+ISxaxTJVDfkGu74I+/zbukxVvsdR5CsI
 oPy2o9foKENwMH7v52BLiApRWZUaLKNEcPIiEuLtXhdFbHH3NSO0Y0pIMA8MevGGcmbJ
 7YHQ==
X-Gm-Message-State: APjAAAVbpbaQWoQHfs3akw8sjdozJ6tM179+DYRQcTZ60VB1lGWkBlB1
 K22oVLejxjFBLYnRCxX4q5I=
X-Google-Smtp-Source: APXvYqzGfkEtAIaSRDZ/5FHdZBBGE9LyWinhe6pQxrmSPYLcwZ/eZiDN2S5PQ04+spdYxBWXDX0+Kw==
X-Received: by 2002:a5d:4085:: with SMTP id o5mr136182150wrp.101.1564637518192; 
 Wed, 31 Jul 2019 22:31:58 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-194-152-11-237.cable.triera.net.
 [194.152.11.237])
 by smtp.gmail.com with ESMTPSA id o7sm61277403wmf.43.2019.07.31.22.31.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 22:31:57 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, maxime.ripard@bootlin.com
Subject: Re: [linux-sunxi] Re: [PATCH v4 6/9] ASoC: sun4i-i2s: Add multi-lane
 functionality
Date: Thu, 01 Aug 2019 07:31:55 +0200
Message-ID: <1589203.0AjJVEASy3@jernej-laptop>
In-Reply-To: <20190731122953.2u3iabd6gkn7jv7k@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <2092329.vleAuWJ0xl@jernej-laptop> <20190731122953.2u3iabd6gkn7jv7k@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_223159_993940_9F36D47F 
X-CRM114-Status: GOOD (  30.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Christopher Obbard <chris@64studio.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, codekipper@gmail.com,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNyZWRhLCAzMS4ganVsaWogMjAxOSBvYiAxNDoyOTo1MyBDRVNUIGplIE1heGltZSBSaXBh
cmQgbmFwaXNhbChhKToKPiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAwNzo1NzoxMFBNICswMjAw
LCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBEbmUgdG9yZWssIDA0LiBqdW5paiAyMDE5IG9i
IDExOjM4OjQ0IENFU1QgamUgQ29kZSBLaXBwZXIgbmFwaXNhbChhKToKPiA+ID4gT24gVHVlLCA0
IEp1biAyMDE5IGF0IDExOjAyLCBDaHJpc3RvcGhlciBPYmJhcmQgPGNocmlzQDY0c3R1ZGlvLmNv
bT4gCndyb3RlOgo+ID4gPiA+IE9uIFR1ZSwgNCBKdW4gMjAxOSBhdCAwOTo0MywgQ29kZSBLaXBw
ZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiA+IE9uIFR1ZSwgNCBKdW4g
MjAxOSBhdCAwOTo1OCwgTWF4aW1lIFJpcGFyZAo+ID4gPiA+ID4gPG1heGltZS5yaXBhcmRAYm9v
dGxpbi5jb20+Cj4gPiAKPiA+IHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBNb24sIEp1biAwMywgMjAx
OSBhdCAwNzo0NzozMlBNICswMjAwLCBjb2Rla2lwcGVyQGdtYWlsLmNvbSAKd3JvdGU6Cj4gPiA+
ID4gPiA+ID4gRnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+Cj4gPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gVGhlIGkycyBibG9jayBzdXBwb3J0cyBtdWx0aS1sYW5l
IGkycyBvdXRwdXQgaG93ZXZlciB0aGlzCj4gPiA+ID4gPiA+ID4gZnVuY3Rpb25hbGl0eQo+ID4g
PiA+ID4gPiA+IGlzIG9ubHkgcG9zc2libGUgaW4gZWFybGllciBTb0NzIHdoZXJlIHRoZSBwaW5z
IGFyZSBleHBvc2VkIGFuZAo+ID4gPiA+ID4gPiA+IGZvcgo+ID4gPiA+ID4gPiA+IHRoZSBpMnMg
YmxvY2sgdXNlZCBmb3IgSERNSSBhdWRpbyBvbiB0aGUgbGF0ZXIgU29Dcy4KPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiBUbyBlbmFibGUgdGhpcyBmdW5jdGlvbmFsaXR5LCBhbiBvcHRpb25h
bCBwcm9wZXJ0eSBoYXMgYmVlbgo+ID4gPiA+ID4gPiA+IGFkZGVkIHRvCj4gPiA+ID4gPiA+ID4g
dGhlIGJpbmRpbmdzLgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gSSdkIGxpa2UgdG8gaGF2ZSBNYXJrJ3MgaW5wdXQgb24gdGhpcywgYnV0IEknbSByZWFs
bHkgd29ycmllZAo+ID4gPiA+ID4gPiBhYm91dAo+ID4gPiA+ID4gPiB0aGUgaW50ZXJhY3Rpb24g
d2l0aCB0aGUgcHJvcGVyIFRETSBzdXBwb3J0Lgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gT3Vy
IGZ1bmRhbWVudGFsIGlzc3VlIGlzIHRoYXQgdGhlIGNvbnRyb2xsZXIgY2FuIGhhdmUgdXAgdG8g
OAo+ID4gPiA+ID4gPiBjaGFubmVscywgYnV0IGVpdGhlciBvbiA0IGxpbmVzIChpbnN0ZWFkIG9m
IDEpLCBvciA4IGNoYW5uZWxzIG9uIDEKPiA+ID4gPiA+ID4gKGxpa2UgcHJvcGVyIFRETSkgKG9y
IGFueSBjb21iaW5hdGlvbiBiZXR3ZWVuIHRoZSB0d28sIGJ1dCB0aGF0Cj4gPiA+ID4gPiA+IHNo
b3VsZAo+ID4gPiA+ID4gPiBiZSBwcmV0dHkgcmFyZSkuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEkg
dW5kZXJzdGFuZC4uLm1heWJlIHRoZSBURE0gbmVlZHMgdG8gYmUgZXh0ZW5kZWQgdG8gc3VwcG9y
dCB0aGlzIHRvCj4gPiA+ID4gPiBjb25zaWRlciBjaGFubmVsIG1hcHBpbmcgYW5kIG11bHRpcGxl
IHRyYW5zZmVyIGxpbmVzLiBJIHdhcyB0aGlua2luZwo+ID4gPiA+ID4gYWJvdXQgdGhlIGxhdGVy
IHdoZW4gc29tZW9uZSB3YXMgcmVxdWVzdGluZyBzdXBwb3J0IG9uIElJUkMgYSB3aGlsZQo+ID4g
PiA+ID4gYWdvLCBJIHRob3VnaHQgbWFza2luZyBtaWdodCBvZiBiZWVuIGEgc29sdXRpb24uIFRo
ZXNlIGNhbiB3YWl0IGFzCj4gPiA+ID4gPiB0aGUKPiA+ID4gPiA+IG9ubHkgY29uc3VtZXIgYXQg
dGhlIG1vbWVudCBpcyBMaWJyZUVMRUMgYW5kIHdlIGNhbiBwYXRjaCBpdCB0aGVyZS4KPiA+ID4g
PiAKPiA+ID4gPiBIaSBNYXJjdXMsCj4gPiA+ID4gCj4gPiA+ID4gRldJVywgdGhlIFRJIE1jQVNQ
IGRyaXZlciBoYXMgc3VwcG9ydCBmb3IgVERNICYgKGkgdGhpbms/KSBtdWx0aXBsZQo+ID4gPiA+
IHRyYW5zZmVyIGxpbmVzIHdoaWNoIGFyZSBjYWxsZWQgc2VyaWFsaXplcnMuCj4gPiA+ID4gTWF5
YmUgdGhpcyBjYW4gaGVscCB3aXRoIGluc3BpcmF0aW9uPwo+ID4gPiA+IHNlZQo+ID4gPiA+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xp
bnV4LmdpdC90cmUKPiA+ID4gPiBlL3MKPiA+ID4gPiBvdW5kL3NvYy90aS9kYXZpbmNpLW1jYXNw
LmMgc2FtcGxlIERUUzoKPiA+ID4gPiAKPiA+ID4gPiAmbWNhc3AwIHsKPiA+ID4gPiAKPiA+ID4g
PiAgICAgI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKPiA+ID4gPiAgICAgc3RhdHVzID0gIm9rYXki
Owo+ID4gPiA+ICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiA+ICAgICBwaW5j
dHJsLTAgPSA8Jm1jYXNwMF9waW5zPjsKPiA+ID4gPiAgICAgCj4gPiA+ID4gICAgIG9wLW1vZGUg
PSA8MD47Cj4gPiA+ID4gICAgIHRkbS1zbG90cyA9IDw4PjsKPiA+ID4gPiAgICAgc2VyaWFsLWRp
ciA9IDwKPiA+ID4gPiAgICAgCj4gPiA+ID4gICAgICAgICAyIDAgMSAwCj4gPiA+ID4gICAgICAg
ICAwIDAgMCAwCj4gPiA+ID4gICAgICAgICAwIDAgMCAwCj4gPiA+ID4gICAgICAgICAwIDAgMCAw
Cj4gPiA+ID4gICAgID4KPiA+ID4gPiAgICAgPjsKPiA+ID4gPiAgICAgCj4gPiA+ID4gICAgIHR4
LW51bS1ldnQgPSA8MT47Cj4gPiA+ID4gICAgIHJ4LW51bS1ldnQgPSA8MT47Cj4gPiA+ID4gCj4g
PiA+ID4gfTsKPiA+ID4gPiAKPiA+ID4gPiBDaGVlcnMhCj4gPiA+IAo+ID4gPiBUaGFua3MsIHRo
aXMgbG9va3MgZ29vZC4KPiA+IAo+ID4gSSB3b3VsZCByZWFsbHkgbGlrZSB0byBzZWUgdGhpcyBp
c3N1ZSByZXNvbHZlZCwgYmVjYXVzZSBIRE1JIGF1ZGlvIHN1cHBvcnQKPiA+IGluIG1haW5saW5l
IExpbnV4IGZvciB0aG9zZSBTb0NzIGlzIGxvbmcgb3ZlcmR1ZS4KPiA+IAo+ID4gSG93ZXZlciwg
dGhlcmUgaXMgYSBwb3NzaWJpbGl0eSB0byBzdGlsbCBhZGQgSERNSSBhdWRpbyBzdXBvcnQgKHN0
ZXJlbwo+ID4gb25seSkgZXZlbiBpZiB0aGlzIGlzc3VlIGlzIG5vdCBjb21wbGV0ZWx5IHNvbHZl
ZC4gSWYgd2UgYWdyZWUgdGhhdAo+ID4gY29uZmlndXJhdGlvbiBvZiBjaGFubmVscyB3b3VsZCBi
ZSBzb2x2ZWQgd2l0aCBhZGRpdGlvbmFsIHByb3BlcnR5IGFzCj4gPiBDaHJpc3RvcGhlciBzdWdn
ZXN0ZWQsIHN1cHBvcnQgZm9yID4yIGNoYW5uZWxzIGNhbiBiZSBsZWZ0IGZvciBhIGxhdGVyCj4g
PiB0aW1lIHdoZW4gc3VwcG9ydCBmb3IgdGhhdCBwcm9wZXJ0eSB3b3VsZCBiZSBpbXBsZW1lbnRl
ZC4gQ3VycmVudGx5LAo+ID4gc3RlcmVvIEhETUkgYXVkaW8gc3VwcG9ydCBjYW4gYmUgYWRkZWQg
d2l0aCBhIGZldyBwYXRjaGVzLgo+ID4gCj4gPiBJIHRoaW5rIGFsbCBJMlMgY29yZXMgYXJlIHJl
YWxseSB0aGUgc2FtZSwgbm8gbWF0dGVyIGlmIGludGVybmFsbHkKPiA+IGNvbm5lY3RlZCB0byBI
RE1JIGNvbnRyb2xsZXIgb3Igcm91dGVkIHRvIHBpbnMsIHNvIGl0IHdvdWxkIG1ha2Ugc2Vuc2Ug
dG8KPiA+IHVzZSBzYW1lIGNvbXBhdGlibGUgZm9yIGFsbCBvZiB0aGVtLiBJdCdzIGp1c3QgdGhh
dCB0aG9zZSBJMlMgY29yZXMgd2hpY2gKPiA+IGFyZSByb3V0ZWQgdG8gcGlucyBjYW4gdXNlIG9u
bHkgb25lIGxhbmUgYW5kID4yIGNoYW5uZWxzIGNhbiBiZSB1c2VkIG9ubHkKPiA+IGluIFRETSBt
b2RlIG9mIG9wZXJhdGlvbiwgaWYgSSB1bmRlcnN0YW5kIHRoaXMgY29ycmVjdGx5Lgo+ID4gCj4g
PiBOZXcgcHJvcGVydHkgd291bGQgaGF2ZSB0byBiZSBvcHRpb25hbCwgc28gaXQncyBvbWlzc2lv
biB3b3VsZCByZXN1bHQgaW4KPiA+IHNhbWUgY2hhbm5lbCBjb25maWd1cmF0aW9uIGFzIGl0IGlz
IGFscmVhZHkgcHJlc2VudCwgdG8gcHJlc2VydmUKPiA+IGNvbXBhdGliaWxpdHkgd2l0aCBvbGQg
ZGV2aWNlIHRyZWVzLiBBbmQgdGhpcyBtb2RlIGlzIGFscmVhZHkgc3VmZmljaWVudAo+ID4gZm9y
IHN0ZXJlbyBIRE1JIGF1ZGlvIHN1cHBvcnQuCj4gCj4gWWVhaCwgaXQgbG9va3MgbGlrZSBhIGdv
b2QgcGxhbi4KPiAKPiA+IFNpZGUgbm90ZTogSERNSSBhdWRpbyB3aXRoIGN1cnJlbnQgc3VuNGkt
aTJzIGRyaXZlciBoYXMgYSBkZWxheSAoYWJvdXQgYQo+ID4gc2Vjb25kKSwgc3VwcG9zZWRseSBi
ZWNhdXNlIERXIEhETUkgY29udHJvbGxlciBhdXRvbWF0aWNhbGx5IGdlbmVyYXRlcyBDVFMKPiA+
IHZhbHVlIGJhc2VkIG9uIEkyUyBjbG9jayAoYXV0byBDVFMgdmFsdWUgZ2VuZXJhdGlvbiBpcyBl
bmFibGVkIHBlcgo+ID4gRGVzaWduV2FyZSByZWNvbWVuZGF0aW9uIGZvciBEVyBIRE1JIEkyUyBp
bnRlcmZhY2UpLgo+IAo+IElzIHRoYXQgYSBjb25zdGFudCBkZWxheSBkdXJpbmcgdGhlIGF1ZGlv
IHBsYXliYWNrLCBvciBvbmx5IGF0IHN0YXJ0dXA/CgpJIHRoaW5rIGl0J3MganVzdCBhdCBzdGFy
dHVwLCBlLmcuIGlmIHlvdSdyZSB3YXRjaGluZyBtb3ZpZSwgYXVkaW8gaXMgaW4gc3luYywgCml0
J3MganVzdCB0aGF0IGZpcnN0IHNlY29uZCBvciBzbyBpcyBzaWxlbnQuCgo+IAo+ID4gSTJTIGRy
aXZlciBmcm9tIEJTUCBMaW51eCBzb2x2ZXMgdGhhdCBieSBoYXZpbmcgSTJTIGNsb2NrIG91dHB1
dAo+ID4gZW5hYmxlZCBhbGwgdGhlIHRpbWUuIFNob3VsZCB0aGlzIGJlIGZsYWdnZWQgd2l0aCBz
b21lIGFkZGl0aW9uYWwKPiA+IHByb3BlcnR5IGluIERUPwo+IAo+IEknZCBzYXkgdGhhdCBpZiB0
aGUgY29kZWMgaGFzIHRoYXQgcmVxdWlyZW1lbnQsIHRoZW4gaXQgc2hvdWxkIGJlCj4gYmV0d2Vl
biB0aGUgY29kZWMgYW5kIHRoZSBEQUksIHRoZSBEVCBkb2Vzbid0IHJlYWxseSBoYXZlIGFueXRo
aW5nIHRvCj4gZG8gd2l0aCB0aGlzLgoKT2ssIGJ1dCBob3cgdG8gY29tbXVuaWNhdGUgdGhhdCBm
YWN0IHRvIEkyUyBkcml2ZXIgdGhlbj8gQlNQIGRyaXZlciBzb2x2ZXMgCnRoYXQgYnkgdXNpbmcg
ZGlmZmVyZW50IGNvbXBhdGlibGUsIGJ1dCBhcyBJIHNhaWQgYmVmb3JlLCBJMlMgY29yZXMgYXJl
IG5vdCAKcmVhbGx5IGRpZmZlcmVudCwgc28gdGhpcyBzZWVtcyB3cm9uZy4KCkJlc3QgcmVnYXJk
cywKSmVybmVqCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
