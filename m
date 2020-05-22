Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4CC1DE2B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M33eE3W/bqLlvzQT2nMTHn1JPQ3q0qDk9m3jFMf6J6c=; b=H5uyX+1E1YyTRU
	dXvexRTrYEiwrAXwGnKHP5/DvribsB2sZAycTmOvSLozBARzKv1JSHrnZePxMD1J1lTshkjN0I3JP
	PQO+cV1+RjRAUTE2jYOPIzVeS90WfaKiqzg3OVpUBslZ9CNkL5tubyhLq0z7KSK9WajpGrmwACY70
	SW/kCmFOhFNGOPXNsHgt90F01pqK29Ugok7HQNgXUaH47XUen3oJRGT7XvqLKYfslEQp5kyA0akpj
	nO8cMuJOddocnqgoO/VxYcnPPn+up7sDy0de1d05asJptOv7NHJKHhMW6n1DlKdLQDqZo8Wmd910e
	aT4batr8ZMo4KpkiJJag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3jT-00046t-Hm; Fri, 22 May 2020 09:12:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3jI-000461-Q2
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 09:12:38 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D7BB42004D8;
 Fri, 22 May 2020 11:12:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CB65F2004D2;
 Fri, 22 May 2020 11:12:32 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B7682205C1;
 Fri, 22 May 2020 11:12:32 +0200 (CEST)
Date: Fri, 22 May 2020 12:12:32 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] clk: imx8mp: Set the correct parent for audio_root_clk
Message-ID: <20200522091232.gjmmbdlqwkp2kubq@fsr-ub1664-175>
References: <1588000281-6594-1-git-send-email-abel.vesa@nxp.com>
 <AM6PR04MB49663A072F56397BE55FF3C480AC0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <20200430101107.t76727jwwkyhlkvd@fsr-ub1664-175>
 <AM6PR04MB49664013B43C46422C0195A780AA0@AM6PR04MB4966.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR04MB49664013B43C46422C0195A780AA0@AM6PR04MB4966.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_021237_127872_F98CA72F 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAtMDQtMzAgMTA6MTg6MjQsIEFpc2hlbmcgRG9uZyB3cm90ZToKPiA+IEZyb206IEFiZWwg
