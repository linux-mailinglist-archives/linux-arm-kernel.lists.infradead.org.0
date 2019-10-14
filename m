Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A56AAD5B5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RA8ValMVfnaZQMgcpb/CljqdmFvDnMEvxsuMj1QT6f4=; b=O+RmryrJk/zyqF
	S7x/HGj/M7rCF//oEfHeLzoqKP4YWRyzSSl/g+ef9Nqy6v/Hv4RLGs5hEOkS5SX0lV3Rw4h5bWG89
	8pQ7YE+HApJIHcFFPUnGpx2OCB5mO5eIkYEb60rM23hiyDYbrna/94XKm2h31tpjxbMf4YmpR00XE
	/15EQyAF2lhfKTNH5rBLmC5P+P42ilBjekpSSTXA3Ay20i6h7Bkm50EeQ4JeUAOLBx/wr0jjTANw6
	qyfb3jQn4ft/uceW4xnGGTX0Sny3Xj43rvD29lhwOemtgH/HEKuLUUf026yCsOpQ+AVSVVYBemgtA
	bTqOHWsI3gp1xdfJYGUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtkR-0008WO-Lv; Mon, 14 Oct 2019 06:22:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtk6-0008RU-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:22:09 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FAB12089C;
 Mon, 14 Oct 2019 06:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571034126;
 bh=Jjj99LoxCmtMpzWzfLoU7hX03YIEXAcoDRPAZxbv1d8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CMCQ0cSRswKmQ6g9H8pNkHrvXFekn/GdKq9hibcG0vVCGTH+FfweKsk9NoRIhColI
 egntYbNiNnBhF7R2XVwIQ5ZmllHOyf2OCx5NRj1EuhgnRthnTQRFJr5kM3u7K2wFnf
 XChMGX5tYtundrxQ/XHpkBwzzCQbNKQ65qPQx7is=
Date: Mon, 14 Oct 2019 14:21:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Wen He <wen.he_1@nxp.com>
Subject: Re: [EXT] Re: [v2 2/2] arm64: dts: ls1028a: Update the DT node
 definition for dpclk
Message-ID: <20191014062150.GC12262@dragon>
References: <20190920083419.5092-1-wen.he_1@nxp.com>
 <20190920083419.5092-2-wen.he_1@nxp.com>
 <20191007123512.GM7150@dragon>
 <DB7PR04MB5195760127B83B88B68CC602E29A0@DB7PR04MB5195.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB5195760127B83B88B68CC602E29A0@DB7PR04MB5195.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_232207_036849_8D088939 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-devel@linux.nxdi.nxp.com" <linux-devel@linux.nxdi.nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMDgsIDIwMTkgYXQgMDQ6MDg6NTdBTSArMDAwMCwgV2VuIEhlIHdyb3RlOgo+
IAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IFNoYXduIEd1byA8
c2hhd25ndW9Aa2VybmVsLm9yZz4KPiA+IFNlbnQ6IDIwMTnlubQxMOaciDfml6UgMjA6MzUKPiA+
IFRvOiBXZW4gSGUgPHdlbi5oZV8xQG54cC5jb20+Cj4gPiBDYzogbGludXgtZGV2ZWxAbGludXgu
bnhkaS5ueHAuY29tOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IFJvYiBIZXJyaW5nCj4g
PiA8cm9iaCtkdEBrZXJuZWwub3JnPjsgTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNv
bT47Cj4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsKPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gU3Vi
amVjdDogW0VYVF0gUmU6IFt2MiAyLzJdIGFybTY0OiBkdHM6IGxzMTAyOGE6IFVwZGF0ZSB0aGUg
RFQgbm9kZSBkZWZpbml0aW9uCj4gPiBmb3IgZHBjbGsKPiA+IAo+ID4gCj4gPiBPbiBGcmksIFNl
cCAyMCwgMjAxOSBhdCAwNDozNDoxOVBNICswODAwLCBXZW4gSGUgd3JvdGU6Cj4gPiA+IFVwZGF0
ZSBEVCBub2RlIG5hbWUgY2xvY2stY29udHJvbGxlciB0byBjbG9jay1kaXNwbGF5LAo+ID4gCj4g
PiBUaGUgbm9kZSBuYW1lIGNsb2NrLWNvbnRyb2xsZXIgaXMgc28gZ29vZCwgYW5kIEkgZG8gbm90
IHVuZGVyc3RhbmQgd2h5IHlvdQo+ID4gbmVlZCB0byBjaGFuZ2UgaXQuCj4gPiAKPiAKPiBUaGUg
bm9kZSBuYW1lIGNsb2NrLWNvbnRyb2xsZXIgdXNlZCBmb3IgdGhlIHN5c3RlbSBjbG9ja2dlbiBh
bmQgdGhpcyBjbG9jayBvbmx5IHVzZWQgZm9yCj4gdGhlIERpc3BsYXkgY29yZS4gCj4gVG8gY2xl
YXJseSB0aGUgbm9kZSwgdGhhdCB3aHkgSSBoYXZlIHRvIHVzZSBjbG9jay1kaXNwbGF5IHRvIGlu
c3RlYWQgb2YgdGhlIGNsb2NrLWNvbnRyb2xsZXIKCkxhYmVsIGlzIGJlaW5nIHVzZWQgdG8gc3Bl
Y2lmeSB0aGluZ3MsIGFuZCBub2RlIG5hbWUgc2hvdWxkIGp1c3QgYmUgYXMKZ2VuZXJpYyBhcyBw
b3NzaWJsZS4KClNoYXduCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
