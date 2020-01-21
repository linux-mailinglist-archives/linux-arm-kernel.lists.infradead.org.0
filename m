Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F81A143EBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 14:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqVmk2KP3wDX7BEp0eFxh8Kpi6T8DJey9ki60qKEBeY=; b=G5PF03rubTYmoQ
	u2TUZesU3/EHJaMnkIogRqNlvCvwAE8bYHdR/GgaMdhf/RJIgcBJ4R2AsGIN7B2/Cd3Pn+ifMLTkI
	Lit/2DHv0XwmkBsRrAXv1TO31hMbnA2Tfft+f0z+uNahF96dNO+OEOc3s5t5j4eStywJNMlgghZHb
	GcmGk1cFCzjsCkfEEYheFApJDojRKziLqu1nej7pTnrwNbbj8g73UGOg7Pz9OGE+FxkergYrqgnA2
	21xQmkNF48fmISIUoSziPZREvcW+CXIX+7VGYjD4tX+I2NTm9qTbNyioKHSemEIqTDDi0y0hJa7lB
	H/rvsHujagmttR/w9oUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itu44-00073K-P0; Tue, 21 Jan 2020 13:59:32 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itu3t-000723-EG; Tue, 21 Jan 2020 13:59:23 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B446B60016;
 Tue, 21 Jan 2020 13:59:08 +0000 (UTC)
Date: Tue, 21 Jan 2020 14:59:07 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: fix px30 lvds ports
Message-ID: <20200121145907.7fef0316@xps13>
In-Reply-To: <20200121134510.3893487-1-heiko@sntech.de>
References: <20200121134510.3893487-1-heiko@sntech.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_055921_616701_4B6F341B 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBUdWUs
IDIxIEphbiAyMDIwIDE0OjQ1OjEwCiswMTAwOgoKPiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVp
a28uc3R1ZWJuZXJAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+IAo+IFRoZSBsdmRzIGNvbnRyb2xs
ZXIgaGFzIHR3byBwb3J0cy4gcG9ydEAwIGZvciB0aGUgY29ubmVjdGlvbgo+IHRvIHRoZSBkaXNw
bGF5IGNvbnRyb2xsZXIocykgYW5kIHBvcnRAMSBmb3IgdGhlIGNvbm5lY3Rpb24gdG8KPiB0aGUg
cGFuZWwsIHNvIHNob3VsZCBoYXZlIGEgcG9ydHMgbm9kZSBjb3ZlcmluZyB0aGUgcG9ydEB4IG5v
ZGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckB0
aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcHgzMC5kdHNpIHwgMjMgKysrKysrKysrKysrKystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9weDMwLmR0c2kKPiBpbmRleCA5YjFjOTIxMzIwMDcuLjM3ZTAxNDQ0NDIxNCAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpCj4gQEAgLTQyMSwxOSAr
NDIxLDI0IEBAIGx2ZHM6IGx2ZHMgewo+ICAJCQlyb2NrY2hpcCxvdXRwdXQgPSAibHZkcyI7Cj4g
IAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAo+IC0JCQlwb3J0QDAgewo+IC0JCQkJcmVnID0g
PDA+Owo+ICsJCQlwb3J0cyB7Cj4gIAkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAgCQkJCSNz
aXplLWNlbGxzID0gPDA+Owo+ICAKPiAtCQkJCWx2ZHNfdm9wYl9pbjogZW5kcG9pbnRAMCB7Cj4g
KwkJCQlwb3J0QDAgewo+ICAJCQkJCXJlZyA9IDwwPjsKPiAtCQkJCQlyZW1vdGUtZW5kcG9pbnQg
PSA8JnZvcGJfb3V0X2x2ZHM+Owo+IC0JCQkJfTsKPiAtCj4gLQkJCQlsdmRzX3ZvcGxfaW46IGVu
ZHBvaW50QDEgewo+IC0JCQkJCXJlZyA9IDwxPjsKPiAtCQkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8
JnZvcGxfb3V0X2x2ZHM+Owo+ICsJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkJCSNz
aXplLWNlbGxzID0gPDA+Owo+ICsKPiArCQkJCQlsdmRzX3ZvcGJfaW46IGVuZHBvaW50QDAgewo+
ICsJCQkJCQlyZWcgPSA8MD47Cj4gKwkJCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmdm9wYl9vdXRf
bHZkcz47Cj4gKwkJCQkJfTsKPiArCj4gKwkJCQkJbHZkc192b3BsX2luOiBlbmRwb2ludEAxIHsK
PiArCQkJCQkJcmVnID0gPDE+Owo+ICsJCQkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JnZvcGxfb3V0
X2x2ZHM+Owo+ICsJCQkJCX07Cj4gIAkJCQl9Owo+ICAJCQl9Owo+ICAJCX07CgpJIGRvbid0IGtu
b3cgdGhlIGV4YWN0IHJ1bGUgYnV0IHRoaXMgc2VlbXMgY2xlYW5lciBpbmRlZWQuCgpSZXZpZXdl
ZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCgpUaGFua3Ms
Ck1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
