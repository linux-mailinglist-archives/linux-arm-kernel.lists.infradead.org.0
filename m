Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F7213DD92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCqlaHFFRs2N8QohJ7xLPoX+ru55ifeTHaXpTbEhh9A=; b=is80+7CBVxsY0J
	eXCgmqhHSm4Jpew5nT87J6+ZYiTPmHOTUP/FC0PfOQvBeVCvvGwTReAkYyXFuQTeiseJcgXcKSTOw
	upPg5siHjVOwK0jKhrnXaHmPlM6ThrqrOZ+nrhIRvn0pEMkSU3Fg9xJ07ajXpyPpm9iRb4aRgnzWT
	M76jPf58XJ2aNtjVVQNwyqJqjevQk1bWMDBGNVMIw0K7pbMGxaUpMdWV2iKakYiKDBn4ANrWz4wwL
	viYPWjUD7DsrcLquioqfhts+SxfprJ6k0aAtUojuAjdHRo9mu51czoSN6bOfH8HUhPbpAuALCHX22
	GY8/1hjPX27G2LA0RQ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6HA-0006Y5-B0; Thu, 16 Jan 2020 14:37:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6Gx-0006Wy-JZ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:37:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so19343438wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 06:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ao9ecw6eTFgKaKQJe1zn6/MAY37uMpnY+Wyi9DHZCHA=;
 b=qrS/i4CS4G6n3S4yRmIaFd0FefJkN2j7D6ffx4ZY7oi+k8DwBj8cltFzlBrzAmjHa7
 BtFrAjqnwlnjsNQvsEjJoexK84RwFrMr+EWl8XlNAtmyKu/Y7ZWSW0zXfsVoLPIS6AHQ
 T6phXoS/r/9H/L253mE6CNdTfloiSonDXSvgYfK7GwI/baH/8O5VJs1wEU2cdsBvLQzI
 jP9tzcoEMYdbFVJMOMrOi60jhuSm1kBCD+Y6aDTUvxSAAz3RXDqHuHDE+ZNCI+9GDbez
 BXlCwcWRt2k90QgtINN7qjSe6lc+KO93gg5/X9R6wF4Cu/Go/NufBsWlfPfFG6e6F97j
 qc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ao9ecw6eTFgKaKQJe1zn6/MAY37uMpnY+Wyi9DHZCHA=;
 b=emCIWaiu+iCEj/8E7wpfMOTI0kBSiPIORutApnGXOefVSXqUhfgPX/44Dd3uw/Qxwa
 3h+bz1oCo8P0LqmJggFlVemcq1pfWjpas4j44UKOy3+QFE/Kdu5Qrtp/WWPo9JbsY9KD
 ykuFmke4O3qCWrwKqW2cI1bL7L0ejKJA5LfRW2MXYIlWu+WGL6e0H/BEcySeswQ8mZdX
 T3Sl7NtNslRxLNvLTlt9axckXh55ceDj7GWIDg7DDt7vCKqX0ZQEqNgfb1H9vRwEy7EF
 C2uy3nYzv/brSLVkW9YmlaiLxiyhsWpTqFOrkP9sqOb8lRQueAAV5hpZCOEgzSGsk7J2
 xY6w==
X-Gm-Message-State: APjAAAXbkqwHM1BMOdgDAiS4LuMH03tgk1xlq2utr3W29w+oCNGqaaJq
 ZRDzsLi3ssmkwln1ji4XVGs6xTKDbDJ/gtEsSic=
X-Google-Smtp-Source: APXvYqxLQ6y3fUZYo/hqHdOVVkW3DDWqe/fr59dH3ldpL8NbaNVKIkOOf69+QCKbCgJ2IaMbKBfD7+4/rjel+LBPB3s=
X-Received: by 2002:adf:e547:: with SMTP id z7mr3745675wrm.258.1579185441083; 
 Thu, 16 Jan 2020 06:37:21 -0800 (PST)
MIME-Version: 1.0
References: <20200114170231.16421-1-andrew.smirnov@gmail.com>
 <AM0PR0402MB35708B48AF371E81BFCCED158C370@AM0PR0402MB3570.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR0402MB35708B48AF371E81BFCCED158C370@AM0PR0402MB3570.eurprd04.prod.outlook.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 16 Jan 2020 06:37:09 -0800
