Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCF848619
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GmkSNrKW2E98WV0gYsfgJo+gaRSNaYA08jm2B+FvD+A=; b=SczZ2rQvZQfo9o
	Jiesah+zVYI4kt8N7Edh2gDY05RuJ8v4zCqF1txjbLByOpo5Z+x94eA6ypT9q5s+eM0wSxA7Dz+kT
	hc4KUZzg0E9v5/7FEHF1YHP7ZwBnG1v3OD3LarSo90Yt85EJDNYlKaoLzQ7ugpHgrK8T5gKVWpvUT
	n/Oz5JzfcZqmaR08BcQUpGVzKTYFpC7gQwowu+9G0f9QAXjzBLO5bVzgYKHFI6WXnKGdyqz6KOCOF
	egbGJG63N9zGrJK7+KHFsXdsJXVF00KuRqOhyTrvARGqPZ8a3Argfz2O4Ln9VYkbkWRh1CShPl3ta
	jWFnOZELT/PPH+bW7oSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcszn-000532-R0; Mon, 17 Jun 2019 14:52:31 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszG-0004rY-FW
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:00 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A290EC000D;
 Mon, 17 Jun 2019 14:51:43 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 00/12] drm/vc4: Allow for more boot-time configuration
Date: Mon, 17 Jun 2019 16:51:27 +0200
Message-Id: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075158_947712_E574CB5B 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
TGV0IG1lIGtub3cgd2hhdCB5b3UgdGhpbmssCk1heGltZQoKQ2hhbmdlcyBmcm9tIHY0OgogIC0g
Q2hhbmdlIHRoZSBuYW1lIG9mIHRoZSB2YXJpYWJsZSB0byBtYWtlIGl0IGNsZWFyIGl0J3MgYWJv
dXQgcmVmbGVjdGlvbgogICAgYW5kIHJvdGF0aW9uLgogIC0gRml4IHRoZSByZWZsZWN0aW9uIGNh
c2UgaW4gZHJtX2NsaWVudF9yb3RhdGlvbgogIC0gRml4IHRoZSBkb2N1bWVudGF0aW9uIGFjY29y
ZGluZ2x5CiAgLSBBZGRlZCBtaXNzaW5nIG1vZGVkYi5yc3QgZG9jdW1lbnRhdGlvbgogIC0gRml4
IGEgY2h1bmsgbm90IGluIHRoZSBwcm9wZXIgY29tbWl0CiAgLSBGaXggYSBmZXcgdHlwb3MKICAt
IFJlYmFzZWQgb24gdG9wIG9mIGN1cnJlbnQgbmV4dAoKQ2hhbmdlcyBmcm9tIHYzOgogIC0gQWRk
IGRvY3VtZW50YXRpb24gZm9yIGRybV9jbWRsaW5lX21vZGUgYW5kIHRoZSBuZXcgdmFyaWFibGVz
CiAgLSBNb3ZlIHRoZSBUViBwcm9wZXJ0aWVzIHJlc2V0IHRvIGEgaGVscGVyCiAgLSBGaXggYSBt
aXNzaW5nIFggcmVzb2x1dGlvbiBvciBhIG1pc3NpbmcgWSByZXNvbHV0aW9uCiAgLSBBZGQgbW9y
ZSB0ZXN0cwogIC0gQWRkIHRoZSByb3RhdGlvbiB0byB0aGUgb3JpZW50YXRpb24KICAtIEZpeCB0
aGUgcmVmbGVjdGlvbgogIC0gQ2hhbmdlIHRoZSBuYW1lIG9mIHRoZSBkcm1fY2xpZW50X3BhbmVs
X3JvdGF0aW9uIGZ1bmN0aW9uCiAgLSBSZWJhc2VkIG9uIHRvcCBvZiBjdXJyZW50IG5leHQKCkNo
YW5nZXMgZnJvbSB2MjoKICAtIEZpeGVkIHNvbWUgc3BhcnNlIHdhcm5pbmdzCiAgLSBSZWJhc2Vk
IG9uIHRvcCBvZiBuZXh0IGFuZCBOb3JhbGYgc2VyaWVzCiAgLSBNb3ZlZCB0aGUgcHJvcGVydHkg
aW5pdGlhbGlzYXRpb24gdG8gdmM0IHJlc2V0IGhvb2sKICAtIEFkZGVkIGRvY3VtZW50YXRpb24g
Zm9yIHRoZSBuZXcgZHJtX2NtZGxpbmVfbW9kZQogIC0gUmVuYW1lZCBvdmVyc2NhbiB0byB0dl9t
YXJnaW5zIHRvIGJlIGNvbnNpc3RlbnQgd2l0aCB0aGUgQVBJcwoKQ2hhbmdlcyBmcm9tIHYxOgog
IC0gRHJvcHBlZCB0aGUgcGF0Y2hlcyB0byBkZWFsIHdpdGggRURJRAogIC0gQWRkZWQgdGhlIHVu
aXQgdGVzdCBhcyBzZWxmdGVzdAogIC0gUmViYXNlZCBvbiBuZXh0CgpNYXhpbWUgUmlwYXJkICgx
Mik6CiAgZHJtL2Nvbm5lY3RvcjogQWRkIGRvY3VtZW50YXRpb24gZm9yIGRybV9jbWRsaW5lX21v
ZGUKICBkcm0vY2xpZW50OiBSZXN0cmljdCB0aGUgcGxhbmVfc3RhdGUgc2NvcGUKICBkcm0vY2xp
ZW50OiBSZXN0cmljdCB0aGUgcm90YXRpb24gY2hlY2sgdG8gdGhlIHJvdGF0aW9uIGl0c2VsZgog
IGRybS9jbGllbnQ6IENoYW5nZSBkcm1fY2xpZW50X3BhbmVsX3JvdGF0aW9uIG5hbWUKICBkcm0v
bW9kZXM6IFJld3JpdGUgdGhlIGNvbW1hbmQgbGluZSBwYXJzZXIKICBkcm0vbW9kZXM6IFN1cHBv
cnQgbW9kZXMgbmFtZXMgb24gdGhlIGNvbW1hbmQgbGluZQogIGRybS9tb2RlczogQWxsb3cgdG8g
c3BlY2lmeSByb3RhdGlvbiBhbmQgcmVmbGVjdGlvbiBvbiB0aGUgY29tbWFuZGxpbmUKICBkcm0v
Y29ubmVjdG9yOiBJbnRyb2R1Y2UgYSBUViBtYXJnaW5zIHN0cnVjdHVyZQogIGRybS9tb2Rlczog
UGFyc2Ugb3ZlcnNjYW4gcHJvcGVydGllcwogIGRybS9hdG9taWM6IEFkZCBhIGZ1bmN0aW9uIHRv
IHJlc2V0IGNvbm5lY3RvciBUViBwcm9wZXJ0aWVzCiAgZHJtL3NlbGZ0ZXN0czogQWRkIGNvbW1h
bmQgbGluZSBwYXJzZXIgc2VsZnRlc3RzCiAgZHJtL3ZjNDogaGRtaTogU2V0IGRlZmF1bHQgc3Rh
dGUgbWFyZ2luIGF0IHJlc2V0CgogRG9jdW1lbnRhdGlvbi9mYi9tb2RlZGIucnN0ICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDEzICstCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19zdGF0
ZV9oZWxwZXIuYyAgICAgICAgICAgfCAgMTggKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50
X21vZGVzZXQuYyAgICAgICAgICAgICAgICB8ICA1NCArLQogZHJpdmVycy9ncHUvZHJtL2RybV9j
b25uZWN0b3IuYyAgICAgICAgICAgICAgICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0v
ZHJtX2ZiX2hlbHBlci5jICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9kcm1fbW9kZXMuYyAgICAgICAgICAgICAgICAgICAgICAgICB8IDQ3MyArKysrKy0tCiBk
cml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgfCAgIDIg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvZHJtX2NtZGxpbmVfc2VsZnRlc3RzLmggICB8
ICA1NSArLQogZHJpdmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy90ZXN0LWRybV9jbWRsaW5lX3BhcnNl
ci5jIHwgOTE4ICsrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9oZG1pLmMg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDggKy0KIGluY2x1ZGUvZHJtL2RybV9hdG9taWNfc3Rh
dGVfaGVscGVyLmggICAgICAgICAgICAgICB8ICAgMSArLQogaW5jbHVkZS9kcm0vZHJtX2NsaWVu
dC5oICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBpbmNsdWRlL2RybS9kcm1f
Y29ubmVjdG9yLmggICAgICAgICAgICAgICAgICAgICAgICAgfCAxNDkgKy0KIDEzIGZpbGVzIGNo
YW5nZWQsIDE1NTcgaW5zZXJ0aW9ucygrKSwgMTQxIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvZHJtX2NtZGxpbmVfc2VsZnRlc3RzLmgK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL3Rlc3QtZHJtX2Nt
ZGxpbmVfcGFyc2VyLmMKCmJhc2UtY29tbWl0OiBhMTI1MDk3Yzg0MTAzOWRlZWY5ZGQ1ODliODY0
NjdmN2QyMGY0YjNkCi0tIApnaXQtc2VyaWVzIDAuOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
