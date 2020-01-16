Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F5313DCDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:01:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K+XX/SEc8opKAXzjU/k79G4Agb3DpeTQwHq1Bl/mECs=; b=i+vaWIN2Qf0k+M
	GPTWhm+Ju7nDqkw4bPhBZKt696f0Amjh1pTd7R6pROn9gXPjlTaP6mGqzc88hZVG6GUQEnS2p7wGS
	9ot5hBkduAivcBNRnL0OlLOMQR6KNenAHyoKj/qNON36IXG19r8/zL/t1ApdDf565qX/SNAQlMim+
	EFzAwJx2hh2z9OccOxP7YTaIbzgyNx0H9A3p4IXSwLFCx3ujbXIEdrimjmpQ755DW9BbJzM1ilDm3
	1M74gLLcl9iyGYs/7loFSj74T72zNtPCG33xJfV1CE5VA0a4v5f8e6BepLfcgeuGhQy+b4iaxf5B2
	J3+2ZdXA5OxWi7ibTrqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5iW-0006ak-Pi; Thu, 16 Jan 2020 14:01:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5i4-0006LS-65
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:01:28 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1is5hx-00075c-Es; Thu, 16 Jan 2020 15:01:13 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1is5hw-0002UC-2t; Thu, 16 Jan 2020 15:01:12 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
 linux-imx@nxp.com, c.hemp@phytec.de, s.christ@phytec.de,
 chf.fritz@googlemail.com, s.riedmueller@phytec.de
Subject: [PATCH v3 1/2] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Date: Thu, 16 Jan 2020 15:01:07 +0100
Message-Id: <20200116140108.6069-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_060120_219699_030E6A58 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGN1cnJlbnQgc2V0IG1pbmltdW0gdm9sdGFnZSBvZiA3MzAwMDDCtVYgc2VlbXMgdG8gYmUg
d3JvbmcuIEkgZG9uJ3QKa25vdyB0aGUgZG9jdW1lbnQgd2hpY2ggc3BlY2lmaWVzIHRoYXQgYnV0
IHRoZSBpbXg2cWRsIGRhdGFzaGVldHMgc2F5cwp0aGF0IHRoZSBtaW5pbXVtIHZvbHRhZ2Ugc2hv
dWxkIGJlIDAuOTI1ViBmb3IgVkREX0FSTSAoTERPIGJ5cGFzc2VkLApsb3dlc3Qgb3BwKSBhbmQg
MS4xNVYgZm9yIFZERF9TT0MgKExETyBieXBhc3NlZCwgbG93ZXN0IG9wcCkuCgpGaXhlczogZGRl
YzVkMWMwMDQ3ICgiQVJNOiBkdHM6IGlteDY6IEFkZCBpbml0aWFsIHN1cHBvcnQgZm9yIHBoeUNP
UkUtaS5NWCA2IFNPTSIpClNpZ25lZC1vZmYtYnk6IE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hAcGVu
Z3V0cm9uaXguZGU+Ci0tLQp2MzoKLSBmaXggY29tbWl0IG1lc3NhZ2UKdjI6Ci0gdXNlIGxkbyBi
eXBhc3NlZCB2YWx1ZXMKLS0tCiBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXBoeXRlYy1waHlj
b3JlLXNvbS5kdHNpIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5
dGVjLXBoeWNvcmUtc29tLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXBoeXRlYy1w
aHljb3JlLXNvbS5kdHNpCmluZGV4IGExZTJjNTA5NGQ1OC4uNTFhNDdhMjQyNzgzIDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpCisr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kKQEAg
LTExMSwxNCArMTExLDE0IEBACiAJCXJlZ3VsYXRvcnMgewogCQkJdmRkX2FybTogYnVjazEgewog
CQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9hcm0iOwotCQkJCXJlZ3VsYXRvci1taW4tbWljcm92
b2x0ID0gPDczMDAwMD47CisJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8OTI1MDAwPjsK
IAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMzgwMDAwPjsKIAkJCQlyZWd1bGF0b3It
YWx3YXlzLW9uOwogCQkJfTsKIAogCQkJdmRkX3NvYzogYnVjazIgewogCQkJCXJlZ3VsYXRvci1u
YW1lID0gInZkZF9zb2MiOwotCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDczMDAwMD47
CisJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTE1MDAwMD47CiAJCQkJcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MTM4MDAwMD47CiAJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKIAkJ
CX07Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
