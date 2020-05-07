Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E796A1C9704
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vT3XW3ASgHnGU2POBFVlz2PjC+p42fJUA1E65K80svg=; b=H6XAsroYD8vDVU
	RM4b6iW2uci2ezl22A7I5G7hv1JrOwQkLn/DSeFqShmlHONI+apaW5iuZEJxwNQT1p8NB8uOJ8yGz
	bKN/SQulqatu31oWeGhrF1l4sg5iLLmnbTF9ZqnnjrMJjZxpTeHPvgnX8BgSQBHVDsoEOPSsgubD2
	scABMSo6FHawtW9+1PdDoC4XrogG/R8nmCopp08OEyzNNoza8dVc17VwtuFvTs+YU/1FcJ0b2MGEJ
	eF5zY/rfSnbXYUBmpzlqGPKzphPfMG3FwmVz7P8M6GwBswOp8554UnYoPNjS4HdZYHmJyV/3B0uQZ
	/IMgYm5I067YgD2K1GNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjuO-000459-0K; Thu, 07 May 2020 17:02:04 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjuE-000442-ID
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:01:56 +0000
Received: by mail-qt1-x844.google.com with SMTP id x12so5363147qts.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 10:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AogGO7KQ2cbQNwYsj968bylJ7TQTugwVFwFQ369LPww=;
 b=B9521p8GGVcZpv1qM6GfYzouKvPp4grKwjYFaXKUDPG4zfEuTqq3geopKa9AL0tOb+
 5Mxtar2ygaAjvMyZDIRb0W9xvnacTchxTSMHI1tZPA2PbNDtQCUh8e9BQackKUrAvFvD
 K/r3KBj6JEFLxpFwhYYzgnUafXu+gr4v+lpgKsj9w51U75EBYUNEN5AEE+mpiXIoVLfX
 YUCLKWuxDU6umtMxIF3sS2wwRZWavK4GF7RBR78va/EV/Trd0n92xXmWZM15cG1YUCPE
 447hhPafKpmEgEnBqlAtJlVO7nr1VcdIbXbeVCxKhZwsqhFlAFqrzadqLRKUS34zqkYz
 Sbkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AogGO7KQ2cbQNwYsj968bylJ7TQTugwVFwFQ369LPww=;
 b=WnSfGeReQqvzHnHX70osPzuSEq3SHVcp1WZpliYf82k6Z/ynnMgJGrtk4yrwuyEC7H
 fBvJE44+R8BT88ylU6blLZVbYrI7FKpgu2NBfnNBQPXB1gOXIerfXlHOjesIyD7ri1r0
 duhNtUAXr1/DBl5U5t5k8RMr/Z/tZDOpabHioxE/vgZtNPbPKd2dhhhSETAUAyEdXnwh
 UmEsXqSbi4hGtwMLzE3eOV/254fQoY45uDOvtu3cHI4eefn4AtagOPnxE8jQwcttDXid
 08YRtqXgB3b/Tuqkj2J45eikoVhQBHBpq1o1J2FvkLHH8/iDqBkMrGDncnL/5RE9HJnP
 XI5w==
X-Gm-Message-State: AGi0PuY++UQp4jNNmRXlDh8uWHegkVgAXpTCftfDCWpMksUGgn5LTuuw
 WzVV/oZWkCavtpif9BjK92kqpi654pP7qwgklhjBkw==
X-Google-Smtp-Source: APiQypIICB3A2kzpJhwMTKVrN3+4Xn62nAmH23vrPICDvrpFzW7p9tV7KhQx84nSLJLOK2UmDVQW8wd1hjqshOZqSn0=
X-Received: by 2002:ac8:568b:: with SMTP id h11mr15009985qta.197.1588870913354; 
 Thu, 07 May 2020 10:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <1588844771.5921.27.camel@mtksdccf07>
 <CAMpxmJW4qZ_Wnp_oRa=j=YnvTzVa3HZ13Hgwy71jS6L3Bd3oMQ@mail.gmail.com>
 <20200507131645.GM208718@lunn.ch>
In-Reply-To: <20200507131645.GM208718@lunn.ch>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 7 May 2020 19:01:42 +0200
Message-ID: <CAMpxmJV7xGhE4DoZAEYg=wjE-a1MEnc7carZ39zdvWtKAp+qfA@mail.gmail.com>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_100154_666770_D7CCA0CA 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Felix Fietkau <nbd@openwrt.org>, Arnd Bergmann <arnd@arndb.de>,
 netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "Mark-MC.Lee" <Mark-MC.Lee@mediatek.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgNyBtYWogMjAyMCBvIDE1OjE2IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4gbmFw
