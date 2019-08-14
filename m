Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148328D147
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hvAhxYLHjxP7aYa6XX8q37Q8zfd7MwGfi77T9f+krtI=; b=W1qAfVfZJYfx6D
	1PenpZhdFnczcq2+yUq9caVQA7lV/Qzj/3CsXDR9D2l8pa6dwloNovfA/ogdMPHmUxk/vrHGtUMBk
	TEfBHf4x2GDkk4vXgNWalaIFTeMTgiWZOVpkBLUTpSs9+itHQ00BqJdFBDVIWoMx+Mf9zfzy921GN
	QsLQf2xFvw0O2f6LJ4YafTUTyiy3qga4DKNICu+yKQf69l2ZoqDDf8VDQWoM0CT4gGahxYQ19JzFu
	f5EFzsA7E9zHAlobKxRleMkAllBdbvuVhdYPZKdglOsw02qYQcJAq0QxVaUSN90ZHtr2YYz41MPeT
	Z7h9FQd42MEWRYA/TB5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqqj-0004WL-86; Wed, 14 Aug 2019 10:49:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqpy-0003iG-Mm
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:49:05 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 189B01A0384;
 Wed, 14 Aug 2019 12:48:56 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0BE661A037B;
 Wed, 14 Aug 2019 12:48:56 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0FDB02060E;
 Wed, 14 Aug 2019 12:48:55 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 00/15] Improvements and fixes for mxsfb DRM driver
