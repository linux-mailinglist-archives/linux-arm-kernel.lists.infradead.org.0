Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE2F1E1F6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3OlOc8rr5LCFLFZnCBAVx+gV8ojULXNG3iuqg7T0bQ=; b=BpxouZtsgkbJ40
	FCgiisSz5j3ql+VQjkDjXpNH/gFSq0b58rkjbRoI1mP6i+TY7MpZcAmSuedYbMX12dXVxXt05QYNR
	+i2em7Y9jYH1Yu4GX+eQuI+kuV22aBqHcuVqN9qdScMIcb5+JIdpMDXlsdTrasORKOpD6aMM9JBgk
	79c9LZc32h8yjg+rhMQKtB1IZHAR1qXFdSNSkg+nLabws70j8lrwJ50HyVbZLq1bssFhN+CH4ooIO
	yGZJBvF7LIt2VuhZAHrCYr4pcGdYY65nia1uAMYP7v6f5g3NZ/BSZf3nLRRbhsXFHjBc2o6ksBcG8
	41/fMpeHa3caASXeMOfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWZR-0003R1-6f; Tue, 26 May 2020 10:12:29 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWZG-0003QM-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:12:19 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 14191562;
 Tue, 26 May 2020 12:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590487932;
 bh=Py2isC6mRTURlfpioRLzyzMY0J2Ilp98yboi0lSZ12M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fmwuBd9dFsgK6/1pNS8bs4W3gePvmrztDmRaV3dTbG9JCEPJzLLS6+Hs0Ql2eoFFo
 Zoy7LOiMyXQBCg2fab8rib53qUHzZyUUHL8uq4t8cbp09FGF8Ij5NIT7+kTS8V/Aa5
 9zM/2K7FcVstY//cC1jZEoj8GISrQAsG3poJIucs=
Date: Tue, 26 May 2020 13:11:58 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200526101158.GA5903@pendragon.ideasonboard.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
 <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
 <20200526014444.GB6179@pendragon.ideasonboard.com>
 <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_031218_651747_A3BCDFE9 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VlcnQsCgpPbiBUdWUsIE1heSAyNiwgMjAyMCBhdCAwOTowMzowOUFNICswMjAwLCBHZWVy
dCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gT24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgMzo0NCBBTSBM
YXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gT24gTW9uLCBNYXkgMjUsIDIwMjAgYXQgMDk6NDM6
MzVBTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiA+ID4gT24ganVlIDE0LTA1LTIw
MjAgMTg6MjI6MzksIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gPiA+ID4gPiBJZiB3ZSB3YW50
IHRvIGJlIG1vcmUgc3RyaWN0IGFuZCByZXF1aXJlIHRoZSBkZWZpbml0aW9uIG9mIGFsbCB0aGUK
PiA+ID4gPiA+IHN1cHBsaWVzLCB0aGVyZSB3aWxsIGJlIG1hbnkgbW9yZSBEVHMgY2hhbmdlcyBp
biB0aGUgc2VyaWVzLCBhbmQgSSdtIG5vdAo+ID4gPiA+ID4gc3VyZSBJJ2xsIGJlIGFibGUgdG8g
ZG8gdGhhdCBpbiBhIHJlYXNvbmFibGUgYW1vdW50IG9mIHRpbWUuIEknbSBsb29raW5nCj4gPiA+
ID4gPiBhdCB0aGVtIGFuZCBpdCdzIG5vdCBhbHdheXMgY2xlYXIgd2hpY2ggcmVndWxhdG9ycyB0
byB1c2Ugb3IgaWYgdGhleSBhcmUKPiA+ID4gPiA+IGV2ZW4gZGVmaW5lZC4KPiA+ID4gPgo+ID4g
PiA+IFdlIGNhbiBkZWNvdXBsZSB0aGUgdHdvIHRob3VnaCAoSSB0aGluaykuIFRoZSBiaW5kaW5n
cyBzaG91bGQgcmVmbGVjdAo+ID4gPiA+IHdoYXQgd2UgY29uc2lkZXIgcmlnaHQsIGFuZCB0aGUg
ZHRzIGZpbGVzIGNvdWxkIGJlIGZpeGVkIG9uIHRvcC4KPiA+ID4KPiA+ID4gRG8geW91IGhhdmUg
YSBzdWdnZXN0aW9uIG9uIGhvdyB0byBkbyB0aGlzPyBJZiB3ZSBkZWNvdXBsZSB0aGUgdHdvCj4g
PiA+IHRhc2tzIG1vc3Qgb2YgdGhlIHdvcmsgd291bGQgYmUgc2VhcmNoaW5nIGZvciBEVHMgdG8g
Zml4IGFuZCBmaW5kaW5nIGEKPiA+ID4gd2F5IHRvIGZpeCBlYWNoIG9uZSBvZiB0aGVtLCBhbmQg
dW5sZXNzIEkgZG8gdGhpcyBfYmVmb3JlXyB0aGUgYmluZGluZwo+ID4gPiBjb252ZXJzaW9uIEkn
bGwgZ2V0IGEgbG90IG9mIGR0YnNfY2hlY2sgZXJyb3JzLgo+ID4KPiA+IFJvYiBzaG91bGQgYW5z
d2VyIHRoaXMgcXVlc3Rpb24gYXMgaXQgd2lsbCBiZSBoaXMgZGVjaXNpb24sIGJ1dCBJJ3ZlCj4g
PiBwZXJzb25hbGx5IG5ldmVyIGNvbnNpZGVyZWQgbm9uLWNvbXBsaWFudCBEVCBzb3VyY2VzIHRv
IGJlIGFuIG9ic3RhY2xlCj4gPiB0byBiaW5kaW5ncyBjb252ZXJzaW9uIHRvIFlBTUwuIFRoZSBE
VCBzb3VyY2VzIHNob3VsZCBiZSBmaXhlZCwgYnV0IEkKPiA+IGRvbid0IHNlZSBpdCBhcyBhIHBy
ZXJlcXVpc2l0ZSAoYWx0aG91Z2ggaXQncyBhIGdvb2QgcHJhY3RpY2UpLgo+IAo+IEkgZG8gbXkg
YmVzdCB0byBhdm9pZCBpbnRyb2R1Y2luZyByZWdyZXNzaW9ucyB3aGVuIHRoZSBiaW5kaW5nIGNv
bnZlcnNpb25zCj4gZ28gdXBzdHJlYW0uCgpQbGVhc2Ugbm90ZSB0aGF0IHdlJ3JlIG5vdCB0YWxr
aW5nIGFib3V0IHJ1bnRpbWUgcmVncmVzc2lvbnMsIGFzIGRyaXZlcnMKYXJlIG5vdCB1cGRhdGVk
LiBJdCdzICJvbmx5IiBkdGJzX2NoZWNrIHRoYXQgd291bGQgcHJvZHVjZSBuZXcgZXJyb3JzLgoK
PiBGVFIsIGhlbmNlIHBhdGNoZXMgMS0zIGFyZSBhbHJlYWR5IGluIHY1LjctcmM3LgoKLS0gClJl
Z2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
