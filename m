Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6732E70891
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JD8ZIrOeDDdWgnLycO7TZOB2v6O1jVSlKpJUshgtlic=; b=NgErlTUkMXg3Pp
	Zu/l5xPdZqNnzH2ShRmlcpxrjYmVP3U2YomFU/nJQ5uX7wRWCFXZYuz/puKUoTc50MIPvhzsvzKWT
	rmF3ayLIl8hnEFrChxmnlvlmflgpfirhMkpjlXtfDtQby+gsNCauqIYIx2q0NIspfej7o7hXhsY8s
	cCIodN1JY22YF1rKzuayWpv9ZJ40LnE0CYSsMXAYaB32Fd5ELz29aFXH7olSOcnk7BxHIy6Om3Dqc
	cEsW7Dc2eUYi2cB59+zPU+nyz2V9Ll6IHyr3imBJSvZLW2cc1wVQ9vrcYlTI+6KWSdb/k6MMJ8g0J
	wR0CWUW1QI9ABOlDJdWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpd3i-0001n6-B5; Mon, 22 Jul 2019 18:29:14 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpd22-0001P6-J3
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:27:34 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45sqmn3gY4zGX;
 Mon, 22 Jul 2019 20:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1563819961; bh=o11/fvUHST61XsrhzX92oopWdvyJlkrWA428U/YRagA=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=lvyAAgFUyqGWin5itnIdpHStuHlrNYCc/+LrEafpbcPXkotEsQAg2iZQGZOrEjMFy
 8vymqegj6X+Q7nWusjeWvCQRSODIPt2Y0V/TAJALFWSZVzh7huolo9p/yScGstra+b
 Zeu6NhN+ZJdf0HAxOK3WUckTtdXO88GWD2BlqHDx4mEJfHnwV3Z8sx9QUHuyWCmrWT
 VTIVZV18rkuzkByf5nI/dcEmIAs/j+ciE8m1S+zxKsA62U4yDG3UhrY8oaa+Gqvja6
 GY2FV4Wrq2XUDG4oDhlXudGZX6kGZQVrZYyKgirWPcLrzsqfPZ1iiIZhPDZuB4bhvY
 M32d+ddYEd/zg==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Mon, 22 Jul 2019 20:27:20 +0200
Message-Id: <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
MIME-Version: 1.0
To: alsa-devel@alsa-project.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_112731_208929_87E46C4E 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsb3cgU1NDIHRvIGJlIHVzZWQgb24gcGxhdGZvcm1zIGRlc2NyaWJlZCB1c2luZyBhdWRpby1n
cmFwaC1jYXJkCmluIERldmljZSBUcmVlLgoKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBNaXJvc8WC
YXcgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgotLS0KIHNvdW5kL3NvYy9hdG1lbC9LY29uZmln
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvc291bmQvc29jL2F0bWVsL0tjb25maWcgYi9zb3VuZC9zb2MvYXRtZWwvS2Nv
bmZpZwppbmRleCAwNmMxZDVjZTY0MmMuLjllZjlkMjViYjUxNyAxMDA2NDQKLS0tIGEvc291bmQv
c29jL2F0bWVsL0tjb25maWcKKysrIGIvc291bmQvc29jL2F0bWVsL0tjb25maWcKQEAgLTI1LDcg
KzI1LDcgQEAgY29uZmlnIFNORF9BVE1FTF9TT0NfRE1BCiAJZGVmYXVsdCB5IGlmIFNORF9BVE1F
TF9TT0NfU1NDX0RNQT15IHx8IChTTkRfQVRNRUxfU09DX1NTQ19ETUE9bSAmJiBTTkRfQVRNRUxf
U09DX1NTQz15KQogCiBjb25maWcgU05EX0FUTUVMX1NPQ19TU0NfRE1BCi0JdHJpc3RhdGUKKwl0
cmlzdGF0ZSAiU29DIFBDTSBEQUkgc3VwcG9ydCBmb3IgQVQ5MSBTU0MgY29udHJvbGxlciB1c2lu
ZyBETUEiCiAKIGNvbmZpZyBTTkRfQVRNRUxfU09DX1NTQwogCXRyaXN0YXRlCi0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
