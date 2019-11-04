Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070FBEE000
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:32:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNAq4BT/rfO5nvKhLx2uJseGDVPaKhuiElDfTvAfjm8=; b=hIizUUoTakJwDq
	jiXpA235hBVb+IzSjg8bL25ox/bm1v44N8mGOwwDoQP0v9gVMV6p+HpWEv73b6AkCA1mbJprd74J9
	7K2RULL3jd33PbfyfT7t4vL9X8ohsbGtrYboOO7l35PCOlW83vCozx0YtsMD4sgxUHB1fcWFs/KBX
	fA+oQi1b9Tot3n8GYAEQBusoxVTbEHTVM+FDzq+cG6k+p37DSPXH4sjl/0+x+WYPWQok9ZbTzqUJm
	aayu3wqhlJQ5tMUr0S88muCM3UP2CSX6+ATlM0fLw8AncOMkEkKn2OEMYmfrsqPfAPFnlJFNGTeic
	svUhfmO3PLyCwp6W+RxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbXC-0005XI-IR; Mon, 04 Nov 2019 12:32:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbX5-0005Wv-TY
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 12:32:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0577F21D7D;
 Mon,  4 Nov 2019 12:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572870751;
 bh=5zwphYxlMoWxZTLOjI1wqd8ARgEqZSFGYgkQ8jjBZCI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cooDU7RlqiLS/NxSq6wj3tQpuO9bqkrOlEmcXlroF7MVv7X+/bUtI6Vnd1+8aGLaF
 Qkb42+DxBq8urY8978SeJ2ABHLp22xuosVPbea0rvEVGaGOfBhU3SYF0Dx6EY7kjuI
 /9QfS9TRxEXbkVs2iC3V5dgwYVXsBDWOrTZxn/sg=
Date: Mon, 4 Nov 2019 12:32:26 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V3 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Message-ID: <20191104123226.GA24108@willie-the-truck>
References: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
 <20191101083317.29510-3-qiangqing.zhang@nxp.com>
 <20191101151657.GB3287@willie-the-truck>
 <DB7PR04MB4618F9CF365DB9EF35DE40EFE67F0@DB7PR04MB4618.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB4618F9CF365DB9EF35DE40EFE67F0@DB7PR04MB4618.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_043231_973435_0BF9E29A 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDE6MjE6NTFBTSArMDAwMCwgSm9ha2ltIFpoYW5nIHdy
b3RlOgo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IFdpbGwgRGVh
Y29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4gPiBTZW50OiAyMDE55bm0MTHmnIgx5pelIDIzOjE3Cj4g
PiBUbzogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4KPiA+IENjOiBtYXJr
LnJ1dGxhbmRAYXJtLmNvbTsgcm9iaW4ubXVycGh5QGFybS5jb207IGRsLWxpbnV4LWlteAo+ID4g
PGxpbnV4LWlteEBueHAuY29tPjsgRnJhbmsgTGkgPGZyYW5rLmxpQG54cC5jb20+Owo+ID4gbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBTdWJqZWN0OiBSZTogW1BBVENI
IFYzIDMvNF0gcGVyZi9pbXhfZGRyOiBBZGQgZW5oYW5jZWQgQVhJIElEIGZpbHRlciBzdXBwb3J0
Cj4gPiAKPiA+IE9uIEZyaSwgTm92IDAxLCAyMDE5IGF0IDA4OjM2OjE2QU0gKzAwMDAsIEpvYWtp
bSBaaGFuZyB3cm90ZToKPiA+ID4gV2l0aCBERFJfQ0FQX0FYSV9JRF9GSUxURVIgcXVpcmssIGlu
ZGljYXRpbmcgSFcgc3VwcG9ydHMgQVhJIElEIGZpbHRlcgo+ID4gPiB3aGljaCBvbmx5IGNhbiBn
ZXQgYnVyc3RzIGZyb20gRERSIHRyYW5zYWN0aW9uLCBpLmUuIEREUiByZWFkL3dyaXRlCj4gPiA+
IHJlcXVlc3RzLgo+ID4gPgo+ID4gPiBUaGlzIHBhdGNoIGFkZCBERFJfQ0FQX0FYSV9JRF9FTkhB
TkNFRF9GSUxURVIgcXVpcmssIGluZGljYXRpbmcgSFcKPiA+ID4gc3VwcG9ydHMgQVhJIElEIGZp
bHRlciB3aGljaCBjYW4gZ2V0IGJ1cnN0cyBhbmQgYnl0ZXMgZnJvbSBERFIKPiA+ID4gdHJhbnNh
Y3Rpb24gYXQgdGhlIHNhbWUgdGltZS4gV2UgaG9wZSBQTVUgYWx3YXlzIHJldHVybiBieXRlcyBp
biB0aGUKPiA+ID4gZHJpdmVyIGR1ZSB0byBpdCBpcyBtb3JlIG1lYW5pbmdmdWwgZm9yIHVzZXJz
Lgo+ID4gCj4gPiBUaGFua3MuIEkndmUgcXVldWVkIHRoZSBzZXJpZXMgbG9jYWxseSwgYnV0IHRo
ZSBwYXJ0IEknbSBzdGlsbCB3b25kZXJpbmcgYWJvdXQgaXMKPiA+IGhvdyB3ZSBhZHZlcnRpc2Ug
dGhlIGVuaGFuY2VkIGZpbHRlci4KPiA+IAo+ID4gRm9yIGV4YW1wbGUsIGhvdyBkb2VzIHVzZXJz
cGFjZSBrbm93IHdoZXRoZXIgb3Igbm90IGl0IHdpbGwgZ2V0IGJ1cnN0cyBvcgo+ID4gYnl0ZXMg
YmFjayB3aGVuIHNwZWNpZnlpbmcgYW4gQVhJIGZpbHRlcj8gU2hvdWxkIHdlIGNyZWF0ZSBzb21l
dGhpbmcgbGlrZQo+ID4gY2Fwcy9lbmhhbmNlZF9maWx0ZXIgd2hpY2ggcmVhZHMgYXMgMC8xIGRl
cGVuZGluZyBvbiB3aGV0aGVyIG9yIG5vdCB0aGUgcXVpcmsKPiA+IGlzIHNldD8gWW91IGNhbiBs
b29rIGF0IGludGVsLXB0LmMgYW5kIGFybV9zcGVfcG11LmMgZm9yIGV4YW1wbGVzIG9mIHRoaXMg
c29ydAo+ID4gb2YgdGhpbmcuCj4gPiAKPiA+IElmIHlvdSBhZ3JlZSwgcGxlYXNlIHNlbmQgYSBw
YXRjaCBvbiB0b3AgdG8gaW1wbGVtZW50IHRoaXMuCj4gCj4gVGhhbmtzIFdpbGwsIGFncmVlLCBJ
IHdpbGwgaW1wbGVtZW50IHRoaXMgbGF0ZXIuCgpHaXZlbiB0aGF0IGl0J3MgQUJJLCBwbGVhc2Ug
Y2FuIHlvdSBkbyBpdCB0aGlzIHdlZWsgc28gdGhhdCB3ZSBoYXZlCnNvbWV0aGluZyBjb25zaXN0
ZW50IGZvciA1LjU/CgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
