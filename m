Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE82E3CB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mLV3QJ+3I6Wt4N1BwNgI9nIicgCIP1bo0oD0WUVJjs=; b=Vjpi2NJhvvljc2
	xquw7ZOlqVzIZVwzWBjPFZdDk/VGZmy//BB52VLmB1NNapRsIQV47lekQOvKFwRdBt1Yqev5lqnb3
	igePptkqx3wEKwxHX34H7ceC/xZ6CAo9neS1lpOI+hxTXOH/H5Kygm5TNmWRnFUrh5vO1GcvZmzp4
	jiTRr4WARsENziBi28q44NhbsdLafXssVWNKyusYt8Kzw2OFz/dsFjrfWB8K1E9wOvX9eC074+6Ac
	qlkCABZfbpsb7JxyEB5deP7Ka/jxiDf1mXPr5zN7AYLAVtjGHtfY5QXIxOtx6i8dwvyGp0bzx8h+w
	IWecKx7sDRXd3qjtYQkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjKP-0003NM-Hm; Thu, 24 Oct 2019 20:03:25 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjKE-0003Mp-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:03:15 +0000
Received: by mail-oi1-f193.google.com with SMTP id s71so8891114oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:03:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=igey018oqO3qwGLtBSWMuY/lWCADIgWzGXzdJ93djzQ=;
 b=d8DHYTlsNuUMX5PQkiSHsQ9WEK66q8Rfx1YcdN+LECn+EUtNj/rgBKI3bJyt6A2eB4
 yU4GIRQhhjZ5zzbuXvSQkldkksAbVLs6ClfzhS5cG2XnaJHsLNR7ueNa6quiQZidRD/L
 7q6jJEldr/+MJdAuJggiGrJMQweYhUCqNSjiHk9nj59ypQ+39rQrLSlwajCWK7JoJ6KV
 w3lWwIlbskNu4Lcj1DjBdf4HNz/OYknFvFH3dHVSEhNusTBve3Npgnd9zhmv4W8oN03U
 9cmNZ1vLRpRlhAzLN6pnLyxxE9tWAsGLQ1dI30mmzhTHQ7QOuca54EphgfP2pAjUOJZU
 Injw==
X-Gm-Message-State: APjAAAVSgCLmTUVzrF3vmvu3sJ/MqF6j00lLQ85ImEy6ar4Yh2DlLMGf
 lWfVrqf1APXJryuWbAu3rQE7VHID7gA=
X-Google-Smtp-Source: APXvYqyxEnC+Vd9pINq+yZG3QRoahvZLqHqzlo2MTnVEDl1QdEhQFnLLNpqvsJMhGCM7rtJKw6H4/Q==
X-Received: by 2002:aca:d1a:: with SMTP id 26mr6276584oin.136.1571947391472;
 Thu, 24 Oct 2019 13:03:11 -0700 (PDT)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com.
 [209.85.167.182])
 by smtp.gmail.com with ESMTPSA id g3sm2448551otg.56.2019.10.24.13.03.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Oct 2019 13:03:10 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id v138so2853637oif.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:03:10 -0700 (PDT)
X-Received: by 2002:aca:d88b:: with SMTP id p133mr6042557oig.51.1571947390375; 
 Thu, 24 Oct 2019 13:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687DA0268FAF03D3E77A23B8F6C0@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <e02fa027-9c78-3272-d2d7-7ad2b0ed3ab0@rasmusvillemoes.dk>
 <CADRPPNREUK1SVxO4P5qb2COn+T04dtYgpVEzrveKUt16hBqAtQ@mail.gmail.com>
 <679bf33b-8c05-b77a-0cb2-d79dc5bfbe75@rasmusvillemoes.dk>
 <CADRPPNSiMUy77Dhxjg03sHDxyZzWf_BP8a5+fCncbynyO_cNGg@mail.gmail.com>
 <VE1PR04MB676825D5709839AEF75ED44C91680@VE1PR04MB6768.eurprd04.prod.outlook.com>
 <43033011-1a2a-dea3-e3c9-75895f997407@rasmusvillemoes.dk>
 <VE1PR04MB6768D3023802D62AB9FE2F6E916B0@VE1PR04MB6768.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB6768D3023802D62AB9FE2F6E916B0@VE1PR04MB6768.eurprd04.prod.outlook.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 24 Oct 2019 15:02:59 -0500
