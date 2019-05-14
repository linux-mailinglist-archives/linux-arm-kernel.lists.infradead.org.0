Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208A11C633
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 11:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hWngOHHu2PbBYIa/w0moN/dk2LcevkaDmVTHhkwl2y0=; b=N4URnf0QcTbUX3
	Vjfo8fgvvCPC87gCGu1KUj01i5Z8nH8moIcCp+s/yTl/UBNh+kzSaCW3XF8wee0qvE7tTKmKHIkJH
	eKo91M8hveQRZrB3O8C9Z9K2VxGkgVJejHprPVk89VCYtH/SOaZ7zdJFIMrTIaeZDIUZaFg5UzcV8
	ndFWeBxwwSI7ykGjIDVuaUooLlhabvipT+SzvdBfG4zHdFh/eaQWYsOdxMPvKrSVaQi9ZnKDDFR3j
	mHnLBvdPH8wdxSP567TGzMiAxgy1RGLCFb4xnRBk8SfdxSZgA7rsLXGgYub4T+nDjkynUZzNYviTp
	9vETDkf41PgIePicwDeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTrQ-0006zA-NQ; Tue, 14 May 2019 09:36:36 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTr8-0006rO-4u
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 09:36:19 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4E9VWJp023931; Tue, 14 May 2019 11:36:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=fsbBwl7Tthpbz/eCjykcV7x4Wlt53zxDBpGU6jlFytg=;
 b=a3a6okLrnFYL1FMWRzsSHkfi57tsWIaN+rfwa3c4BaWjsfDIezfk2tyB2jRASM/9Y01v
 vuKAII6QgFvrnA2QCM6j9fyewgn7rSNz+e5m370sE2DVWoOxxRS7cUwkCoVKw8ejV5MP
 F/jKRW24TB8CojqDIRAeHQIHZPQPWhkQt/GItKTEiJqPvw76YOntFLWC9ZgdM/u+VpS7
 NOcqdLLPCBVvQo6V/afXIfbSk+A32wbiT5qzTyHhD/r6zSdP51m6Ozk8HUQ3nnojgibE
 OTmeKk5bMvVS//dSu1MJ93cYb4/FJz/X53eCe4VO+98u0M2E//CDglHxm/u8DyDBBbNG cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sdn9fr6bn-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 14 May 2019 11:36:11 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B94733A;
 Tue, 14 May 2019 09:36:10 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5B727179A;
 Tue, 14 May 2019 09:36:10 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 14 May
 2019 11:36:10 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 14 May 2019 11:36:09
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
Subject: [PATCH v4 0/2] Add supply property for DSI controller
Date: Tue, 14 May 2019 11:35:54 +0200
Message-ID: <1557826556-10079-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-14_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_023618_643114_3CD058C3 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

VGhlIERTSSBjb250cm9sbGVyIG5lZWRzIGEgbmV3IHByb3BlcnR5IHRoYXQgcG93ZXJzIGl0cyBw
aHlzaWNhbCBsYXllci4KQmluZGluZyBoYXMgYmVlbiB1cGRhdGVkIHRvIGRvY3VtZW50IHRoaXMg
cHJvcGVydHkuCkRldmljZSB0cmVlIG9mIHN0bTMybXAxNTdjIHNvYy4KTW92ZSByZWcxOCAmIHJl
ZzExIHRvIHN0bTMybXAxNTdjIGRldmljZSB0cmVlIGZpbGUuClJlbW92ZSBwcm9wZXJ0eSBwaHkt
ZHNpLXN1cHBseSBwcm9wZXJ0eSB0byBzdG0zMm1wMTU3Yy1kazIuZHRzIGZpbGUuCgpDaGFuZ2Vz
IGluIHYyOgotIHJlbmFtZSBwYXRjaCBkcm0vc3RtOiBkc2k6IGFkZCBzdXBwb3J0IG9mIGFuIG9w
dGlvbmFsIHJlZ3VsYXRvcgotIHJld29yayBkd19taXBpX2RzaS1zdG0gcHJvYmUgc2VxdWVuY2UK
CkNoYW5nZXMgaW4gdjM6Ci0gcmVtb3ZlIGRldmljZS10cmVlIHBhdGNoZXMKLSByZXBsYWNlIHRo
ZSBvcHRpb25hbCByZWd1bGF0b3IgYnkgYSByZWd1bGF0b3IKCkNoYW5nZXMgaW4gdjQ6Ci0gdXBk
YXRlIHBhdGNoIGNvbW1pdAotIHJldHVybiBhbHdheXMgZXJyb3IgY29kZQoKWWFubmljayBGZXJ0
csOpICgyKToKICBkdC1iaW5kaW5nczogZGlzcGxheTogc3RtMzI6IGFkZCBzdXBwbHkgcHJvcGVy
dHkgdG8gRFNJIGNvbnRyb2xsZXIKICBkcm0vc3RtOiBkc2k6IGFkZCByZWd1bGF0b3Igc3VwcG9y
dAoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc3Qsc3RtMzItbHRkYy50eHQgIHwg
IDMgKysKIGRyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMgICAgICAgICAgICAg
IHwgNjAgKysrKysrKysrKysrKysrKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA1MiBpbnNlcnRp
b25zKCspLCAxMSBkZWxldGlvbnMoLSkKCi0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
