Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FD11B8D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WmBWTc1GvW/7Yb4hWtdhigpFanxuJnQ1qPol113MHF8=; b=oibgLBZHL5uhUE
	dCLndWsvmgglVDkva4u3DuLW0uaJCFJWsa1lBSpjuz832H6Swv7Pa/wj1nXv1o8VrI6M+QFLo/Cwy
	rDlVl2PRNayMqrkqfvGcnIIkOw4oNbVEV9GZcm5yKVZP0ew+z5Xqv0a1W6PJbdumFwTtakLnIPdpI
	i1k5J8SnkXfyEmtXokod0etgtpGHoIW7ghE6john8WVWjBjV0qs9vVqxXwz4ctNjJVaBVxvU0T9Z7
	BPXU5IE4D6XUFe2UF5xMhlb2jQx1I+LSue/W6sG57G4MMSrZWR17GUJ0Gv7VirSCETzRqeFTon9gm
	HJkDeCU7LPjuUVUaDs6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCBc-0007V8-Dh; Mon, 13 May 2019 14:44:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCBU-0007Tx-PH
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:44:10 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DEaZH3013863; Mon, 13 May 2019 16:44:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=H7Q5/LExNO59bdn3+PatXfQylruOtLqJEDuHGFHk764=;
 b=bSJl0sDa++4vqFNqa9vdeF1fwx4x8cw4yukMVXb/JKd8yt9Bod9ExrcdTLJTaWHETQru
 wxG0SWcF/7/0wDc59hEV71nMYggiAPJSC0kmZxzl93vK9AydXW5eN3fck6u1q+jN9jEe
 FVs7c8UuilNXacCP8YlysODN9PXQWNa2R+HHo+HHXpE6C3hl2l1zLIFNyiZPM8HDz/eN
 HwyLpYP1Tp3wz8GwDpdy/YlNEPQrQk8EVTfSEE0i8Mnk5OlAqm1nEYVvkwfB9Mo57xIa
 oi6TX0CM55AjV/ApKhRuuu8v8S7fqBJERlvzty26qrmcKPGcQIkl3AfBYl0eJJyFk00q MQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sdm5tugns-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 13 May 2019 16:44:04 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8241B34;
 Mon, 13 May 2019 14:44:03 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 48C5D2899;
 Mon, 13 May 2019 14:44:03 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 13 May
 2019 16:44:02 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 13 May 2019 16:44:01
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
Subject: [PATCH v3 0/2] Add supply property for DSI controller
Date: Mon, 13 May 2019 16:42:17 +0200
Message-ID: <1557758539-28748-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_074409_151656_045179AD 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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

VGhlIERTSSBjb250cm9sbGVyIG5lZWRzIGEgbmV3IHByb3BlcnR5IHRoYXQgcG93ZXJzIGl0cyBw
aHlzaWNhbCBsYXllci4KQmluZGluZyBoYXMgYmVlbiB1cGRhdGVkIHRvIGRvY3VtZW50ZWQgdGhp
cyBwcm9wZXJ0eS4KRGV2aWNlIHRyZWUgb2Ygc3RtMzJtcDE1N2Mgc29jLgpNb3ZlIHJlZzE4ICYg
cmVnMTEgdG8gc3RtMzJtcDE1N2MgZGV2aWNlIHRyZWUgZmlsZS4KUmVtb3ZlIHByb3BlcnR5IHBo
eS1kc2ktc3VwcGx5IHByb3BlcnR5IHRvIHN0bTMybXAxNTdjLWRrMi5kdHMgZmlsZS4KCkNoYW5n
ZXMgaW4gdjI6Ci0gcmVuYW1lIHBhdGNoIGRybS9zdG06IGRzaTogYWRkIHN1cHBvcnQgb2YgYW4g
b3B0aW9uYWwgcmVndWxhdG9yCi0gcmV3b3JrIGR3X21pcGlfZHNpLXN0bSBwcm9iZSBzZXF1ZW5j
ZQoKQ2hhbmdlcyBpbiB2MzoKLSByZW1vdmUgZGV2aWNlLXRyZWUgcGF0Y2hlcwotIHJlcGxhY2Ug
dGhlIG9wdGlvbmFsIHJlZ3VsYXRvciBieSBhIHJlZ3VsYXRvcgoKWWFubmljayBGZXJ0csOpICgy
KToKICBkdC1iaW5kaW5nczogZGlzcGxheTogc3RtMzI6IGFkZCBzdXBwbHkgcHJvcGVydHkgdG8g
RFNJIGNvbnRyb2xsZXIKICBkcm0vc3RtOiBkc2k6IGFkZCBzdXBwb3J0IG9mIGFuIHJlZ3VsYXRv
cgoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc3Qsc3RtMzItbHRkYy50eHQgIHwg
IDMgKysKIGRyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMgICAgICAgICAgICAg
IHwgNTMgKysrKysrKysrKysrKysrKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQoKLS0KMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
