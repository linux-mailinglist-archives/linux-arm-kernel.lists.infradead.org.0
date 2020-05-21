Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AD21DD278
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcivk0U7IX+sgrKvZ1an4QjlUSNqqsBKB6WVVS0/EMQ=; b=gWCLpNRvt7iEcg
	tquvAdkzZ28zF9INoJ44EwHTKgxcIDvTqnktciTriOIWme2aH9WTH1FgumQst+Q+akTke2ybvzwPC
	YQreHcTol1szbCYr+s4fAbnWBiB7aWiWl0odRab7vrEhEtSIOTlfRPkYRp6h39ESUW5nHQM//OfF9
	NJ5TtbzGiy4r6sC4VN/ggN82zyca+d8t7sNaRGHxwOAF4FtaA5j/tHEwEKH9DqT2HBtyJTLNe5cW/
	0pRfg2VjHU06nL+2QxMKQdYlsqXam0GZKioV+QVb0Ho0aHg3bNDX308UTxWv156qIrDKWukb9dS3V
	ci1iW1mLjAOraTtY1+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnYd-0002Xf-VW; Thu, 21 May 2020 15:56:32 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnYP-0002Wn-V9
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:56:19 +0000
Received: by mail-oi1-x244.google.com with SMTP id b3so6564603oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 08:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8vYYXmeN5jPKZ8yHl1zcQTrk3+2MBfEvZOrsg6uMWz0=;
 b=slV1NT9Kmw9gIGPFL64AKgnZtLSVTVxRMvTeUjYnQctDiz/6T8czmC8Q3Ok+HDigX5
 1o5tk5qs9S8evmRNALsJRSQRmIj5vVxTU6dVNIYK+UmM/YU3cNy8YuO0AE+YS2PnMzBE
 f+Z8wOIiXlnpnYOtkZNn9/LWFqoixCsaVY3LZRBoe7o4whn1qo7J8eWFXIBGZJXY3lpk
 tXWL2zGiF2WIDZJWLX5AcnkSBZFI0pGmMlEXP+NlirYU6HKGTuBcSNSc1tDLDtJpIo3r
 WOLGBP9ud/kFhAZpqMuhShW/4CGzi0RRkt4VpBawsZAfzlPCYBrUclxGvj0dtSk7t+qw
 aIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8vYYXmeN5jPKZ8yHl1zcQTrk3+2MBfEvZOrsg6uMWz0=;
 b=BqhAYUyP4bUoseo8WvB2qXWzmFKzlmmCXkmGvFw8Nug2B5r5ULIZMjOab/mJ67I18o
 4M+36v2UXTlp5NS1NCc2xxZcwzmDWxjghT7wtMlryJ922yM50BZnwpX8YwrEVTdhjImY
 DE6+Xn7voMG41V3ecNW4Huq1Ll3dXVbWc7fNXe+oi7BZTAzf35LP9UyHo8GYVDBMIrTt
 MOXGTsl32MPCZ4PqBXwuFSjp/TZvU3mUTpgxgPlnK4sGwH9Zwuzpu83GVHH23dcgnzb6
 vcbVf/k6CcKU9Rpn28i98r5E3tjyDCM0rvi2xf2Yq7eDUnMOWBo1oxunU16vZ3yJ4wmK
 BrhQ==
X-Gm-Message-State: AOAM533McyV0xmqeodBLUj5TXyxJNt6Wz261HMooxXvP0PGGuG/eQzpH
 t7EIVKVhoutgkx5nnYptNr4BxQuEEIo+ubq9w4DCEg==
X-Google-Smtp-Source: ABdhPJy1z6pfeCPw1pWfVSSf1a0FvzBy/xV8oCNlLV6yNes/xmwH+hthAwIjJ/mwMj5W2DsBfYqcAq1aV1CAlY5JPvI=
X-Received: by 2002:aca:534c:: with SMTP id h73mr6942846oib.52.1590076576468; 
 Thu, 21 May 2020 08:56:16 -0700 (PDT)
MIME-Version: 1.0
References: <1587999532-30006-1-git-send-email-abel.vesa@nxp.com>
 <0d301ed303faea4895d30b682133ec5c9d44bd8b.camel@pengutronix.de>
 <AM6PR04MB504745F6EB1FB17F6DBDD9A387AF0@AM6PR04MB5047.eurprd04.prod.outlook.com>
 <97aa62e8aaf8fa1c462c7db117fca9b6ea9bfec0.camel@pengutronix.de>
