Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1471311DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 13:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYkViRTQZv4YhrZTp56J16oReoBVzp2LKXp7H8uDpqI=; b=sdCctV0LgsoDaa
	DOzrS6aWRGLYLTNj5DNo2p21GIPxBM3LglwM9wzcH2jPPJuvWakX3C0v9uQXxcU6aAqAuMmmjEmdZ
	VYJrrAjeRqdA0HHemG2qH35urJk8HSOllzRbIY20QWCC23SmEc++by2KaDnzQLiGN1F1vagT3ae6Z
	pJgtBLLIbcm+5T/6/sp5XAwU3H5YaSufgYk8oO38aWOfo4pVvFS+PEd6Y2dsrycnBbWLZpJlfjfzG
	C9kFXqprDQMrXQzC+CmDQnzcqneMts2LIIWwGd/8szGBHliVcPCAAnA0v9uaywb+150SI5SURL1uX
	OSEpKF+tGDBRoOg2XSqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioRIs-0007Vh-MV; Mon, 06 Jan 2020 12:16:14 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioRIm-0007V7-9y; Mon, 06 Jan 2020 12:16:10 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C40CF200008;
 Mon,  6 Jan 2020 12:15:50 +0000 (UTC)
Date: Mon, 6 Jan 2020 13:15:49 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH v2 00/11] Add PX30 LVDS support
Message-ID: <20200106131549.52909d08@xps13>
In-Reply-To: <2064471.Uj1soXtvLx@diego>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <1885398.klecWcqSHf@phil> <2064471.Uj1soXtvLx@diego>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_041608_484616_3DEA207A 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBNb24s
IDA2IEphbiAyMDIwIDEyOjA5OjE5CiswMTAwOgoKPiBBbSBTb25udGFnLCA1LiBKYW51YXIgMjAy
MCwgMTU6MDU6MjYgQ0VUIHNjaHJpZWIgSGVpa28gU3R1ZWJuZXI6Cj4gPiBBbSBEaWVuc3RhZywg
MjQuIERlemVtYmVyIDIwMTksIDE1OjM4OjQ5IENFVCBzY2hyaWViIE1pcXVlbCBSYXluYWw6ICAK
PiA+ID4gSGVsbG8sCj4gPiA+IAo+ID4gPiBUaGlzIHNlcmllcyBhaW1zIGF0IHN1cHBvcnRpbmcg
TFZEUyBvbiBQWDMwLgo+ID4gPiAKPiA+ID4gQSBmaXJzdCBjb3VwbGUgb2YgcGF0Y2hlcyB1cGRh
dGUgdGhlIGRvY3VtZW50YXRpb24gd2l0aCB0aGUgbmV3Cj4gPiA+IGNvbXBhdGlibGUgYW5kIHRo
ZSBwcmVzZW5jZSBvZiBhIFBIWS4gVGhlbiwgdGhlIGV4aXN0aW5nIFJvY2tjaGlwCj4gPiA+IGRy
aXZlciBpcyBjbGVhbmVkIGFuZCBleHRlbmRlZCB0byBzdXBwb3J0IFBYMzAgc3BlY2lmaWNpdGll
cy4gRmluYWxseSwKPiA+ID4gdGhlIFBYMzAgRFRTSSBpcyB1cGRhdGVkIHdpdGggQ1JUQyByb3V0
ZXMsIHRoZSBEU0kgRFBIWSBhbmQgdGhlIExWRFMKPiA+ID4gSVAgaXRzZWxmLgo+ID4gPiAKPiA+
ID4gQ2hlZXJzLAo+ID4gPiBNaXF1w6hsCj4gPiA+IAo+ID4gPiBDaGFuZ2VzIHNpbmNlIHYxOgo+
ID4gPiAqIEFkZGVkIFJvYidzIEFjay4KPiA+ID4gKiBVc2VkICJtdXN0IiBpbnN0ZWFkIG9mICJz
aG91bGQiIGluIHRoZSBiaW5kaW5ncy4KPiA+ID4gKiBQcmVjaXNlZCB0aGF0IHBoeS1uYW1lcyBp
cyBhbiBvcHRpb25hbCBwcm9wZXJ0eSBpbiB0aGUgY2FzZSBvZgo+ID4gPiAgIFBYMzAuCj4gPiA+
ICogUmVuYW1lZCB0aGUgV1JJVEVfRU4gbWFjcm8gaW50byBISVdPUkRfVVBEQVRFIHRvIGJlIGFs
aWduZWQgd2l0aAo+ID4gPiAgIG90aGVyIGZpbGVzLgo+ID4gPiAqIFJlbW92ZWQgZXh0cmEgY29u
ZmlndXJhdGlvbiwgbm90IG5lZWRlZCBmb3IgZ2VuZXJpYyBwYW5lbHMgKHNlZQo+ID4gPiAgIFNh
bmR5IEh1YW5nIGFuc3dlcikuCj4gPiA+ICogRHJvcHBlZCB0aGUgZGlzcGxheS1zdWJzeXN0ZW0g
cm91dGVzICh1c2VsZXNzKS4KPiA+ID4gKiBNZXJnZWQgdHdvIHBhdGNoZXMgdG8gYXZvaWQgcGhh
bmRsZSBpbnRlcmRlcGVuZGVuY2llcyBpbiBncmFwaHMgYW5kCj4gPiA+ICAgaW50ZXJtZWRpYXRl
IGJ1aWxkIGVycm9ycy4KPiA+ID4gCj4gPiA+IE1pcXVlbCBSYXluYWwgKDExKToKPiA+ID4gICBk
dC1iaW5kaW5nczogZGlzcGxheTogcm9ja2NoaXAtbHZkczogRGVjbGFyZSBQWDMwIGNvbXBhdGli
bGUKPiA+ID4gICBkdC1iaW5kaW5nczogZGlzcGxheTogcm9ja2NoaXAtbHZkczogRG9jdW1lbnQg
UFgzMCBQSFkKPiA+ID4gICBkcm0vcm9ja2NoaXA6IGx2ZHM6IEZpeCBpbmRlbnRhdGlvbiBvZiBh
ICNkZWZpbmUKPiA+ID4gICBkcm0vcm9ja2NoaXA6IGx2ZHM6IEhhcm1vbml6ZSBmdW5jdGlvbiBu
YW1lcwo+ID4gPiAgIGRybS9yb2NrY2hpcDogbHZkczogQ2hhbmdlIHBsYXRmb3JtIGRhdGEKPiA+
ID4gICBkcm0vcm9ja2NoaXA6IGx2ZHM6IENyZWF0ZSBhbiBSSzMyODggc3BlY2lmaWMgcHJvYmUg
ZnVuY3Rpb24KPiA+ID4gICBkcm0vcm9ja2NoaXA6IGx2ZHM6IEhlbHBlcnMgc2hvdWxkIHJldHVy
biBkZWNlbnQgdmFsdWVzCj4gPiA+ICAgZHJtL3JvY2tjaGlwOiBsdmRzOiBQYWNrIGZ1bmN0aW9u
cyB0b2dldGhlciAgCj4gPiAKPiA+IGFwcGxpZWQgcGF0Y2hlcyAxLTggdG8gZHJtLW1pc2MtbmV4
dAo+ID4gICAKPiA+ID4gICBkcm0vcm9ja2NoaXA6IGx2ZHM6IEFkZCBQWDMwIHN1cHBvcnQgIAo+
ID4gCj4gPiBkcm0tbWlzYy1uZXh0IGlzIGN1cnJlbnRseSBzdGlsbCBhdCA1LjQtcmM0LCBzbyBJ
J2xsIG5lZWQgdG8gZmluZCBvdXQgaG93Cj4gPiB0byBnZXQgbmV3ZXIga2VybmVsIGNoYW5nZXMg
aW4gdGhlcmUsIGFzIHJpZ2h0IG5vdyB3ZSdyZSBtaXNzaW5nCj4gPiB0aGUgUEhZX01PREVfTFZE
UyBjb25zdGFudC4gIAo+IAo+IGFwcGxpZWQgbm93IHRvIGRybS1taXNjLW5leHQgYXMgd2VsbCwg
YWZ0ZXIgZHJtLW1pc2MgbWFpbnRhaW5lcnMgZGlkIHRoZQo+IHJlcXVlc3RlZCBiYWNrLW1lcmdl
IHRvIGdldCB0aGF0IGNvbnN0YW50LgoKR3JlYXQhIFRoYW5rcyBhIGxvdCBmb3IgeW91ciB0aW1l
IQoKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
