Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5C62B20E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UaBrgg6dRattfKFRBz7RHH9/ncbFPXIXXCKUvSv9Z0Y=; b=HPoCTrURkF+xoW
	/Nqe/Z2X9AalbGvj+Aq1f/JvOcGqr32KTNhyzi2w1mp7jiqjLj5JuwphrY+kkRBM26AzZfuV/eo1Q
	+uZz9DY0y7U59OFH6cTp9dtaKLdHTRqihfVA8Bu0hmGHnHNG3Stq/kp7C94NCd7RGlD5934EwQRxg
	gyW8dRvwu+PzKThQYydPkOeHP5hzRJd1Xp3RTXdTTIsgCd5eT3b1kHMolY/evFeYi2xrRZk4R7mv3
	nrAF+J51Bo9rTI8Gv4tS0mqL7qaKz0CS8IOQV2rgpKS3ve3uyPOzcwPufmZ3RjNfYaFrlqBQmYg7U
	phz3lat1Xb4LTsjsiXtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCly-0006et-HU; Mon, 27 May 2019 10:22:30 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVClO-0006Ai-4B
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 10:22:00 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4RAGcSe031336; Mon, 27 May 2019 12:21:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version : content-type
 : content-transfer-encoding; s=STMicroelectronics;
 bh=K9MPddInRylWsZUKTiMMozhp1doQ8Ls5xxWg0TmbCm0=;
 b=ulVHYNCWpNB/fmvKmxz1BPx6VyZtV6zgHD6llj10aA0P4+8hLCp+5s5tR86b2ITOfLdX
 +d8IbtKqMp2+0HDyn8JKXrtes1np928OvwMtOG4GgWsfC7Y+KvTrj5y+ktExn62V8bNf
 wmH6NK2YiaKzVFREdamSbTbiCJMIJzOvsIeqRCjolGpwcQJ4CiotjC0a/ugjwyLpsaRj
 OdxEobI8380pMauJ6Sec2UhcD2T3H0wgYLppei5lW2K1wRjO5wgASVXO2n6YJRk5BnKf
 kf3NPWCNB8HdCTIFmGFg8s+lqyv9IMC+m7Hyp8IQTUMs6a1CHonpSEyw9HLapDyVGtY3 ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sptu9jjhh-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 27 May 2019 12:21:48 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A3C7E34;
 Mon, 27 May 2019 10:21:47 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 78BE32804;
 Mon, 27 May 2019 10:21:47 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 27 May
 2019 12:21:47 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 27 May 2019 12:21:46
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, "Daniel Vetter" <daniel@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Sam Ravnborg <sam@ravnborg.org>,
 Yannick Fertre <yannick.fertre@st.com>, Nickey
 Yang <nickey.yang@rock-chips.com>, Philippe Cornu <philippe.cornu@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Vincent Abriou
 <vincent.abriou@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 1/2] drm/bridge/synopsys: dsi: add power on/off optional
 phy ops
Date: Mon, 27 May 2019 12:21:38 +0200
Message-ID: <1558952499-15418-2-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558952499-15418-1-git-send-email-yannick.fertre@st.com>
References: <1558952499-15418-1-git-send-email-yannick.fertre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-27_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_032155_245761_7866FF19 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

