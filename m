Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A251118BE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:03:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7no6/Sox0iTGX/M1sl5Md+x+d9oVczNHyjoSTB5ArGM=; b=kP+3QEDoIMShog
	IiespJ8uwpaSZyh7ERIz7FmrwUMGqmM50Z5pmb6ytQ1scYOCSgozAWI7u43pBDtZEd2l4QBL89Tsp
	VOkstDQ0CwMJw8feFx/KN4VsbeQEOIYvysoozn8Otn2NF2WUhPe10toXpQFKr6kjf9E3mRiO2qf/l
	JrqIjRFiO+UNsnN4uQpp1BczKQeBP2/VM8tkh9YiOAiuixl694OMRxk2l0E19h/4WoF4dFhEIfUf7
	/ec7Gi5EE1kF7hA9x9b/6RVkt2z1R821TlDaAtuyMVOKl+pXAeQvsDvbu0IjfqFWy4sXnNbG7tJUQ
	qu87mSw+Sh0zV0pbF4BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieh2f-00056F-FZ; Tue, 10 Dec 2019 15:03:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieh2V-00055N-Te
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 15:03:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so3581255wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 07:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P+ZsUNL/y2u1OQUqoT9Jt+rQhvtloBYS2x5ThkHTunQ=;
 b=Yneg9xPSRZHDcb+NWskA4LXjnBnezcmDF8bxXG5RmlhRjMeFGdkligslCTg27edhKA
 g9bftXjCrEXMczPAVqnP1iPvKKZ43yvPrIeZWRUBhZHl8rWFVxTfR0kRxV56ibwnMxEV
 Luvupsr1hNfQpkSM1XuQQ7aU53m0K0wmHJyiJQv1Zu3NoYM75NpYZDh3LmQl0pCFYWxD
 JgnwiER30lTyMLg9AP/Xj2zTiQ7aJ/BzNpY+HSoL5sSDAQ/SKaQw1QMbKegKa59WgLay
 5qPzwMrguH18vmdxQ/DnXHFzA6d26vJNzi88Z9wMwcEi8yQYdrA6UhMZyFYSvLWIpMOD
 e+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P+ZsUNL/y2u1OQUqoT9Jt+rQhvtloBYS2x5ThkHTunQ=;
 b=AnLNHFcmVVAGxzoQGZM6TihdbcYT0CunGTMwqQt/X4GOb8EbkCouodLJAOoQvN2X0o
 FMPzWcXS+QG8b/9cPJuPQjlkMOTnuTDYVtBoB6MK4MpdmTRfZBozcD1W5YEXnwByHGkH
 oiS/iDaMnac/YcIj4pR7DpyVRrG2eU1W+SAS0Yf2oETxLxsbqvkHEQoXbOV1txqQ/vkr
 2hjuED1ZE2PrlZV1JA/hHVM6I698nvL9aaKuBKHbtY19Zdj5KiHdXnyqD0KgaOgEhf/L
 gR/RPs2BsfoSaHACGrAQwrmySpgDhxU4gjvB5OKt0JzsNAZ4MLKApMHAIHla/HmwvSJ4
 q/0A==
X-Gm-Message-State: APjAAAUGsncQqKoOidmZBmwgfirR7hKrf+uAdPO1vtmxtqEGuMlwyP9Z
 2A+bhdlqeg0JEL+5n2Tgnclyfax6EjWBs8zirCk=
X-Google-Smtp-Source: APXvYqzkXjsaYAifLbwc79RkgYYsp7dChnUi0vR1wWqDGo/VWSDuysPo4WSKmR3Gsy2OPQFPtzWA/rYF88tNkbE0CJo=
X-Received: by 2002:a05:600c:204:: with SMTP id 4mr5940038wmi.1.1575990181829; 
 Tue, 10 Dec 2019 07:03:01 -0800 (PST)
MIME-Version: 1.0
References: <20191209182024.20509-1-peron.clem@gmail.com>
 <20191209182024.20509-2-peron.clem@gmail.com>
 <20191210093843.qoypomttr4b7kbep@gilmour.lan>
