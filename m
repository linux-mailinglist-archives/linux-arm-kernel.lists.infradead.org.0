Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDAC19FBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 17:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M1qpbRDQrn4XgKk/mR5bnDfXBLXizIq4Ebwd0pZcr38=; b=SUNtbYILTXE6z0
	3QqpX7+dwLBNkfwfULuliQVgPfhAcxBbt8UdQ1WuMbc+C2v+28mDF5Y2p2bCmrAUTbKlYyXWHOzsW
	3JpctO46QwE5zN2swRSFuVhETy76YkyUlwfPIqmm4sYoArYBfh29erKEZDkBfjQ5NxaIMD9dHkE99
	8ej9pJGltiry7yFLNM/CUIDXldC6RhLl11t0sn7SH7EuuD1Zwv5VTCc1aroQztl/paZxdeNsk2f8v
	wSFjCy+QmE3ELewOjKLT7Ai/7dto3OEPM8lpCr8uEap27lvTFnriP8ftbxD0gknqT0qMG3y/0mgGh
	vRyEPIMJNScFGZpIo6Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP73j-0006S3-RK; Fri, 10 May 2019 15:03:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP73Y-0006NY-Ol
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 15:03:30 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AErvPO005029; Fri, 10 May 2019 17:03:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=JVoxbgxa8NXBZqIYaDfKlj5ecVvDm4yDrgscf7mPaSA=;
 b=mcYefJHbsTucP8ibCTTp45khN/3G5jE9jIn5cX/yU+Qh/nm5pf7hDl7S4MuJSxDTBS/V
 Kgdm40nE+3q+Wtf6FgJMHqH2w0kYPTWC7ZU0Tx30AMBYxKypAqE7sdvXF4vxOfHSPIR9
 w+3LRDCblFiocJZZHuFJjUmVPk9ZNMrF05HB0NOb7VdpUxc/fW3BtCfsz+k6UXb+s8IY
 zjPOLQLUeFy2Ie8Akr5wACqvdVs125QYNbKAMa/jDERqfwChKAqUQGG0kdW2l6MjU7Pr
 feEpTJo94+ejVm4jsYzFTAgOUf+f7Y2GmmEyylBe8Pj8keSqcuCiIBkf5iYKkK+QJGe7 Og== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sc9s4k4b1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 17:03:23 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CAF1634;
 Fri, 10 May 2019 15:03:22 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AF54E2AB9;
 Fri, 10 May 2019 15:03:22 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.361.1; Fri, 10 May
 2019 17:03:22 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May 2019 17:03:21
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
Subject: [PATCH] drm/stm: ltdc: remove clk_round_rate comment
Date: Fri, 10 May 2019 17:03:20 +0200
Message-ID: <1557500600-19771-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_080329_097076_0A141DD1 
X-CRM114-Status: GOOD (  13.22  )
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
ZmVydHJlQHN0LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyB8IDEwICsrKy0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
c3RtL2x0ZGMuYwppbmRleCA5NzkxMmUyLi4yZjhhYTJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vc3RtL2x0ZGMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwpAQCAtNTA3
LDIwICs1MDcsMTYgQEAgc3RhdGljIGJvb2wgbHRkY19jcnRjX21vZGVfZml4dXAoc3RydWN0IGRy
bV9jcnRjICpjcnRjLAogCXN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGNydGNfdG9fbHRkYyhj
cnRjKTsKIAlpbnQgcmF0ZSA9IG1vZGUtPmNsb2NrICogMTAwMDsKIAotCS8qCi0JICogVE9ETyBj
bGtfcm91bmRfcmF0ZSgpIGRvZXMgbm90IHdvcmsgeWV0LiBXaGVuIHJlYWR5LCBpdCBjYW4KLQkg
KiBiZSB1c2VkIGluc3RlYWQgb2YgY2xrX3NldF9yYXRlKCkgdGhlbiBjbGtfZ2V0X3JhdGUoKS4K
LQkgKi8KLQotCWNsa19kaXNhYmxlKGxkZXYtPnBpeGVsX2Nsayk7CiAJaWYgKGNsa19zZXRfcmF0
ZShsZGV2LT5waXhlbF9jbGssIHJhdGUpIDwgMCkgewogCQlEUk1fRVJST1IoIkNhbm5vdCBzZXQg
cmF0ZSAoJWRIeikgZm9yIHBpeGVsIGNsa1xuIiwgcmF0ZSk7CiAJCXJldHVybiBmYWxzZTsKIAl9
Ci0JY2xrX2VuYWJsZShsZGV2LT5waXhlbF9jbGspOwogCiAJYWRqdXN0ZWRfbW9kZS0+Y2xvY2sg
PSBjbGtfZ2V0X3JhdGUobGRldi0+cGl4ZWxfY2xrKSAvIDEwMDA7CiAKKwlEUk1fREVCVUdfRFJJ
VkVSKCJyZXF1ZXN0ZWQgY2xvY2sgJWRrSHosIGFkanVzdGVkIGNsb2NrICVka0h6XG4iLAorCQkJ
IG1vZGUtPmNsb2NrLCBhZGp1c3RlZF9tb2RlLT5jbG9jayk7CisKIAlyZXR1cm4gdHJ1ZTsKIH0K
IAotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
