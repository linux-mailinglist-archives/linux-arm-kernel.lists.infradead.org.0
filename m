Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE37F19EFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 16:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+gqcgdTrZrISNxxWLP2ZWfcXBkqxlLuZVjg8dk+vOrw=; b=lXr5q15OABcIXG
	C3nJW9Um8uxBz7Y+xlLxz/P/7AUJ9yDPymf8khKDv9HrMb9zC0zHpHFIFebplIpQKinlh7pjwimME
	zy/IYprvE2XT7GLRIUMgjkZlnDI5knJbrbZ+TERoY/73/V7qG2bi3oVVa4jxIbfggPHPTadcZA3Zl
	qwI1tlhl7oWpGcX0XCg6B8ZLA7CIx9ziiZe1NbNup3loN7c6j5O7X+E5EElf2jhTdJSTbsVhlf+Ni
	tTyyRmvHT8A0cU8lq5veGVnLhxt1U1MJh6IlFqsYDc0GLRzJKT/pvlWXoW64X0MWOekgsuefJth3y
	zZK2iSvy3/J73xuR0KmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6OH-0007iJ-DI; Fri, 10 May 2019 14:20:49 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6OA-0007gI-8x
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 14:20:44 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AE1A8q018315; Fri, 10 May 2019 16:20:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=SFxogR9JPF6xdKCGoAamjmYfeUtysrEoecdQ7E/pxnY=;
 b=mEL2JpCF2XTXzAYSgFKO3ZZSG1AtAHEA3xHUV3AAztHXrLVyy5gNUe/YZG6XVi3GBobL
 /CMniv9lTNLF/SoWjiCKqKaVpamyr/RM15PGCeglVxiSMum0h8TaGN0DnwFfMBPKokMp
 JDHGqRXK0GfXCWc5y+jZSx6hFQOmtMcQa+HJoIDkbxL63gHT+ZDhnb4V+byBXEfT+USI
 fKMCPAvj32RSQO6WFgDpUpMKUq8IggydLO1icYXcjqzmt2LEwdkRuuhedAbCClmLNZM1
 nnWOR9f2ltj3T2piC8A7gYI5q5UfftWaRFI/usmAh5Cc5iPSFRx7kwqjdKECk7wWtGk9 pg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2scbkaj2fs-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 16:20:30 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D418C31;
 Fri, 10 May 2019 14:20:29 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 81557113A;
 Fri, 10 May 2019 14:20:29 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May
 2019 16:20:29 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May 2019 16:20:28
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, "Mark Rutland" <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/5] Add supply property for DSI controller
Date: Fri, 10 May 2019 16:20:18 +0200
Message-ID: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_072043_064353_C5E13296 
X-CRM114-Status: GOOD (  11.45  )
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
eS1kc2ktc3VwcGx5IHByb3BlcnR5IHRvIHN0bTMybXAxNTdjLWRrMi5kdHMgZmlsZS4KCgpDaGFu
Z2VzIGluIHYyOgotIHJlbmFtZSBwYXRjaCBkcm0vc3RtOiBkc2k6IGFkZCBzdXBwb3J0IG9mIGFu
IG9wdGlvbmFsIHJlZ3VsYXRvcgotIHJld29yayBkd19taXBpX2RzaS1zdG0gcHJvYmUgc2VxdWVu
Y2UKCllhbm5pY2sgRmVydHLDqSAoNSk6CiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IHN0bTMyOiBh
ZGQgc3VwcGx5IHByb3BlcnR5IHRvIERTSSBjb250cm9sbGVyCiAgZHJtL3N0bTogZHNpOiBhZGQg
c3VwcG9ydCBvZiBhbiBvcHRpb25hbCByZWd1bGF0b3IKICBBUk06IGR0czogc3RtMzI6IGFkZCBw
aHktZHNpLXN1cHBseSBwcm9wZXJ0eSBvbiBzdG0zMm1wMTU3YwogIEFSTTogZHRzOiBzdG0zMjog
bW92ZSBmaXhlIHJlZ3VsYXRvcnMgcmVnMTEgJiByZWcxOAogIEFSTTogZHRzOiBzdG0zMjogcmVt
b3ZlIHBoeS1kc2ktc3VwcGx5IHByb3BlcnR5IG9uIHN0bTMybXAxNTdjLWRrMgogICAgYm9hcmQK
CiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3N0LHN0bTMyLWx0ZGMudHh0ICAgIHwg
IDMgKysrCiBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzICAgICAgICAgICAg
ICAgIHwgIDkgLS0tLS0tLS0tCiBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1lZDEuZHRz
ICAgICAgICAgICAgICAgIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vYm9vdC9kdHMv
c3RtMzJtcDE1N2MuZHRzaSAgICAgICAgICAgICAgICAgICB8IDE3ICsrKysrKysrKysrKysrKysr
CiBkcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jICAgICAgICAgICAgICB8IDQ1
ICsrKysrKysrKysrKysrKysrKystLS0KIDUgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygr
KSwgMjUgZGVsZXRpb25zKC0pCgotLQoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
