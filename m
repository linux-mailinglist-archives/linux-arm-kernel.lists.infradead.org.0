Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F801D3330
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OwytWpFX1FGZZFyQijCoMV//5O0ySOOLyJ4LHBdce4=; b=psilI10SqF/7kJ
	cVBlQSvzNFiyABhCXLchPeUa6fV78dP4xpNT9bm2VoIsWsUIEIocSvvyGvWiwnk4AZe4eHuiiH7KU
	+lEn0uF88ANqf4gTirsksRGb0XvXEOVGFyyqJraH5dKgYq/ztf1EhQCsLUMJ9RERWHU+9q+yWOoAO
	WKU2wnzSjMQrR2HZQo2d/nhy0OVnOjAZslLAjAuNP6DGdFZqZRbdEugOQP8qA086pVzqpQLtJDslc
	Pg2EgW9xvzQ9O07v73ylfCtvzjV2vqhPGQXFPJrFLxjrnJyja6KmMVzp64bTIa9i2HgLgQ7S+RjYf
	0C3ioWyPT4TcjImAp+ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZF0G-00064j-TG; Thu, 14 May 2020 14:38:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEyU-0004tY-HP
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:36:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id DE0952A2EE9
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 4/4] drm/bridge: tfp410: Fix setup and hold time calculation
Date: Thu, 14 May 2020 16:36:12 +0200
Message-Id: <20200514143612.2094-5-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073638_714210_99A010C7 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHRmcDQxMCBoYXMgYSBkYXRhIGRlLXNrZXcgZmVhdHVyZSB0aGF0IGFsbG93cyB0aGUgdXNl
ciB0byBjb21wZW5zYXRlCnRoZSBza2V3IGJldHdlZW4gSURDSyBhbmQgdGhlIHBpeGVsIGRhdGEg
YW5kIGNvbnRyb2wgc2lnbmFscy4KCkluIHRoZSBkcml2ZXIsIHRoZSBzZXR1cCBhbmQgaG9sZCB0
aW1lcyBhcmUgY2FsY3VsYXRlZCBmcm9tIHRoZSBkZS1za2V3CnZhbHVlLiBUaGlzIHJldHJpZXZl
cyB0aGUgZGVza2V3IHZhbHVlIGZyb20gdGhlIERUIHVzaW5nIHRoZSBwcm9wZXIKZGF0YXR5cGUg
YW5kIHJhbmdlIGNoZWNrIGFzIGRlc2NyaWJlZCBieSB0aGUgYmluZGluZyAodTMyIGZyb20gMCB0
byA3KQphbmQgZml4ZXMgdGhlIGNhbGN1bGF0aW9uIG9mIHRoZSBzZXR1cCBhbmQgaG9sZCB0aW1l
cy4KClNpZ25lZC1vZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xs
YWJvcmEuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktdGZwNDEwLmMgfCAxMCAr
KysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktdGZwNDEwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL3RpLXRmcDQxMC5jCmluZGV4IGUzZWI2MzY0YzBmNy4uMjFkOTli
NGVhMGM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RpLXRmcDQxMC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktdGZwNDEwLmMKQEAgLTIyMCw3ICsyMjAsNyBA
QCBzdGF0aWMgaW50IHRmcDQxMF9wYXJzZV90aW1pbmdzKHN0cnVjdCB0ZnA0MTAgKmR2aSwgYm9v
bCBpMmMpCiAJc3RydWN0IGRldmljZV9ub2RlICplcDsKIAl1MzIgcGNsa19zYW1wbGUgPSAwOwog
CXUzMiBidXNfd2lkdGggPSAyNDsKLQlzMzIgZGVza2V3ID0gMDsKKwl1MzIgZGVza2V3ID0gMDsK
IAogCS8qIFN0YXJ0IHdpdGggZGVmYXVsdHMuICovCiAJKnRpbWluZ3MgPSB0ZnA0MTBfZGVmYXVs
dF90aW1pbmdzOwpAQCAtMjc0LDEyICsyNzQsMTIgQEAgc3RhdGljIGludCB0ZnA0MTBfcGFyc2Vf
dGltaW5ncyhzdHJ1Y3QgdGZwNDEwICpkdmksIGJvb2wgaTJjKQogCX0KIAogCS8qIEdldCB0aGUg
c2V0dXAgYW5kIGhvbGQgdGltZSBmcm9tIHZlbmRvci1zcGVjaWZpYyBwcm9wZXJ0aWVzLiAqLwot
CW9mX3Byb3BlcnR5X3JlYWRfdTMyKGR2aS0+ZGV2LT5vZl9ub2RlLCAidGksZGVza2V3IiwgKHUz
MiAqKSZkZXNrZXcpOwotCWlmIChkZXNrZXcgPCAtNCB8fCBkZXNrZXcgPiAzKQorCW9mX3Byb3Bl
cnR5X3JlYWRfdTMyKGR2aS0+ZGV2LT5vZl9ub2RlLCAidGksZGVza2V3IiwgJmRlc2tldyk7CisJ
aWYgKGRlc2tldyA+IDcpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JdGltaW5ncy0+c2V0dXBfdGlt
ZV9wcyA9IG1pbigwLCAxMjAwIC0gMzUwICogZGVza2V3KTsKLQl0aW1pbmdzLT5ob2xkX3RpbWVf
cHMgPSBtaW4oMCwgMTMwMCArIDM1MCAqIGRlc2tldyk7CisJdGltaW5ncy0+c2V0dXBfdGltZV9w
cyA9IDEyMDAgLSAzNTAgKiAoKHMzMilkZXNrZXcgLSA0KTsKKwl0aW1pbmdzLT5ob2xkX3RpbWVf
cHMgPSBtYXgoMCwgMTMwMCArIDM1MCAqICgoczMyKWRlc2tldyAtIDQpKTsKIAogCXJldHVybiAw
OwogfQotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