aXNhxYIoYSk6Cj4KPiBPbiBUaHUsIE1heSAwNywgMjAyMCBhdCAxMjo1MDoxNVBNICswMjAwLCBC
YXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gY3p3LiwgNyBtYWogMjAyMCBvIDExOjQ2IE1h
cmstTUMuTGVlIDxNYXJrLU1DLkxlZUBtZWRpYXRlay5jb20+IG5hcGlzYcWCKGEpOgo+ID4gPgo+
ID4gPiBIaSBCYXJ0b3N6Ogo+ID4gPiAgSSB0aGluayB0aGUgbmFtaW5nIG9mIHRoaXMgZHJpdmVy
IGFuZCBpdHMgS2NvbmZpZyBvcHRpb24gaXMgdG9vIGdlbmVyaWMKPiA+ID4gdGhhdCB3aWxsIGNv
bmZ1c2Ugd2l0aCBjdXJyZW50IG1lZGlhdGVrIFNvQ3MgZXRoIGRyaXZlciBhcmNoaXRlY3R1cmUo
Zm9yCj4gPiA+IGFsbCBtdDd4eHggU29DcykuCj4gPiA+ICAgU2luY2UgbXRrX2V0aF9tYWMuYyBp
cyBub3QgYSBjb21tb24gTUFDIHBhcnQgZm9yIGFsbCBtZWRpYXRlayBTb0MgYnV0Cj4gPiA+IG9u
bHkgYSBzcGVjaWZpYyBldGggZHJpdmVyIGZvciBtdDg1eHgsIGl0IHdpbGwgYmUgbW9yZSByZWFz
b25hYmxlIHRvCj4gPiA+IG5hbWUgaXQgYXMgbXQ4NXh4X2V0aC5jIGFuZCBjaGFuZ2UgTkVUX01F
RElBVEVLX01BQyB0bwo+ID4gPiBORVRfTUVESUFURUtfTVQ4NVhYLiBIb3cgZG8geW91IHRoaW5r
Pwo+ID4gPgo+ID4KPiA+IEhpIE1hcmssCj4gPgo+ID4gSSBhY3R1YWxseSBjb25zdWx0ZWQgdGhp
cyB3aXRoIE1lZGlhVGVrIGFuZCB0aGUgbmFtZSBpcyB0aGVpciBpZGVhLgo+ID4gTWFueSBkcml2
ZXJzIGluIGRyaXZlcnMvbmV0L2V0aGVybmV0IGhhdmUgdmVyeSB2YWd1ZSBuYW1lcy4gSSBndWVz
cwo+ID4gdGhpcyBpc24ndCBhIHByb2JsZW0uCj4KPiBUaGV5IGhhdmUgdmFndWUgbmFtZXMsIGJ1
dCB0aGV5IHRlbmQgdG8gYmUgbm90IGNvbmZ1c2luZy4KPgo+IE5FVF9NRURJQVRFS19NQUMgdnMg
TkVUX01FRElBVEVLX1NPQyBpcyBjb25mdXNpbmcuCj4KPiBJIHRoaW5rIHRoZSBwcm9wb3NlZCBu
YW1lLCBtdDg1eHhfZXRoLmMgYW5kIE5FVF9NRURJQVRFS19NVDg1WFggaXMKPiBnb29kLiBPciBz
b21lIHZhcmlhbnQgb24gdGhpcywgbXQ4eHh4Pwo+CgpJJ3ZlIGp1c3QgdmVyaWZpZWQgd2l0aCBN
ZWRpYVRlayB0aGF0IHRoaXMgSVAgd2lsbCBiZSB1c2VkIGluIGZ1dHVyZQpkZXNpZ25zIGFzIHdl
bGwgLSBldmVuIG9uIG9uZXMgdGhhdCBkb24ndCBzaGFyZSB0aGUgbXQ4KiBwcmVmaXguIEl0CmRv
ZXNuJ3QgcmVhbGx5IGhhdmUgYSBuYW1lIHRob3VnaCBieSBpdHNlbGYuIEhvdyBtdWNoIGNvbmZ1
c2lvbiBjYW4gaXQKY2F1c2UgYW55d2F5PyBQZW9wbGUgd2hvIHdhbnQgdG8gY29tcGlsZSB0aGlz
IGRyaXZlciB3aWxsIGtub3cgd2hpY2gKb25lIHRvIGNob29zZSwgcmlnaHQ/IEl0J3Mgbm90IGxp
a2UgaXQncyBhbiBpMmMgY29tcG9uZW50IHNoYXJlZAphY3Jvc3MgbWFueSBib2FyZCBkZXNpZ25z
LgoKQmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
