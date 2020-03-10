Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A017F431
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:53:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMp+ul6XDKW/yhK5qEn/2oIWNlI/t3f2X2A73Q4SIPA=; b=uOfxzSStb6Ae4K
	41WBolis4d3RSQRiJmf6qtv4h2yCmKS5AfXCeIYlo/ZGfORGLe3rD4Gf31jVUHFzeMUtUZSdRqDTJ
	o5jWoGQwc+QrArqNx6Jxy265d5NY2k/g4ChNB0NnZcdCNbBUOHg+NARs9u59rA93k0HSq+YR2TEyW
	kT+xUjkSij896Yo089rJL5P+2ofEwUn67mb23zgHOUI+9oG/fdv7bOoIBy6dj8AVayKqpo/zdahw3
	DVBPduVe6ySmyFpeR+fDT4LfLHrWl+WFwboV3/gDZnZkJZMzRpDjQSfKE8sufhIcZvCWB/kCR1Cyh
	l1MEnwoGKng90CGUhEoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbZr-0000dj-Rn; Tue, 10 Mar 2020 09:53:31 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbZg-0000ch-6j; Tue, 10 Mar 2020 09:53:21 +0000
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 9661B1C0012;
 Tue, 10 Mar 2020 09:53:08 +0000 (UTC)
Date: Tue, 10 Mar 2020 10:53:08 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: rgb: don't count non-existent devices
 when determining subdrivers
Message-ID: <20200310105308.1c5fadf9@xps13>
In-Reply-To: <20200121224828.4070067-1-heiko@sntech.de>
References: <20200121224828.4070067-1-heiko@sntech.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_025320_380971_427B046F 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.197 listed in wl.mailspike.net]
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBUdWUs
IDIxIEphbiAyMDIwIDIzOjQ4OjI4CiswMTAwOgoKPiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVp
a28uc3R1ZWJuZXJAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+IAo+IHJvY2tjaGlwX2RybV9lbmRw
b2ludF9pc19zdWJkcml2ZXIoKSBtYXkgYWxzbyByZXR1cm4gZXJyb3IgY29kZXMuCj4gRm9yIGV4
YW1wbGUgaWYgdGhlIHRhcmdldC1ub2RlIGlzIGluIHRoZSBkaXNhYmxlZCBzdGF0ZSwgc28gbm8K
PiBwbGF0Zm9ybS1kZXZpY2UgaXMgZ2V0dGluZyBjcmVhdGVkIGZvciBpdC4KPiAKPiBJbiB0aGF0
IGNhc2UgY3VycmVudCBjb2RlIHdvdWxkIGNvdW50IHRoYXQgYXMgZXh0ZXJuYWwgcmdiIGRldmlj
ZSwKPiB3aGljaCBpbiB0dXJuIHdvdWxkIG1ha2UgcHJvYmluZyB0aGUgcm9ja2NoaXAtZHJtIGRl
dmljZSBmYWlsLgo+IAo+IFNvIG9ubHkgY291bnQgdGhlIHRhcmdldCBhcyByZ2IgZGV2aWNlIGlm
IHRoZSBmdW5jdGlvbiBhY3R1YWxseQo+IHJldHVybnMgMC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBI
ZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfcmdiLmMgfCAzICsrLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYwo+IGluZGV4IGFlNzMwMjc1YTM0Zi4uNzlh
N2U2MDYzM2UwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9yZ2IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYwo+
IEBAIC05OCw3ICs5OCw4IEBAIHN0cnVjdCByb2NrY2hpcF9yZ2IgKnJvY2tjaGlwX3JnYl9pbml0
KHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgCQlpZiAob2ZfcHJvcGVydHlfcmVhZF91MzIoZW5kcG9p
bnQsICJyZWciLCAmZW5kcG9pbnRfaWQpKQo+ICAJCQllbmRwb2ludF9pZCA9IDA7Cj4gIAo+IC0J
CWlmIChyb2NrY2hpcF9kcm1fZW5kcG9pbnRfaXNfc3ViZHJpdmVyKGVuZHBvaW50KSA+IDApCj4g
KwkJLyogaWYgc3ViZHJpdmVyICg+IDApIG9yIGVycm9yIGNhc2UgKDwgMCksIGlnbm9yZSBlbnRy
eSAqLwo+ICsJCWlmIChyb2NrY2hpcF9kcm1fZW5kcG9pbnRfaXNfc3ViZHJpdmVyKGVuZHBvaW50
KSAhPSAwKQo+ICAJCQljb250aW51ZTsKPiAgCj4gIAkJY2hpbGRfY291bnQrKzsKClJldmlld2Vk
LWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKVGhhbmtzLApN
aXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
