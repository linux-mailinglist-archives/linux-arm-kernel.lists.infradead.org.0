Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1A71C7A4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NdgXxyyFJLwRH5A1LmsBJP7UZjq8/IIkXb1qxf3bgoc=; b=rGDUDpOfA3dyip
	BLAJq5e9ke0SWJOqLmmRYEjIg5kk6QM48k3GOGEGMkwdSZS6Di+ert4RKaduyu4a5IoLxQNVSXRpI
	HcQ95+4yNqwB6vaS2yo8qhxMnYZpml0A0VfiVQzE0M/9e5/llRohL9Hz6C7qP60m9UEUBbM3Syx4o
	+t4+PIUcSJ9IGH7RepmPAlu2cxd1QrWvRFYEdfzLy9V/vKo6AKbpL2r5gFe/EDWSdI0Px6tSNqgTK
	N+v7hnll870loBgwblIFKlbgdrqfz4jwx5VE/latySAullme7n9mgAo4D8O0Nx7hD4Vy9AZTt/kls
	0VaVPbDhzHvPao79dIAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPja-0005Q0-3d; Wed, 06 May 2020 19:29:34 +0000
Received: from lists.nic.cz ([217.31.204.67] helo=mail.nic.cz)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPjR-0005Ox-F4
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:29:27 +0000
Received: from dellmb.labs.office.nic.cz (unknown
 [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
 by mail.nic.cz (Postfix) with ESMTP id D9B4913FE85;
 Wed,  6 May 2020 21:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1588793357; bh=VZuzBnimWeKChjj/KOdHP48P36qv6l/kr2cs8Qfa+is=;
 h=From:To:Date;
 b=VfxpSzXVOvDmZ3HSBmpgQdqebrsPqrcJdKACiQjH39iXqUTmyiN5+Bdy+bfg2p2TU
 j9Z9mjVfAv0wziaNwwg3rFVUGZItXJ7ncu5XB9DOTFDS5winjExyvSMzyORkUuB0Lg
 5+o4l4bOg5t7/ykS2Jpg1XUHbsKBRoSfWklKVcv4=
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: fix SFP binding
Date: Wed,  6 May 2020 21:29:16 +0200
Message-Id: <20200506192916.29853-1-marek.behun@nic.cz>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
 USER_IN_WHITELIST shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_122925_795914_795355B0 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHNmcCBjb21wYXRpYmxlIHNob3VsZCBiZSAnc2ZmLHNmcCcsIG5vdCAnc2ZmLHNmcCsnLiBX
ZSB1c2VkIHBhdGNoZWQKa2VybmVsIHdoZXJlIHRoZSBsYXR0ZXIgd2FzIHdvcmtpbmcuCgpGaXhl
czogNzEwOWQ4MTdkYjJlICgiYXJtNjQ6IGR0czogbWFydmVsbDogYWRkIERUUyBmb3IgVHVycmlz
IE1veCIpClNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6biA8bWFyZWsuYmVodW5AbmljLmN6PgpD
YzogR3JlZ29yeSBDTEVNRU5UIDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+Ci0tLQogYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3gu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3gu
ZHRzCmluZGV4IGJiNDJkMWU2YTRlOS4uNmEyZWM2NjI1ODgwIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzCkBAIC05
NSw3ICs5NSw3IEBAIHNkaGNpMV9wd3JzZXE6IHNkaGNpMS1wd3JzZXEgewogCX07CiAKIAlzZnA6
IHNmcCB7Ci0JCWNvbXBhdGlibGUgPSAic2ZmLHNmcCsiOworCQljb21wYXRpYmxlID0gInNmZixz
ZnAiOwogCQlpMmMtYnVzID0gPCZpMmMwPjsKIAkJbG9zLWdwaW8gPSA8Jm1veHRldF9zZnAgMCBH
UElPX0FDVElWRV9ISUdIPjsKIAkJdHgtZmF1bHQtZ3BpbyA9IDwmbW94dGV0X3NmcCAxIEdQSU9f
QUNUSVZFX0hJR0g+OwotLSAKMi4yNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
