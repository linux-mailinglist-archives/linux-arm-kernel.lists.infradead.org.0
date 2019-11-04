Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8771FEE2E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:55:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8Ouk3j1bTsdbVbY5zTrqKH/WbbqJEWErFmcEAzVo6M=; b=SMRxZ144BuuI7V
	WVDWjgihSFZYvAJtxFttajJ/0khYf+HSGAVXjyP7AU3PC/HCJw0Zq51vqZM2Y/vr1zJ61Q/xfORFn
	cbQZ4/CDNL5/nt0gSS5Wb5nhHnhq04k+a72wrqoJbQZVYYTJvuvbvtMlkQiH/hJZOyuCiFcMx86ub
	nFSZrHwRcPIk5+G2FNbLk16qI/mlrf46iFpGALUb8T6u1UBZDbk/JkRTc/bZfCb+R8tiw/cdNe5vS
	Qnre65aVSK6tK1KJB7MKZKjdIUCrxpjGCBkao5cXs1L+3HVbGN+4WJ3AiMmppD9MK5R7a6xJFIOGl
	wut92tmdOCLBm+Xme/SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdlE-0002AO-AZ; Mon, 04 Nov 2019 14:55:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdkx-00027y-J4
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:55:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EA54218BA;
 Mon,  4 Nov 2019 14:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572879299;
 bh=6rRIRiMvEbXCG3QPuZKfZ9Jdv/4SGQLHarIzq2Kxy2I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YfTYW7/PukRlCg+kCvWI+4A3e4Tqr0ygVO2ugYjPiKrm3Ml1KSfRj28Z2beWYCYJD
 oml1Vx3WNBAsqAf3vwbPwsK04qXR6ff7gRFCDCfM4MgvTlF/WuA1SFCi+8E8bOYKhg
 i+bFV3z6IT1aI8Vvvw6w56wnXjde35ZHNdVeziQ0=
Date: Mon, 4 Nov 2019 14:54:54 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V3 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Message-ID: <20191104145454.GA24909@willie-the-truck>
References: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
 <20191101083317.29510-3-qiangqing.zhang@nxp.com>
 <20191101151657.GB3287@willie-the-truck>
 <DB7PR04MB4618F9CF365DB9EF35DE40EFE67F0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <20191104123226.GA24108@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104123226.GA24108@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_065459_655451_C3D94EBB 
X-CRM114-Status: GOOD (  17.67  )
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

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMTI6MzI6MjZQTSArMDAwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDE6MjE6NTFBTSArMDAwMCwgSm9ha2ltIFpo
YW5nIHdyb3RlOgo+ID4gCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+IEZy
b206IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4gPiA+IFNlbnQ6IDIwMTnlubQxMeac
iDHml6UgMjM6MTcKPiA+ID4gVG86IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5j
b20+Cj4gPiA+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgcm9iaW4ubXVycGh5QGFybS5jb207
IGRsLWxpbnV4LWlteAo+ID4gPiA8bGludXgtaW14QG54cC5jb20+OyBGcmFuayBMaSA8ZnJhbmsu
bGlAbnhwLmNvbT47Cj4gPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIFYzIDMvNF0gcGVyZi9pbXhfZGRyOiBBZGQgZW5oYW5j
ZWQgQVhJIElEIGZpbHRlciBzdXBwb3J0Cj4gPiA+IAo+ID4gPiBPbiBGcmksIE5vdiAwMSwgMjAx
OSBhdCAwODozNjoxNkFNICswMDAwLCBKb2FraW0gWmhhbmcgd3JvdGU6Cj4gPiA+ID4gV2l0aCBE
RFJfQ0FQX0FYSV9JRF9GSUxURVIgcXVpcmssIGluZGljYXRpbmcgSFcgc3VwcG9ydHMgQVhJIElE
IGZpbHRlcgo+ID4gPiA+IHdoaWNoIG9ubHkgY2FuIGdldCBidXJzdHMgZnJvbSBERFIgdHJhbnNh
Y3Rpb24sIGkuZS4gRERSIHJlYWQvd3JpdGUKPiA+ID4gPiByZXF1ZXN0cy4KPiA+ID4gPgo+ID4g
PiA+IFRoaXMgcGF0Y2ggYWRkIEREUl9DQVBfQVhJX0lEX0VOSEFOQ0VEX0ZJTFRFUiBxdWlyaywg
aW5kaWNhdGluZyBIVwo+ID4gPiA+IHN1cHBvcnRzIEFYSSBJRCBmaWx0ZXIgd2hpY2ggY2FuIGdl
dCBidXJzdHMgYW5kIGJ5dGVzIGZyb20gRERSCj4gPiA+ID4gdHJhbnNhY3Rpb24gYXQgdGhlIHNh
bWUgdGltZS4gV2UgaG9wZSBQTVUgYWx3YXlzIHJldHVybiBieXRlcyBpbiB0aGUKPiA+ID4gPiBk
cml2ZXIgZHVlIHRvIGl0IGlzIG1vcmUgbWVhbmluZ2Z1bCBmb3IgdXNlcnMuCj4gPiA+IAo+ID4g
PiBUaGFua3MuIEkndmUgcXVldWVkIHRoZSBzZXJpZXMgbG9jYWxseSwgYnV0IHRoZSBwYXJ0IEkn
bSBzdGlsbCB3b25kZXJpbmcgYWJvdXQgaXMKPiA+ID4gaG93IHdlIGFkdmVydGlzZSB0aGUgZW5o
YW5jZWQgZmlsdGVyLgo+ID4gPiAKPiA+ID4gRm9yIGV4YW1wbGUsIGhvdyBkb2VzIHVzZXJzcGFj
ZSBrbm93IHdoZXRoZXIgb3Igbm90IGl0IHdpbGwgZ2V0IGJ1cnN0cyBvcgo+ID4gPiBieXRlcyBi
YWNrIHdoZW4gc3BlY2lmeWluZyBhbiBBWEkgZmlsdGVyPyBTaG91bGQgd2UgY3JlYXRlIHNvbWV0
aGluZyBsaWtlCj4gPiA+IGNhcHMvZW5oYW5jZWRfZmlsdGVyIHdoaWNoIHJlYWRzIGFzIDAvMSBk
ZXBlbmRpbmcgb24gd2hldGhlciBvciBub3QgdGhlIHF1aXJrCj4gPiA+IGlzIHNldD8gWW91IGNh
biBsb29rIGF0IGludGVsLXB0LmMgYW5kIGFybV9zcGVfcG11LmMgZm9yIGV4YW1wbGVzIG9mIHRo
aXMgc29ydAo+ID4gPiBvZiB0aGluZy4KPiA+ID4gCj4gPiA+IElmIHlvdSBhZ3JlZSwgcGxlYXNl
IHNlbmQgYSBwYXRjaCBvbiB0b3AgdG8gaW1wbGVtZW50IHRoaXMuCj4gPiAKPiA+IFRoYW5rcyBX
aWxsLCBhZ3JlZSwgSSB3aWxsIGltcGxlbWVudCB0aGlzIGxhdGVyLgo+IAo+IEdpdmVuIHRoYXQg
aXQncyBBQkksIHBsZWFzZSBjYW4geW91IGRvIGl0IHRoaXMgd2VlayBzbyB0aGF0IHdlIGhhdmUK
PiBzb21ldGhpbmcgY29uc2lzdGVudCBmb3IgNS41PwoKU29ycnksIEkgbm90aWNlIHlvdSd2ZSBh
bHJlYWR5IHNlbnQgdGhlbS4gVGhhbmtzIQoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
