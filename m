Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6218D18A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXAjIMF2uLbD/UXKHrbZqezcsE22Pq87Rsd6pSWttxk=; b=mYgkuPNPjsiV7l
	c0QIfmBUoGw5VANOSOIDOJs6kf0gCsUOP/HLWjl0Aee4vm0s+zzV0tpiEd2BhIW2IyRkb0ZGoAXx8
	nYFL/k6Jp0VQav4r3gf78gprl1e5Ffp/AzJvUG22mnhkpCDx3LGGlXD6MrfNHtiv/2WKX+SJljLa9
	fel3u+A8Yc+VLs5ov4aph8SmzdcnrRhMsQ29lLlRNHYVqAAI0IwAPF/rcJetuw3Ef3kK2FBItkrbK
	tGi9lqLWXD9zrjq0BDtKUsZnTrpKfYHRVFU5lDROD74EFnZFe37/J9di0LrDmzv9/g5DKiy97UDKd
	eMx3PMY0NWvt+GqhIM9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqub-0000rr-0X; Wed, 14 Aug 2019 10:53:49 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxquO-0000rW-HV
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:53:37 +0000
Received: by mail-ot1-x330.google.com with SMTP id k18so49135462otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 03:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UKkN0lNF5kBRWe65w25l1dsySArHEu2MAxU7P2lC7XE=;
 b=hI4njuB8fpK7Ts0ZhNVNefH/RiLDSA1WBvOd2jYg6Dh3kb6qWHfMyIhF0Auv7k+o5B
 GHXJ2CfixvVj3P5TWFIgvtLel0SGxpLtweLN8P0iEGgzH9ligs+vcXh72MCSAaOByhtw
 5QFuNirwzEk2jgpSypArWH3K0ovDOeUJkiz72oCaclLw6kdOG66GIo/9UBYySsq+Dyx4
 2QquEt0O8QK8+5K+JvUtqRX9kW0FtbCzelGE4bQ9LFROdNerzyF/bMNb1UN3A4zm9znf
 bdfGSunzsKryPzW307fWOGpzHMORtR+/9EYoufo8xYT9TMOWxKTqHpI7pIuljg/42n5o
 fstw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UKkN0lNF5kBRWe65w25l1dsySArHEu2MAxU7P2lC7XE=;
 b=EXPT8qd/SugwCWDKx0a2Ve2yZhpTWyvh9iGCFQ7Sy0Hte87ZrYQbrluxBNsHDvqay6
 P78eIP6exjlQ3pjGZnDDIc7OXh5Daa/1ClpkelJMKG/VFFyr5J7TyFTEJ/bove9cHKng
 P2IPFdKk5apX7WILDfIqiLW4ZkGqOSa3rc/LhVTOvlAND22kDwcfbzCHriHnPaKq1AAG
 +26KyzKqmiHVXd/EjfmDsYeMSOmESzwWhRFIvonB32Lu3hC2BhIYAdPITQDJVIatMYb9
 C0Xd/VuMKI4BYEMGhh9jZGDrvtz1W9K0mdBzezc19weKVPEKvcFtHkfn1OmK2t06ObKx
 9YsA==
X-Gm-Message-State: APjAAAXhejiUQ4i9b2mcefQJvzoEUh3E4xIeRw8J+4VROCAEhtuLaQzd
 Y8luRg0y9EDEjy+QtV23E127kAX/VLKudgk9M8pJy+Gx
X-Google-Smtp-Source: APXvYqyzkfp3Jo9MQkdwiFUEQ0AXLywU/6p2rCmr6x7PhTtLUEZaNQWFYHypuS/HTv+pEh43ufyUQJTo61n0B6LqY3M=
X-Received: by 2002:a5d:951a:: with SMTP id d26mr1064079iom.31.1565780015337; 
 Wed, 14 Aug 2019 03:53:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAMTEBE0mPY=44txPC2G+Cb=NqeH6Cqesar9Vkq0afXBv4dUWHQ@mail.gmail.com>
 <20190801114807.GB5488@sirena.org.uk>
