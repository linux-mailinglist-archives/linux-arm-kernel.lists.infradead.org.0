Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ECD70895
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SBPSJtfPVT1EraFe11ltMavGr99UMvB0JpOCJ8om7ic=; b=QIyjn84JsSgt6T
	oxtp5dgAEsIOOoqiRUR2ojYDqUoVjgax/6Hkj42/Q25eCbdCoW9/zYQzPDz6X+/cJSXsU7+bHg8Sl
	VNQ78hmuvPyIIyV80KOjLIP6OXSw0UTOwVdu4hTKopcaajxC4bjKtUP4nPstMqeXISrpP2IMOVGr+
	dWgvTh20fv1JZab0OpVuoxxhLBL79MuEE7hVRQDTnssbk8bWFjWcWSQ0AuLUhAjfXoa64K3QIb2XU
	Mt1X88d4lRg6/XLQrsM1AEPqXTaRW2jWgS3QT77/EEKHeM8UZkXPluzSx0Cg8+mu//qZRRMayhhsO
	62NtGxJa9ez5d1CZs3jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpd43-000257-L5; Mon, 22 Jul 2019 18:29:35 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpd23-0001P7-JD
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:27:34 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45sqmk21FrzB2;
 Mon, 22 Jul 2019 20:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1563819961; bh=KEiGdDoCPDGbowVAg3mwMmkSnaoLsq2RZhaCnpCsVYQ=;
 h=Date:From:Subject:To:Cc:From;
 b=HeXr2APrxAxL6voaSkr4VDM5iuc4eC2f0qD/oD5jAusrHvMCmjS7xhx6GLc4sWbEB
 vSVKNMv+KeXIcIAxSqzFTec9j8yuLYloXQ2tezdxcuZK+zznBaUzvVNSSyIMXNH/PC
 AxawEA/Kv/Mq5ORnM/hHCJahmKgKcQrgZEMQFg48NU9aqSsLIFCFZqxfGprv3ZTonZ
 H6a7ilPjqH2CisL40vKFQuAlTB0ipTzY+XdV3a3bjnxFZhovH2AVt4kEMbtcOVrGZA
 GGjr8uHXxWZiZqzWlkaGSXoU0OOzAaDHVpm6yI58Ur/IpJfMutYcz+yB383k3SBdSP
 hnRz452LMei6A==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Mon, 22 Jul 2019 20:27:17 +0200
Message-Id: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH 0/5] ASoC: atmel: extend SSC support
MIME-Version: 1.0
To: alsa-devel@alsa-project.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_112732_044267_3A9BD04E 
X-CRM114-Status: UNSURE (   6.17  )
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
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgaW1wcm92ZXMgc3VwcG9ydCBmb3IgdmFyaW91cyBjb25maWd1cmF0aW9ucyB1
c2luZyBTU0MgbW9kdWxlCmFzIGltcGxlbWVudGVkIGluIEF0bWVsIFNBTUE1RHggU29Dcy4gUGF0
Y2hlcyBhcmU6CgoxLiBlbmFibGUgU1NDIGluIEtjb25maWcgZm9yIGF1ZGlvLWdyYXBoLWNhcmQg
c3VwcG9ydAoyLTMuIGltcGxlbWVudCBsZWZ0LWp1c3RpZmllZCBkYXRhIG1vZGUKNC01LiBmaXgg
c2hhcmVkIEZTWU5DIHNvdXJjZSBmb3Igc2xhdmUgbW9kZQoKUGF0Y2hlcyBhZ2FpbnN0IHRpd2Fp
L3NvdW5kL2Zvci1uZXh0IHRyZWUuIFlvdSBjYW4gYWxzbyBwdWxsIGZyb20KICAgaHR0cHM6Ly9y
ZXJlLnFtcW0ucGwvZ2l0L2xpbnV4CmJyYW5jaDoKICAgYXRtZWwtc3NjCgpNaWNoYcWCIE1pcm9z
xYJhdyAoNSk6CiAgQVNvQzogYXRtZWw6IGVuYWJsZSBTU0NfUENNX0RNQSBpbiBLY29uZmlnCiAg
QVNvQzogYXRtZWxfc3NjX2RhaTogcmV3b3JrIERBSSBmb3JtYXQgY29uZmlndXJhdGlvbgogIEFT
b0M6IGF0bWVsX3NzY19kYWk6IGltcGxlbWVudCBsZWZ0LWp1c3RpZmllZCBkYXRhIG1vZGUKICBB
U29DOiBhdG1lbF9zc2NfZGFpOiBzcGxpdCBUWC9SWCBGUyBjb25zdGFudHMKICBBU29DOiBhdG1l
bF9zc2NfZGFpOiBFbmFibGUgc2hhcmVkIEZTWU5DIHNvdXJjZSBpbiBmcmFtZS1zbGF2ZSBtb2Rl
CgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy9hdG1lbC1zc2MudHh0ICAgIHwgICA0ICsK
IGRyaXZlcnMvbWlzYy9hdG1lbC1zc2MuYyAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArCiBp
bmNsdWRlL2xpbnV4L2F0bWVsLXNzYy5oICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwogc291
bmQvc29jL2F0bWVsL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBzb3Vu
ZC9zb2MvYXRtZWwvYXRtZWxfc3NjX2RhaS5jICAgICAgICAgICAgICAgfCAzMDYgKysrKysrLS0t
LS0tLS0tLS0tCiBzb3VuZC9zb2MvYXRtZWwvYXRtZWxfc3NjX2RhaS5oICAgICAgICAgICAgICAg
fCAgIDkgKy0KIDYgZmlsZXMgY2hhbmdlZCwgMTIwIGluc2VydGlvbnMoKyksIDIwNCBkZWxldGlv
bnMoLSkKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
