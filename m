Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52973352C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/Mt3roc8Ph70pLjWGZxxgxIVtuod//cwqb/9axt7Do=; b=PchkypCodEpAN6
	YTmkrWHKq3YNpdV/MfN7JQqRo4B1TAPnARxVy51c43D16OiF2+xWam9n1y+C+ENeheT566FOdcWMf
	er5FGhWzsVvcqSerL0m3sy+gF+UW+DUzv3PvXiB+J4gpmUwYpZ9YemHQ8ml4eF5BmX4uYep5G3JUx
	5gYUctbH4/Pnpw5fUiw7c4GEShfyWFNxXc1RHq5VvMtJkmttHNuWcdlULAiUGdW/5v5S8RLi1MCmA
	Ggubb0pg0HVNm7z14bCt/kSicIYeHaiq8yrR5KKKEe46nVQ74I3lHSd2VQRa2LYsR6JZPKVb83AR9
	++mmTh455i3DUvBgWw6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXq2S-0002Re-Uw; Mon, 03 Jun 2019 16:42:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXq2L-0002Qz-Pm
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:42:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B3319AE79;
 Mon,  3 Jun 2019 16:42:13 +0000 (UTC)
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <d086216f-f3fc-c88a-3891-81e84e8bdb01@suse.de>
 <VI1PR04MB5134BFA391D8FF013762882FEC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
 <19cc3230-33b0-e465-6317-590780b33efa@suse.de>
 <VI1PR04MB5134E4DA6EA052BEBB3C26EFEC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <c237dd17-ed43-d2d0-c76c-0c1dbf859690@suse.de>
