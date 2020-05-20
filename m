Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB391DB7C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fjKySPEcenx/Zld/PsVht7AqssK2ddYjKlNVV8X/JU=; b=cHHa3rawtqojfY
	qB8TSEGVR4X+BBN/I2IyhJxYa3yI6rKVj8Egro3zdLHtmEEt/l0tQBgg46xWLznPgQncu8ZdHABzN
	Ckma3OsfeXrlaiORkbbdydDF8/xBj1UsSeGiAtHmEzYIa395GRhfitWtoOScYU9ZqDxLY3f8JtiN2
	rv/+Ez90Suw/PpkhnC+YuaZhn1WVHP/l9t7sNIPWY7pEGfGgzuEyF6UkJusRNM+2E4dqKhlPQ7TIW
	4E75wMV8NwJSqZUTTE1S1yYmFL9BJJlTCIKBgFPfT4/kLCX77kUCxTUiXVGwpCXpHT742OhmnoRYL
	UUam3GbpcojY/6eVaoZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQMh-0002R2-Qf; Wed, 20 May 2020 15:10:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQMT-0002QF-N5
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:10:26 +0000
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 189EA2054F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 15:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589987425;
 bh=dQU57BxmhphksLlQDSxz/CPGf9TeYRM+MwKSBYrsMLs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HKQA244c/cJ3tTBDELpqOka6VQ+WSSjxnHqvneKVEyq8JjQtnwxObuVeaXrTe/xB0
 PcDErbl2brLj467vWnmfoU3NkfiJ2uLYGDMB70HDJNGrcvgfn/VwsfvrzppyspPHNs
 JrJGQHfOi9mh4aO8y7H8Hxhlwri17InF4m2PBI3g=
Received: by mail-oi1-f171.google.com with SMTP id w4so3247416oia.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:10:25 -0700 (PDT)
X-Gm-Message-State: AOAM532bceyhIRlhW8HRXLADRUx/n2UNMtKk9fhbdB+x2qOG+7wllRnn
 nZCtQiacFtmEFUnfgM1vp21o+0CRe9Jw0XOQmA==
X-Google-Smtp-Source: ABdhPJyf6boU8Fyzg95Dr358/HVnQy+kouGJS4kXQJH0q3p9/ibpZTSeA/K0z0s5wVbQAmATPdKRzm0Ul/4Eig3x3j8=
X-Received: by 2002:a05:6808:24f:: with SMTP id
 m15mr3593664oie.152.1589987424398; 
 Wed, 20 May 2020 08:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus>
 <DB8PR04MB6795A3C57F2B02632D591183E6B60@DB8PR04MB6795.eurprd04.prod.outlook.com>
