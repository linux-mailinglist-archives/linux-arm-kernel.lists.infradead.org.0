Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E03C4A1A0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 14:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e7tc8RhTuHD+DAmu3NzDzpNAOyZVkazgprXXQ1cqohA=; b=BCLf5G6kCtZx7f
	d4yI/cz3fJn9D4INGIVMTHk7DhlRRvczc3CvXsdv8Z0CWzq2v7KWu4f1yO9ALR5bFMDDssMX3hyGR
	oXTZJUgF2THw5wbzy3BzUOVBoWRTB3pBpfhJQ/g7X/zlWwoMRkyMZ1jfb0izrDUWO5Sh2GBowVxGI
	1+qrlPMZxcmCeLWKxU9BSwVdbzFjnbGCZBoFTE1seKdbhh9oUVYf+k3kGY4MUBrh4rnSfg0U1tT5h
	U9g8IiQ0/Gb0pNovX5cU7k0FP/qqjuFrnR+XB6n0bCx9sn3k4wPNUdbAa587ZKpXtik+J5pArfazf
	TfU7xo8tB4+cNd0r1/sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3JZh-0005xs-Uw; Thu, 29 Aug 2019 12:30:49 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdA-0000aZ-VZ
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B7C9E20032E;
 Thu, 29 Aug 2019 13:30:18 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9FE25200333;
 Thu, 29 Aug 2019 13:30:18 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id F0B5420613;
 Thu, 29 Aug 2019 13:30:17 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 00/14] Improvements and fixes for mxsfb DRM driver
