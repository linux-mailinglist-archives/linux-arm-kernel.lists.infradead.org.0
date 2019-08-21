Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D9D976CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:18:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bnw91g+I/0GKpaQ+NTnc0m03nzKQWOeHubZEDSsCvaM=; b=EOLJ4b4N7QAfl1
	+12khFamyyLkd6XoG8R8Yv+Hr4iokbtvQDBYhwnTwF1hCZt02NAAtpvWmIfSNxl0JU2FVqyBZT4nh
	iPbmr2LEqEdhaji4pKjUgllBwF2cqPXmFTDFuGQgm+3b8T+qlN4yqfv44b+Vu+UacD+zsFco8QjnT
	YrFrWWtL3h5K9gXJGCquuX5svn5ZamWKLaBgGxeH4HzUBeISXqqa2+dmdbb1b8VULq2MpY2ewwZcn
	YPCqT8WIrWBDKuTjA65nnlgt4ps80y842oj821KYGs2W4BKGd7Nx5mgCZ2unYAuCkgGWV1c83Jd6i
	xCL7Utatr2LqybIDRCXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NhF-00039l-Tb; Wed, 21 Aug 2019 10:18:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NfB-00024j-B8
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:16:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0BD2F200516;
 Wed, 21 Aug 2019 12:16:16 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F2915200508;
 Wed, 21 Aug 2019 12:16:15 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 13BC22061D;
 Wed, 21 Aug 2019 12:16:15 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 00/15] Improvements and fixes for mxsfb DRM driver