X-Gmail-Original-Message-ID: <CADRPPNRnOH9OgJC7VNYxj5tj87PQzHcvtofqK2xb4Uc7eNCkMg@mail.gmail.com>
Message-ID: <CADRPPNRnOH9OgJC7VNYxj5tj87PQzHcvtofqK2xb4Uc7eNCkMg@mail.gmail.com>
Subject: Re: [PATCH 0/7] towards QE support on ARM
To: Qiang Zhao <qiang.zhao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_130314_236617_50AFDE5C 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Timur Tabi <timur@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgOTo1NCBQTSBRaWFuZyBaaGFvIDxxaWFuZy56aGFvQG54
cC5jb20+IHdyb3RlOgo+Cj4gT24gMjIvMTAvMjAxOSAxODoxOCwgUmFzbXVzIFZpbGxlbW9lcyA8
bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPiB3cm90ZToKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4gPiBGcm9tOiBSYXNtdXMgVmlsbGVtb2VzIDxsaW51eEByYXNtdXN2aWxsZW1vZXMu
ZGs+Cj4gPiBTZW50OiAyMDE55bm0MTDmnIgyMuaXpSAxODoxOAo+ID4gVG86IFFpYW5nIFpoYW8g
PHFpYW5nLnpoYW9AbnhwLmNvbT47IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPgo+ID4gQ2M6
IFRpbXVyIFRhYmkgPHRpbXVyQGtlcm5lbC5vcmc+OyBHcmVnIEtyb2FoLUhhcnRtYW4KPiA+IDxn
cmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7
Cj4gPiBsaW51eC1zZXJpYWxAdmdlci5rZXJuZWwub3JnOyBKaXJpIFNsYWJ5IDxqc2xhYnlAc3Vz
ZS5jb20+Owo+ID4gbGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmc7IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCAwLzddIHRvd2Fy
ZHMgUUUgc3VwcG9ydCBvbiBBUk0KPiA+Cj4gPiBPbiAyMi8xMC8yMDE5IDA0LjI0LCBRaWFuZyBa
aGFvIHdyb3RlOgo+ID4gPiBPbiBNb24sIE9jdCAyMiwgMjAxOSBhdCA2OjExIEFNIExlbyBMaSB3
cm90ZQo+ID4KPiA+ID4+IFJpZ2h0LiAgSSdtIHJlYWxseSBpbnRlcmVzdGVkIGluIGdldHRpbmcg
dGhpcyBhcHBsaWVkIHRvIG15IHRyZWUgYW5kCj4gPiA+PiBtYWtlIGl0IHVwc3RyZWFtLiAgWmhh
byBRaWFuZywgY2FuIHlvdSBoZWxwIHRvIHJldmlldyBSYXNtdXMncwo+ID4gPj4gcGF0Y2hlcyBh
bmQgY29tbWVudD8KPiA+ID4KPiA+ID4gQXMgeW91IGtub3csIEkgbWFpbnRhaW5lZCBhIHNpbWls
YXIgcGF0Y2hzZXQgcmVtb3ZpbmcgUFBDLCBhbmQgc29tZW9uZQo+ID4gdG9sZCBtZSBxZV9pYyBz
aG91bGQgbW92ZWQgaW50byBkcml2ZXJzL2lycWNoaXAvLgo+ID4gPiBJIGFsc28gdGhvdWdodCBx
ZV9pYyBpcyBhIGludGVycnVwdCBjb250cm9sIGRyaXZlciwgc2hvdWxkIGJlIG1vdmVkIGludG8g
ZGlyCj4gPiBpcnFjaGlwLgo+ID4KPiA+IFllcywgYW5kIEkgYWxzbyBwbGFuIHRvIGRvIHRoYXQg
YXQgc29tZSBwb2ludC4gSG93ZXZlciwgdGhhdCdzIG9ydGhvZ29uYWwgdG8KPiA+IG1ha2luZyB0
aGUgZHJpdmVyIGJ1aWxkIG9uIEFSTSwgc28gSSBkb24ndCB3YW50IHRvIG1peCB0aGUgdHdvLiBN
YWtpbmcgaXQKPiA+IHVzYWJsZSBvbiBBUk0gaXMgbXkvb3VyIHByaW9yaXR5IGN1cnJlbnRseS4K
PiA+Cj4gPiBJJ2QgYXBwcmVjaWF0ZSB5b3VyIGlucHV0IG9uIG15IHBhdGNoZXMuCj4KPiBZZXMs
IHdlIGNhbiBwdXQgdGhpcyBwYXRjaHNldCBpbiBmaXJzdCBwbGFjZSwgZW5zdXJlIGl0IGNhbiBi
dWlsZCBhbmQgd29yayBvbiBBUk0sIHRoZW4gcHVzaCBhbm90aGVyIHBhdGNoc2V0IHRvIG1vdmUg
cWVfaWMuCgpSaWdodC4gIEkgd291bGQgb25seSBhY2NlcHQgYSBwYXRjaCBzZXJpZXMgdGhhdCBj
YW4gcmVhbGx5IGJ1aWxkIGFuZAp3b3JrIG9uIEFSTS4gIEF0IGxlYXN0IHRoZSBjdXJyZW50IG91
dC1vZi10cmVlIHBhdGNoZXMgY2FuIG1ha2UgaXQKd29yayBvbiBBUk0uICBJZiB3ZSBhY2NlcHQg
cGFydGlhbCBjaGFuZ2VzLCB0aGVyZSBpcyBubyB3YXkgdG8gbWFrZSBpdAp3b3JrIG9uIHRoZSBs
YXRlc3Qga2VybmVsIG9uIEFSTSB0aGVuLgoKUmVnYXJkcywKTGVvCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
