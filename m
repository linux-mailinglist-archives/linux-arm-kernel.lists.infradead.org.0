Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A9A45C77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UC82AXcoKh60EUGcDbWEDqaNOTNOnAlQVPd6CZE2b6A=; b=IEqGF5wEw6p6re
	Z6xS6sUzRBnC6HEU7hWOmjdzwe5CUg/zrAvvQWKrfAkKw5umOdrxdK9uDd+yLWF6TIobOh0TC7ovo
	OXZn3GgzmmB3vhiUZTt8M26gxnb+ESMp8Rw17ZrjLwOViLpGEBZ94quN7iFyVdZbGdWEugGeSEBVF
	ku/+DXiw8SNmWmCXyzxnnsDvW9fYcRzL/YtqgQUZNnGnZ833exU6i5+8JrPY+7wDW4xlocLPzAIfa
	ZEGompYjU8n0k72HuohbjZU0H80e4ZGqIjx0FRBW73Kkolf3hSa1dtMM/exJRm+sRqsFor5FZBp2U
	3MdOyCN3WLYmtwZhK44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl7n-0007Mm-2I; Fri, 14 Jun 2019 12:16:07 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl5K-0004CU-6O
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:13:38 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 153E340004;
 Fri, 14 Jun 2019 12:13:21 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v4 00/12] drm/vc4: Allow for more boot-time configuration