VmVzYSA8YWJlbC52ZXNhQG54cC5jb20+Cj4gPiBTZW50OiBUaHVyc2RheSwgQXByaWwgMzAsIDIw
MjAgNjoxMSBQTQo+ID4gCgpTb3JyeSBJIGRpZG4ndCBhbnN3ZXIgdGhlIG90aGVyIG9uZXMgZWFy
bGllci4gU2VlIGJlbG93LgoKPiA+IE9uIDIwLTA0LTI4IDA4OjE1OjUxLCBBaXNoZW5nIERvbmcg
d3JvdGU6Cj4gPiA+ID4gRnJvbTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT4KPiA+ID4g
PiBTZW50OiBNb25kYXksIEFwcmlsIDI3LCAyMDIwIDExOjExIFBNCj4gPiA+ID4KPiA+ID4gPiBJ
bnN0ZWFkIG9mIGlwZ19yb290LCB0aGUgcGFyZW50IG5lZWRzIHRvIGJlIGlwZ19hdWRpb19yb290
Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhw
LmNvbT4KPiA+ID4KPiA+ID4gSSBoYXZlIGEgZmV3IGRvdWJ0cyBhYm91dCB0aGlzIHBhdGNoOgo+
ID4gPiAxLiBGcm9tIGxhdGVzdCBSTSwgaXQgc2VlbXMgQ0NHUjEwMSAoMHg0NjUwKSBpcyBhIHNo
YXJlZCBnYXRlIGZvciBtYW55IGF1ZGlvCj4gPiBpbnN0YW5jZXMuCgpZZXMuIFRoaXMgaXMgdHJ1
ZS4gSSdtIHdvcmtpbmcgb24gYWRkaW5nIHRoZSBzaGFyZWQgZ2F0ZSBub3cuCgo+ID4gPiAyLiBJ
ZiB0aGlzIHBhdGNoIGlzIGFib3V0IEFVRElPX0FIQl9DTEtfUk9PVCwgdGhlbiBpdCdzIHBhcmVu
dCBpcwo+ID4gQUhCW1BPU1RfUE9ERl0gZnJvbSB0aGUgY2xvY2sgdHJlZSBpbiBSTS4KPiA+ID4g
Tm90IHF1aXRlIHVuZGVyc3RhbmQgd2h5IHRoaXMgcGF0Y2ggY2hhbmdlcyB0byBJUEdbUE9TVF9Q
T0RGXS4gSXMgdGhpcyBSTQo+ID4gaW5jb3JyZWN0IGlzc3VlPwoKWWVzLiBSaWdodCBhZ2Fpbi4g
SXQgbmVlZHMgdG8gYmUgdGhlIElNWDhNUF9DTEtfQVVESU9fQUhCLiBXaWxsIGNoYW5nZSB0aGF0
IG5vdy4KCj4gPiA+Cj4gPiA+IEJUVywgaWYgdGhpcyBwYXRjaCBpcyB0YWtlbiBmcm9tIHNvbWVv
bmUgZWxzZSwgd2UgdXN1YWxseSBiZXR0ZXIga2VlcCB0aGUKPiA+IG9yaWdpbmFsIGF1dGhvciBp
ZiBub3QgZnVuZGFtZW50YWwgY2hhbmdlcy4KPiA+ID4KPiA+IAo+ID4gSSBtYWRlIHRoaXMgY2hh
bmdlIGF0IHRoZSBzdWdnZXN0aW9uIGZyb20gUy5qLiBXYW5nLgo+ID4gSSdtIHRoZSBvcmlnaW5h
bCBhdXRob3IgaW4gbGludXgtbnhwIChpbnRlcm5hbCB0cmVlKS4KPiA+IAo+IAo+IFRoYXQncyBm
aW5lLiBUaGVuIHBsZWFzZSBpZ25vcmUgbXkgInN0dXBpZCIgcmVtaW5kZXIuIPCfmIoKPiBCVFcs
IGhvdyBhYm91dCBvdGhlciBxdWVzdGlvbnM/Cj4gCj4gUmVnYXJkcwo+IEFpc2hlbmcKPiAKPiA+
ID4gUmVnYXJkcwo+ID4gPiBBaXNoZW5nCj4gPiA+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZl
cnMvY2xrL2lteC9jbGstaW14OG1wLmMgfCAyICstCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY2xrL2lteC9jbGstaW14OG1wLmMKPiA+ID4gPiBiL2RyaXZlcnMvY2xrL2lteC9j
bGstaW14OG1wLmMgaW5kZXggNDE0NjllMi4uZGNkZmM5ZCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtcC5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9jbGsvaW14
L2Nsay1pbXg4bXAuYwo+ID4gPiA+IEBAIC03MjcsNyArNzI3LDcgQEAgc3RhdGljIGludCBpbXg4
bXBfY2xvY2tzX3Byb2JlKHN0cnVjdAo+ID4gPiA+IHBsYXRmb3JtX2RldmljZQo+ID4gPiA+ICpw
ZGV2KQo+ID4gPiA+ICAJaHdzW0lNWDhNUF9DTEtfSERNSV9ST09UXSA9Cj4gPiBpbXhfY2xrX2h3
X2dhdGU0KCJoZG1pX3Jvb3RfY2xrIiwKPiA+ID4gPiAiaGRtaV9heGkiLCBjY21fYmFzZSArIDB4
NDVmMCwgMCk7Cj4gPiA+ID4gIAlod3NbSU1YOE1QX0NMS19UU0VOU09SX1JPT1RdID0KPiA+ID4g
PiBpbXhfY2xrX2h3X2dhdGU0KCJ0c2Vuc29yX3Jvb3RfY2xrIiwgImlwZ19yb290IiwgY2NtX2Jh
c2UgKyAweDQ2MjAsIDApOwo+ID4gPiA+ICAJaHdzW0lNWDhNUF9DTEtfVlBVX1JPT1RdID0gaW14
X2Nsa19od19nYXRlNCgidnB1X3Jvb3RfY2xrIiwKPiA+ID4gPiAidnB1X2J1cyIsIGNjbV9iYXNl
ICsgMHg0NjMwLCAwKTsKPiA+ID4gPiAtCWh3c1tJTVg4TVBfQ0xLX0FVRElPX1JPT1RdID0gaW14
X2Nsa19od19nYXRlNCgiYXVkaW9fcm9vdF9jbGsiLAo+ID4gPiA+ICJpcGdfcm9vdCIsIGNjbV9i
YXNlICsgMHg0NjUwLCAwKTsKPiA+ID4gPiArCWh3c1tJTVg4TVBfQ0xLX0FVRElPX1JPT1RdID0g
aW14X2Nsa19od19nYXRlNCgiYXVkaW9fcm9vdF9jbGsiLAo+ID4gPiA+ICsiaXBnX2F1ZGlvX3Jv
b3QiLCBjY21fYmFzZSArIDB4NDY1MCwgMCk7Cj4gPiA+ID4KPiA+ID4gPiAgCWh3c1tJTVg4TVBf
Q0xLX0FSTV0gPSBpbXhfY2xrX2h3X2NwdSgiYXJtIiwgImFybV9hNTNfY29yZSIsCj4gPiA+ID4g
IAkJCQkJICAgICBod3NbSU1YOE1QX0NMS19BNTNfQ09SRV0tPmNsaywKPiA+ID4gPiAtLQo+ID4g
PiA+IDIuNy40Cj4gPiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
