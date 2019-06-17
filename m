Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3753248627
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARZCgNmwZr7fG/RnRAHL3jnGAbv0hWh8R2psRTmuycA=; b=QgUJ3f/Owhqze0
	rIZtxCRLQSMagR3kUvqeu2GMIJ/7iuEUm3uL7PySpnPUKWHL8JboY2+4fGAJggo2+f5ZDRIgEIcCw
	fUwKxyXJxORlrdja2Q+p81pSNz4lZvEhiW1MIz40zZaz0BjXevGlI4bZs5N1yOluxHG5H9FjC02Fk
	JaP2GqADry5W6ccruT0Aui2niIPZsw0VxxeZS0n3GckVkbAeDOrwj6eLavQGsoBDktAzs+jGfLoiw
	g8XCSLeuFJWam0zcG9sjL2xSQ4eb3gv/d+G605MXQvfsqdW/1RGKao0gQEfwyjMbWi8ohhP9gtVtE
	vAFZdBeLBPlTOGu4/rWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct1j-0006XV-C5; Mon, 17 Jun 2019 14:54:31 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszc-00059b-2I
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:23 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id CFC634000B;
 Mon, 17 Jun 2019 14:51:57 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 02/12] drm/client: Restrict the plane_state scope
Date: Mon, 17 Jun 2019 16:51:29 +0200
Message-Id: <8bd9696ea915a4ad08be6d93a4d9565e8d6aa2f3.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075220_302600_859CDD4F 
X-CRM114-Status: GOOD (  11.81  )
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

VGhlIGRybV9jbGllbnRfbW9kZXNldF9jb21taXRfYXRvbWljIGZ1bmN0aW9uIHVzZXMgdHdvIHRp
bWVzIHRoZQpwbGFuZV9zdGF0ZSB2YXJpYWJsZSBpbiBpbm5lciBibG9ja3Mgb2YgY29kZSwgYnV0
IHRoZSB2YXJpYWJsZSBoYXMgYSBzY29wZQpnbG9iYWwgdG8gdGhpcyBmdW5jdGlvbi4KClRoaXMg
d2lsbCBsZWFkIHRvIGluYWR2ZXJ0ZW50IGRldnMgdG8gcmV1c2UgdGhlIHZhcmlhYmxlIGluIHRo
ZSBzZWNvbmQKYmxvY2sgd2l0aCB0aGUgdmFsdWUgbGVmdCBieSB0aGUgZmlyc3QsIHdpdGhvdXQg
YW55IHdhcm5pbmcgZnJvbSB0aGUKY29tcGlsZXIgc2luY2UgdmFsdWUgd291bGQgaGF2ZSBiZWVu
IGluaXRpYWxpemVkLgoKRml4IHRoaXMgYnkgbW92aW5nIHRoZSB2YXJpYWJsZSBkZWNsYXJhdGlv
biB0byB0aGUgcHJvcGVyIHNjb3BlLgoKUmV2aWV3ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9y
YWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlw
YXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50X21vZGVzZXQu
YyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0LmMKaW5kZXggMDA2YmY3MzkwZTdkLi44
MjY0YzNhNzMyYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50X21vZGVz
ZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0LmMKQEAgLTg2MSw3
ICs4NjEsNiBAQCBFWFBPUlRfU1lNQk9MKGRybV9jbGllbnRfcGFuZWxfcm90YXRpb24pOwogc3Rh
dGljIGludCBkcm1fY2xpZW50X21vZGVzZXRfY29tbWl0X2F0b21pYyhzdHJ1Y3QgZHJtX2NsaWVu
dF9kZXYgKmNsaWVudCwgYm9vbCBhY3RpdmUpCiB7CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9
IGNsaWVudC0+ZGV2OwotCXN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOwogCXN0
cnVjdCBkcm1fcGxhbmUgKnBsYW5lOwogCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZTsK
IAlzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4OwpAQCAtODc5LDYgKzg3OCw4IEBA
IHN0YXRpYyBpbnQgZHJtX2NsaWVudF9tb2Rlc2V0X2NvbW1pdF9hdG9taWMoc3RydWN0IGRybV9j
bGllbnRfZGV2ICpjbGllbnQsIGJvb2wgCiAJc3RhdGUtPmFjcXVpcmVfY3R4ID0gJmN0eDsKIHJl
dHJ5OgogCWRybV9mb3JfZWFjaF9wbGFuZShwbGFuZSwgZGV2KSB7CisJCXN0cnVjdCBkcm1fcGxh
bmVfc3RhdGUgKnBsYW5lX3N0YXRlOworCiAJCXBsYW5lX3N0YXRlID0gZHJtX2F0b21pY19nZXRf
cGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKIAkJaWYgKElTX0VSUihwbGFuZV9zdGF0ZSkpIHsK
IAkJCXJldCA9IFBUUl9FUlIocGxhbmVfc3RhdGUpOwpAQCAtOTAxLDYgKzkwMiw4IEBAIHN0YXRp
YyBpbnQgZHJtX2NsaWVudF9tb2Rlc2V0X2NvbW1pdF9hdG9taWMoc3RydWN0IGRybV9jbGllbnRf
ZGV2ICpjbGllbnQsIGJvb2wgCiAJCXVuc2lnbmVkIGludCByb3RhdGlvbjsKIAogCQlpZiAoZHJt
X2NsaWVudF9wYW5lbF9yb3RhdGlvbihtb2RlX3NldCwgJnJvdGF0aW9uKSkgeworCQkJc3RydWN0
IGRybV9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGU7CisKIAkJCS8qIENhbm5vdCBmYWlsIGFzIHdl
J3ZlIGFscmVhZHkgZ290dGVuIHRoZSBwbGFuZSBzdGF0ZSBhYm92ZSAqLwogCQkJcGxhbmVfc3Rh
dGUgPSBkcm1fYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIHByaW1hcnkpOwogCQkJ
cGxhbmVfc3RhdGUtPnJvdGF0aW9uID0gcm90YXRpb247Ci0tIApnaXQtc2VyaWVzIDAuOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