Date: Mon, 3 Jun 2019 18:42:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB5134E4DA6EA052BEBB3C26EFEC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_094218_127312_BC0ED5F8 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Roy Pledge <roy.pledge@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "jocke@infinera.com" <joakim.tjernlund@infinera.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Mian Yousaf Kaukab <yousaf.kaukab@suse.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMzEuMDUuMTkgdW0gMTk6MzIgc2NocmllYiBMYXVyZW50aXUgVHVkb3I6Cj4+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3Vz
ZS5kZT4KPj4gU2VudDogRnJpZGF5LCBNYXkgMzEsIDIwMTkgODowNCBQTQo+Pgo+PiBIZWxsbyBM
YXVyZW50aXUsCj4+Cj4+IEFtIDMxLjA1LjE5IHVtIDE4OjQ2IHNjaHJpZWIgTGF1cmVudGl1IFR1
ZG9yOgo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+Pj4gRnJvbTogQW5kcmVhcyBG
w6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+Pj4+IFNlbnQ6IEZyaWRheSwgTWF5IDMxLCAyMDE5
IDc6MTUgUE0KPj4+Pgo+Pj4+IEhpIExhdXJlbnRpdSwKPj4+Pgo+Pj4+IEFtIDMwLjA1LjE5IHVt
IDE2OjE5IHNjaHJpZWIgbGF1cmVudGl1LnR1ZG9yQG54cC5jb206Cj4+Pj4+IFRoaXMgcGF0Y2gg
c2VyaWVzIGNvbnRhaW5zIHNldmVyYWwgZml4ZXMgaW4gcHJlcGFyYXRpb24gZm9yIFNNTVUKPj4+
Pj4gc3VwcG9ydCBvbiBOWFAgTFMxMDQzQSBhbmQgTFMxMDQ2QSBjaGlwcy4gT25jZSB0aGVzZSBn
ZXQgcGlja2VkIHVwLAo+Pj4+PiBJJ2xsIHN1Ym1pdCB0aGUgYWN0dWFsIFNNTVUgZW5hYmxlbWVu
dCBwYXRjaGVzIGNvbnNpc3RpbmcgaW4gdGhlCj4+Pj4+IHJlcXVpcmVkIGRldmljZSB0cmVlIGNo
YW5nZXMuCj4+Pj4KPj4+PiBIYXZlIHlvdSB0aG91Z2h0IHRocm91Z2ggd2hhdCB3aWxsIGhhcHBl
biBpZiB0aGlzIHBhdGNoIG9yZGVyaW5nIGlzIG5vdAo+Pj4+IHByZXNlcnZlZD8gSW4gcGFydGlj
dWxhciwgYSB1c2VyIGluc3RhbGxpbmcgYSBmdXR1cmUgVS1Cb290IHVwZGF0ZSB3aXRoCj4+Pj4g
dGhlIERUQiBiaXRzIGJ1dCBib290aW5nIGEgc3RhYmxlIGtlcm5lbCB3aXRob3V0IHRoaXMgcGF0
Y2ggc2VyaWVzIC0KPj4+PiB3b3VsZG4ndCB0aGF0IHJlZ3Jlc3MgZHBhYSB0aGVuIGZvciBvdXIg
Y3VzdG9tZXJzPwo+Pj4+Cj4+Pgo+Pj4gVGhlc2UgYXJlIGZpeGVzIGZvciBpc3N1ZXMgdGhhdCBw
b3BwZWQgb3V0IGFmdGVyIGVuYWJsaW5nIFNNTVUuCj4+PiBJIGRvIG5vdCBleHBlY3QgdGhlbSB0
byBicmVhayBhbnl0aGluZy4KPj4KPj4gVGhhdCB3YXMgbm90IG15IHF1ZXN0aW9uISBZb3UncmUg
bWlzc2luZyBteSBwb2ludDogQWxsIHlvdXIgcGF0Y2hlcyBhcmUKPj4gbGFja2luZyBhIEZpeGVz
IGhlYWRlciBpbiB0aGVpciBjb21taXQgbWVzc2FnZSwgZm9yIGJhY2twb3J0aW5nIHRoZW0sIHRv
Cj4+IGF2b2lkIF95b3VyIERUIHBhdGNoZXNfIGJyZWFraW5nIHRoZSBkcml2ZXIgb24gc3RhYmxl
IGJyYW5jaGVzIQo+IAo+IEl0IGRvZXMgYXBwZWFyIHRoYXQgSSdtIG1pc3NpbmcgeW91ciBwb2lu
dC4gRm9yIHN1cmUsIHRoZSBEVCB1cGRhdGVzIHNvbGVseSB3aWxsCj4gYnJlYWsgdGhlIGtlcm5l
bCB3aXRob3V0IHRoZXNlIGZpeGVzIGJ1dCBJJ20gbm90IHN1cmUgSSB1bmRlcnN0YW5kIGhvdyB0
aGlzCj4gY291bGQgaGFwcGVuLgoKSW4gc2hvcnQsIGN1c3RvbWVycyByYXJlbHkgcnVuIG1hc3Rl
ciBicmFuY2guIEtpbmRseSBoYXZlIHlvdXIKY29sbGVhZ3VlcyBleHBsYWluIHN0YWJsZSBicmFu
Y2hlcyB0byB5b3UgaW4gZGV0YWlscy4KCldpdGggRml4ZXMgaGVhZGVyIEkgd2FzIHJlZmVycmlu
ZyB0byB0aGUgc3ludGF4IGV4cGxhaW5lZCBoZXJlOgpodHRwczovL3d3dy5rZXJuZWwub3JnL2Rv
Yy9odG1sL2xhdGVzdC9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI2Rlc2NyaWJlLXlv
dXItY2hhbmdlcwpodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9wcm9jZXNz
L3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI3VzaW5nLXJlcG9ydGVkLWJ5LXRlc3RlZC1ieS1yZXZp
ZXdlZC1ieS1zdWdnZXN0ZWQtYnktYW5kLWZpeGVzCgo+IE15IHBsYW4gd2FzIHRvIHNoYXJlIHRo
ZSBrZXJuZWwgZHRzIHBhdGNoZXMgc29tZXRpbWUgYWZ0ZXIgdGhpcyBzZXJpZXMKPiBtYWtlcyBp
dCB0aHJvdWdoLgoKVGhhdCdzIGZpbmUuIFdoYXQgSSdtIHdhcm5pbmcgeW91IGlzIHRoYXQgc2Vl
bWluZ2x5IHlvdXIgRFQgcGF0Y2hlcywKb25jZSBpbiBvbmUgb2YgeW91ciBMU0RLIFUtQm9vdCBy
ZWxlYXNlcywgd2lsbCBjYXVzZSBhIHJlZ3Jlc3Npb24gZm9yCmRpc3Ryb3MgbGlrZSBvdXIgU0xF
UyAxNSBTUDEgdW5sZXNzIHRoZXNlIHByZXJlcSBrZXJuZWwgcGF0Y2hlcyBnZXQKYXBwbGllZCBv
biB0aGUgcmVzcGVjdGl2ZSBzdGFibGUgYnJhbmNoZXMuIFdoaWNoIHdpbGwgbm90IGhhcHBlbgph
dXRvbWF0aWNhbGx5IHVubGVzcyB5b3UgYXMgcGF0Y2ggYXV0aG9yIHRha2UgdGhlIGFwcHJvcHJp
YXRlIGFjdGlvbgpiZWZvcmUgdGhleSBnZXQgbWVyZ2VkLgoKVGhhbmtzLApBbmRyZWFzCgotLSAK
U1VTRSBMaW51eCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkK
R0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4
NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
