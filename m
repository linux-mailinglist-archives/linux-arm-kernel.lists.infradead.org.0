Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AB112A271
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gZVb8/u/A9XEQNyI4kEepFFiMagPWMwilOHHaiK2tSA=; b=VEnwqMn/MQfZvf
	hMOVdJCT3sTSHXLACH4v2QfA0Nknnab+9DkWLd/yAu9HPbQoRP/UKW1XIMGKTCTlEq3O0QwXe8dDZ
	k6P9Ir5Guarwa7AQCvvoAXHy5nMGGcYn2MfEd38GXRlsFGLXAk7hRA9+ix9t2ZEY6KYjC+KM6F5t0
	Rqu5/+jYEFe5FiM3694GFa7fCu/HXW+B2Hp65CqcykgKdYDX1ugj66uMfFyVRYIzkjwJKRVicnlbO
	N8kcwSVtAh6IIxAqDsdSb/l7UdXawZWKHlOSMGlWtQHIiTxw7bYM8qR7Ih2SMP2seILYLwzseTgUa
	ebu+2qzXajT+yIFfocgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlLg-00023j-UI; Tue, 24 Dec 2019 14:39:48 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlL7-0001hm-Mq; Tue, 24 Dec 2019 14:39:15 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 80D8FE0003;
 Tue, 24 Dec 2019 14:39:01 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH v2 00/11] Add PX30 LVDS support
Date: Tue, 24 Dec 2019 15:38:49 +0100
Message-Id: <20191224143900.23567-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063913_881931_F089AA9E 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhaW1zIGF0IHN1cHBvcnRpbmcgTFZEUyBvbiBQWDMwLgoKQSBm
aXJzdCBjb3VwbGUgb2YgcGF0Y2hlcyB1cGRhdGUgdGhlIGRvY3VtZW50YXRpb24gd2l0aCB0aGUg
bmV3CmNvbXBhdGlibGUgYW5kIHRoZSBwcmVzZW5jZSBvZiBhIFBIWS4gVGhlbiwgdGhlIGV4aXN0
aW5nIFJvY2tjaGlwCmRyaXZlciBpcyBjbGVhbmVkIGFuZCBleHRlbmRlZCB0byBzdXBwb3J0IFBY
MzAgc3BlY2lmaWNpdGllcy4gRmluYWxseSwKdGhlIFBYMzAgRFRTSSBpcyB1cGRhdGVkIHdpdGgg
Q1JUQyByb3V0ZXMsIHRoZSBEU0kgRFBIWSBhbmQgdGhlIExWRFMKSVAgaXRzZWxmLgoKQ2hlZXJz
LApNaXF1w6hsCgpDaGFuZ2VzIHNpbmNlIHYxOgoqIEFkZGVkIFJvYidzIEFjay4KKiBVc2VkICJt
dXN0IiBpbnN0ZWFkIG9mICJzaG91bGQiIGluIHRoZSBiaW5kaW5ncy4KKiBQcmVjaXNlZCB0aGF0
IHBoeS1uYW1lcyBpcyBhbiBvcHRpb25hbCBwcm9wZXJ0eSBpbiB0aGUgY2FzZSBvZgogIFBYMzAu
CiogUmVuYW1lZCB0aGUgV1JJVEVfRU4gbWFjcm8gaW50byBISVdPUkRfVVBEQVRFIHRvIGJlIGFs
aWduZWQgd2l0aAogIG90aGVyIGZpbGVzLgoqIFJlbW92ZWQgZXh0cmEgY29uZmlndXJhdGlvbiwg
bm90IG5lZWRlZCBmb3IgZ2VuZXJpYyBwYW5lbHMgKHNlZQogIFNhbmR5IEh1YW5nIGFuc3dlciku
CiogRHJvcHBlZCB0aGUgZGlzcGxheS1zdWJzeXN0ZW0gcm91dGVzICh1c2VsZXNzKS4KKiBNZXJn
ZWQgdHdvIHBhdGNoZXMgdG8gYXZvaWQgcGhhbmRsZSBpbnRlcmRlcGVuZGVuY2llcyBpbiBncmFw
aHMgYW5kCiAgaW50ZXJtZWRpYXRlIGJ1aWxkIGVycm9ycy4KCk1pcXVlbCBSYXluYWwgKDExKToK
ICBkdC1iaW5kaW5nczogZGlzcGxheTogcm9ja2NoaXAtbHZkczogRGVjbGFyZSBQWDMwIGNvbXBh
dGlibGUKICBkdC1iaW5kaW5nczogZGlzcGxheTogcm9ja2NoaXAtbHZkczogRG9jdW1lbnQgUFgz
MCBQSFkKICBkcm0vcm9ja2NoaXA6IGx2ZHM6IEZpeCBpbmRlbnRhdGlvbiBvZiBhICNkZWZpbmUK
ICBkcm0vcm9ja2NoaXA6IGx2ZHM6IEhhcm1vbml6ZSBmdW5jdGlvbiBuYW1lcwogIGRybS9yb2Nr
Y2hpcDogbHZkczogQ2hhbmdlIHBsYXRmb3JtIGRhdGEKICBkcm0vcm9ja2NoaXA6IGx2ZHM6IENy
ZWF0ZSBhbiBSSzMyODggc3BlY2lmaWMgcHJvYmUgZnVuY3Rpb24KICBkcm0vcm9ja2NoaXA6IGx2
ZHM6IEhlbHBlcnMgc2hvdWxkIHJldHVybiBkZWNlbnQgdmFsdWVzCiAgZHJtL3JvY2tjaGlwOiBs
dmRzOiBQYWNrIGZ1bmN0aW9ucyB0b2dldGhlcgogIGRybS9yb2NrY2hpcDogbHZkczogQWRkIFBY
MzAgc3VwcG9ydAogIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUFgzMCBEU0kgRFBIWQogIGFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUFgzMCBMVkRTCgogLi4uL2Rpc3BsYXkvcm9ja2NoaXAv
cm9ja2NoaXAtbHZkcy50eHQgICAgICAgIHwgICA0ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcHgzMC5kdHNpICAgICAgICB8ICA0OCArKwogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2x2ZHMuYyAgICAgIHwgNDg2ICsrKysrKysrKysrKy0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuaCAgICAgIHwgIDE5ICstCiA0IGZpbGVzIGNo
YW5nZWQsIDQwMSBpbnNlcnRpb25zKCspLCAxNTYgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