Date: Wed, 21 Aug 2019 13:15:40 +0300
Message-Id: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_031621_655320_B7CBFEC6 
X-CRM114-Status: GOOD (  15.11  )
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
aW5nClRoZSBhZGRpdGlvbiBvZiBtYXgtcmVzIERUIHByb3BlcnR5IHdhcyBhY3R1YWxseSBuZWVk
ZWQgaW4gb3JkZXIgdG8gbGltaXQKdGhlIGJhbmR3aWR0aCB1c2FnZSBvZiB0aGUgZUxDRElGIGJs
b2NrLiBUaGlzIGlzIG5lZWQgb24gc3lzdGVtcyB3aGVyZQptdWx0aXBsZSBkaXNwbGF5IGNvbnRy
b2xsZXJzIGFyZSBwcmVzZW5kIGFuZCB0aGUgbWVtb3J5IGJhbmR3aWR0aCBpcyBub3QKZW5vdWdo
IHRvIGhhbmRsZSBhbGwgb2YgdGhlbSBhdCBtYXhpbXVtIGNhcGFjaXR5IChsaWtlIGl0IGlzIHRo
ZSBjYXNlIG9uCjhNUSwgd2hlcmUgdGhlcmUgYXJlIHR3byBkaXNwbGF5IGNvbnRyb2xsZXJzOiBE
Q1NTIGFuZCBlTENESUYpLgpUaGUgcmVzdCBvZiB0aGUgcGF0Y2hlcyBhcmUgYnVnLWZpeGVzLgoK
djM6Ci0gUmVtb3ZlZCB0aGUgbWF4LXJlcyBwcm9wZXJ0eSBwYXRjaGVzIGFuZCBhZGRlZCBzdXBw
b3J0IGZvcgogIG1heC1tZW1vcnktYmFuZHdpZHRoIHByb3BlcnR5LCBhcyBpdCBpcyBhbHNvIGlt
cGxlbWVudGVkIGluIG90aGVyIGRyaXZlcnMKLSBSZW1vdmVkIHVubmVjZXNzYXJ5IGRybV92Ymxh
bmtfb2ZmIGluIHByb2JlCgp2MjoKLSBDb2xsZWN0ZWQgVGVzdGVkLWJ5IGZyb20gR3VpZG8KLSBT
cGxpdCB0aGUgZmlyc3QgcGF0Y2gsIHdoaWNoIGFkZGVkIG1vcmUgdGhhbiBvbmUgZmVhdHVyZSBp
bnRvIHJlbGV2YW50CiAgcGF0Y2hlcywgZXhwbGFpbmluZyBlYWNoIGZlYXR1cmUgYWRkZWQKLSBB
bHNvIHNwbGl0IHRoZSBzZWNvbmQgcGF0Y2ggaW50byBtb3JlIHBhdGNoZXMsIHRvIGRpZmZlcmVu
dGlhdGUgYmV0d2VlbgogIHRoZSBmZWF0dXJlIGl0c2VsZiAoYWRkaXRpb25hbCBwaXhlbCBmb3Jt
YXRzIHN1cHBvcnQpIGFuZCB0aGUgY2xlYW51cAogIG9mIHRoZSByZWdpc3RlciBkZWZpbml0aW9u
cyBmb3IgYSBiZXR0ZXIgcmVwcmVzZW50YXRpb24gKGd1aWRvKQotIEluY2x1ZGVkIGEgcGF0Y2gg
c3VibWl0dGVkIGJ5IEd1aWRvLCB3aGlsZSBoZSB3YXMgdGVzdGluZyBteSBwYXRjaC1zZXQKCkd1
aWRvIEfDvG50aGVyICgxKToKICBkcm0vbXhzZmI6IFJlYWQgYnVzIGZsYWdzIGZyb20gYnJpZGdl
IGlmIHByZXNlbnQKCk1pcmVsYSBSYWJ1bGVhICgxKToKICBkcm0vbXhzZmI6IFNpZ25hbCBtb2Rl
IGNoYW5nZWQgd2hlbiBicHAgY2hhbmdlZAoKUm9iZXJ0IENoaXJhcyAoMTMpOgogIGRybS9teHNm
YjogVXBkYXRlIG14c2ZiIHRvIHN1cHBvcnQgYSBicmlkZ2UKICBkcm0vbXhzZmI6IEFkZCBkZWZp
bmVzIGZvciB0aGUgcmVzdCBvZiByZWdpc3RlcnMKICBkcm0vbXhzZmI6IFJlc2V0IHZpdGFsIHJl
Z2lzdGVycyBmb3IgYSBwcm9wZXIgaW5pdGlhbGl6YXRpb24KICBkcm0vbXhzZmI6IFVwZGF0ZSBy
ZWdpc3RlciBkZWZpbml0aW9ucyB1c2luZyBiaXQgbWFuaXB1bGF0aW9uIGRlZmluZXMKICBkcm0v
bXhzZmI6IFVwZGF0ZSBteHNmYiB3aXRoIGFkZGl0aW9uYWwgcGl4ZWwgZm9ybWF0cwogIGRybS9t
eHNmYjogRml4IHRoZSB2YmxhbmsgZXZlbnRzCiAgZHJtL214c2ZiOiBBZGQgbWF4LW1lbW9yeS1i
YW5kd2lkdGggcHJvcGVydHkgZm9yIE1YU0ZCCiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IEFkZCBt
YXgtbWVtb3J5LWJhbmR3aWR0aCBwcm9wZXJ0eSBmb3IgbXhzZmIKICBkcm0vbXhzZmI6IFVwZGF0
ZSBteHNmYiB0byBzdXBwb3J0IExDRCByZXNldAogIGRybS9teHNmYjogSW1wcm92ZSB0aGUgYXhp
IGNsb2NrIHVzYWdlCiAgZHJtL214c2ZiOiBDbGVhciBPVVRTVEFORElOR19SRVFTIGJpdHMKICBk
cm0vbXhzZmI6IEFkZCBzdXBwb3J0IGZvciBob3Jpem9udGFsIHN0cmlkZQogIGRybS9teHNmYjog
QWRkIHN1cHBvcnQgZm9yIGxpdmUgcGl4ZWwgZm9ybWF0IGNoYW5nZQoKIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Rpc3BsYXkvbXhzZmIudHh0ICAgICAgICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1
L2RybS9teHNmYi9teHNmYl9jcnRjLmMgICAgICAgICAgICAgICAgIHwgMjg3ICsrKysrKysrKysr
KysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2Rydi5jICAgICAgICAgICAg
ICAgICAgfCAyMDMgKysrKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJf
ZHJ2LmggICAgICAgICAgICAgICAgICB8ICAxMiArLQogZHJpdmVycy9ncHUvZHJtL214c2ZiL214
c2ZiX291dC5jICAgICAgICAgICAgICAgICAgfCAgMjYgKy0KIGRyaXZlcnMvZ3B1L2RybS9teHNm
Yi9teHNmYl9yZWdzLmggICAgICAgICAgICAgICAgIHwgMTkzICsrKysrKysrKy0tLS0tCiA2IGZp
bGVzIGNoYW5nZWQsIDU4OSBpbnNlcnRpb25zKCspLCAxMzcgZGVsZXRpb25zKC0pCgotLSAKMi43
LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
