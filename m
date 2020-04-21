Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118721B2A68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mUb0wLU19/pz2piqNEEbuyRO1luT60RbNLg29K1mL8=; b=o3IhuGghfXSMEi
	W0uyQ7Vk+mumeIWEFDoKUX0xpenKpeHY9Qm3VyzKNeV76YKPfzgSCxja4OQ+DfnKzoybxOXA/xRhe
	yB8nfBdJXsk5wWxdMb+QN+PS8TjfaBIo8QbTBy2J85CsdRWT2Rb1g8kitn1rCiAUY43qa5Wz4XzEZ
	vxzWd6/wBkNJ1rapco4+MRgUgk4thw6kGUJQTx34B9W5UljBaExWJyeaRn396gxnXcgbjLAC0brQ8
	aN5RXXfdPI/WgYsilFmb9UJs7Qxefw4RVt4a5CVSX7BJKRnvFA/HRVuoxUftvjtlf91gJJlZ6KZs7
	eUzjw1d+WOj/3uh50kqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu9D-0003HG-DD; Tue, 21 Apr 2020 14:45:15 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQu8J-0002pT-PT
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:44:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 8C68BFB03;
 Tue, 21 Apr 2020 16:44:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQv9eiXO13nm; Tue, 21 Apr 2020 16:44:16 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 61255400FC; Tue, 21 Apr 2020 16:44:14 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: "Rob Herring" <robh+dt@kernel.org>, "Shawn Guo" <shawnguo@kernel.org>,
 "Sascha Hauer" <s.hauer@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>,
 "Fabio Estevam" <festevam@gmail.com>, "NXP Linux Team" <linux-imx@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 "Martin Kepplinger" <martink@posteo.de>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 "Abel Vesa" <abel.vesa@nxp.com>, "Anson Huang" <Anson.Huang@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: Don't use underscore in node name
Date: Tue, 21 Apr 2020 16:44:14 +0200
Message-Id: <55399d6b297e329f125a71aea16e5f48c2857945.1587480093.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587480093.git.agx@sigxcpu.org>
References: <cover.1587480093.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_074420_013245_F46981A3 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVuYW1lIHVzYl90eXBlYyB0byB1c2ItdHlwZWMgdG8gZ2V0IGEgcmlkIG9mIGEgd2FybmluZyB3
aGVuIGJ1aWxkaW5nCmR0YiB3aXRoIHdhcm5pbmdzIGVuYWJsZWQuCgpTaWduZWQtb2ZmLWJ5OiBH
dWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cwppbmRleCAwNTI2
ZWJmMGRhMGYuLjY5MDBhYzI3NGY1YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCkBAIC00MTAsNyArNDEwLDcg
QEAgbGRvN19yZWc6IExETzcgewogCQl9OwogCX07CiAKLQl0eXBlY19wdG41MTAwOiB1c2JfdHlw
ZWNANTIgeworCXR5cGVjX3B0bjUxMDA6IHVzYi10eXBlY0A1MiB7CiAJCWNvbXBhdGlibGUgPSAi
bnhwLHB0bjUxMTAiOwogCQlyZWcgPSA8MHg1Mj47CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7Ci0tIAoyLjI2LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
