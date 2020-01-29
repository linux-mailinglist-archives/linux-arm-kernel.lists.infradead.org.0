Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A0714CFA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 18:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ternLiQwXRUmqJcBcaPpR7WhuBlSvUBx50NtC0XIwTM=; b=Mmnl3LzT4ZMSrt
	ZY8elWhrm1AacEEgFIZWO+6ZBnCo2YYhqwES0uxmukSnmiitHXu0hPitKwylob22WlahAj2AliFHq
	KZKcLn0MK7vr2VX77NMe3g2oBKJBbUnfHa7ry1QiexBI7nrB6VHyYFJjRUH8MsEIDoCmNMU4ozjDI
	DEIUIxyi8sF/nhuBHe726HA7BNH7ZF2Vz96YwPD6dpuJlCiW9ySx/Ug+Wmdi+XRZY9wQP3kwegh5w
	8ysJ3xqj6ez8u+F4c+f3z3gDa3C7jnj3BaG08ULwRWyif+rgFignApwIxZpMPjH7RQEbY7ptJmO1+
	KsCDRgebdSMkCILHlI6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwr84-0000Df-Di; Wed, 29 Jan 2020 17:27:52 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwr7u-0000DL-CN
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 17:27:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id BD78F21FA9;
 Wed, 29 Jan 2020 12:27:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 29 Jan 2020 12:27:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm1; bh=A
 TygRAmR8d0jm0J6iRWxiOTnzUg+8li3NtuuF+gdI88=; b=knH7SXZ2Ky9/jgpjW
 qsSyPhtCAzEVMXmtvWjHXObc465bJai1kiB+E8W5Aq/QUk3uKBHAkUH3V4atBYND
 QjNnAHkFJwBPn/g4jMqMw+KP1wjJUM0JNowwrC9Mf7mhcJZAp8fuvEfoKKtUzTaO
 nLWlwPKeAXGmhnOXdZcg5WGG78+PuqlS+U/RNDJxBP7ziObaKUJSKUnafs2mOLyy
 RQIMgpqmWKzCiOn0fmxFNegTqBrJu1hspKKg1cqWu1E2KhDya79kZoxfxVyDPrHy
 gKEBuxVDhMRcrlkmkMTtTjCu3S0FRnfi5PUT4Qp16FMSUa3gIJpSaPDdgcAl6uz8
 mR6vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=ATygRAmR8d0jm0J6iRWxiOTnzUg+8li3NtuuF+gdI
 88=; b=vURkPiIP/F2udeKUc3p/VuDwL0RPeNtU5avUVS3mvad1nksQr/GMip53y
 AHwWpxG0tCRgwo3xTHdvEt9pedN5jcHVnki8lts9xU/INm5LeoLFdKYL2S/JrHgB
 KS53MvkfPe3K34+DfDbkEVIqW6qhUhzfxTZp6QmMyFPuMIWvkvzLWwkT5XnbHpUt
 Ngok+eOiIdSQJQyzF46DueYr0hk7hIjyUyF9o+IHHmsiJzWMU6Awiropclsaq9As
 LogLW3kVKjoMQvA2asNE4ui7xgd2u1hqSDSPvazBQbOAEc0WiSFwYCaXfS40+rOM
 nbCgCoU7hozntAaEXzgiW++vKY6lg==
X-ME-Sender: <xms:i8AxXmt5TzlnOWXJ3tqS7NdviWXw0A-TKshPlsjHp-ZG5iy1YM66ig>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfeeigdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggugfgjsehtqhertddttdejnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:i8AxXtSiXAirVtD8MDZwBJYybRy1nsoaSa52025S95lxc9aqZpyzVg>
 <xmx:i8AxXg7qMNQ4XXZcaqFpRtbLs-NmSYejulSIHRXCiNG_EqE0xmkDEg>
 <xmx:i8AxXkjF3QcRjtQR_z11Zzb8RbOIVYgf2QTpfgmiOaIUIrZJOqaZxw>
 <xmx:jMAxXrkr3wysvoBaE8BuFczY-AdOI0V2oEG5VbsBPv9ZRTdhuwNnIA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8346E3280059;
 Wed, 29 Jan 2020 12:27:39 -0500 (EST)
Date: Wed, 29 Jan 2020 18:27:38 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: h6: Add IOMMU
Message-ID: <20200129172738.c53f5du2byreze2n@gilmour.lan>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <5320339.DvuYhMxLoT@jernej-laptop>
 <20200127142339.crxsuunzec5drfe2@gilmour.lan>
 <2140600.ElGaqSPkdT@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2140600.ElGaqSPkdT@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_092742_564234_43B6185D 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIEphbiAyNywgMjAyMCBhdCAwODowNDowMlBNICswMTAwLCBKZXJuZWogxaBr