Date: Wed, 14 Aug 2019 13:48:36 +0300
Message-Id: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034903_013778_20AD0302 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
aW5nClRoZSBhZGRpdGlvbiBvZiBtYXgtcmVzIERUIHByb3BlcnR5IHdhcyBhY3R1YWxseSBuZWVk
ZWQgaW4gb3JkZXIgdG8gbGltaXQKdGhlIGJhbmR3aWR0aCB1c2FnZSBvZiB0aGUgZUxDRElGIGJs
b2NrLiBUaGlzIGlzIG5lZWQgb24gc3lzdGVtcyB3aGVyZQptdWx0aXBsZSBkaXNwbGF5IGNvbnRy
b2xsZXJzIGFyZSBwcmVzZW5kIGFuZCB0aGUgbWVtb3J5IGJhbmR3aWR0aCBpcyBub3QKZW5vdWdo
IHRvIGhhbmRsZSBhbGwgb2YgdGhlbSBhdCBtYXhpbXVtIGNhcGFjaXR5IChsaWtlIGl0IGlzIHRo
ZSBjYXNlIG9uCjhNUSwgd2hlcmUgdGhlcmUgYXJlIHR3byBkaXNwbGF5IGNvbnRyb2xsZXJzOiBE
Q1NTIGFuZCBlTENESUYpLgpUaGUgcmVzdCBvZiB0aGUgcGF0Y2hlcyBhcmUgYnVnLWZpeGVzLgoK
djI6Ci0gQ29sbGVjdGVkIFRlc3RlZC1ieSBmcm9tIEd1aWRvCi0gU3BsaXQgdGhlIGZpcnN0IHBh
dGNoLCB3aGljaCBhZGRlZCBtb3JlIHRoYW4gb25lIGZlYXR1cmUgaW50byByZWxldmFudAogIHBh
dGNoZXMsIGV4cGxhaW5pbmcgZWFjaCBmZWF0dXJlIGFkZGVkCi0gQWxzbyBzcGxpdCB0aGUgc2Vj
b25kIHBhdGNoIGludG8gbW9yZSBwYXRjaGVzLCB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4KICB0
aGUgZmVhdHVyZSBpdHNlbGYgKGFkZGl0aW9uYWwgcGl4ZWwgZm9ybWF0cyBzdXBwb3J0KSBhbmQg
dGhlIGNsZWFudXAKICBvZiB0aGUgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgZm9yIGEgYmV0dGVyIHJl
cHJlc2VudGF0aW9uIChndWlkbykKLSBJbmNsdWRlZCBhIHBhdGNoIHN1Ym1pdHRlZCBieSBHdWlk
bywgd2hpbGUgaGUgd2FzIHRlc3RpbmcgbXkgcGF0Y2gtc2V0CgpHdWlkbyBHw7xudGhlciAoMSk6
CiAgZHJtL214c2ZiOiBSZWFkIGJ1cyBmbGFncyBmcm9tIGJyaWRnZSBpZiBwcmVzZW50CgpNaXJl
bGEgUmFidWxlYSAoMSk6CiAgZHJtL214c2ZiOiBTaWduYWwgbW9kZSBjaGFuZ2VkIHdoZW4gYnBw
IGNoYW5nZWQKClJvYmVydCBDaGlyYXMgKDEzKToKICBkcm0vbXhzZmI6IFVwZGF0ZSBteHNmYiB0
byBzdXBwb3J0IGEgYnJpZGdlCiAgZHJtL214c2ZiOiBBZGQgZGVmaW5lcyBmb3IgdGhlIHJlc3Qg
b2YgcmVnaXN0ZXJzCiAgZHJtL214c2ZiOiBSZXNldCB2aXRhbCByZWdpc3RlciBmb3IgYSBwcm9w
ZXIgaW5pdGlhbGl6YXRpb24KICBkcm0vbXhzZmI6IFVwZGF0ZSByZWdpc3RlciBkZWZpbml0aW9u
cyB1c2luZyBiaXQgbWFuaXB1bGF0aW9uIGRlZmluZXMKICBkcm0vbXhzZmI6IFVwZGF0ZSBteHNm
YiB3aXRoIGFkZGl0aW9uYWwgcGl4ZWwgZm9ybWF0cwogIGRybS9teHNmYjogRml4IHRoZSB2Ymxh
bmsgZXZlbnRzCiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IEFkZCBtYXgtcmVzIHByb3BlcnR5IGZv
ciBteHNmYgogIGRybS9teHNmYjogQWRkIG1heC1yZXMgcHJvcGVydHkgZm9yIE1YU0ZCCiAgZHJt
L214c2ZiOiBVcGRhdGUgbXhzZmIgdG8gc3VwcG9ydCBMQ0QgcmVzZXQKICBkcm0vbXhzZmI6IElt
cHJvdmUgdGhlIGF4aSBjbG9jayB1c2FnZQogIGRybS9teHNmYjogQ2xlYXIgT1VUU1RBTkRJTkdf
UkVRUyBiaXRzCiAgZHJtL214c2ZiOiBBZGQgc3VwcG9ydCBmb3IgaG9yaXpvbnRhbCBzdHJpZGUK
ICBkcm0vbXhzZmI6IEFkZCBzdXBwb3J0IGZvciBsaXZlIHBpeGVsIGZvcm1hdCBjaGFuZ2UKCiAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L214c2ZiLnR4dCAgICAgICAgICB8ICAgNiAr
CiBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jICAgICAgICAgICAgICAgICB8IDI4
NyArKysrKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9kcnYu
YyAgICAgICAgICAgICAgICAgIHwgMTkwICsrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0v
bXhzZmIvbXhzZmJfZHJ2LmggICAgICAgICAgICAgICAgICB8ICAxMCArLQogZHJpdmVycy9ncHUv
ZHJtL214c2ZiL214c2ZiX291dC5jICAgICAgICAgICAgICAgICAgfCAgMjYgKy0KIGRyaXZlcnMv
Z3B1L2RybS9teHNmYi9teHNmYl9yZWdzLmggICAgICAgICAgICAgICAgIHwgMTkzICsrKysrKysr
Ky0tLS0tCiA2IGZpbGVzIGNoYW5nZWQsIDU3MyBpbnNlcnRpb25zKCspLCAxMzkgZGVsZXRpb25z
KC0pCgotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