Message-ID: <CAHQ1cqFg_EcLRUtOO65P-K4hFdkx0OyzxOupqdqwicnhROiZ6A@mail.gmail.com>
Subject: Re: [EXT] [PATCH] PCI: imx6: Add L1SS support for i.MX8MQ
To: Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_063723_644816_9981E090 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMTQsIDIwMjAgYXQgNzoyNiBQTSBSaWNoYXJkIFpodSA8aG9uZ3hpbmcuemh1
QG54cC5jb20+IHdyb3RlOgo+Cj4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBG
cm9tOiBBbmRyZXkgU21pcm5vdiA8YW5kcmV3LnNtaXJub3ZAZ21haWwuY29tPgo+ID4gU2VudDog
MjAyMOW5tDHmnIgxNeaXpSAxOjAzCj4gPiBUbzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZwo+
ID4gQ2M6IEFuZHJleSBTbWlybm92IDxhbmRyZXcuc21pcm5vdkBnbWFpbC5jb20+OyBMb3Jlbnpv
IFBpZXJhbGlzaQo+ID4gPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+OyBCam9ybiBIZWxnYWFz
IDxiaGVsZ2Fhc0Bnb29nbGUuY29tPjsgQ2hyaXMKPiA+IEhlYWx5IDxjcGhlYWx5QGdtYWlsLmNv
bT47IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPjsgUmljaGFyZAo+ID4gWmh1
IDxob25neGluZy56aHVAbnhwLmNvbT47IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+
Owo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnCj4gPiBTdWJqZWN0OiBbRVhUXSBbUEFUQ0hdIFBDSTogaW14NjogQWRk
IEwxU1Mgc3VwcG9ydCBmb3IgaS5NWDhNUQo+ID4KPiA+IENhdXRpb246IEVYVCBFbWFpbAo+ID4K
PiA+IEFkZCBjb2RlIHRvIGNvbmZpZ3VyZSBQQ0kgSVAgYmxvY2sgdG8gdXRpbGl6ZSBzdXBwb3J0
ZWQgQVNQTSBmZWF0dXJlcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXkgU21pcm5vdiA8
YW5kcmV3LnNtaXJub3ZAZ21haWwuY29tPgo+IFtSaWNoYXJkIFpodV0gIEhJIEFuZHJleToKPiBU
aGlzIHBhdGNoIGRvZXMgdGhlIHJlZ21hcCB0byB0aGUgc3JjIHJlZ2lvbiwgcmlnaHQ/CgpJbmRl
ZWQuCgo+IEhvdyBhYm91dCB0byBhZGQgYW5vdGhlciByZXNldCB0byBtYW5pcHVsYXRlIHRoZSAq
X09WRVJSSURFIGJpdC4KPiBKdXN0IGxpa2UgdGhlIGZvbGxvd2luZyBiaXRzLgo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIHJlc2V0cyA9IDwmc3JjIElNWDhNUV9SRVNFVF9QQ0lFUEhZPiwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JnNyYyBJTVg4TVFfUkVTRVRfUENJRV9D
VFJMX0FQUFNfRU4+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmc3JjIElN
WDhNUV9SRVNFVF9QQ0lFX0NUUkxfQVBQU19UVVJOT0ZGPjsKPiAgICAgICAgICAgICAgICAgICAg
ICAgICByZXNldC1uYW1lcyA9ICJwY2llcGh5IiwgImFwcHMiLCAidHVybm9mZiI7Cj4KCkxhc3Qg
dGltZSBJIHRhbGtlZCB0byBQaGlsaXBwIFphYmVsIChtYWludGFpbmVyIG9mIHJlc2V0IHN1YnN5
c3RlbSkgaGUKbWFkZSBpdCBwcmV0dHkgY2xlYXIgdGhhdCBoZSB0aG91Z2ggdGhhdCBleHBvc2lu
ZyB0aG9zZSBQQ0llIHJlbGF0ZWQKYml0cyB2aWEgcmVzZXQgc3Vic3lzdGVtIChmb3IgYm90aCBp
bXg3IGFuZCBpbXg4bXEpIHdhcyBhIG1pc3Rha2UgYW5kCmdvaW5nIGZvcndhcmQgaGUnZCBsaWtl
IHRvIHNlZSBvbmx5IHRydWUgcmVzZXQgZnVuY3Rpb25hbGl0eSB0byBiZQpleHBvc2VkIHRoYXQg
d2F5LiBJTVg4TVFfUENJRV9DVFJMX0FQUFNfQ0xLX1JFUSBpcyBkZWZpbml0ZWx5IG5vdCBhCnJl
c2V0IGxpbmUsIHNvIHRoZSBjYXNlIGZvciBhZGRpbmcgaXQgdG8gcmVzZXQgZHJpdmVyIGlzIGV2
ZW4gd2Vha2VyLgoKTHVjYXMsIGRvIHlvdSBtaW5kIHNoYXJpbmcgeW91ciB0aG91Z2h0cyBvbiB0
aGlzPwoKVGhhbmtzLApBbmRyZXkgU21pcm5vdgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
