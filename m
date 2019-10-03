Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5E1C9718
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 06:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NasdDJO69bOd+UfyDUY7ycpUE6MFDiwzneEShaAEVKo=; b=TeZwPdZsT/Rr4x
	K0SJx3iNyU/c/r6IWZbxPe6uUZpekaV2X8w8ITBfaMn1lCxjC0FGCqYamZX9OFdTcgM8SJI02rkOU
	HR/vgMftG1Z7bljTztEGmcJukrNuAwXMz7CxiL1JV4tFtqk/CVrqseoeYEcQexhAniRahY5Mqkkx7
	oKK1Y6y67cgjqRdRqR7YfpU1WyDVOpVJcvbhJ14/O8T0I1elpblS8Pfdw76vcY0qZrtfr4xGtiITS
	zed84WNTi3moVSdvJB0JuukdiQQM+yQMfNt2KFdn3hkpiPg4xWGyYrk8Ap/BtlBwrMFUj0ic7+Is6
	wZrXP8h4NntnkliAwE0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFsHQ-0004oR-Gs; Thu, 03 Oct 2019 03:59:52 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFsHI-0004o8-Mk
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 03:59:46 +0000
Received: from [199.195.250.187] (port=48410 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iFsH9-0002Ea-GO; Thu, 03 Oct 2019 04:59:39 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 418CA82E31;
 Thu,  3 Oct 2019 03:59:24 +0000 (UTC)
Message-ID: <cf49bbf518b10b0f5b27b0d5e866b60e174fec4a.camel@aosc.io>
Subject: Re: [PATCH 0/3] drm/sun4i: dsi: misc timing fixes
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <mripard@kernel.org>
Date: Thu, 03 Oct 2019 11:58:42 +0800
In-Reply-To: <20191002103642.jlbs44v4kwnxhrge@gilmour>
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191002103642.jlbs44v4kwnxhrge@gilmour>
Organization: Anthon Open-Source Community
MIME-Version: 1.0
X-BlackCat-Spam-Score: 0
X-Spam-Status: No, score=-0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_205944_742720_DFD3AFD3 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMTktMTAtMDLkuInnmoQgMTI6MzYgKzAyMDDvvIxNYXhpbWUgUmlwYXJk5YaZ6YGT77ya
Cj4gSGksCj4gCj4gT24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDQ6MDI6NTBQTSArMDgwMCwgSWNl
bm93eSBaaGVuZyB3cm90ZToKPiA+IFRoaXMgcGF0Y2hzZXQgZml4ZXMgc29tZSBwb3J0aW9uIG9m
IHRpbWluZyBjYWxjdWxhdGlvbiBpbgo+ID4gc3VuNmlfbWlwaV9kc2kKPiA+IGRyaXZlciBhY2Nv
cmRpbmcgdG8gdGhlIEJTUCBkcml2ZXIuCj4gPiAKPiA+IFR3byBvZiB0aGUgcGF0Y2hlcyBhcmUg
cmV2ZXJ0aW5nLCBvbmUgaXMgZml4aW5nIHNvbWUgbWlzcmVhZCBvZiB0aGUKPiA+IEJTUAo+ID4g
c291cmNlIGNvZGUsIGFub3RoZXIgaXMgZml4aW5nIGEgd3JvbmcgcmVmYWN0b3IgdGhhdCBhY3R1
YWxseQo+ID4gYnJlYWtzIHRoZQo+ID4gZm9ybXVsYS4KPiA+IAo+ID4gVGhlIG90aGVyIG5vbi1y
ZXZlcnRpbmcgcGF0Y2ggaXMgZml4aW5nIGEgcG9yY2ggZXJyb3Igd2hpY2ggaXMKPiA+IHVzdWFs
bHkKPiA+IHNlZW4gaW4gdGhlIG9yaWdpbmFsIGRyaXZlciBjb21taXQuIE1vc3Qgb2YgcG9yY2gg
ZXJyb3JzIGFyZSB0aGVuCj4gPiBmaXhlZCwKPiA+IGJ1dCB0aGlzIG9uZSBnZXRzIGlnbm9yZWQu
Cj4gPiAKPiA+IEJ5IGFwcGx5aW5nIHRoZXNlIHBhdGNoZXMsIHNldmVyYWwgRFNJIHBhbmVscyBh
cmUgdGVzdGVkIHRvIGJlCj4gPiBkcml2ZW4KPiA+IHByb3Blcmx5IGJ5IHRoZSB0aW1pbmcgcHJv
dmlkZWQgYnkgdGhlIHZlbmRvciwgaW5jbHVkaW5nIHRoZSBMQ0QKPiA+IHBhbmVsCj4gPiBvZiBQ
aW5lUGhvbmUgIkRvbid0IEJlIEV2aWwiIERldktpdCwgdGhlIGZpbmFsIFBpbmVQaG9uZSBwYW5l
bCBhbmQKPiA+IHRoZQo+ID4gcGFuZWwgb24gUGluZVRhYi4gV2l0aG91dCB0aGVzZSBwYXRjaGVz
IHRoZXkgbmVlZCBkaXJ0eSB0aW1pbmcKPiA+IGhhY2tzIHRvCj4gPiB3b3JrLgo+IAo+IFRoYW5r
cyBmb3IgZ29pbmcgYWZ0ZXIgdGhhdCBpc3N1ZS4gQ2FuIHlvdSBwcm92aWRlIHJlZmVyZW5jZXMg
dG8gdGhlCj4gQlNQIG9uIHRoZSB2YXJpb3VzIHBhdGNoZXM/CgpGb3IgcGF0Y2ggMTogWzFdIGZv
ciBzZXR0aW5nIGRlbGF5IDEgaW4gRFNJIGNvbnRyb2xsZXIsIFsyXSBmb3Igc2V0dGluZwpyZWFs
IGRlbGF5IGluIFRDT04gY29udHJvbGxlci4KCkZvciBwYXRjaCAyOiBbM10KClBhdGNoIDMgaXMg
cmV2ZXJ0aW5nIGEgYnJlYWtpbmcgY2hhbmdlLCBzbyBJIGRpZG4ndCBjaGVjayBpdCBpbiB0aGUK
QlNQLiBJdCBjYW4gYmUgdmVyaWZpZWQgYnkgbWF0aG1hdGljYWwgY2FsY3VsYXRpb24uCgpbMV0g
Cmh0dHBzOi8vZ2l0aHViLmNvbS9heXVmYW4tcGluZTY0L2xpbnV4LXBpbmU2NC9ibG9iL215LWhh
Y2tzLTEuMi13aXRoLWRybS9kcml2ZXJzL3ZpZGVvL3N1bnhpL2Rpc3AyL2Rpc3AvZGUvbG93bGV2
ZWxfc3VuNTBpdzEvZGVfZHNpLmMjTDczMAoKWzJdIApodHRwczovL2dpdGh1Yi5jb20vYXl1ZmFu
LXBpbmU2NC9saW51eC1waW5lNjQvYmxvYi9teS1oYWNrcy0xLjItd2l0aC1kcm0vZHJpdmVycy92
aWRlby9zdW54aS9kaXNwMi9kaXNwL2RlL2xvd2xldmVsX3N1bjUwaXcxL2RlX2xjZC5jI0wzNjkK
ClszXSAKaHR0cHM6Ly9naXRodWIuY29tL2F5dWZhbi1waW5lNjQvbGludXgtcGluZTY0L2Jsb2Iv
bXktaGFja3MtMS4yLXdpdGgtZHJtL2RyaXZlcnMvdmlkZW8vc3VueGkvZGlzcDIvZGlzcC9kZS9s
b3dsZXZlbF9zdW41MGl3MS9kZV9kc2kuYyNMNzgwCgo+IAo+IElkZWFsbHksIGhhdmluZyB0aGUg
cGFuZWwgZHJpdmVycywgYW5kIHRoZSBwYW5lbCBkYXRhc2hlZXQgd291bGQKPiBoZWxwLgo+IAo+
IFRoYW5rcyEKPiBNYXhpbWUKPiAKPiBQUzogd2hlcmUgY2FuIHdlIGdldCBvbmUgb2YgdGhvc2Ug
ZGV2aWNlcz8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
