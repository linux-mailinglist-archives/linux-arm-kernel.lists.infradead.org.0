Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9101825363
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4SJmaTxEpbIwPzMX5hIJMyyQWijVovEBuO/TxyJgcjQ=; b=EZknce6MUhQBVV
	WxUFI69D0ZrzXYOjS26lsd7X9ySc0yxOMP8prnqAcPGCmwYARtz8EaZcftGky83ZdPvX/cCbwog5t
	Q+LT5FvmRx6I4+mqRahlHubMP24v6/loYgul/yYQM3Fy0az04oNHCg13mZ3NoJBOQAtNxitQ6tJig
	v0/Ki8UQvmel4zebhRb/nEy08zalnaeFVtVCaDN8opXsDOnSMSBp2c9sEPEkH2abzRulBJM5QjyWl
	dgDURjSrmHITeZThwE1YjuD8phaU8dGMjuKmYeNx7HiOgoAlXkf3EGIklEfeuEoO+rTr23737syc3
	JuZ5HJgdGERqs60e9HWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6It-0000Cd-UQ; Tue, 21 May 2019 15:03:47 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6Il-0000CE-6e
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:03:40 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4LEuoq6020124; Tue, 21 May 2019 17:03:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=nq7D1bNWeTgr7MKVNaV3palhDHMi3cg+ormhUszIkDA=;
 b=PpW3x0ymcnUZ/0c0dfYbfMZXrKlhgx/d+/39TwL3UFhz58hr6/EOYLV/Qbsh3vXnnJ5i
 JLgHTmGh2Mk7LtVtTtpXLevTq/GHHs/TXVOp2Rk/1cbpRSwtSnrmw9LrCLS9MpdcRvAU
 v1bZBT50KYk907XY50A0NSfcbsc4zmlvQGXyGCL0kMlqC758Mq8CK6YpqK7sasUTatuE
 +aMAuqcb/BPxaS5Qwulo7rG+L++aENNczIBcHpJAQr2Ki6En8oF7OFUjZgDl+Tczh+Tw
 l6RYbGWu72bhq9oWwaSX+CXez5LsOe6zbrEsekF/UlJJGjrP1S7dZpbP8RIBUUyQootB bw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj7742m3c-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 17:03:26 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 257F23A;
 Tue, 21 May 2019 15:03:26 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F11662BFE;
 Tue, 21 May 2019 15:03:25 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May
 2019 17:03:25 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May 2019 17:03:25
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: [PATCH] ARM: dts: stm32: add power supply of rm68200 on
 stm32mp157c-ev1
Date: Tue, 21 May 2019 17:03:18 +0200
Message-ID: <1558450998-13451-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_080339_692795_450288EC 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

VGhpcyBwYXRjaCBhZGRzIGEgbmV3IHByb3BlcnR5IChwb3dlci1zdXBwbHkpIHRvIHBhbmVsIHJt
NjgyMDAgKHJheWRpdW0pCm9uIHN0bTMybXAxNTdjLWV2MS4KClNpZ25lZC1vZmYtYnk6IFlhbm5p
Y2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRz
L3N0bTMybXAxNTdjLWV2MS5kdHMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMgYi9h
cmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzCmluZGV4IDhlZjJjYjAuLjUwZjMy
NjMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMKKysr
IGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZXYxLmR0cwpAQCAtMTI3LDYgKzEyNyw3
IEBACiAJCXJlZyA9IDwwPjsKIAkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW9mIDE1IEdQSU9fQUNUSVZF
X0xPVz47CiAJCWJhY2tsaWdodCA9IDwmcGFuZWxfYmFja2xpZ2h0PjsKKwkJcG93ZXItc3VwcGx5
ID0gPCZ2M3YzPjsKIAkJc3RhdHVzID0gIm9rYXkiOwogCiAJCXBvcnQgewotLSAKMi43LjQKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
