Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0537D1B6DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 15:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aFt7DSZHioCiWqTjXukh9QDB1Kv3YsjIHWIEsnb9e+E=; b=ITisCuWdMPhOlw
	bQodY8Z5WR1GHVv6FLkw5zPfYAs04hd/Pyd4g0Va4zQjhSKgdmVsNTKGSv8VC2loghc75OrKgbHYj
	D7U3TaaC8b7n79xYlucj2GVLW2XF0WKVKeL5HN//86pX4Dw0eQTHtc9ezQyDou84yEe4RLMuMOrGi
	m0GBfKEOyC6oUbmTSt0AOrHTOb4OkZUW1I3CT8RTipy8t+LXzmmXahI4SDvyQHOrGx+jndN2Ett3B
	svX0V+jeF64wwmEmrs0mQNwfyZNaRRJcQZSKm+8RS908iISBwBKU17VvE+GiQe3Vfd8LGhHhCNPLd
	pCx1U5umlB6TVztPFecQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQAno-00074y-0d; Mon, 13 May 2019 13:15:36 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQAnf-00074d-4V
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 13:15:28 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DDCndD024681; Mon, 13 May 2019 15:15:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=z+jHhwBwJ5kIQ/vL9ubJdrHRuDnMR+YPpPiAVmxBKdc=;
 b=SurjwkHWIiIPmx7BHJI1H1JXcGmlUr1FfwyAmMMG6+3nFCzbxK3v6Q0/xWPlo9DWIwxi
 Y5xkj4brF4PVfTyZqGh4kJcDA938QNAV5ii5ud0QFIsleksYQECVRj0+iak9amNTOxDK
 XqsLi5AKlVUPhoaKEYvpNCYKWve6IeOMAEIekWzT6EwnVaMsuxcViwJ+bULzVuIqsyLC
 k2Rik5LIgVGilAams2+uUK/wOatezrSVBmEHLMXWgxHCOHBRzP6wklZyd+Egng6a40yX
 vEFMC02klVKIyEHT8MuewbakJ00aULTDLncv2pFY7mrgeQlJoaTmz6mgcgqUFJWjv4Q/ AQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sek5a54b2-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 13 May 2019 15:15:23 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6BA8A3A;
 Mon, 13 May 2019 13:15:22 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4004B1D84;
 Mon, 13 May 2019 13:15:22 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 13 May
 2019 15:15:22 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 13 May 2019 15:15:21
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] drm/stm: ltdc: remove clk_round_rate comment
Date: Mon, 13 May 2019 15:15:18 +0200
Message-ID: <1557753318-11218-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_061527_461915_9C7851BA 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2xrX3JvdW5kX3JhdGUgcmV0dXJucyByb3VuZGVkIGNsb2NrIHdpdGhvdXQgY2hhbmdpbmcKdGhl
IGhhcmR3YXJlIGluIGFueSB3YXkuClRoaXMgZnVuY3Rpb24gY291bGRuJ3QgcmVwbGFjZSBzZXRf
cmF0ZS9nZXRfcmF0ZSBjYWxscy4KVG9kbyBjb21tZW50IGhhcyBiZWVuIHJlbW92ZWQgJiBhIG5l
dyBsb2cgaW5zZXJ0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2su
ZmVydHJlQHN0LmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6CgktIENsa19lbmFibGUgJiBjbGtfZGlz
YWJsZSBhcmUgbmVlZGVkIGZvciB0aGUgU09DIFNUTTMyRjcKCSAobm90IGZvciBTVE0zMk1QMSku
IEkgcmV0dXJuIHRoaXMgcGFydCBvZiB0aGUgcGF0Y2ggdG8gbWFrZSBzdXJlIHRoZQoJIGRyaXZl
ciBpcyBjb21wYXRpYmxlIHdpdGggYWxsIFNPQyBTVE0zMi4KCiBkcml2ZXJzL2dwdS9kcm0vc3Rt
L2x0ZGMuYyB8IDggKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwppbmRleCA5NzkxMmUyLi4xMTA0ZTc4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vc3Rt
L2x0ZGMuYwpAQCAtNTA3LDExICs1MDcsNiBAQCBzdGF0aWMgYm9vbCBsdGRjX2NydGNfbW9kZV9m
aXh1cChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCiAJc3RydWN0IGx0ZGNfZGV2aWNlICpsZGV2ID0g
Y3J0Y190b19sdGRjKGNydGMpOwogCWludCByYXRlID0gbW9kZS0+Y2xvY2sgKiAxMDAwOwoKLQkv
KgotCSAqIFRPRE8gY2xrX3JvdW5kX3JhdGUoKSBkb2VzIG5vdCB3b3JrIHlldC4gV2hlbiByZWFk
eSwgaXQgY2FuCi0JICogYmUgdXNlZCBpbnN0ZWFkIG9mIGNsa19zZXRfcmF0ZSgpIHRoZW4gY2xr
X2dldF9yYXRlKCkuCi0JICovCi0KIAljbGtfZGlzYWJsZShsZGV2LT5waXhlbF9jbGspOwogCWlm
IChjbGtfc2V0X3JhdGUobGRldi0+cGl4ZWxfY2xrLCByYXRlKSA8IDApIHsKIAkJRFJNX0VSUk9S
KCJDYW5ub3Qgc2V0IHJhdGUgKCVkSHopIGZvciBwaXhlbCBjbGtcbiIsIHJhdGUpOwpAQCAtNTIx
LDYgKzUxNiw5IEBAIHN0YXRpYyBib29sIGx0ZGNfY3J0Y19tb2RlX2ZpeHVwKHN0cnVjdCBkcm1f
Y3J0YyAqY3J0YywKCiAJYWRqdXN0ZWRfbW9kZS0+Y2xvY2sgPSBjbGtfZ2V0X3JhdGUobGRldi0+
cGl4ZWxfY2xrKSAvIDEwMDA7CgorCURSTV9ERUJVR19EUklWRVIoInJlcXVlc3RlZCBjbG9jayAl
ZGtIeiwgYWRqdXN0ZWQgY2xvY2sgJWRrSHpcbiIsCisJCQkgbW9kZS0+Y2xvY2ssIGFkanVzdGVk
X21vZGUtPmNsb2NrKTsKKwogCXJldHVybiB0cnVlOwogfQoKLS0KMi43LjQKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
