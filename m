Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F36143AEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vXtucL8e7JQcRwgwnLQmZqQm2QNpuszTsxxjuhVrMSg=; b=e7+Tvo+hkJhPLe
	q3G0Bo7fIIEZElT7QVzb5EJStiPK6ENHtXZpWGQQDzbT3VNFbYVaMB0xlPGiNWN3XDyqUN4Fs9jN8
	H+yh6zlB7NNYpmt2K/OEX8FBaWVKhJaBHVuTGR4XDZBsFuVIawo7xuCcHTXadzpmTggd3cqYvKcVo
	ZLwMDXMhjy6ILNUNDbmGAjXtNRbEIiyv9eiOqPaVBUqRGzoZuZa+em+Cuyjgp4DNd89NuzlfLWWXG
	sMk+n+uIZCZyVV/skKYW0BDbJKVlp5oycQt+u54d8hlOx+KwqLk/WktOLdGehGCgw+fSgeAUMJPdI
	OASOLYBfuJbOQoXJhFxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqij-0004D1-3j; Tue, 21 Jan 2020 10:25:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqiX-0004B8-AJ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:25:09 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00LAOGnd001924; Tue, 21 Jan 2020 11:25:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=8VtkAU/3/Eya8/Y2tSkFqLBiFUUFksXVES1B9OIae6E=;
 b=R+13RLUCi0WA0J+MwaQz1rN31hUF2xJIEkt8p0Q0lbqR9Uas0yl1tqrwCWRWSQ1mdTeO
 w7ib7QOab0PbqOQQXLa9O/uVRuqsy7wO0UEGmJTuI2jgXPzV/1t5SC0x69bopFmuq2dU
 pOE8oYpo5ZhgKeLLOxJMm4QiJkrVytEiIp+gR7SzPxScZaG02bVKwNCBKJKRCQn4Kw1m
 qswpbPooQIX/Di+tlKiME5apbrrIvpgslHAFnisUqnW2fQ+DeFP2WgnRE36NEGfHpslR
 HOvoR62+EYh3gm9TO3mA444a2pyorUkWfDp83I5sUbKTdKWSHEHQyOnEPL59pswMJotw 5w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp263dk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2020 11:25:01 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E14C9100034;
 Tue, 21 Jan 2020 11:24:59 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D0EDA2B1886;
 Tue, 21 Jan 2020 11:24:59 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 21 Jan 2020 11:24:59 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/bridge/synopsys: dsi: missing post disable
Date: Tue, 21 Jan 2020 11:24:56 +0100
Message-ID: <1579602296-7683-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-21_02:2020-01-21,
 2020-01-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_022505_658758_FA13A9E2 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+CgpTb21ldGltZSB0
aGUgcG9zdF9kaXNhYmxlIGZ1bmN0aW9uIGlzIG1pc3NpbmcgKG5vdCByZWdpc3RlcmVkKS4KClNp
Z25lZC1vZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyB8IDMgKystCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jCmluZGV4IGIxODM1MWIuLjEy
ODIzYWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlw
aS1kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNp
LmMKQEAgLTgyNCw3ICs4MjQsOCBAQCBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9icmlkZ2VfcG9z
dF9kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCiAJICogVGhpcyBuZWVkcyB0byBi
ZSBmaXhlZCBpbiB0aGUgZHJtX2JyaWRnZSBmcmFtZXdvcmsgYW5kIHRoZSBBUEkKIAkgKiBuZWVk
cyB0byBiZSB1cGRhdGVkIHRvIG1hbmFnZSBvdXIgb3duIGNhbGwgY2hhaW5zLi4uCiAJICovCi0J
ZHNpLT5wYW5lbF9icmlkZ2UtPmZ1bmNzLT5wb3N0X2Rpc2FibGUoZHNpLT5wYW5lbF9icmlkZ2Up
OworCWlmIChkc2ktPnBhbmVsX2JyaWRnZS0+ZnVuY3MtPnBvc3RfZGlzYWJsZSkKKwkJZHNpLT5w
YW5lbF9icmlkZ2UtPmZ1bmNzLT5wb3N0X2Rpc2FibGUoZHNpLT5wYW5lbF9icmlkZ2UpOwogCiAJ
aWYgKHBoeV9vcHMtPnBvd2VyX29mZikKIAkJcGh5X29wcy0+cG93ZXJfb2ZmKGRzaS0+cGxhdF9k
YXRhLT5wcml2X2RhdGEpOwotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