In-Reply-To: <DB8PR04MB6795A3C57F2B02632D591183E6B60@DB8PR04MB6795.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 20 May 2020 09:10:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJU7JjFXSU8m5hyMyXd7L8F33_wHc+tETWXj9NBt9NV8g@mail.gmail.com>
Message-ID: <CAL_JsqJU7JjFXSU8m5hyMyXd7L8F33_wHc+tETWXj9NBt9NV8g@mail.gmail.com>
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
To: Joakim Zhang <qiangqing.zhang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_081025_795054_661B98AB 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "john.garry@huawei.com" <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgODo1NiBQTSBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56
aGFuZ0BueHAuY29tPiB3cm90ZToKPgo+Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
ID4gRnJvbTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiA+IFNlbnQ6IDIwMjDlubQ1
5pyIMjDml6UgMjo1MQo+ID4gVG86IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5j
b20+Cj4gPiBDYzogam9obi5nYXJyeUBodWF3ZWkuY29tOyB3aWxsQGtlcm5lbC5vcmc7IG1hcmsu
cnV0bGFuZEBhcm0uY29tOwo+ID4gc2hhd25ndW9Aa2VybmVsLm9yZzsgZGwtbGludXgtaW14IDxs
aW51eC1pbXhAbnhwLmNvbT47Cj4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOwo+ID4gbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZwo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCBWMSBSRVNFTkQgMS8zXSBwZXJmL2lteF9k
ZHI6IEFkZCBzeXN0ZW0gUE1VIGlkZW50aWZpZXIKPiA+IGZvciB1c2Vyc3BhY2UKPiA+Cj4gPiBP
biBUdWUsIE1heSAxMiwgMjAyMCBhdCAwMzozMToxM1BNICswODAwLCBKb2FraW0gWmhhbmcgd3Jv
dGU6Cj4gPiA+IFRoZSBERFIgUGVyZiBmb3IgaS5NWDggaXMgYSBzeXN0ZW0gUE1VIHdob3NlIGF4
aSBpZCB3b3VsZCBkaWZmZXJlbnQKPiA+ID4gZnJvbSBTb0MgdG8gU29DLiBOZWVkIGV4cG9zZSBz
eXN0ZW0gUE1VIGlkZW50aWZpZXIgZm9yIHVzZXJzcGFjZSB3aGljaAo+ID4gPiByZWZlciB0byAv
c3lzL2J1cy9ldmVudF9zb3VyY2UvZGV2aWNlcy88UE1VIERFVklDRT4vaWRlbnRpZmllci4KPiA+
Cj4gPiBXaHkgbm90IGp1c3QgZXhwb3NlIHRoZSBBWEkgSUQgaWYgdGhhdCdzIHdoYXQncyBkaWZm
ZXJlbnQ/Cj4KPiBIaSBSb2IsCj4KPiBFYWNoIG1hc3RlciBoYXMgdGhlaXIgb3duIEFYSSBJRCwg
c3VjaCBhcyBVU0IsIEdQVSwgVlBVIGV0YywgaXQgaXMgdmFyaW91cyBmcm9tIGRpZmZlcmVudCBT
b0NzLiBXZSB3YW50IHRvIGFkZCBzeXN0ZW0gUE1VIHN1cHBvcnQgaW4gcGVyZiB0b29sLCBzbyB3
ZSB3YW50IHRvIGV4cG9zZSBzb21ldGhpbmcgZnJvbSBwZXJmIGRyaXZlciB0byBpZGVudGlmeSBl
YWNoIFNvQy4KPiBXaGVuIHdlIGtub3cgd2hpY2ggU29DIGl0IGlzLCB3ZSBjYW4gZ2V0IGVhY2gg
bWFzdGVyIEFYSSBJRC4gSWYgdGhpcyBwYXRjaCBjYW4gYmUgYWNjZXB0ZWQsIC9zeXMvYnVzL2V2
ZW50X3NvdXJjZS9kZXZpY2VzLzxQTVUgREVWSUNFPi9pZGVudGlmaWVyIGNvdWxkIGJlIGEgY29t
bW9uIGludGVyZmFjZSBmb3IgYWxsIHN5c3RlbSBQTVVzLgo+Cj4gSSB3aWxsIGNoYW5nZSB0byBh
ZGQgYSBwcm9wZXJ0eSB0byBpZGVudGlmeSBTb0MsIHRvIHNlZSBpZiBpdCBpcyBiZXR0ZXIuIFRo
YW5rcy4KCklzbid0IHRoYXQgd2hhdCB5b3UgaGF2ZSBhbHJlYWR5IHdpdGggdGhpcyBwYXRjaD8g
TXkgcG9pbnQgaXMgeW91IGNhbgphbHJlYWR5IHJlYWQgL3Byb2MvZGV2aWNlLXRyZWUvY29tcGF0
aWJsZSwgcmVhZCB0aGUgUE1VIGNvbXBhdGlibGUsIG9yCmhhdmUgYW4gU29DIGRldmljZSB3aGlj
aCBleHBvc2VzIFNvQyBpbmZvLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