QWRkIHBvd2VyIG9uICYgb2ZmIG9wdGlvbmFsIHBoeXNpY2FsIG9wZXJhdGlvbiBmdW5jdGlvbnMs
IGhlbHBmdWwgdG8KcHJvZ3JhbSBzcGVjaWZpYyByZWdpc3RlcnMgb2YgdGhlIERTSSBwaHlzaWNh
bCBwYXJ0LgoKU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBz
dC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5j
IHwgOCArKysrKysrKwogaW5jbHVkZS9kcm0vYnJpZGdlL2R3X21pcGlfZHNpLmggICAgICAgICAg
ICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jCmluZGV4IGU5MTVhZTguLjVi
YjY3NmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlw
aS1kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNp
LmMKQEAgLTc3NSw2ICs3NzUsMTAgQEAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfY2xlYXJfZXJy
KHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQogc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfYnJpZGdl
X3Bvc3RfZGlzYWJsZShzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQogewogCXN0cnVjdCBkd19t
aXBpX2RzaSAqZHNpID0gYnJpZGdlX3RvX2RzaShicmlkZ2UpOworCWNvbnN0IHN0cnVjdCBkd19t
aXBpX2RzaV9waHlfb3BzICpwaHlfb3BzID0gZHNpLT5wbGF0X2RhdGEtPnBoeV9vcHM7CisKKwlp
ZiAocGh5X29wcy0+cG93ZXJfb2ZmKQorCQlwaHlfb3BzLT5wb3dlcl9vZmYoZHNpLT5wbGF0X2Rh
dGEtPnByaXZfZGF0YSk7CiAKIAkvKgogCSAqIFN3aXRjaCB0byBjb21tYW5kIG1vZGUgYmVmb3Jl
IHBhbmVsLWJyaWRnZSBwb3N0X2Rpc2FibGUgJgpAQCAtODc0LDExICs4NzgsMTUgQEAgc3RhdGlj
IHZvaWQgZHdfbWlwaV9kc2lfYnJpZGdlX21vZGVfc2V0KHN0cnVjdCBkcm1fYnJpZGdlICpicmlk
Z2UsCiBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9icmlkZ2VfZW5hYmxlKHN0cnVjdCBkcm1fYnJp
ZGdlICpicmlkZ2UpCiB7CiAJc3RydWN0IGR3X21pcGlfZHNpICpkc2kgPSBicmlkZ2VfdG9fZHNp
KGJyaWRnZSk7CisJY29uc3Qgc3RydWN0IGR3X21pcGlfZHNpX3BoeV9vcHMgKnBoeV9vcHMgPSBk
c2ktPnBsYXRfZGF0YS0+cGh5X29wczsKIAogCS8qIFN3aXRjaCB0byB2aWRlbyBtb2RlIGZvciBw
YW5lbC1icmlkZ2UgZW5hYmxlICYgcGFuZWwgZW5hYmxlICovCiAJZHdfbWlwaV9kc2lfc2V0X21v
ZGUoZHNpLCBNSVBJX0RTSV9NT0RFX1ZJREVPKTsKIAlpZiAoZHNpLT5zbGF2ZSkKIAkJZHdfbWlw
aV9kc2lfc2V0X21vZGUoZHNpLT5zbGF2ZSwgTUlQSV9EU0lfTU9ERV9WSURFTyk7CisKKwlpZiAo
cGh5X29wcy0+cG93ZXJfb24pCisJCXBoeV9vcHMtPnBvd2VyX29uKGRzaS0+cGxhdF9kYXRhLT5w
cml2X2RhdGEpOwogfQogCiBzdGF0aWMgZW51bSBkcm1fbW9kZV9zdGF0dXMKZGlmZiAtLWdpdCBh
L2luY2x1ZGUvZHJtL2JyaWRnZS9kd19taXBpX2RzaS5oIGIvaW5jbHVkZS9kcm0vYnJpZGdlL2R3
X21pcGlfZHNpLmgKaW5kZXggN2QzZGQ2OS4uZGY2ZWRhNiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9k
cm0vYnJpZGdlL2R3X21pcGlfZHNpLmgKKysrIGIvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X21pcGlf
ZHNpLmgKQEAgLTE0LDYgKzE0LDggQEAgc3RydWN0IGR3X21pcGlfZHNpOwogCiBzdHJ1Y3QgZHdf
bWlwaV9kc2lfcGh5X29wcyB7CiAJaW50ICgqaW5pdCkodm9pZCAqcHJpdl9kYXRhKTsKKwl2b2lk
ICgqcG93ZXJfb24pKHZvaWQgKnByaXZfZGF0YSk7CisJdm9pZCAoKnBvd2VyX29mZikodm9pZCAq
cHJpdl9kYXRhKTsKIAlpbnQgKCpnZXRfbGFuZV9tYnBzKSh2b2lkICpwcml2X2RhdGEsCiAJCQkg
ICAgIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlLAogCQkJICAgICB1bnNpZ25l
ZCBsb25nIG1vZGVfZmxhZ3MsIHUzMiBsYW5lcywgdTMyIGZvcm1hdCwKLS0gCjIuNy40CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