cmFiZWMgd3JvdGU6Cj4gRG5lIHBvbmVkZWxqZWssIDI3LiBqYW51YXIgMjAyMCBvYiAxNToyMzoz
OSBDRVQgamUgTWF4aW1lIFJpcGFyZCBuYXBpc2FsKGEpOgo+ID4gSGkgSmVybmVqLAo+ID4KPiA+
IE9uIEZyaSwgSmFuIDI0LCAyMDIwIGF0IDA5OjU0OjIzUE0gKzAxMDAsIEplcm5laiDFoGtyYWJl
YyB3cm90ZToKPiA+ID4gRG5lIHNyZWRhLCAyMi4gamFudWFyIDIwMjAgb2IgMTM6NDQ6MDkgQ0VU
IGplIE1heGltZSBSaXBhcmQgbmFwaXNhbChhKToKPiA+ID4gPiBOb3cgdGhhdCB3ZSBoYXZlIGEg
ZHJpdmVyIGZvciB0aGUgSU9NTVUsIGxldCdzIHN0YXJ0IHVzaW5nIGl0Lgo+ID4gPiA+Cj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+Cj4gPiA+
ID4gLS0tCj4gPiA+ID4KPiA+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kgfCAxMSArKysrKysrKysrKwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTEg
aW5zZXJ0aW9ucygrKQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gPiA+ID4gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBpbmRleAo+ID4gPiA+IDI5ODI0MDgxYjQzYi4u
ODYwOGJjZjFjNTJjIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiA+ID4gPiBAQCAtNTMsNiArNTMsNyBAQAo+ID4gPiA+
Cj4gPiA+ID4gIAlkZTogZGlzcGxheS1lbmdpbmUgewo+ID4gPiA+Cj4gPiA+ID4gIAkJY29tcGF0
aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LWRpc3BsYXktZW5naW5lIjsKPiA+ID4gPiAgCQlh
bGx3aW5uZXIscGlwZWxpbmVzID0gPCZtaXhlcjA+Owo+ID4gPiA+Cj4gPiA+ID4gKwkJaW9tbXVz
ID0gPCZpb21tdSAwPjsKPiA+ID4gPgo+ID4gPiA+ICAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4g
PiA+ID4KPiA+ID4gPiAgCX07Cj4gPiA+Cj4gPiA+IElzbid0IGlvbW11IHByb3BlcnR5IG9mIHRo
ZSBtaXhlciBub2RlPyBBZnRlciBhbGwsIG1peGVyIGlzIHRoZSBvbmUgd2hpY2gKPiA+ID4gcmVh
ZHMgb25lIG9yIG1vcmUgZnJhbWVidWZmZXJzLiBPbmNlIHNlY29uZCBtaXhlciBpcyBkZWZpbmVk
LCB3b3VsZCB5b3UKPiA+ID4gcHV0Cj4gPiA+IGFub3RoZXIgaW9tbXUgcGhhbmRsZSBoZXJlPwo+
ID4KPiA+IFlvdSdyZSByaWdodC4gSSBhZGRlZCBpdCBkdXJpbmcgdGhlIGVhcmx5IGRldiwgYW5k
IGZvcmdvdCB0byByZW1vdmUKPiA+IGl0LiBUaGFua3MhCj4KPiBSZW1vdmUgaXQgb3IgbW92ZSBp
dD8gSSBndWVzcyBlbmFibGluZyBpb21tdSBzdXBwb3J0IGluIGVhY2ggZHJpdmVyIG5lZWRzIGEK
PiBiaXQgbW9yZSB3b3JrIHRoYW4ganVzdCByZWZlcmVuY2luZyBpb21tdSBub2RlLCByaWdodD8g
QXQgbGVhc3QgaW4gc3VjaCBjYXNlCj4gYnVmZmVycyBkb24ndCBuZWVkIHRvIGJlIGFsbG9jYXRl
ZCBieSBDTUEsIHdoaWNoIHN1bjRpLWRybSBkcml2ZXIgY3VycmVudGx5Cj4gdXNlLgo+Cj4gSSBq
dXN0IHRha2UgYW5vdGhlciBsb29rIGF0IEJTUCBrZXJuZWwgYW5kIGl0IHNlZW1zIHRoYXQgb25s
eSBvbmUgY2hhbm5lbCBpcwo+IHVzZWQgZm9yIHdob2xlIGRpc3BsYXkgc3RhY2suIFRoYXQgd291
bGQgbWVhbiB0aGF0IGJvdGggbWl4ZXJzIHdvdWxkIGhhdmUgc2FtZQo+IGlvbW11IHBoYW5kbGUs
IHJpZ2h0PyBDb25mdXNpbmdseSBlbm91Z2gsIERFMiBpb21tdSBjaGFubmVsIHNlZW1zIHRvIGJl
IGZvcgo+IGRlaW50ZXJsYWNlIGNvcmUuCgpUbyBhZGQgb24gUm9iaW4ncyBhbnN3ZXIsIHllYWgs
IGl0IGxvb2tzIGxpa2UgdGhlIGRpc3BsYXkgZW5naW5lIGlzCmNhbGxlZCBERSAoYW5kIEkndmUg
Y2hlY2tlZCB0aGF0IHRoaXMgaXMgaW5kZWVkIHRoZSBtYXN0ZXIgMCksIHdoaWxlCnRoZSBkZWlu
dGVybGFjZSBpcyBjYWxsZWQgREUyIChhbmQgcHJvYmFibHkgaXMgdGhlIG1hc3RlciAyKS4KCk1h
eGltZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