Date: Fri, 14 Jun 2019 14:13:07 +0200
Message-Id: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051335_111366_BD319447 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGUgcHJvcHJpZXRhcnkgc3RhY2sgZm9yIHRoZSBSYXNwYmVycnlQaSBhbGxvd3MgZm9y
IGEgbnVtYmVyIG9mIHZpZGVvCnBhcmFtZXRlcnMgd2lkZWx5IHVzZWQgYnkgdGhlaXIgdXNlcnMs
IGJ1dCB5ZXQgZG9uJ3QgaGF2ZSBhbnkgZXF1aXZhbGVudHMKaW4gdGhlIG1haW5saW5lIGtlcm5l
bC4KClRob3NlIG9wdGlvbnMgYXJlIGRldGFpbGVkIGhlcmU6Cmh0dHBzOi8vd3d3LnJhc3BiZXJy
eXBpLm9yZy9kb2N1bWVudGF0aW9uL2NvbmZpZ3VyYXRpb24vY29uZmlnLXR4dC92aWRlby5tZAoK
V2hpbGUgbm90IGFsbCBvZiB0aGVtIGFyZSBkZXNpcmFibGUgdG8gaGF2ZSBpbiB0aGUgbWFpbmxp
bmUga2VybmVsLCBzb21lIG9mCnRoZW0gc3RpbGwgaGF2ZSB2YWx1ZSwgc3VjaCBhcyBwcm9wZXJ0
aWVzIHRvIGluaXRpYWxpc2UgdGhlIG92ZXJzY2FuIG9yCnJvdGF0aW9uIHBhcmFtZXRlcnMuCgpU
aGlzIHNlcmllcyBpcyBhbiBhdHRlbXB0IHRvIHN1cHBvcnQgdGhvc2UsIGFuZCBpcyBiYXNlZCBv
biBhIHJld3JpdGUgb2YKdGhlIGNvbW1hbmQgbGluZSBwYXJzZXIgSSBkaWQgYSBjb3VwbGUgb2Yg
eWVhcnMgYWdvIHRoYXQgbmV2ZXIgcmVhY2hlZAp1cHN0cmVhbSAoZHVlIHRvIGEgbGFjayBvZiB0
aW1lIG9uIG15IHNpZGUpLiBXaGlsZSB0aGlzIHBhcnNlciB3YXMKaW5pdGlhbGx5IG1hZGUgdG8g
ZGVhbCB3aXRoIG5hbWVkIG1vZGVzIChpbiBvcmRlciB0byBzdXBwb3J0IFRWIG1vZGVzKSwgaXQK
YWxzbyBhbGxvd2VkIHRvIGV4dGVuZCBpdCBtb3JlIGVhc2lseSwgd2hpY2ggaXMgd2h5IGl0J3Mg
cmVzdXJyZWN0ZWQuCgpJdCByZWxpZXMgb24gdGhlIHNlcmllcyAiZHJtL2ZiLWhlbHBlcjogTW92
ZSBtb2Rlc2V0dGluZyBjb2RlIHRvCmRybV9jbGllbnQiIGJ5IE5vcmFsZiBUcsO4bm5lcyBmb3Vu
ZCBoZXJlOgpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU4NTk4LwoK
TGV0IG1lIGtub3cgd2hhdCB5b3UgdGhpbmssCk1heGltZQoKQ2hhbmdlcyBmcm9tIHYzOgogIC0g
QWRkIGRvY3VtZW50YXRpb24gZm9yIGRybV9jbWRsaW5lX21vZGUgYW5kIHRoZSBuZXcgdmFyaWFi
bGVzCiAgLSBNb3ZlIHRoZSBUViBwcm9wZXJ0aWVzIHJlc2V0IHRvIGEgaGVscGVyCiAgLSBGaXgg
YSBtaXNzaW5nIFggcmVzb2x1dGlvbiBvciBhIG1pc3NpbmcgWSByZXNvbHV0aW9uCiAgLSBBZGQg
bW9yZSB0ZXN0cwogIC0gQWRkIHRoZSByb3RhdGlvbiB0byB0aGUgb3JpZW50YXRpb24KICAtIEZp
eCB0aGUgcmVmbGVjdGlvbgogIC0gQ2hhbmdlIHRoZSBuYW1lIG9mIHRoZSBkcm1fY2xpZW50X3Bh
bmVsX3JvdGF0aW9uIGZ1bmN0aW9uCiAgLSBSZWJhc2VkIG9uIHRvcCBvZiBjdXJyZW50IG5leHQK
CkNoYW5nZXMgZnJvbSB2MjoKICAtIEZpeGVkIHNvbWUgc3BhcnNlIHdhcm5pbmdzCiAgLSBSZWJh
c2VkIG9uIHRvcCBvZiBuZXh0IGFuZCBOb3JhbGYgc2VyaWVzCiAgLSBNb3ZlZCB0aGUgcHJvcGVy
dHkgaW5pdGlhbGlzYXRpb24gdG8gdmM0IHJlc2V0IGhvb2sKICAtIEFkZGVkIGRvY3VtZW50YXRp
b24gZm9yIHRoZSBuZXcgZHJtX2NtZGxpbmVfbW9kZQogIC0gUmVuYW1lZCBvdmVyc2NhbiB0byB0
dl9tYXJnaW5zIHRvIGJlIGNvbnNpc3RlbnQgd2l0aCB0aGUgQVBJcwoKQ2hhbmdlcyBmcm9tIHYx
OgogIC0gRHJvcHBlZCB0aGUgcGF0Y2hlcyB0byBkZWFsIHdpdGggRURJRAogIC0gQWRkZWQgdGhl
IHVuaXQgdGVzdCBhcyBzZWxmdGVzdAogIC0gUmViYXNlZCBvbiBuZXh0CgpNYXhpbWUgUmlwYXJk
ICgxMik6CiAgZHJtL2Nvbm5lY3RvcjogQWRkIGRvY3VtZW50YXRpb24gZm9yIGRybV9jbWRsaW5l
X21vZGUKICBkcm0vY2xpZW50OiBSZXN0cmljdCB0aGUgcGxhbmVfc3RhdGUgc2NvcGUKICBkcm0v
Y2xpZW50OiBSZXN0cmljdCB0aGUgcm90YXRpb24gY2hlY2sgdG8gdGhlIHJvdGF0aW9uIGl0c2Vs
ZgogIGRybS9jbGllbnQ6IENoYW5nZSBkcm1fY2xpZW50X3BhbmVsX3JvdGF0aW9uIG5hbWUKICBk
cm0vbW9kZXM6IFJld3JpdGUgdGhlIGNvbW1hbmQgbGluZSBwYXJzZXIKICBkcm0vbW9kZXM6IFN1
cHBvcnQgbW9kZXMgbmFtZXMgb24gdGhlIGNvbW1hbmQgbGluZQogIGRybS9tb2RlczogQWxsb3cg
dG8gc3BlY2lmeSByb3RhdGlvbiBhbmQgcmVmbGVjdGlvbiBvbiB0aGUgY29tbWFuZGxpbmUKICBk
cm0vY29ubmVjdG9yOiBJbnRyb2R1Y2UgYSBUViBtYXJnaW5zIHN0cnVjdHVyZQogIGRybS9hdG9t
aWM6IEFkZCBhIGZ1bmN0aW9uIHRvIHJlc2V0IGNvbm5lY3RvciBUViBwcm9wZXJ0aWVzCiAgZHJt
L21vZGVzOiBQYXJzZSBvdmVyc2NhbiBwcm9wZXJ0aWVzCiAgZHJtL3NlbGZ0ZXN0czogQWRkIGNv
bW1hbmQgbGluZSBwYXJzZXIgc2VsZnRlc3RzCiAgZHJtL3ZjNDogaGRtaTogU2V0IGRlZmF1bHQg
c3RhdGUgbWFyZ2luIGF0IHJlc2V0CgogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfc3RhdGVf
aGVscGVyLmMgICAgICAgICAgIHwgIDE4ICstCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9t
b2Rlc2V0LmMgICAgICAgICAgICAgICAgfCAgNDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY29u
bmVjdG9yLmMgICAgICAgICAgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2Ry
bV9mYl9oZWxwZXIuYyAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX21vZGVzLmMgICAgICAgICAgICAgICAgICAgICAgICAgfCA0NjkgKysrKystLQogZHJp
dmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgICAyICst
CiBkcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL2RybV9jbWRsaW5lX3NlbGZ0ZXN0cy5oICAgfCAg
NTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvdGVzdC1kcm1fY21kbGluZV9wYXJzZXIu
YyB8IDkxOCArKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfaGRtaS5jICAg
ICAgICAgICAgICAgICAgICAgIHwgICA4ICstCiBpbmNsdWRlL2RybS9kcm1fYXRvbWljX3N0YXRl
X2hlbHBlci5oICAgICAgICAgICAgICAgfCAgIDEgKy0KIGluY2x1ZGUvZHJtL2RybV9jbGllbnQu
aCAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogaW5jbHVkZS9kcm0vZHJtX2Nv
bm5lY3Rvci5oICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTQ4ICstCiAxMiBmaWxlcyBjaGFu
Z2VkLCAxNTI5IGluc2VydGlvbnMoKyksIDE0MSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL2RybV9jbWRsaW5lX3NlbGZ0ZXN0cy5oCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy90ZXN0LWRybV9jbWRs
aW5lX3BhcnNlci5jCgpiYXNlLWNvbW1pdDogMTEyM2EzMzEwZWQ2YWQyOTBiZTBmYTRmMmU5OTVh
N2Q2OGUxMDhlMgotLSAKZ2l0LXNlcmllcyAwLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
