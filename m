Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B9312E95A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhDfnRZOE1Xatonxn8DSlVN92u9r1dNQ9f/s5auCdzY=; b=c2J8NSPUjeLBY3
	vQyPxWfzFu4xVdP7eWEguTThST5BMv/qx6GNK6xiv2WESHGsy9P2xGfuqvIsUgEwM0e4+ngjQKT1u
	Pax9rfX+gNsgv9uB4uwqPPEsDtROgb4vb1O03XHH0ZN9KmO2vUifvENDaBi4CbpdB3+lDggxkYiwI
	SMPfrewkun8/JittXUjXKlIwx5lFcW9/v3aj3LF2kJs3+GCnsaiZX9T8+SWQptAkiOuTYxnxx9kSU
	mTKyOOd99t2Qk9LEqq/pO2xtk/pA37V1+fr8FtgUBEp/a4L/78O7ZsrgQMCYbHa823UzxuxL3QOTV
	TF9v+JS/qJJkETJucilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4Dv-0001Xz-PS; Thu, 02 Jan 2020 17:25:27 +0000
Received: from mailoutvs15.siol.net ([185.57.226.206] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4De-0000cq-Hd
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:25:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 64B9C52123C;
 Thu,  2 Jan 2020 18:25:06 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id lQrdYFwcwuWQ; Thu,  2 Jan 2020 18:25:06 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 00D1D520913;
 Thu,  2 Jan 2020 18:25:05 +0100 (CET)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 4EBCD52123C;
 Thu,  2 Jan 2020 18:25:02 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>,
 Roman Stratiienko <roman.stratiienko@globallogic.com>
Subject: Re: [PATCH v3 2/2] drm/sun4i: Use CRTC size instead of PRIMARY plane
 size as mixer frame.
Date: Thu, 02 Jan 2020 18:25:02 +0100
Message-ID: <1837725.8hb0ThOEGa@jernej-laptop>
In-Reply-To: <CAODwZ7uqf4v8XjOLCn=SoUQchst_b96VCNdaunzn9Q21zPcQ7w@mail.gmail.com>
References: <20200101204750.50541-1-roman.stratiienko@globallogic.com>
 <20200102100832.c5fc4imjdmr7otam@gilmour.lan>
 <CAODwZ7uqf4v8XjOLCn=SoUQchst_b96VCNdaunzn9Q21zPcQ7w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_092510_930704_AD6833FB 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.206 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgxI1ldHJ0ZWssIDAyLiBqYW51YXIgMjAyMCBvYiAxNzozMjowNyBDRVQgamUgUm9t
YW4gU3RyYXRpaWVua28gbmFwaXNhbChhKToKPiDRh9GCLCAyINGP0L3Qsi4gMjAyMCDQsy4sIDEy
OjA4IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz46Cj4gPiBIaSwKPiA+IAo+ID4g
T24gV2VkLCBKYW4gMDEsIDIwMjAgYXQgMTA6NDc6NTBQTSArMDIwMCwgCnJvbWFuLnN0cmF0aWll
bmtvQGdsb2JhbGxvZ2ljLmNvbSB3cm90ZToKPiA+ID4gRnJvbTogUm9tYW4gU3RyYXRpaWVua28g
PHJvbWFuLnN0cmF0aWllbmtvQGdsb2JhbGxvZ2ljLmNvbT4KPiA+ID4gCj4gPiA+IEFjY29yZGlu
ZyB0byBEUk0gZG9jdW1lbnRhdGlvbiB0aGUgb25seSBkaWZmZXJlbmNlIGJldHdlZW4gUFJJTUFS
WQo+ID4gPiBhbmQgT1ZFUkxBWSBwbGFuZSBpcyB0aGF0IGVhY2ggQ1JUQyBtdXN0IGhhdmUgUFJJ
TUFSWSBwbGFuZSBhbmQKPiA+ID4gT1ZFUkxBWSBhcmUgb3B0aW9uYWwuCj4gPiA+IAo+ID4gPiBB
bGxvdyBQUklNQVJZIHBsYW5lIHRvIGhhdmUgZGltZW5zaW9uIGRpZmZlcmVudCBmcm9tIGZ1bGwt
c2NyZWVuLgo+ID4gPiAKPiA+ID4gRml4ZXM6IDViYjVmNWRhZmExYSAoImRybS9zdW40aTogUmVv
cmdhbml6ZSBVSSBsYXllciBjb2RlIGluIERFMiIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFJvbWFu
IFN0cmF0aWllbmtvIDxyb21hbi5zdHJhdGlpZW5rb0BnbG9iYWxsb2dpYy5jb20+Cj4gPiAKPiA+
IFNvIGl0IGFwcGxpZXMgdG8gYWxsIHRoZSA0IHBhdGNoZXMgeW91J3ZlIHNlbnQsIGJ1dCB0aGlz
IGxhY2tzIHNvbWUKPiA+IGNvbnRleHQuCj4gPiAKPiA+IFRoZXJlJ3MgYSBmZXcgcXVlc3Rpb25z
IHRoYXQgc2hvdWxkIGJlIGFuc3dlcmVkIGhlcmU6Cj4gPiAgIC0gV2hpY2ggc2l0dWF0aW9uIGlz
IGl0IGZpeGluZz8KPiAKPiBTZXR0aW5nIHByaW1hcnkgcGxhbmUgc2l6ZSBsZXNzIHRoYW4gY3J0
YyBicmVha3MgY29tcG9zaXRpb24uIEFsc28KPiBzaGlmdGluZyB0b3AgbGVmdCBjb3JuZXIgYWxz
byBicmVha3MgaXQuCgpUcnVlLCBIVyBkb2Vzbid0IGhhdmUgbm90aW9uIG9mIHByaW1hcnkgcGxh
bmUuIEl0J3MganVzdCBvbmUgcGxhbmUgd2hpY2ggaXMgCm1hcmtlZCBhcyBwcmltYXJ5LCBidXQg
b3RoZXJ3aXNlIGl0IGhhcyBzYW1lIGNhcGFiaWxpdGllcyBhcyBvdGhlcnMsIGxpa2UgeCx5IApj
b29yZGluYXRlcywgc2l6ZSwgZXRjLgoKPiAKPiA+ICAgLSBXaGF0IHRvb2wgLyB1c2Vyc3BhY2Ug
c3RhY2sgaXMgaXQgZml4aW5nPwo+IAo+IEkgYW0gdXNpbmcgQW5kcm9pZCB1c2Vyc3BhY2UgYW5k
IGRybV9od2NvbXBvc2VyIEhBTC4KPiAKPiBASmVybmVqLCB5b3UndmUgc2FpZCB0aGF0IHlvdSBv
YnNlcnZlZCBzaW1pbGFyIGlzc3VlLiBDb3VsZCB5b3Ugc2hhcmUKPiB3aGF0IHVzZXJzcGFjZSBo
YXZlIHlvdSB1c2VkPwoKSSBvYnNlcnZlZCBpdCB3aXRoIERFMSwgYnV0IGl0IGhhcyBleGFjdGx5
IHRoZSBzYW1lIGlzc3VlLiBJIG5vdGljZWQgdGhpcyAKcHJvYmxlbSBvbiBLb2RpIChnYm0gdmVy
c2lvbikuIEtvZGkgZmlyc3Qgc2VhcmNoZXMgZm9yIHBsYW5lIGNhcGFibGUgb2YgCmRpc3BsYXlp
bmcgTlYxMiBmb3JtYXQgKGZvciB2aWRlbykgYW5kIGFmdGVyIHRoYXQgYSBwbGFuZSB3aGljaCBp
cyBjYXBhYmxlIG9mIApkaXNwbGF5aW5nIFJHQjg4OCBmb3JtYXQgKGZvciBHVUkpLiBJbiBERTEg
Y2FzZSwgZmlyc3QgcGxhbmUgaXMgcHJpbWFyeSBhbmQgCmFsc28gY2FwYWJsZSBvZiBkaXNwbGF5
aW5nIE5WMTIgZm9ybWF0LiBTbyB3aGVuIHZpZGVvIGlzIGRpc3BsYXllZCB3aGljaCAKZG9lc24n
dCBjb3ZlciB3aG9sZSBzY3JlZW4sIGRpc3BsYXkgb3V0cHV0IGlzIGNvcnJ1cHRlZC4gSG93ZXZl
ciwgd2l0aCBzdWNoIApmaXgsIHZpZGVvIHBsYXliYWNrIGlzIGNvcnJlY3QuIEx1YyBWZXJoYWVn
ZW4gbWFrZSBlcXVpdmFsZW50IGZpeCBmb3IgREUxLCB3aGVyZSAKaGUgYWxzbyBjbGFpbXMgcHJp
bWFyeSBwbGFuZSBkb2Vzbid0IGhhdmUgdG8gYmUgc2FtZSBzaXplIGFzIENSVEMgb3V0cHV0Ogpo
dHRwczovL2dpdGh1Yi5jb20vbGlidi9mb3NkZW0tdmlkZW8tbGludXgvY29tbWl0LwphZTMyMTVk
MzdjYTJhNTU2NDJiY2FlNmM4M2MzNjEyZTI2Mjc1NzExCgo+IAo+ID4gICAtIFdoYXQgaGFwcGVu
cyB3aXRoIHlvdXIgZml4PyBEbyB5b3Ugc2V0IHRoZSBwbGFuZSBhdCBjb29yZGluYXRlcwo+ID4g
ICAKPiA+ICAgICAwLDAgKG1lYW5pbmcgeW91J2xsIGNyb3AgdGhlIHRvcC1sZWYgY29ybmVyKSwg
ZG8geW91IGNlbnRlciBpdD8gSWYKPiA+ICAgICB0aGUgcGxhbmUgaXMgc21hbGxlciB0aGFuIHRo
ZSBDVFJDIHNpemUsIHdoYXQgaXMgc2V0IG9uIHRoZSBlZGdlcz8KPiAKPiBZb3UgY2FuIHB1dCBw
cmltYXJ5IHBsYW5lIHRvIGFueSBwYXJ0IG9mIHRoZSBzY3JlZW4gYW5kIG1ha2UgaXQgYXMKPiBz
bWFsbCBhcyA4eDggKGFjY29yZGluZyB0byB0aGUgZGF0YXNoZWV0KSAuIEJhY2tncm91bmQgd291
bGQgYmUgZmlsbGVkCj4gd2l0aCBibGFjayBjb2xvciwgdGhhdCBpcyBkZWZhdWx0LCBidXQgaXQg
YWxzbyBjb3VsZCBiZSBvdmVycmlkZGVuIGJ5Cj4gc2V0dGluZyBjb3JyZXNwb25kaW5nIHJlZ2lz
dGVycy4KCkNvcnJlY3QsIHNhbWUgbG9naWMgYXMgZm9yIG92ZXJsYXkgcGxhbmVzIGFwcGxpZXMu
CgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAKPiA+IFRoYW5rcyEKPiA+IE1heGltZQoKCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