In-Reply-To: <20191210093843.qoypomttr4b7kbep@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 10 Dec 2019 16:02:50 +0100
Message-ID: <CAJiuCcd7hO=xY9io_+CZW9ybAVZeH5TsfS0Hfjr+LtCXh11vrg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: allwinner: Convert license to SPDX
 identifier
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_070303_994763_6E36DC60 
X-CRM114-Status: GOOD (  29.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCAxMCBEZWMgMjAxOSBhdCAxMDozOCwgTWF4aW1lIFJpcGFyZCA8
bXJpcGFyZEBrZXJuZWwub3JnPiB3cm90ZToKPgo+IEhpIENsw6ltZW50LAo+Cj4gT24gTW9uLCBE
ZWMgMDksIDIwMTkgYXQgMDc6MjA6MjNQTSArMDEwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+
ID4gVXNlIGEgc2hvcnRlciBTUERYIGlkZW50aWZpZXIgaW5zdGVhZCBvZiBwYXN0aW5nIHRoZQo+
ID4gd2hvbGUgbGljZW5zZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvYXhwODAzLmR0c2kgICAgIHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIC4u
Li9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtYmFuYW5hcGktbTY0LmR0cyB8IDM5ICstLS0tLS0t
LS0tLS0tLS0tLS0KPiA+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LW5hbm9waS1hNjQu
ZHRzICAgfCAzOSArLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgLi4uL2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWE2NC1vbGludXhpbm8uZHRzICAgIHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIC4u
Li9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cyB8IDM5ICstLS0tLS0t
LS0tLS0tLS0tLS0KPiA+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LXBpbmU2NC1wbHVz
LmR0cyAgfCAzOSArLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgLi4uL2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktYTY0LXBpbmU2NC5kdHMgIHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIC4u
Li9hbGx3aW5uZXIvc3VuNTBpLWE2NC1zb3BpbmUtYmFzZWJvYXJkLmR0cyB8IDM5ICstLS0tLS0t
LS0tLS0tLS0tLS0KPiA+ICAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtc29waW5l
LmR0c2kgfCAzOSArLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpIHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIC4u
Li9hbGx3aW5uZXIvc3VuNTBpLWg1LW5hbm9waS1uZW8tcGx1czIuZHRzICB8IDM5ICstLS0tLS0t
LS0tLS0tLS0tLS0KPiA+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDUtbmFub3BpLW5lbzIu
ZHRzICAgfCAzOSArLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgLi4uL2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg1LW9yYW5nZXBpLXBjMi5kdHMgIHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIC4u
Li9hbGx3aW5uZXIvc3VuNTBpLWg1LW9yYW5nZXBpLXByaW1lLmR0cyAgICB8IDM5ICstLS0tLS0t
LS0tLS0tLS0tLS0KPiA+ICAuLi4vc3VuNTBpLWg1LW9yYW5nZXBpLXplcm8tcGx1czIuZHRzICAg
ICAgICAgfCAzOSArLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg1LmR0c2kgIHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIDE2
IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDYwOCBkZWxldGlvbnMoLSkKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvYXhwODAzLmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9heHA4MDMuZHRzaQo+ID4gaW5kZXggZjAz
NDllZjRiZmRkLi4wZTEzZTc1MTMyYWMgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9heHA4MDMuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvYXhwODAzLmR0c2kKPiA+IEBAIC0xLDQzICsxLDYgQEAKPiA+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIFgxMSkKPiA+ICAvKgo+ID4gICAqIENvcHly
aWdodCAyMDE3IEljZW5vd3kgWmhlbmcgPGljZW5vd3lAYW9zYy54eXo+Cj4gPiAtICoKPiA+IC0g
KiBUaGlzIGZpbGUgaXMgZHVhbC1saWNlbnNlZDogeW91IGNhbiB1c2UgaXQgZWl0aGVyIHVuZGVy
IHRoZSB0ZXJtcwo+ID4gLSAqIG9mIHRoZSBHUEwgb3IgdGhlIFgxMSBsaWNlbnNlLCBhdCB5b3Vy
IG9wdGlvbi4gTm90ZSB0aGF0IHRoaXMgZHVhbAo+ID4gLSAqIGxpY2Vuc2luZyBvbmx5IGFwcGxp
ZXMgdG8gdGhpcyBmaWxlLCBhbmQgbm90IHRoaXMgcHJvamVjdCBhcyBhCj4gPiAtICogd2hvbGUu
Cj4gPiAtICoKPiA+IC0gKiAgYSkgVGhpcyBmaWxlIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4g
cmVkaXN0cmlidXRlIGl0IGFuZC9vcgo+ID4gLSAqICAgICBtb2RpZnkgaXQgdW5kZXIgdGhlIHRl
cm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhcwo+ID4gLSAqICAgICBwdWJs
aXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbjsgZWl0aGVyIHZlcnNpb24gMiBv
ZiB0aGUKPiA+IC0gKiAgICAgTGljZW5zZSwgb3IgKGF0IHlvdXIgb3B0aW9uKSBhbnkgbGF0ZXIg
dmVyc2lvbi4KPiA+IC0gKgo+ID4gLSAqICAgICBUaGlzIGZpbGUgaXMgZGlzdHJpYnV0ZWQgaW4g
dGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwKPiA+IC0gKiAgICAgYnV0IFdJVEhPVVQg
QU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKPiA+IC0g
KiAgICAgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NF
LiAgU2VlIHRoZQo+ID4gLSAqICAgICBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9y
ZSBkZXRhaWxzLgo+ID4gLSAqCj4gPiAtICogT3IsIGFsdGVybmF0aXZlbHksCj4gPiAtICoKPiA+
IC0gKiAgYikgUGVybWlzc2lvbiBpcyBoZXJlYnkgZ3JhbnRlZCwgZnJlZSBvZiBjaGFyZ2UsIHRv
IGFueSBwZXJzb24KPiA+IC0gKiAgICAgb2J0YWluaW5nIGEgY29weSBvZiB0aGlzIHNvZnR3YXJl
IGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24KPiA+IC0gKiAgICAgZmlsZXMgKHRoZSAiU29m
dHdhcmUiKSwgdG8gZGVhbCBpbiB0aGUgU29mdHdhcmUgd2l0aG91dAo+ID4gLSAqICAgICByZXN0
cmljdGlvbiwgaW5jbHVkaW5nIHdpdGhvdXQgbGltaXRhdGlvbiB0aGUgcmlnaHRzIHRvIHVzZSwK
PiA+IC0gKiAgICAgY29weSwgbW9kaWZ5LCBtZXJnZSwgcHVibGlzaCwgZGlzdHJpYnV0ZSwgc3Vi
bGljZW5zZSwgYW5kL29yCj4gPiAtICogICAgIHNlbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwg
YW5kIHRvIHBlcm1pdCBwZXJzb25zIHRvIHdob20gdGhlCj4gPiAtICogICAgIFNvZnR3YXJlIGlz
IGZ1cm5pc2hlZCB0byBkbyBzbywgc3ViamVjdCB0byB0aGUgZm9sbG93aW5nCj4gPiAtICogICAg
IGNvbmRpdGlvbnM6Cj4gPiAtICoKPiA+IC0gKiAgICAgVGhlIGFib3ZlIGNvcHlyaWdodCBub3Rp
Y2UgYW5kIHRoaXMgcGVybWlzc2lvbiBub3RpY2Ugc2hhbGwgYmUKPiA+IC0gKiAgICAgaW5jbHVk
ZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0aW9ucyBvZiB0aGUgU29mdHdhcmUu
Cj4gPiAtICoKPiA+IC0gKiAgICAgVEhFIFNPRlRXQVJFIElTIFBST1ZJREVEICJBUyBJUyIsIFdJ
VEhPVVQgV0FSUkFOVFkgT0YgQU5ZIEtJTkQsCj4gPiAtICogICAgIEVYUFJFU1MgT1IgSU1QTElF
RCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBUTyBUSEUgV0FSUkFOVElFUwo+ID4gLSAqICAg
ICBPRiBNRVJDSEFOVEFCSUxJVFksIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFIEFO
RAo+ID4gLSAqICAgICBOT05JTkZSSU5HRU1FTlQuIElOIE5PIEVWRU5UIFNIQUxMIFRIRSBBVVRI
T1JTIE9SIENPUFlSSUdIVAo+ID4gLSAqICAgICBIT0xERVJTIEJFIExJQUJMRSBGT1IgQU5ZIENM
QUlNLCBEQU1BR0VTIE9SIE9USEVSIExJQUJJTElUWSwKPiA+IC0gKiAgICAgV0hFVEhFUiBJTiBB
TiBBQ1RJT04gT0YgQ09OVFJBQ1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklTSU5HCj4gPiAtICog
ICAgIEZST00sIE9VVCBPRiBPUiBJTiBDT05ORUNUSU9OIFdJVEggVEhFIFNPRlRXQVJFIE9SIFRI
RSBVU0UgT1IKPiA+IC0gKiAgICAgT1RIRVIgREVBTElOR1MgSU4gVEhFIFNPRlRXQVJFLgo+ID4g
ICAqLwo+Cj4gVGhhbmtzIGZvciBzZW5kaW5nIGEgbmV3IGl0ZXJhdGlvbiBvZiB0aGlzLiBJIGhh
ZCBhIGxvb2sgYXQgdGhlCj4gbGljZW5zZXMgdGV4dHMgYXNzb2NpYXRlZCB0byB0aGUgU1BEWCB0
YWcgaW4gdGhlIExJQ0VOU0VTIGZvbGRlciwgYW5kCj4gaXQgdHVybnMgb3V0IHRoYXQgdGhlIHRh
ZyB3ZSBzaG91bGQgYmUgdXNpbmcgZm9yIHRoYXQgdGV4dCBpcwo+IE1JVC4gV2hpbGUgd2UgbWVu
dGlvbiBYMTEgaW4gdGhlIGhlYWRlciwgdGhlIHRleHQgYXNzb2NpYXRlZCB0byB0aGUKPiBYMTEg
bGljZW5zZSBpc24ndCB0aGUgb25lIHdlIGhhdmUgaW4gb3VyIGhlYWRlcnMuCgpZZXMgeW91J3Jl
IHJpZ2h0IHRleHQgYXNzb2NpYXRlZCBpcyB0aGUgTUlUIExpY2Vuc2UuCgo+Cj4gSSBndWVzcyB3
ZSBzaG91bGQgbWFrZSB2ZXJ5IGNsZWFyIGluIHRoZSBjb21taXQgbG9nIHRoYXQgZXZlbiB0aG91
Z2gKPiB0aGUgdGFnIG5vdyByZXBvcnRzIE1JVCwgdGhpcyBtYXBzIHRvIHRoZSBzYW1lIGxpY2Vu
c2UgdGV4dCBhbmQgaXMgbm90Cj4gdGhlcmVmb3JlIGEgbGljZW5zZSBjaGFuZ2UuCgpPayBJIHdp
bGwgYWRkIHRoaXMgdG8gdGhlIGNvbW1pdCBsb2cKClJlZ2FyZHMsCkNsw6ltZW50Cj4KPiBUaGFu
a3MhCj4gTWF4aW1lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
