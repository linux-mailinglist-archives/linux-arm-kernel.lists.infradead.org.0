Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B2C3B012
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 09:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6tGJK3DKg6fYF084sZNQWwvHFm9L8e//rVWDABVASM=; b=h802rCSSa0ybwD
	sk9CToS8gZisCYTbTq1Bk51Vrbn4gHkgv08seP8yxaocmegO9kB8GONG+cirvvu030s7RQujJ06Lb
	Xn2s22J1iG7yXGZSMhZICjJd8gAxycKswx9kSzBP6rBcpZgnV17aP1F2wWMqvBO60Acc52sBsZuCO
	nYVnzoF4n13JYi0FYzaIVBRZteH8PcnMlh5+5ySD3ZY/HVIIbghMli4GZJNQ4btQ4FbNDkBYxF4eu
	q1oA28SF/DdlsVpBlCLtF3kk8LM5kpNYEOJRDbsevZ/bJJIWDhKvhKYMpAJYvOoqQ9SLTMrTLcKNr
	/xxjCzLDQljspDRRqNdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFBb-0005L2-OM; Mon, 10 Jun 2019 07:57:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFBO-0005Kh-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 07:57:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so8098334wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 00:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=xTVf10rNwhHdq0na/JiMNEiN+1J2gR7CZjLBDvBlZ9M=;
 b=C/7BgS21M51i7i2CmNw0m1n793WHuwfoYQkS3WRWJWKQsQBxjw9CIy2+Faq9ymMTeV
 U2GBuJzPbjKCHDCazNCv3EufybIeE1wUBtLZaPDWMGaINHWIIzfHC+0p9nVF7beZGSBd
 //LURySsxd2kT8FOBdUsOWxnFZ+5dl+hoVq7XeFhuZowUdZd4O1UvhPIRq4tH0zazkBr
 3TnjUYgkVr92aniAKuyUF8QQKGfjozeMSXNOnfXAnZNynC+7HVoNCxcff8tCQ4ZbboQl
 zVeN/hmZoEiKQoXh76n41vtHuJpPK1irmunendNLi9m6ZVhJKXOgCoZBuaGpKeVJspaT
 PIVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=xTVf10rNwhHdq0na/JiMNEiN+1J2gR7CZjLBDvBlZ9M=;
 b=LBxTv53CuI69AnzhY2/FQHTDIko6n+6NjdxWRCoW/OgxFpgVnWmY4Sld6xgrjtuDDw
 lVPfg3ceTt5138xK6qklPeJIaiZqka0XPvJ/1XbM/Z+IfEKXAwK8w03Klsmy4yjUoRMo
 yBGl8hZmUGzjiShNRhW+Iv7Vz3WID6i437QyRGLdxNfs+hhDcjwv5IDqAnFiuZA3rGvc
 Ijc0kBQtmlOPYwWGJ+tb9M39soZ4yRJNt8eHfnrLv+KUozObiUykVkyIQtCAgXNspVZd
 BZsJzFSLaTNTLkU5XowRo+C7QYi0pezCdzqCqtLwPzIRCjF9SIrydZzrBX4kvK3RTYk1
 nfbw==
X-Gm-Message-State: APjAAAVBwAaUsfJuSDfeRHZivKQh9BsrmY+OwrVnCE7rex5IMcDwgqyV
 EdweB0iZujmdjM4U+QppKEvmiQ==
X-Google-Smtp-Source: APXvYqwPND89CTG631SsvW5xJabNs8hX8frrZKJyV7VaYPuMk/7oG5ltYmF1iH5bZQdZa0Uy/r0eCA==
X-Received: by 2002:a5d:6583:: with SMTP id q3mr47343484wru.184.1560153452753; 
 Mon, 10 Jun 2019 00:57:32 -0700 (PDT)
