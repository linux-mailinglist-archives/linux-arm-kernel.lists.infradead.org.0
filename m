Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D302E17D7FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 02:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZcAgLy4bfDIv1laHM6uxc3WI2dzWWF2yGIqdE+pDvI=; b=AL1lOknuf/dX/o
	je8/CmV8XAFhVGFeH3NZwOzdrHX44LJGdohjMJVq48522XG9TtSSP6ZBkRXzaFN2VxhPklu3NvQEE
	ezCBTXPG0foezF7Zpnao/3whVV53Dd+Uu+uZ0dZiFXt/qI0TFdUpdffCuRcvruVEL5Za6e9bWoDIt
	IWF6livkKeuDTPTuzfFrxh9zsrjTtkgeVb6bMjkXwI75Gdb9l6uezFrFS2T7cPifyFNkXQCAZIyDl
	z5mzBpe9VLI+fN9uCMv/ogYBnZrL1MsquBLhm4cZv7wGQqyiP5PQBb21F2sxqRxXia1XnshnClQRX
	CZP7NrZI3vMs/PL7wiHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB7cD-0002Y1-UE; Mon, 09 Mar 2020 01:53:57 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB7c4-0002WW-Ga
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 01:53:50 +0000
Received: by mail-vs1-xe44.google.com with SMTP id n27so5087520vsa.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Mar 2020 18:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QImbxmTkHKil1pvHr+BDxiJL2XLBZLzoyGW6wsTn3oQ=;
 b=aWYnmvWGdbntSuhyucIIAMxrZHkM4G5/Q9vbOmCQsekZAYHvr4Eog74dsXDkMYl2xD
 KvL1zeXKamlcuQTyyvQgkSKnT1gNRPF5uTVUa4a4fHcg/kx4VnHTixsNdroZ764sU1Uy
 +tKikHrHiZuRBXkYz+/Z8bBjwf8qxvraCz7gQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QImbxmTkHKil1pvHr+BDxiJL2XLBZLzoyGW6wsTn3oQ=;
 b=RqtDtm3N/jCj9a9m9C+dYUCybCPiflXQBEWMW481BlbWwQDh2XvccujhMmMYp61yXu
 521RKO40Z+o1K7fZBGHPdWCNGQ+HXOjj4SWIA+2zbPwpkVSxO0p/cHCKiNPVmPaKpVWc
 Y41kFj0fc3/kn84SS/eOtf70ef4xwpup7R45zhVTieCri2dOebziwsjg4aIhBowZGG5Z
 dTBZgfMfn4vX1U/3ZL/NZnfeaw44FCrNfvjniaEeB7ko6UA41C4nxUEB+EWHjhZTKh4C
 oWGzI9RBlRle5G1dwLt5lLqipjeZ1CoAv24i84SrpuqfXb/wh24I7OOWqMzeQe3xg6Nz
 t8Bg==
X-Gm-Message-State: ANhLgQ2LsXoQTKYgIoOGDwoe3jMIyLXLBhJU74wOgZtf/JjrYeAOerSV
 p/iBBAAzW8za6jjPHOqr7LTWlRh0lQeclGzwh8D/vg==
X-Google-Smtp-Source: ADFU+vvYsFjqtY5zn3zCc01nvvuQjne4/YR7CEb/r3521XiWmW+BqevLE59/BQHtNHTJV1ro52aTXPZEfqp1TtQdFWA=
X-Received: by 2002:a05:6102:9c7:: with SMTP id
 g7mr8614280vsi.186.1583718826912; 
 Sun, 08 Mar 2020 18:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-8-drinkcat@chromium.org>
 <CANMq1KBL-S2DVKbCB2h_XNpfUro+pZ96-C5ft0p-8GX_tbXELQ@mail.gmail.com>
 <CAL_JsqLuo+2G2MjiwS9cwNhMV2pGBojXFGNqEfLv3fP-Y04mfA@mail.gmail.com>
 <CANMq1KCn5rrOrv2GjFh5Aau5Los4VVk=NMWAsvZiNuwoxyMVHA@mail.gmail.com>
 <e4e95aa7713344e8b43fe5fad05de3ee@mtkmbs01n1.mediatek.inc>