In-Reply-To: <97aa62e8aaf8fa1c462c7db117fca9b6ea9bfec0.camel@pengutronix.de>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 21 May 2020 08:56:04 -0700
Message-ID: <CAJ+vNU3oMSpbysJ+BXyGGFknZs6BHH6hZ_qLpnsxmSBJ1Log7A@mail.gmail.com>
Subject: Re: [PATCH] soc: imx: Add power domain driver support for i.mx8m
 family
To: Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, 
 Aisheng Dong <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_085618_077080_F25E4C72 
X-CRM114-Status: GOOD (  33.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Adam Ford <aford173@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgNCwgMjAyMCBhdCAyOjE5IEFNIEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1
dHJvbml4LmRlPiB3cm90ZToKPgo+IEFtIE1vbnRhZywgZGVuIDI3LjA0LjIwMjAsIDE1OjM3ICsw
MDAwIHNjaHJpZWIgSmFja3kgQmFpOgo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
ID4gPiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+ID4gU2Vu
dDogTW9uZGF5LCBBcHJpbCAyNywgMjAyMCAxMToxMSBQTQo+ID4gPiBUbzogQWJlbCBWZXNhIDxh
YmVsLnZlc2FAbnhwLmNvbT47IEphY2t5IEJhaSA8cGluZy5iYWlAbnhwLmNvbT47IFNoYXduCj4g
PiA+IEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz47IFNhc2NoYSBIYXVlciA8a2VybmVsQHBlbmd1
dHJvbml4LmRlPjsgTGlhbQo+ID4gPiBHaXJkd29vZCA8bGdpcmR3b29kQGdtYWlsLmNvbT47IE1h
cmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiA+ID4gQ2M6IEFpc2hlbmcgRG9uZyA8YWlz
aGVuZy5kb25nQG54cC5jb20+OyBkbC1saW51eC1pbXgKPiA+ID4gPGxpbnV4LWlteEBueHAuY29t
PjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBMaW51eCBLZXJuZWwKPiA+
ID4gTWFpbGluZyBMaXN0IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgo+ID4gPiBTdWJq
ZWN0OiBSZTogW1BBVENIXSBzb2M6IGlteDogQWRkIHBvd2VyIGRvbWFpbiBkcml2ZXIgc3VwcG9y
dCBmb3IgaS5teDhtCj4gPiA+IGZhbWlseQo+ID4gPgo+ID4gPiBBbSBNb250YWcsIGRlbiAyNy4w
NC4yMDIwLCAxNzo1OCArMDMwMCBzY2hyaWViIEFiZWwgVmVzYToKPiA+ID4gPiBGcm9tOiBKYWNr
eSBCYWkgPHBpbmcuYmFpQG54cC5jb20+Cj4gPiA+ID4KPiA+ID4gPiBUaGUgaS5NWDhNIGZhbWls
eSBpcyBhIHNldCBvZiBOWFAgcHJvZHVjdCBmb2N1cyBvbiBkZWxpdmVyaW5nIHRoZQo+ID4gPiA+
IGxhdGVzdCBhbmQgZ3JlYXRlc3QgdmlkZW8gYW5kIGF1ZGlvIGV4cGVyaWVuY2UgY29tYmluaW5n
Cj4gPiA+ID4gc3RhdGUtb2YtdGhlLWFydCBtZWRpYS1zcGVjaWZpYyBmZWF0dXJlcyB3aXRoIGhp
Z2gtcGVyZm9ybWFuY2UKPiA+ID4gPiBwcm9jZXNzaW5nIHdoaWxlIG9wdGltaXplZCBmb3IgbG93
ZXN0IHBvd2VyIGNvbnN1bXB0aW9uLgo+ID4gPiA+Cj4gPiA+ID4gaS5NWDhNUSwgaS5NWDhNTSwg
aS5NWDhNTiwgZXZlbiB0aGUgZnVydHVyZSBpLk1YOE1QIGFyZSBhbGwgYmVsb25nIHRvCj4gPiA+
ID4gdGhpcyBmYW1pbHkuIEEgR1BDIG1vZHVsZSBpcyB1c2VkIHRvIG1hbmFnZSBhbGwgdGhlIFBV
IHBvd2VyIGRvbWFpbgo+ID4gPiA+IG9uL29mZi4gQnV0IHRoZSBzaXR1YXRpb24gaXMgdGhhdCB0
aGUgbnVtYmVyIG9mIHBvd2VyIGRvbWFpbnMgJiB0aGUKPiA+ID4gPiBwb3dlciB1cCBzZXF1ZW5j
ZSBoYXMgc2lnbmlmaWNhdGUgZGlmZmVyZW5jZSBvbiB0aG9zZSBTb0NzLiBFdmVuIG9uCj4gPiA+
ID4gdGhlIHNhbWUgU29DLiBUaGUgcG93ZXIgdXAgc2VxdWVuY2Ugc3RpbGwgaGFzIGJpZyBkaWZm
ZXJlbmNlLiBJdCBtYWtlcwo+ID4gPiA+IHVzIGhhcmQgdG8gcmV1c2UgdGhlIEdQQ3YyIGRyaXZl
ciB0byBjb3ZlciB0aGUgd2hvbGUgaS5NWDhNIGZhbWlseS4KPiA+ID4gPiBFYWNoIHRpbWUgYSBu
ZXcgU29DIGlzIHN1cHBvcnRlZCBpbiB0aGUgbWFpbmxpbmUga2VybmVsLCB3ZSBuZWVkIHRvCj4g
PiA+ID4gbW9kaWZ5IHRoZSBHUEN2MiBkcml2ZXIgdG8gc3VwcG9ydCBpdC4gV2UgbmVlZCB0byBh
ZGQgb3IgbW9kaWZ5Cj4gPiA+ID4gaHVuZHJlZCBsaW5lcyBvZiBjb2RlIGluIHdvcnN0IGNhc2Uu
Cj4gPiA+ID4gSXQgaXMgYSBiYWQgcHJhY3RpY2UgZm9yIHRoZSBkcml2ZXIgbWFpbnRhaW5hYmls
aXR5Lgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBkcml2ZXIgYWRkIGEgbW9yZSBnZW5lcmljIHBvd2Vy
IGRvbWFpbiBkcml2ZXIgdGhhdCB0aGUgYWN0dWFsCj4gPiA+ID4gcG93ZXIgb24vb2ZmIGlzIGRv
bmUgYnkgVEYtQSBjb2RlLiB0aGUgYWJzdHJhY3Rpb24gZ2l2ZSB1cyB0aGUKPiA+ID4gPiBwb3Nz
aWJpbGl0eSB0aGF0IHVzaW5nIG9uZSBkcml2ZXIgdG8gY292ZXIgdGhlIHdob2xlIGkuTVg4TSBm
YW1pbHkgaW4KPiA+ID4gPiBrZXJuZWwgc2lkZS4KPiA+ID4gPgo+ID4gPgo+ID4gPiBBZ2Fpbjog
d2hhdCBkb2VzIHRoaXMgZHJpdmVyIGJyaW5nIHRvIHRoZSB0YWJsZSwgb3RoZXIgdGhhbiBtb3Zp
bmcgYSBmcmFjdGlvbiBvZgo+ID4gPiB0aGUgcG93ZXIgZG9tYWluIGZ1bmN0aW9uYWxpdHkgaW50
byB0aGUgZmlybXdhcmU/Cj4gPiA+Cj4gPiA+IFRoZSBkaXNjdXNzaW9ucyBvbiB0aGUgbGFzdCBz
dWJtaXNzaW9ucyBvZiB0aGlzIGRyaXZlciBhbHJlYWR5IGVzdGFibGlzaGVkIHRoYXQKPiA+ID4g
d2UgY2FuJ3QgbW92ZSBhbGwgZnVuY3Rpb25hbGl0eSBmb3IgdGhlIHBvd2VyIGRvbWFpbnMgaW50
byB0aGUgZmlybXdhcmUsIGFzCj4gPiA+IGNvbnRyb2xsaW5nIHJlZ3VsYXRvcnMgaXMgcHJvYmFi
bHkgbm90IGVhc3kgdG8gZG8gZnJvbSB0aGlzIGNvbnRleHQuIEFsc28gdGhlCj4gPiA+IFRGLUEg
c2lkZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGlzIGRyaXZlciBpcyAiaW50ZXJlc3RpbmciIElNSE8s
IGl0IGRvZXMgc3R1ZmYgbGlrZQo+ID4gPiBhY2Nlc3NpbmcgdGhlIGNsb2NrIGNvbnRyb2xsZXIg
cmVnaXN0ZXJzIHdpdGhvdXQgYW55IGxvY2tpbmcgb3Igb3RoZXIgbWVhbnMgb2YKPiA+ID4gbXV0
dWFsIGV4Y2x1c2lvbiB3aXRoIHRoZSBMaW51eCBrZXJuZWwgY2xvY2sgY29udHJvbGxlciBkcml2
ZXIuCj4gPiA+Cj4gPgo+ID4gVGhlIGNsb2NrIGhhbmRsaW5nIGlzIGluIGtlcm5lbCBzaWRlIHRo
cm91Z2ggQ0NGLCBub3QgaW4gQVRGLiBTZWUgdGhlIHBhdGNoIGJlbG93Lgo+ID4KPiA+ID4gV2h5
IGNhbid0IHdlIGp1c3QgZXh0ZW5kIHRoZSBleGlzdGluZyBHUEN2MiBkcml2ZXIgd2l0aCBzdXBw
b3J0IGZvciB0aGUgb3RoZXIKPiA+ID4gaS5NWDhNIGZhbWlseSBtZW1iZXJzPwo+ID4gPgo+ID4K
PiA+IFRoZSByZWFzb24gdGhhdCB3aHkgSSBkb27igJl0IGxpa2UgdG8gZXh0ZW5kIHRoZSBHUEN2
MiBpcyB0aGF0IHdoZW4gZG9pbmcgZG9tYWluIG9uL29mZiwKPiA+IFdlIG5lZWQgdG8gYWNjZXNz
IHNvbWUgc3BlY2lhbCBjb250cm9sIHJlZ2lzdGVyIGluIGVhY2ggZG9tYWluICYgZG8gc29tZSBz
cGVjaWFsIGZsb3csCj4gPiBUaGVzZSBjb250cm9sIHJlZ2lzdGVyKG1lZGlhbWl4IGJsb2NrIGNv
bnRyb2wsIHZwdW1peCBibG9jayBjb250cm9sKSBpcyBub3QgaW4gR1BDCj4gPiBtb2R1bGUncyBh
ZGRyZXNzIHJhbmdlLiBObyBiZW5lZml0IHRvIHJldXNlIHRoZSBHUEN2Mi4gT25seSBicmluZyBj
b21wbGV4aXR5IHRvIHRoZQo+ID4gR1BDdjIgZHJpdmVyIGVhY2ggdGltZSBhIG5ldyBTb0MgaXMg
YWRkZWQuCj4gPgo+ID4gWWVzLCB0aGUgaS5NWDhNIHBvd2VyIGRvbWFpbiBzdXBwb3J0IGhhcyBi
ZWVuIHBlbmRpbmcgZm9yIGEgd2hpbGUuIEFSTSBndXlzIHJlamVjdGVkIHRoaXMgcGF0Y2hzZXQK
PiA+IGJlY2F1c2UgdGhleSBzdWdnZXN0IHVzIHRvIHVzZSBTQ01JIHJhdGhlciB0aGFuIFNpUC4g
QnV0IFNDTUkgaXMgb25seSBwYXJ0aWFsIHN1aXRhYmxlIGZvciBvdXIKPiA+IGNhc2UuCj4KPiBD
YW4geW91IHBsZWFzZSBwb2ludCBtZSB0byB0aGUgbW9zdCByZXNlbnQgdmVyc2lvbiBvZiB0aGUg
VEYtQSBzaWRlCj4gaW1wbGVtZW50YXRpb24gb2YgdGhpcz8gVGhlIGkuTVg4TU0gaW1wbGVtZW50
YXRpb24gaW4gdGhlCj4gaW14XzUuNC4zXzIuMC4wIGJyYW5jaCBpbiB0aGUgY29kZWF1cm9yYSBp
bXgtYXRmIHJlcG8gc3RpbGwgY29udGFpbnMKPiB3cml0ZXMgdG8gdGhlIGNsb2NrIGNvbnRyb2xs
ZXIgcmVnaXN0ZXIgcmFuZ2UuCj4KPiBBbHNvIEkgd291bGQgbG92ZSB0byBsZWFybiB3aHkgdGhl
IEdQQyBuZWVkcyB0byBhY2Nlc3MgTWVkaWFtaXggYW5kCj4gVlBVbWl4IGRvbWFpbiByZWdpc3Rl
cnMuIElmIHlvdSBhcmUgdGFsa2luZyBhYm91dCB0aGUgTk9DIGNvbmZpZ3VyYXRpb24KPiBJIHdv
dWxkIHN0cm9uZ2x5IHN1Z2dlc3QgdGhhdCB0aG9zZSBzaG91bGQgYmUgaGFuZGxlZCBieSBhIExp
bnV4IHNpZGUKPiBpbnRlcmNvbm5lY3QgZHJpdmVyLCB0aGlzIGhhcyBub3RoaW5nIHRvIGRvIHdp
dGggdGhlIHBvd2VyIGRvbWFpbgo+IHNlcXVlbmNpbmcsIGl0IGp1c3QgaGFwcGVucyB0byBsb3Nl
IHN0YXRlIG92ZXIgdGhlIHBvd2VyIGRvd24gYW5kIG5lZWRzCj4gdG8gYmUgcmVwcm9ncmFtbWVk
IGFmdGVyIHBvd2VyIG9uLiBUaGUgTk9DIGNvbmZpZ3VyYXRpb24gdGhvdWdoIGlzIHVzZS0KPiBj
YXNlIGRlcGVuZGVudCwgc28gdGhpcyBzaG91bGQgYmUgcHJvcGVybHkgaGFuZGxlZCBpbiBhIHJp
Y2ggT1MgZHJpdmVyLgo+Cj4gU3VyZSB3ZSBuZWVkcyB0byBleHRlbmQgdGhlIExpbnV4IHNpZGUg
R1BDIGRyaXZlciBmb3IgZWFjaCBuZXcgU29DCj4gZ2VuZXJhdGlvbiwgYnV0IHRoYXQncyBubyBk
aWZmZXJlbnQgZnJvbSBhbnkgb3RoZXIgaGFyZHdhcmUgZHJpdmVyIGluCj4gTGludXguIERyaXZl
cnMgYXJlIHRoZSBhYnN0cmFjdGlvbiBhcm91bmQgdGhlIGhhcmR3YXJlLCB0aGVyZSBpcyBubwo+
IG5lZWQgdG8gaW52ZW50IGFub3RoZXIgb25lIGlmIHRoZXJlIGFyZSBubyBjbGVhciBiZW5lZml0
cy4KPgoKSmFja3kgLyBBYmVsLAoKQW55IG1vdmVtZW50IG9uIHRoaXM/IEFzIEkgc2VlIGl0IHRo
ZSBsYWNrIG9mIGlteDhtbSBwb3dlci1kb21haW4Kc3VwcG9ydCBpbiB0aGUga2VybmVsIGlzIGhv
bGRpbmcgdXAgVVNCLCBQQ0llLCBWUFUsIGFuZCBwZXJoYXBzCkdQVS9DU0kgYXMgd2VsbC4gSSB3
b3VsZCB0ZW5kIHRvIGFncmVlIHRoYXQgaGlkaW5nIHRoaXMgZnVuY3Rpb25hbGl0eQppbiB0aGUg
VEYtQSBpcyBwcm9iYWJseSBub3QgdGhlIGJlc3QgYXBwcm9hY2ggZXNwZWNpYWxseSBhcyB0aGF0
CnJlcXVpcmVzIGEgTlhQIHZlcnNpb24gb2YgdGhlIFRGLUEuIEkgcmVhbGx5IGRvbid0IHNlZSB0
aGUgaXNzdWUgd2l0aAp0aGUgZ3BjIGRyaXZlciBnZXR0aW5nIGEgbGl0dGxlIG1vcmUgY29tcGxp
Y2F0ZWQgaWYgaXQgbmVlZHMgdG8uIFRoZXJlCmlzIGJvdW5kIHRvIGJlIHNvbWUgY29tcGxpY2F0
aW9uIGFzIHRoZXJlIGlzIHN1Y2ggYSBsYXJnZSB2YXJpYXRpb24gb2YKSU1YOCBwcm9kdWN0cyBv
dXQgdGhlcmUhICh0YWxrIGFib3V0IGNvbmZ1c2luZyEpLgoKQmVzdCBSZWdhcmRzLAoKVGltCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