In-Reply-To: <20190801114807.GB5488@sirena.org.uk>
From: =?UTF-8?Q?Ali_Burak_Par=C4=B1m?= <aliburakparim@gmail.com>
Date: Wed, 14 Aug 2019 12:53:24 +0200
Message-ID: <CAMTEBE2L6KXH6JW2Z_6RSKdtFJc9ncFvfakwW_Vm88BCGC6aeQ@mail.gmail.com>
Subject: Re: Best representation for TDM devices
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_035336_604556_60D3BA72 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aliburakparim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: maxime.ripard@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsIDEgQXVnIDIwMTkgYXQgMTM6NDgsIE1hcmsgQnJvd24gPGJyb29uaWVAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEF1ZyAwMSwgMjAxOSBhdCAwMTo0MzowNlBNICsw
MjAwLCBBbGkgQnVyYWsgUGFyxLFtIHdyb3RlOgo+ID4gT24gVGh1LCBKdWwgMjUsIDIwMTkgYXQg
MDM6MDE6MTJQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPgo+ID4gPiBXaGF0IGlzIHRo
ZSBhY3R1YWwgaGFyZHdhcmUgLSB3aGF0IGRvIHRoZSBtaWNyb3Bob25lcyBwaHlzaWNhbGx5IGxv
b2sKPiA+ID4gbGlrZSBpbiB0aGUgc3lzdGVtLCB3aGF0IGZ1bmN0aW9uYWwgcm9sZSBkbyB0aGV5
IHBsYXk/ICBNeSBpbml0aWFsIGd1ZXNzCj4KPiA+IEhhcmR3YXJlIGlzIGEgY3VzdG9tIGJvYXJk
IEkgZGVzaWduZWQgd2l0aCA0IFBETSBvdXRwdXQgbWljcm9waG9uZXMKPiA+IGFuZCAyIGFkYXU3
MDAyIGRldmljZXMgYXMgdGhlIGNvZGVjIGZvciBQRE0tdG8tUENNLiBXZSB3YW50IHRvIGRvCj4g
PiBzaWduYWwgcHJvY2Vzc2luZyB3aXRoIHRoaXMgYm9hcmQuIFRoZXJlZm9yZSBoYXZpbmcgc2Vw
YXJhdGUgc3RyZWFtcyBmb3IKPiA+IGVhY2ggbWljcm9waG9uZSBpcyBjcnVjaWFsIHRvIHRoZSBh
cHBsaWNhdGlvbiB0aG91Z2ggSSBhbSBub3Qgc3VyZSB3aGVyZQo+ID4gd2Ugc2hvdWxkIGltcGxl
bWVudCB0aGlzIGV4YWN0bHkuCj4KPiBXaGF0IGlzIHRoaXMgcHJvY2Vzc2luZyAtIGFyZSB0aGUg
c3RyZWFtcyBmcm9tIHRoZXNlIG1pY3JvcGhvbmVzCj4gbG9naWNhbGx5IHJlbGF0ZWQgaW4gYW55
IHdheSAoZWcsIGlzIHRoaXMgYSBtaWNyb3Bob25lIGFycmF5KT8gIFRoZXJlJ3MKWWVzLCBpdCBp
cyBhIG1pY3JvcGhvbmUgYXJyYXkgYXBwbGljYXRpb24gZm9yIHNwZWVjaCBlbmhhbmNlbWVudC4g
VGh1cywKc2lnbmFsIGxldmVscyBhbmQgcGh5c2ljYWwgdGltZSBkZWxheXMgYXJlIGltcG9ydGFu
dC4KPiBwcm9iYWJseSBnb2luZyB0byBiZSBzb21lIG92ZXJsYXAgaW4gdGhlIGlucHV0IHNpZ25h
bHMgYXQgbGVhc3QuICBJZiB5b3UKPiBuZWVkIHRvIGZvciBleGFtcGxlIGNvcnJlbGF0ZSBkaWZm
ZXJlbnQgbWljcm9waG9uZXMgdGhlbiB0aGF0J3MKPiByZWxldmFudC4KWWVzLCB3ZSBjb3JyZWxh
dGUgZGlmZmVyZW50IG1pY3JvcGhvbmUgc2lnbmFscyBpbiBzb21lIG9mIG91ciBhbGdvcml0aG1z
LgoKUC5TLjogSSBhbSBzbyBzb3JyeSBmb3IgbGF0ZSByZXBseSwgdGhlIHRocmVhZCB3ZW50IHRv
IG15IGp1bmsgYm94IHNvbWVob3cuCgpCZXN0IHJlZ2FyZHMsCkJ1cmFrCgoKLS0KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
