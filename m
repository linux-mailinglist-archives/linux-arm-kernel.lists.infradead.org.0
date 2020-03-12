Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFF8182870
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bzw/9wC9E3IrMhHwEicgEvMdefv4WWylQ1XOLnPxDi4=; b=hWlScdwDbidXT6
	7YuTG0QxXE4MfzhRmWv8+TALwCOPFeYHLhreJrsOQc9+b91bR8r5ZB2LlornZfpFy5NItAH0spaZj
	7yi+s4bVD3Z3WhvnmqAzGhzv38bPbctizqHcupxu9A+8BeONK56Z7kIjvBPE9QB5fwMzTYi3rptcv
	8eJZUXrrHmfRu2k/wLTyKsgni6emS82uycijZgx15IeMUFxyyQdabTgBJWs8b+k9We7pWR2pxQXeT
	8KHrBassyeS6MDkcyA2YKD2AS6QFMlAfbHTt/BNO9mwfDFrVwqmfQ+L9l+Uvn6vSdsyiPjErQbglu
	K2etpXd9HJYpJWrS/QEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGRp-0008WG-Gw; Thu, 12 Mar 2020 05:31:57 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGRh-0008VO-CS
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:31:51 +0000
Received: by mail-ed1-f68.google.com with SMTP id m25so5848255edq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:31:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+Zc8FmIA0ABnvFYgr2cfqyf8WsoARKD3906NOO9ORho=;
 b=QZz643OBm7pFgf9cglNMC0zf6GsWRunn+hBJiWAYEvW/LscO8Gl9sI80YsnKsz34mT
 W1QMuKpf7UdqupK11/rv7jLsC2X/mQunq5tX8WFTOEFsKOmRW+gQLxGrm3dnE5H83/np
 6pRpR0n6uwyAStDKjbVqE7HBsTjVwvjW+ZoSa/Bd0TnppvnQtHPpcA4QNBL7QJqR/oJ2
 mHJb/N5HNuNiLMFF/zMy8QRZHGOsPH66avAbSHXe9WmuxhJgyQdfRjIVlB9eQhidE3Ar
 THAOML+fanNJJ9pxMNV9xh2SqWcBAmbObNizvTUU+fzYcOTB//yVVtLbdSCwPtacZFgG
 e4gw==
X-Gm-Message-State: ANhLgQ06j8hr5UxdQ0sfx/GiAF9IRwqi+zvkJi4GoOZ2GrMac7g6lneB
 XvxEHcy198Evngll88OpRKTrPwwaG7o=
X-Google-Smtp-Source: ADFU+vtdaYt8k6SqFDrzgItX2qW9zZCLNRfqbfo+JPG1KyysxpPhGhJY/C/4rkLtzyXEP8+7XtFy3w==
X-Received: by 2002:a17:906:f85a:: with SMTP id
 ks26mr4858500ejb.279.1583991101391; 
 Wed, 11 Mar 2020 22:31:41 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id rv13sm3620387ejb.81.2020.03.11.22.31.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 22:31:41 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id l18so5723865wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:31:40 -0700 (PDT)
X-Received: by 2002:a5d:6208:: with SMTP id y8mr8943772wru.64.1583991100322;
 Wed, 11 Mar 2020 22:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
 <4206703.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <4206703.LvFx2qVVIh@jernej-laptop>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 12 Mar 2020 13:31:28 +0800
