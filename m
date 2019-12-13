Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B41E11E9C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IpBZ8C3pD1e5IG920t6m+0Dd7z0/ogfIgAKl0yZ67NY=; b=mhJtCKJA+e1f8U
	YevM1tK0EP1BW1Iz4ql4mWTxIHaZ5Gst0+U/+6xsRF3Hh2VPzQrClPYa2pSTD2eaB2IM6XFeh5VFf
	cMsfdrxv3ISI6ypGiNUf5qiSUC6M0+Eq/g03RDml5lT5G6sGHqB8aWbgNj7RRXrGd0goI/pWeXiYc
	ZDKRv3rBnZRtaFfRdYnetAi5noBrALcKN73IddHnq7LBkw2toXQKwFSw0oX3H2CkwXIWii3I6oZUQ
	YIaRRaPWFW2ZFzc80FaFXeLliFKy+lQD7nIv7sr01uSOA2I9LHUmyqcuWY9qsjk8irlsxuLL0ZkRT
	fP4dEW1ZrYve4sJQPdyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpPG-0008Mf-HS; Fri, 13 Dec 2019 18:11:14 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpP3-0008LM-VN; Fri, 13 Dec 2019 18:11:03 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id F2189200009;
 Fri, 13 Dec 2019 18:10:52 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 00/12] Add PX30 LVDS support
Date: Fri, 13 Dec 2019 19:10:39 +0100
Message-Id: <20191213181051.25983-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_101102_146898_BDD45752 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
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
LApNaXF1w6hsCgpNaXF1ZWwgUmF5bmFsICgxMik6CiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IHJv
Y2tjaGlwLWx2ZHM6IERlY2xhcmUgUFgzMCBjb21wYXRpYmxlCiAgZHQtYmluZGluZ3M6IGRpc3Bs
YXk6IHJvY2tjaGlwLWx2ZHM6IERvY3VtZW50IFBYMzAgUEhZCiAgZHJtL3JvY2tjaGlwOiBsdmRz
OiBGaXggaW5kZW50YXRpb24gb2YgYSAjZGVmaW5lCiAgZHJtL3JvY2tjaGlwOiBsdmRzOiBIYXJt
b25pemUgZnVuY3Rpb24gbmFtZXMKICBkcm0vcm9ja2NoaXA6IGx2ZHM6IENoYW5nZSBwbGF0Zm9y
bSBkYXRhCiAgZHJtL3JvY2tjaGlwOiBsdmRzOiBDcmVhdGUgYW4gUkszMjg4IHNwZWNpZmljIHBy
b2JlIGZ1bmN0aW9uCiAgZHJtL3JvY2tjaGlwOiBsdmRzOiBIZWxwZXJzIHNob3VsZCByZXR1cm4g
ZGVjZW50IHZhbHVlcwogIGRybS9yb2NrY2hpcDogbHZkczogUGFjayBmdW5jdGlvbnMgdG9nZXRo
ZXIKICBkcm0vcm9ja2NoaXA6IGx2ZHM6IEFkZCBQWDMwIHN1cHBvcnQKICBhcm02NDogZHRzOiBy
b2NrY2hpcDogQWRkIFBYMzAgQ1JUQ3MgZ3JhcGggTFZEUyBlbmRwb2ludHMKICBhcm02NDogZHRz
OiByb2NrY2hpcDogQWRkIFBYMzAgRFNJIERQSFkKICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRk
IFBYMzAgTFZEUwoKIC4uLi9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLWx2ZHMudHh0ICAgICAg
ICB8ICAgNCArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaSAgICAgICAg
fCAgNTggKysKIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMgICAgICB8
IDUxNiArKysrKysrKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9sdmRzLmggICAgICB8ICAxOSArLQogNCBmaWxlcyBjaGFuZ2VkLCA0NDEgaW5zZXJ0aW9ucygr
KSwgMTU2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