Date: Thu, 29 Aug 2019 14:30:01 +0300
Message-Id: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043021_293211_A77CF8AE 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaC1zZXQgaW1wcm92ZXMgdGhlIHVzZSBvZiBlTENESUYgYmxvY2sgb24gaU1YIDgg
U29DcyAobGlrZSA4TVEsIDhNTQphbmQgOFFYUCkuIEZvbGxvd2luZywgYXJlIHRoZSBuZXcgZmVh
dHVyZXMgYWRkZWQgYW5kIGZpeGVzIGZyb20gdGhpcwpwYXRjaC1zZXQ6CgoxLiBBZGQgc3VwcG9y
dCBmb3IgZHJtX2JyaWRnZQpPbiA4TVEgYW5kIDhNTSwgdGhlIExDRElGIGJsb2NrIGlzIG5vdCBk
aXJlY3RseSBjb25uZWN0ZWQgdG8gYSBwYXJhbGxlbApkaXNwbGF5IGNvbm5lY3Rvciwgd2hlcmUg
YW4gTENEIHBhbmVsIGNhbiBiZSBhdHRhY2hlZCwgYnV0IGluc3RlYWQgaXQgaXMKY29ubmVjdGVk
IHRvIERTSSBjb250cm9sbGVyLiBTaW5jZSB0aGlzIERTSSBzdGFuZHMgYmV0d2VlbiB0aGUgZGlz
cGxheQpjb250cm9sbGVyIChlTENESUYpIGFuZCB0aGUgcGh5c2ljYWwgY29ubmVjdG9yLCB0aGUg
RFNJIGNhbiBiZSBpbXBsZW1lbnRlZAphcyBhIERSTSBicmlkZ2UuIFNvLCBpbiBvcmRlciB0byBi
ZSBhYmxlIHRvIGNvbm5lY3QgdGhlIG14c2ZiIGRyaXZlciB0bwp0aGUgRFNJIGRyaXZlciwgdGhl
IHN1cHBvcnQgZm9yIGEgZHJtX2JyaWRnZSB3YXMgbmVlZGVkIGluIG14c2ZiIERSTQpkcml2ZXIg
KHRoZSBhY3R1YWwgZHJpdmVyIGZvciB0aGUgZUxDRElGIGJsb2NrKS4KCjIuIEFkZCBzdXBwb3J0
IGZvciBhZGRpdGlvbmFsIHBpeGVsIGZvcm1hdHMKU29tZSBvZiB0aGUgcGl4ZWwgZm9ybWF0cyBu
ZWVkZWQgYnkgQW5kcm9pZCB3ZXJlIG5vdCBpbXBsZW1lbnRlZCBpbiB0aGlzCmRyaXZlciwgYnV0
IHRoZXkgd2VyZSBhY3R1YWxseSBzdXBwb3J0ZWQuIFNvLCBhZGQgc3VwcG9ydCBmb3IgdGhlbS4K
CjMuIEFkZCBzdXBwb3J0IGZvciBob3Jpem9udGFsIHN0cmlkZQpIYXZpbmcgc3VwcG9ydCBmb3Ig
aG9yaXpvbnRhbCBzdHJpZGUgYWxsb3dzIHRoZSB1c2Ugb2YgZUxDRElGIHdpdGggYSBHUFUKKGZv
ciBleGFtcGxlKSB0aGF0IGNhbiBvbmx5IG91dHB1dCByZXNvbHV0aW9uIHNpemVzIG11bHRpcGxl
IG9mIGEgcG93ZXIgb2YKOC4gRm9yIGV4YW1wbGUsIDEwODAgaXMgbm90IGEgcG93ZXIgb2YgMTYs
IHNvIGluIG9yZGVyIHRvIHN1cHBvcnQgMTkyMHgxMDgwCm91dHB1dCBmcm9tIEdQVXMgdGhhdCBj
YW4gcHJvZHVjZSBsaW5lYXIgYnVmZmVycyBvbmx5IGluIHNpemVzIG11bHRpcGxlIHRvIDE2LAp0
aGlzIGZlYXR1cmUgaXMgbmVlZGVkLgoKMy4gRmV3IG1pbm9yIGZlYXR1cmVzIGFuZCBidWctZml4
aW5nClRoZSBhZGRpdGlvbiBvZiBtYXgtbWVtb3J5LWJhbmR3aWR0aCBEVCBwcm9wZXJ0eSB3YXMg
YWN0dWFsbHkgbmVlZGVkIGluIG9yZGVyCnRvIGxpbWl0IHRoZSBiYW5kd2lkdGggdXNhZ2Ugb2Yg
dGhlIGVMQ0RJRiBibG9jay4gVGhpcyBpcyBuZWVkIG9uIHN5c3RlbXMgd2hlcmUKbXVsdGlwbGUg
ZGlzcGxheSBjb250cm9sbGVycyBhcmUgcHJlc2VuZCBhbmQgdGhlIG1lbW9yeSBiYW5kd2lkdGgg
aXMgbm90CmVub3VnaCB0byBoYW5kbGUgYWxsIG9mIHRoZW0gYXQgbWF4aW11bSBjYXBhY2l0eSAo
bGlrZSBpdCBpcyB0aGUgY2FzZSBvbgo4TVEsIHdoZXJlIHRoZXJlIGFyZSB0d28gZGlzcGxheSBj
b250cm9sbGVyczogRENTUyBhbmQgZUxDRElGKS4KVGhlIHJlc3Qgb2YgdGhlIHBhdGNoZXMgYXJl
IGJ1Zy1maXhlcy4KCnY0OgotIFJlbW92ZWQgdGhlICJGaXggdmJsYW5rIGV2ZW50cyIgcGF0Y2gg
KHdpbGwgY292ZXIgdGhpcyBpc3N1ZSBsYXRlciwgb24gYQogIHNlcGFyYXRlIHRocmVhZCkKLSBD
b2xsZXRlZCAiVGVzdGVkLWJ5IiBmcm9tIEd1aWRvCi0gQ29sbGVjdGVkICJSZXZpZXdlZC1ieSIg
ZnJvbSBSb2IgSGVycmluZwoKdjM6Ci0gUmVtb3ZlZCB0aGUgbWF4LXJlcyBwcm9wZXJ0eSBwYXRj
aGVzIGFuZCBhZGRlZCBzdXBwb3J0IGZvcgogIG1heC1tZW1vcnktYmFuZHdpZHRoIHByb3BlcnR5
LCBhcyBpdCBpcyBhbHNvIGltcGxlbWVudGVkIGluIG90aGVyIGRyaXZlcnMKLSBSZW1vdmVkIHVu
bmVjZXNzYXJ5IGRybV92Ymxhbmtfb2ZmIGluIHByb2JlCgp2MjoKLSBDb2xsZWN0ZWQgVGVzdGVk
LWJ5IGZyb20gR3VpZG8KLSBTcGxpdCB0aGUgZmlyc3QgcGF0Y2gsIHdoaWNoIGFkZGVkIG1vcmUg
dGhhbiBvbmUgZmVhdHVyZSBpbnRvIHJlbGV2YW50CiAgcGF0Y2hlcywgZXhwbGFpbmluZyBlYWNo
IGZlYXR1cmUgYWRkZWQKLSBBbHNvIHNwbGl0IHRoZSBzZWNvbmQgcGF0Y2ggaW50byBtb3JlIHBh
dGNoZXMsIHRvIGRpZmZlcmVudGlhdGUgYmV0d2VlbgogIHRoZSBmZWF0dXJlIGl0c2VsZiAoYWRk
aXRpb25hbCBwaXhlbCBmb3JtYXRzIHN1cHBvcnQpIGFuZCB0aGUgY2xlYW51cAogIG9mIHRoZSBy
ZWdpc3RlciBkZWZpbml0aW9ucyBmb3IgYSBiZXR0ZXIgcmVwcmVzZW50YXRpb24gKGd1aWRvKQot
IEluY2x1ZGVkIGEgcGF0Y2ggc3VibWl0dGVkIGJ5IEd1aWRvLCB3aGlsZSBoZSB3YXMgdGVzdGlu
ZyBteSBwYXRjaC1zZXQKCkd1aWRvIEfDvG50aGVyICgxKToKICBkcm0vbXhzZmI6IFJlYWQgYnVz
IGZsYWdzIGZyb20gYnJpZGdlIGlmIHByZXNlbnQKCk1pcmVsYSBSYWJ1bGVhICgxKToKICBkcm0v
bXhzZmI6IFNpZ25hbCBtb2RlIGNoYW5nZWQgd2hlbiBicHAgY2hhbmdlZAoKUm9iZXJ0IENoaXJh
cyAoMTIpOgogIGRybS9teHNmYjogVXBkYXRlIG14c2ZiIHRvIHN1cHBvcnQgYSBicmlkZ2UKICBk
cm0vbXhzZmI6IEFkZCBkZWZpbmVzIGZvciB0aGUgcmVzdCBvZiByZWdpc3RlcnMKICBkcm0vbXhz
ZmI6IFJlc2V0IHZpdGFsIHJlZ2lzdGVycyBmb3IgYSBwcm9wZXIgaW5pdGlhbGl6YXRpb24KICBk
cm0vbXhzZmI6IFVwZGF0ZSByZWdpc3RlciBkZWZpbml0aW9ucyB1c2luZyBiaXQgbWFuaXB1bGF0
aW9uIGRlZmluZXMKICBkcm0vbXhzZmI6IFVwZGF0ZSBteHNmYiB3aXRoIGFkZGl0aW9uYWwgcGl4
ZWwgZm9ybWF0cwogIGRybS9teHNmYjogQWRkIG1heC1tZW1vcnktYmFuZHdpZHRoIHByb3BlcnR5
IGZvciBNWFNGQgogIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBBZGQgbWF4LW1lbW9yeS1iYW5kd2lk
dGggcHJvcGVydHkgZm9yIG14c2ZiCiAgZHJtL214c2ZiOiBVcGRhdGUgbXhzZmIgdG8gc3VwcG9y
dCBMQ0QgcmVzZXQKICBkcm0vbXhzZmI6IEltcHJvdmUgdGhlIGF4aSBjbG9jayB1c2FnZQogIGRy
bS9teHNmYjogQ2xlYXIgT1VUU1RBTkRJTkdfUkVRUyBiaXRzCiAgZHJtL214c2ZiOiBBZGQgc3Vw
cG9ydCBmb3IgaG9yaXpvbnRhbCBzdHJpZGUKICBkcm0vbXhzZmI6IEFkZCBzdXBwb3J0IGZvciBs
aXZlIHBpeGVsIGZvcm1hdCBjaGFuZ2UKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L214c2ZiLnR4dCAgICAgICAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJf
Y3J0Yy5jICAgICAgICAgICAgICAgICB8IDI4NyArKysrKysrKysrKysrKysrKystLS0KIGRyaXZl
cnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYuYyAgICAgICAgICAgICAgICAgIHwgMTk0ICsrKysr
KysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfZHJ2LmggICAgICAgICAgICAg
ICAgICB8ICAxMiArLQogZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX291dC5jICAgICAgICAg
ICAgICAgICAgfCAgMjYgKy0KIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9yZWdzLmggICAg
ICAgICAgICAgICAgIHwgMTkzICsrKysrKysrKy0tLS0tCiA2IGZpbGVzIGNoYW5nZWQsIDU4MSBp
bnNlcnRpb25zKCspLCAxMzYgZGVsZXRpb25zKC0pCgotLSAKMi43LjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