Received: from dell ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id f13sm5796159wrt.27.2019.06.10.00.57.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 00:57:32 -0700 (PDT)
Date: Mon, 10 Jun 2019 08:57:30 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
Message-ID: <20190610075730.GH4797@dell>
References: <20190605114302.22509-1-lee.jones@linaro.org>
 <20190605114302.22509-3-lee.jones@linaro.org>
 <CACRpkdaEe3uKAsSuhbToevXH1cMsuMUvwaopLPuD+JkDTnuEnQ@mail.gmail.com>
 <20190608041044.GK24059@builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608041044.GK24059@builder>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_005734_694791_FF02D243 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Greg KH <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-usb@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 MSM <linux-arm-msm@vger.kernel.org>, Andy Gross <andy.gross@linaro.org>,
 jlhugo@gmail.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwNyBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBGcmkgMDcg
SnVuIDE2OjAyIFBEVCAyMDE5LCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+IAo+ID4gT24gV2VkLCBK
dW4gNSwgMjAxOSBhdCAxOjQzIFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+IHdy
b3RlOgo+ID4gCj4gPiA+IFdoZW4gYm9vdGluZyBNU00gYmFzZWQgcGxhdGZvcm1zIHdpdGggRGV2
aWNlIFRyZWUgb3Igc29tZSBBQ1BJCj4gPiA+IGltcGxlbWVudGF0aW9ucywgaXQgaXMgcG9zc2li
bGUgdG8gcHJvdmlkZSBhIGxpc3Qgb2YgcmVzZXJ2ZWQgcGlucwo+ID4gPiB2aWEgdGhlICdncGlv
LXJlc2VydmVkLXJhbmdlcycgYW5kICdncGlvcycgcHJvcGVydGllcyByZXNwZWN0aXZlbHkuCj4g
PiA+IEhvd2V2ZXIgc29tZSBBQ1BJIHRhYmxlcyBhcmUgbm90IHBvcHVsYXRlZCB3aXRoIHRoaXMg
aW5mb3JtYXRpb24sCj4gPiA+IHRodXMgaXQgaGFzIHRvIGNvbWUgZnJvbSBhIGtub3dsZWRnYWJs
ZSBkZXZpY2UgZHJpdmVyIGluc3RlYWQuCj4gPiA+Cj4gPiA+IEhlcmUgd2UgcHJvdmlkZSB0aGUg
TVNNIGNvbW1vbiBkcml2ZXIgd2l0aCBhZGRpdGlvbmFsIHN1cHBvcnQgdG8KPiA+ID4gcGFyc2Ug
dGhpcyBpbmZvcm10aW9uIGFuZCBjb3JyZWN0bHkgcG9wdWxhdGUgdGhlIHdpZGVseSB1c2VkCj4g
PiA+ICd2YWxpZF9tYXNrJy4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxs
ZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+IAo+ID4gRXhhY3RseSBob3cgd2Ugc2hvdWxkIHVzZSBv
ZiB0aGUgQVBJLCBzbyBpZiBCasO2cm4gY2FuIHN1cHBseSBhbgo+ID4gQUNLIHRvIHBhdGNoZXMg
MyBhbmQgNCBJJ20gaGFwcHkgdG8gYXBwbHkgdGhlbS4KPiA+IAo+ID4gQmrDtnJuPwo+ID4gCj4g
Cj4gSSdtIHdhaXRpbmcgZm9yIGEgdmVyc2lvbiB0aGF0IGRvZXMgbm90IHNwZWNpZnkgdGhlIHJl
c2VydmVkX2dwaW9zIGZvcgo+IHN0cnVjdCBtc21fcGluY3RybF9zb2NfZGF0YSBzZG04NDVfcGlu
Y3RybCB7fSwgYXMgdGhpcyB3b3VsZCBvdmVycmlkZQo+IHRoZSBhYmlsaXR5IG9mIGdldHRpbmcg
dGhlc2UgZnJvbSBEVC4KPiAKPiBJIGhhdmVuJ3Qgc2VlbiBzdWNoIHJldmlzaW9uIHlldCwgd2ls
bCByZXZpZXcgaXQgb25jZSBJIGZpbmQgaXQuCgpKdXN0IHRlc3RpbmcgaXQgbm93LiAgSXQgc2hv
dWxkIGJlIG9uIHRoZSBsaXN0IGJ5IHRoZSB0aW1lIHlvdSBzdGFydC4KCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9v
ayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