In-Reply-To: <e4e95aa7713344e8b43fe5fad05de3ee@mtkmbs01n1.mediatek.inc>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 9 Mar 2020 09:53:35 +0800
Message-ID: <CANMq1KDmvxQdKHgyvQb6xChFX5UkBqPyQKXxuxGV70=p1=ezKw@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] RFC: drm/panfrost: devfreq: Add support for 2
 regulators
To: =?UTF-8?B?TmljayBGYW4gKOiMg+WTsue2rSk=?= <Nick.Fan@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_185348_579110_42BA3510 
X-CRM114-Status: GOOD (  24.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 =?UTF-8?B?V2VpeWkgTHUgKOWRguWogeWEgCk=?= <Weiyi.Lu@mediatek.com>,
 Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2ogSHVhbmcgKOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Stephen Boyd <sboyd@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?SkIgVHNhaSAo6JSh5b+X5b2sKQ==?= <Jb.Tsai@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TG9vcGluZyBiYWNrIG9uIHRoaXMsIGFmdGVyIGRpZ2dpbmcgYSBiaXQgZGVlcGVyLi4uCgpPbiBG
cmksIEZlYiAxNCwgMjAyMCBhdCA5OjM4IEFNIE5pY2sgRmFuICjojIPlk7Lntq0pIDxOaWNrLkZh
bkBtZWRpYXRlay5jb20+IHdyb3RlOgo+IFtzbmlwXQo+ID4gPiBBbm90aGVyIHRoaW5nIHRoYXQg
SSdtIG5vdCBpbXBsZW1lbnRpbmcgaXMgdGhlIGRhbmNlIHRoYXQgTWVkaWF0ZWsKPiA+ID4gZG9l
cyBpbiB0aGVpciBrYmFzZSBkcml2ZXIgd2hlbiBjaGFuZ2luZyB0aGUgY2xvY2sgKGRlc2NyaWJl
ZCBpbgo+ID4gPiBwYXRjaAo+ID4gPiAyLzcpOgo+ID4gPiAiIgo+ID4gPiBUaGUgYmluZGluZyB3
ZSB1c2Ugd2l0aCBvdXQtb2YtdHJlZSBNYWxpIGRyaXZlcnMgaW5jbHVkZXMgbW9yZQo+ID4gPiBj
bG9ja3MsIHRoaXMgaXMgdXNlZCBmb3IgZGV2ZnJlcTogdGhlIG91dC1vZi10cmVlIGRyaXZlciBz
d2l0Y2hlcwo+ID4gPiBjbGtfbXV4IHRvIGNsa19zdWJfcGFyZW50ICgyNk1oeiksIGFkanVzdHMg
Y2xrX21haW5fcGFyZW50LCB0aGVuCj4gPiA+IHN3aXRjaGVzIGNsa19tdXggYmFjayB0byBjbGtf
bWFpbl9wYXJlbnQ6Cj4gPiA+IChzZWUKPiA+ID4gaHR0cHM6Ly9jaHJvbWl1bS5nb29nbGVzb3Vy
Y2UuY29tL2Nocm9taXVtb3MvdGhpcmRfcGFydHkva2VybmVsLysvY2gKPiA+ID4gcm9tZW9zLTQu
MTkvZHJpdmVycy9ncHUvYXJtL21pZGdhcmQvcGxhdGZvcm0vbWVkaWF0ZWsvbWFsaV9rYmFzZV9y
dW4KPiA+ID4gdGltZV9wbS5jIzQyMykKPiA+ID4gY2xvY2tzID0KPiA+ID4gICAgICAgICA8JnRv
cGNrZ2VuIENMS19UT1BfTUZHUExMX0NLPiwKPiA+ID4gICAgICAgICA8JnRvcGNrZ2VuIENMS19U
T1BfTVVYX01GRz4sCj4gPiA+ICAgICAgICAgPCZjbGsyNm0+LAo+ID4gPiAgICAgICAgIDwmbWZn
Y2ZnIENMS19NRkdfQkczRD47Cj4gPiA+IGNsb2NrLW5hbWVzID0KPiA+ID4gICAgICAgICAiY2xr
X21haW5fcGFyZW50IiwKPiA+ID4gICAgICAgICAiY2xrX211eCIsCj4gPiA+ICAgICAgICAgImNs
a19zdWJfcGFyZW50IiwKPiA+ID4gICAgICAgICAic3Vic3lzX21mZ19jZyI7Cj4gPiA+ICIiCj4g
PiA+IElzIHRoZXJlIGEgY2xlYW4vc2ltcGxlIHdheSB0byBpbXBsZW1lbnQgdGhpcyBpbiB0aGUg
Y2xvY2sKPiA+ID4gZnJhbWV3b3JrL2RldmljZSB0cmVlPyBPciBzaG91bGQgd2UgaW1wbGVtZW50
IHNvbWV0aGluZyBpbiB0aGUKPiA+ID4gcGFuZnJvc3QgZHJpdmVyPwo+ID4KPiA+IFB1dHRpbmcg
cGFyZW50IGNsb2NrcyBpbnRvICdjbG9ja3MnIGZvciBhIGRldmljZSBpcyBhIHByZXR0eSBjb21t
b24KPiA+IGFidXNlLiBUaGUgJ2Fzc2lnbmVkLWNsb2NrcycgYmluZGluZyBpcyB3aGF0J3MgdXNl
ZCBmb3IgcGFyZW50IGNsb2NrCj4gPiBzZXR1cC4gTm90IHN1cmUgdGhhdCdzIGdvaW5nIHRvIGhl
bHAgaGVyZSB0aG91Z2guIElzIHRoaXMgZGFuY2UKPiA+IGJlY2F1c2UgdGhlIHBhcmVudCBjbG9j
ayBmcmVxdWVuY3kgY2FuJ3QgYmUgY2hhbmdlZCBjbGVhbmx5Pwo+Cj4gTmljay9XZWl5aSwgYW55
IGlkZWEgd2h5IHdlIGRvIHRoYXQgZGFuY2UgaW4gdGhlIGZpcnN0IHBsYWNlPyAobWF5YmUgdGhl
IFBMTCBjbG9jayBpcyB1bnN0YWJsZSB3aGlsZSBpdCdzIGJlaW5nIGNoYW5nZWQ/KQo+Cj4gQ2xv
Y2sgc291cmNlIG1heSBiZWNvbWUgdW5zdGFibGUgZHVyaW5nIGNsb2NrIGZyZXF1ZW5jeSBjaGFu
Z2VzLCBzbyBpdCBpcyBhbHdheXMgc2FmZXIgdG8gc3dpdGNoIHRvIGEgbW9yZSByZWxpYWJsZSBj
bG9jayBzb3VyY2UuCj4gT3RoZXJ3aXNlLCBpdCBtYXkgY2F1c2Ugc29tZSBwcm9ibGVtIGluIHNv
bWUgY29ybmVyIGNhc2UuCj4gSSB3b3VsZCBzdWdnZXN0IHRvIGtlZXAgaXQuCgpUaGUgTWVkaWF0
ZWsgQ1BVZnJlcSBkcml2ZXIgYWN0dWFsbHkgZG9lcyBhIHZlcnkgc2ltaWxhciBkYW5jZToKaHR0
cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL2RyaXZlcnMvY3B1ZnJl
cS9tZWRpYXRlay1jcHVmcmVxLmMjTDI0OQoKV2hhdCB0aGV5IGhhdmUgaW4gdGhlIGRldmljZSB0
cmVlIGlzIHRoZSBtYWluIGNsb2NrLCBhbmQgdGhlCiJpbnRlcm1lZGlhdGUiIGNsb2NrIHRoYXQg
aXMgcmVxdWlyZWQgZHVyaW5nIHN3aXRjaGluZzoKY2xvY2tzID0gPCZtY3VjZmcgQ0xLX01DVV9N
UDBfU0VMPiwgPCZ0b3Bja2dlbiBDTEtfVE9QX0FSTVBMTF9ESVZfUExMMT47CmNsb2NrLW5hbWVz
ID0gImNwdSIsICJpbnRlcm1lZGlhdGUiOwoKVGhlIHRvcG9sb2d5IGxvb2tzIGxpa2UgdGhpczoK
IGNsazI2bSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDE1ICAgICAgIDE1ICAgICAgICAx
ICAgIDI2MDAwMDAwCiAgICAgICAgMCAgICAgMCAgNTAwMDAKICAgIGFybXBsbF9sbCAgICAgICAg
ICAgICAgICAgICAgICAgICAxICAgICAgICAxICAgICAgICAwICAxNDE3MDAwMDAwCiAgICAgICAg
MCAgICAgMCAgNTAwMDAKICAgICAgIG1jdV9tcDBfc2VsICAgICAgICAgICAgICAgICAgICAwICAg
ICAgICAwICAgICAgICAwICAxNDE3MDAwMDAwCiAgICAgICAgMCAgICAgMCAgNTAwMDAKCkFuZCBk
ZXZpY2UgdHJlZSBwcm92aWRlcyBtY3VfbXAwX3NlbCBhcyAiY3B1IiwgYW5kIHRoZSBhcm1wbGxf
ZGl2X3BsbDEKYXMgImludGVybWVkaWF0ZSIuCgpUaGUgZHJpdmVyIGxvb2tzIHVwIGFybXBsbF9s
bCBieSBjYWxsaW5nIGdldF9wYXJlbnQsIHRoZW46CiAtIHNldF9wYXJlbnQobWN1X21wMF9zZWws
IGFybXBsbF9kaXZfcGxsMSkKIC0gc2V0X3JhdGUoYXJtcGxsX2xsLCBuZXdfcmF0ZSkKIC0gc2V0
X3BhcmVudChtY3VfbXAwX3NlbCwgYXJtcGxsX2xsKQoKT24gTVQ4MTgzJ3MgR1BVLCB0aGUgdG9w
b2xvZ3kgaXMgYSBsaXR0bGUgYml0IG1vcmUgY29tcGxpY2F0ZWQgKGJ1dCBJCnRoaW5rIHRoZXJl
IHNob3VsZCBiZSBhIHdheSB0byBtZXJnZSBtZmdfYmczZCBhbiBtZmdfc2VsIGluIHRoZSBjbG9j
awpjb3JlKQogY2xrMjZtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTUgICAgICAgMTUg
ICAgICAgIDEgICAgMjYwMDAwMDAKICAgICAgICAwICAgICAwICA1MDAwMAogICAgbWZncGxsICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDEgICAgICAgIDEgICAgICAgIDAgICA0MTk5OTk4MTcK
ICAgICAgICAwICAgICAwICA1MDAwMAogICAgICAgbWZncGxsX2NrICAgICAgICAgICAgICAgICAg
ICAgIDIgICAgICAgIDIgICAgICAgIDAgICA0MTk5OTk4MTcKICAgICAgICAwICAgICAwICA1MDAw
MAogICAgICAgICAgbWZnX3NlbCAgICAgICAgICAgICAgICAgICAgIDMgICAgICAgIDMgICAgICAg
IDAgICA0MTk5OTk4MTcKICAgICAgICAwICAgICAwICA1MDAwMAogICAgICAgICAgICAgbWZnX2Jn
M2QgICAgICAgICAgICAgICAgIDEgICAgICAgIDEgICAgICAgIDAgICA0MTk5OTk4MTcKICAgICAg
ICAwICAgICAwICA1MDAwMAoKV2UncmUgZ29pbmcgdG8gbmVlZCBhIHNwZWNpYWwgcGFuZnJvc3Qg
ZGV2ZnJlcSBkcml2ZXIgZm9yIG10ODE4Mwphbnl3YXkgKHRvIGhhbmRsZSB0aGUgMiByZWd1bGF0
b3JzKSwgc28gaXQgd291bGQgYmUgZWFzeSB0byB0YWtlIGEKc2ltaWxhciBhcHByb2FjaDoKIC0g
QWRkICJpbnRlcm1lZGlhdGUiIGNsb2NrIGluIHRoZSBkZXZpY2UgdHJlZSAoY2xrMjZtKQogLSBG
aW5kIG1mZ19zZWwvbWZncGxsX2NrIHVzaW5nIDEvMiBjbGtfZ2V0X3BhcmVudCBjYWxscy4KIC0g
U3dpdGNoIG1mZ19zZWwgdG8gY2xrMjZtLCBzZXQgbWZncGxsX2NrIHJhdGUsIHN3aXRjaCBtZmdf
c2VsIGJhY2sKdG8gbWZncGxsX2NrLgoKKEJUVywgSSB0cmllZCB0byBsb29rLCBhbmQgY291bGRu
J3QgZmluZCBleGFtcGxlcyBvciByZXBhcmVudGluZwpkdXJpbmcgY2xvY2sgY2hhbmdlcyBpbiBk
cml2ZXJzL2NsaywgYXJlIHRoZXJlIGV4aXN0aW5nIGRyaXZlcnMgZG9pbmcKc2ltaWxhciB0aGlu
Z3M/IE9yIHRoaXMgd291bGQgYmUgbmV3PykuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