X-Gmail-Original-Message-ID: <CAGb2v647N4oSf=txbCfc05L6j8_U4bBtfa+XxYX6ZUMmrYbs0Q@mail.gmail.com>
Message-ID: <CAGb2v647N4oSf=txbCfc05L6j8_U4bBtfa+XxYX6ZUMmrYbs0Q@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 0/8] media: sunxi: Add DE2 rotate driver
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_223149_421584_E7C22DF0 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBGZWIgMTIsIDIwMjAgYXQgMzoxMyBBTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5z
a3JhYmVjQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBEbmUgc29ib3RhLCAyNS4gamFudWFyIDIwMjAg
b2IgMDA6MjA6MDYgQ0VUIGplIEplcm5laiBTa3JhYmVjIG5hcGlzYWwoYSk6Cj4gPiBTb21lIG9m
IEFsbHdpbm5lciBTb0NzIGxpa2UgQTgzVCBhbmQgQTY0IFNvQ3MgY29udGFpbiBERTIgcm90YXRl
IGNvcmUKPiA+IHdoaWNoIGNhbiBmbGlwIGltYWdlIGhvcml6b250YWwgYW5kIHZlcnRpY2FsIGFu
ZCByb3RhdGUgaXQgaW4gOTAgZGVnLgo+ID4gc3RlcHMuIEl0IHN1cHBvcnQgYSBsb3Qgb2Ygb3V0
cHV0IGZvcm1hdHMsIGJ1dCBhIGJpdCBsZXNzIGNhcHR1cmUKPiA+IGZvcm1hdHMuIEFsbCBZVVYg
aW5wdXQgZm9ybWF0cyBnZXQgY29udmVydGVkIHRvIHl1djQyMHAsIHdoaWxlIFJHQgo+ID4gZm9y
bWF0cyBhcmUgcHJlc2VydmVkLgo+ID4KPiA+IFBhdGNoZXMgMS0yIGZpeCBmZXcgaXNzdWVzIHdp
dGggREUyIGNsb2Nrcy4KPiA+Cj4gPiBQYXRjaGVzIDMtNCBmaXggcmVnaXN0ZXIgcmFuZ2Ugb2Yg
REUyIGNsb2NrcyAoaXQgd291bGQgb3ZlcmxhcCB3aXRoCj4gPiByb3RhdGUgZHJpdmVyKQo+ID4K
PiA+IFBhdGNoZXMgNS04IHByb3ZpZGUgYmluZGluZywgaW1wbGVtZW50IGRyaXZlciBhbmQgYWRk
IG5vZGVzLgo+ID4KPiA+IHY0bDItY29tcGxpYW5jZSBTSEE6IGVjNTVhOTYxNDg3YjQ0OWJlZGJl
MDc2NTA2NzRiNDk2NTgxNGNmMDcsIDMyIGJpdHMsCj4gPiAzMi1iaXQgdGltZV90Cj4gPgo+ID4g
Q29tcGxpYW5jZSB0ZXN0IGZvciBzdW44aS1yb3RhdGUgZGV2aWNlIC9kZXYvdmlkZW8wOgo+ID4K
PiA+IERyaXZlciBJbmZvOgo+ID4gICAgICAgICBEcml2ZXIgbmFtZSAgICAgIDogc3VuOGktcm90
YXRlCj4gPiAgICAgICAgIENhcmQgdHlwZSAgICAgICAgOiBzdW44aS1yb3RhdGUKPiA+ICAgICAg
ICAgQnVzIGluZm8gICAgICAgICA6IHBsYXRmb3JtOnN1bjhpLXJvdGF0ZQo+ID4gICAgICAgICBE
cml2ZXIgdmVyc2lvbiAgIDogNS41LjAKPiA+ICAgICAgICAgQ2FwYWJpbGl0aWVzICAgICA6IDB4
ODQyMDgwMDAKPiA+ICAgICAgICAgICAgICAgICBWaWRlbyBNZW1vcnktdG8tTWVtb3J5Cj4gPiAg
ICAgICAgICAgICAgICAgU3RyZWFtaW5nCj4gPiAgICAgICAgICAgICAgICAgRXh0ZW5kZWQgUGl4
IEZvcm1hdAo+ID4gICAgICAgICAgICAgICAgIERldmljZSBDYXBhYmlsaXRpZXMKPiA+ICAgICAg
ICAgRGV2aWNlIENhcHMgICAgICA6IDB4MDQyMDgwMDAKPiA+ICAgICAgICAgICAgICAgICBWaWRl
byBNZW1vcnktdG8tTWVtb3J5Cj4gPiAgICAgICAgICAgICAgICAgU3RyZWFtaW5nCj4gPiAgICAg
ICAgICAgICAgICAgRXh0ZW5kZWQgUGl4IEZvcm1hdAo+ID4KPiA+IFJlcXVpcmVkIGlvY3RsczoK
PiA+ICAgICAgICAgdGVzdCBWSURJT0NfUVVFUllDQVA6IE9LCj4gPgo+ID4gQWxsb3cgZm9yIG11
bHRpcGxlIG9wZW5zOgo+ID4gICAgICAgICB0ZXN0IHNlY29uZCAvZGV2L3ZpZGVvMCBvcGVuOiBP
Swo+ID4gICAgICAgICB0ZXN0IFZJRElPQ19RVUVSWUNBUDogT0sKPiA+ICAgICAgICAgdGVzdCBW
SURJT0NfRy9TX1BSSU9SSVRZOiBPSwo+ID4gICAgICAgICB0ZXN0IGZvciB1bmxpbWl0ZWQgb3Bl
bnM6IE9LCj4gPgo+ID4gICAgICAgICB0ZXN0IGludmFsaWQgaW9jdGxzOiBPSwo+ID4gRGVidWcg
aW9jdGxzOgo+ID4gICAgICAgICB0ZXN0IFZJRElPQ19EQkdfRy9TX1JFR0lTVEVSOiBPSyAoTm90
IFN1cHBvcnRlZCkKPiA+ICAgICAgICAgdGVzdCBWSURJT0NfTE9HX1NUQVRVUzogT0sKPiA+Cj4g
PiBJbnB1dCBpb2N0bHM6Cj4gPiAgICAgICAgIHRlc3QgVklESU9DX0cvU19UVU5FUi9FTlVNX0ZS
RVFfQkFORFM6IE9LIChOb3QgU3VwcG9ydGVkKQo+ID4gICAgICAgICB0ZXN0IFZJRElPQ19HL1Nf
RlJFUVVFTkNZOiBPSyAoTm90IFN1cHBvcnRlZCkKPiA+ICAgICAgICAgdGVzdCBWSURJT0NfU19I
V19GUkVRX1NFRUs6IE9LIChOb3QgU3VwcG9ydGVkKQo+ID4gICAgICAgICB0ZXN0IFZJRElPQ19F
TlVNQVVESU86IE9LIChOb3QgU3VwcG9ydGVkKQo+ID4gICAgICAgICB0ZXN0IFZJRElPQ19HL1Mv
RU5VTUlOUFVUOiBPSyAoTm90IFN1cHBvcnRlZCkKPiA+ICAgICAgICAgdGVzdCBWSURJT0NfRy9T
X0FVRElPOiBPSyAoTm90IFN1cHBvcnRlZCkKPiA+ICAgICAgICAgSW5wdXRzOiAwIEF1ZGlvIElu
cHV0czogMCBUdW5lcnM6IDAKPiA+Cj4gPiBPdXRwdXQgaW9jdGxzOgo+ID4gICAgICAgICB0ZXN0
IFZJRElPQ19HL1NfTU9EVUxBVE9SOiBPSyAoTm90IFN1cHBvcnRlZCkKPiA+ICAgICAgICAgdGVz
dCBWSURJT0NfRy9TX0ZSRVFVRU5DWTogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gPiAgICAgICAgIHRl
c3QgVklESU9DX0VOVU1BVURPVVQ6IE9LIChOb3QgU3VwcG9ydGVkKQo+ID4gICAgICAgICB0ZXN0
IFZJRElPQ19HL1MvRU5VTU9VVFBVVDogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gPiAgICAgICAgIHRl
c3QgVklESU9DX0cvU19BVURPVVQ6IE9LIChOb3QgU3VwcG9ydGVkKQo+ID4gICAgICAgICBPdXRw
dXRzOiAwIEF1ZGlvIE91dHB1dHM6IDAgTW9kdWxhdG9yczogMAo+ID4KPiA+IElucHV0L091dHB1
dCBjb25maWd1cmF0aW9uIGlvY3RsczoKPiA+ICAgICAgICAgdGVzdCBWSURJT0NfRU5VTS9HL1Mv
UVVFUllfU1REOiBPSyAoTm90IFN1cHBvcnRlZCkKPiA+ICAgICAgICAgdGVzdCBWSURJT0NfRU5V
TS9HL1MvUVVFUllfRFZfVElNSU5HUzogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gPiAgICAgICAgIHRl
c3QgVklESU9DX0RWX1RJTUlOR1NfQ0FQOiBPSyAoTm90IFN1cHBvcnRlZCkKPiA+ICAgICAgICAg
dGVzdCBWSURJT0NfRy9TX0VESUQ6IE9LIChOb3QgU3VwcG9ydGVkKQo+ID4KPiA+IENvbnRyb2wg
aW9jdGxzOgo+ID4gICAgICAgICB0ZXN0IFZJRElPQ19RVUVSWV9FWFRfQ1RSTC9RVUVSWU1FTlU6
IE9LCj4gPiAgICAgICAgIHRlc3QgVklESU9DX1FVRVJZQ1RSTDogT0sKPiA+ICAgICAgICAgdGVz
dCBWSURJT0NfRy9TX0NUUkw6IE9LCj4gPiAgICAgICAgIHRlc3QgVklESU9DX0cvUy9UUllfRVhU
X0NUUkxTOiBPSwo+ID4gICAgICAgICB0ZXN0IFZJRElPQ18oVU4pU1VCU0NSSUJFX0VWRU5UL0RR
RVZFTlQ6IE9LCj4gPiAgICAgICAgIHRlc3QgVklESU9DX0cvU19KUEVHQ09NUDogT0sgKE5vdCBT
dXBwb3J0ZWQpCj4gPiAgICAgICAgIFN0YW5kYXJkIENvbnRyb2xzOiA0IFByaXZhdGUgQ29udHJv
bHM6IDAKPiA+Cj4gPiBGb3JtYXQgaW9jdGxzOgo+ID4gICAgICAgICB0ZXN0IFZJRElPQ19FTlVN
X0ZNVC9GUkFNRVNJWkVTL0ZSQU1FSU5URVJWQUxTOiBPSwo+ID4gICAgICAgICB0ZXN0IFZJRElP
Q19HL1NfUEFSTTogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gPiAgICAgICAgIHRlc3QgVklESU9DX0df
RkJVRjogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gPiAgICAgICAgIHRlc3QgVklESU9DX0dfRk1UOiBP
Swo+ID4gICAgICAgICB0ZXN0IFZJRElPQ19UUllfRk1UOiBPSwo+ID4gICAgICAgICB0ZXN0IFZJ
RElPQ19TX0ZNVDogT0sKPiA+ICAgICAgICAgdGVzdCBWSURJT0NfR19TTElDRURfVkJJX0NBUDog
T0sgKE5vdCBTdXBwb3J0ZWQpCj4gPiAgICAgICAgIHRlc3QgQ3JvcHBpbmc6IE9LIChOb3QgU3Vw
cG9ydGVkKQo+ID4gICAgICAgICB0ZXN0IENvbXBvc2luZzogT0sgKE5vdCBTdXBwb3J0ZWQpCj4g
PiAgICAgICAgIHRlc3QgU2NhbGluZzogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gPgo+ID4gQ29kZWMg
aW9jdGxzOgo+ID4gICAgICAgICB0ZXN0IFZJRElPQ18oVFJZXylFTkNPREVSX0NNRDogT0sgKE5v
dCBTdXBwb3J0ZWQpCj4gPiAgICAgICAgIHRlc3QgVklESU9DX0dfRU5DX0lOREVYOiBPSyAoTm90
IFN1cHBvcnRlZCkKPiA+ICAgICAgICAgdGVzdCBWSURJT0NfKFRSWV8pREVDT0RFUl9DTUQ6IE9L
IChOb3QgU3VwcG9ydGVkKQo+ID4KPiA+IEJ1ZmZlciBpb2N0bHM6Cj4gPiAgICAgICAgIHRlc3Qg
VklESU9DX1JFUUJVRlMvQ1JFQVRFX0JVRlMvUVVFUllCVUY6IE9LCj4gPiAgICAgICAgIHRlc3Qg
VklESU9DX0VYUEJVRjogT0sKPiA+ICAgICAgICAgdGVzdCBSZXF1ZXN0czogT0sgKE5vdCBTdXBw
b3J0ZWQpCj4gPgo+ID4gVG90YWwgZm9yIHN1bjhpLXJvdGF0ZSBkZXZpY2UgL2Rldi92aWRlbzA6
IDQ1LCBTdWNjZWVkZWQ6IDQ1LCBGYWlsZWQ6IDAsCj4gPiBXYXJuaW5nczogMAo+ID4KPiA+IEJl
c3QgcmVnYXJkcywKPiA+IEplcm5lago+ID4KPiA+IEplcm5laiBTa3JhYmVjICg4KToKPiA+ICAg
Y2xrOiBzdW54aS1uZzogc3VuOGktZGUyOiBTd2FwIEE2NCBhbmQgSDYgZGVmaW5pdGlvbnMKPiA+
ICAgY2xrOiBzdW54aS1uZzogc3VuOGktZGUyOiBGaXggQTgzVCBjbG9ja3MgYW5kIHJlc2V0Cj4K
PiBQbGVhc2UgZGlzcmVnYXJkIGFib3ZlIHR3byBwYXRjaGVzLiBJdCB0dXJucyBvdXQgdGhhdCBt
YW55IG1vcmUgY2hhbmdlcyBhcmUKPiByZXF1aXJlZCB0byBmaXggbWVzcyB3aXRoIHJvdGF0aW9u
IGNsb2NrcyBhbmQgcmVzZXQuIEkgc2VudCBzZXBhcmF0ZSBwYXRjaAo+IHNlcmllczogaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4LWFybS1rZXJuZWwvMjAyMC1GZWJy
dWFyeS8KPiA3MTAyNDIuaHRtbAo+Cj4gQ29tbWVudHMgb24gdGhlIHJlc3Qgb2YgdGhlIHNlcmll
cyBhcmUgd2VsY29tZSwgdGhvdWdoLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEplcm5lago+Cj4gPiAg
IEFSTTogZHRzOiBzdW54aTogRml4IERFMiBjbG9ja3MgcmVnaXN0ZXIgcmFuZ2UKPiA+ICAgYXJt
NjQ6IGR0czogYWxsd2lubmVyOiBhNjQ6IEZpeCBkaXNwbGF5IGNsb2NrIHJlZ2lzdGVyIHJhbmdl
Cj4gPiAgIG1lZGlhOiBkdC1iaW5kaW5nczogbWVkaWE6IEFkZCBBbGx3aW5uZXIgQTgzVCBSb3Rh
dGUgZHJpdmVyCj4gPiAgIG1lZGlhOiBzdW44aTogQWRkIEFsbHdpbm5lciBBODNUIFJvdGF0ZSBk
cml2ZXIKPiA+ICAgQVJNOiBkdHM6IHN1bjhpOiBhODN0OiBBZGQgZGV2aWNlIG5vZGUgZm9yIHJv
dGF0aW9uIGNvcmUKPiA+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBhNjQ6IGFkZCBub2RlIGZv
ciByb3RhdGlvbiBjb3JlCgpNZXJnZWQgdGhlIERUUyBwYXRjaGVzIGZvciA1LjcuCgpDaGVuWXUK
Cj4gPiAgLi4uL2FsbHdpbm5lcixzdW44aS1hODN0LWRlMi1yb3RhdGUueWFtbCAgICAgIHwgIDcw
ICsrCj4gPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICA4ICsKPiA+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kgICAgICAgICAgICAg
fCAgMTMgKy0KPiA+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1yNDAuZHRzaSAgICAgICAgICAg
ICAgfCAgIDIgKy0KPiA+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS12M3MuZHRzaSAgICAgICAg
ICAgICAgfCAgIDIgKy0KPiA+ICBhcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpICAg
ICAgICAgICAgfCAgIDIgKy0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktYTY0LmR0c2kgfCAgMTQgKy0KPiA+ICBkcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuOGkt
ZGUyLmMgICAgICAgICAgfCAgNDkgKy0KPiA+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL0tjb25m
aWcgICAgICAgICAgICAgICAgfCAgMTIgKwo+ID4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Vu
eGkvTWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4gPiAgLi4uL3BsYXRmb3JtL3N1bnhpL3N1bjhp
LXJvdGF0ZS9NYWtlZmlsZSAgICAgIHwgICAyICsKPiA+ICAuLi4vc3VueGkvc3VuOGktcm90YXRl
L3N1bjhpLWZvcm1hdHMuYyAgICAgICAgfCAyNzMgKysrKysrCj4gPiAgLi4uL3N1bnhpL3N1bjhp
LXJvdGF0ZS9zdW44aS1mb3JtYXRzLmggICAgICAgIHwgIDI1ICsKPiA+ICAuLi4vc3VueGkvc3Vu
OGktcm90YXRlL3N1bjhpLXJvdGF0ZS5jICAgICAgICAgfCA5MjQgKysrKysrKysrKysrKysrKysr
Cj4gPiAgLi4uL3N1bnhpL3N1bjhpLXJvdGF0ZS9zdW44aS1yb3RhdGUuaCAgICAgICAgIHwgMTM1
ICsrKwo+ID4gIDE1IGZpbGVzIGNoYW5nZWQsIDE1MTIgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRp
b25zKC0pCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0Cj4gPiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVkaWEvYWxsd2lubmVyLHN1bjhpLWE4M3QtZGUyLXJvdGF0ZS55YW0KPiA+
IGwgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGkt
cm90YXRlL01ha2VmaWxlCj4gPiBjcmVhdGUgbW9kZSAxMDA2NDQKPiA+IGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vc3VueGkvc3VuOGktcm90YXRlL3N1bjhpLWZvcm1hdHMuYyBjcmVhdGUgbW9kZQo+
ID4gMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktcm90YXRlL3N1bjhp
LWZvcm1hdHMuaCBjcmVhdGUKPiA+IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
c3VueGkvc3VuOGktcm90YXRlL3N1bjhpLXJvdGF0ZS5jIGNyZWF0ZQo+ID4gbW9kZSAxMDA2NDQg
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1yb3RhdGUvc3VuOGktcm90YXRlLmgK
Pgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
