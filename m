Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1128437844
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nj7gZ2wvluMXi4LHRfpC1IiJqgiAvhVVyRSXZFLgWho=; b=FMkswfu+yOxdbV
	gszdzBqAVFDKzodKeHRAcwW3A6zDsw76cjZxLmfYwF4n03eAtaqbi94i0eeJqpA/sDKuCZKknk5tR
	DEZAhU1EwyyNXXDJhi6qBCn0um8fSPbVQqd41426uROwCHfS3e1DOHIix2O2Za6JJaOxOMg7qdhyu
	klokY9jCC2SD1HCW8sWknvaij4IgLaXzUyMNLDeWQ6WJGwjCfiofA/R8EMRaRg9NwCbn61lxFMEhO
	gk4G9X46CZifcWA+jXQMXVzda5eKPkvayIQwp5Xm39d4g4VMuKtglP+my9yidb7FKkH4llXumf9oY
	2bJ7oQVdQ46MqsDsMEGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuUd-0007bD-MX; Thu, 06 Jun 2019 15:39:55 +0000
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuUS-0007Zb-RE
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:39:46 +0000
Received: from player697.ha.ovh.net (unknown [10.108.54.59])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id D2ABB214598
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  6 Jun 2019 17:39:41 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 20984697A803;
 Thu,  6 Jun 2019 15:39:22 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v2 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
Date: Thu,  6 Jun 2019 17:38:25 +0200
Message-Id: <20190606153825.8183-3-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3728136069398615236
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudeggedgledvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_083945_043995_ED871BA9 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.46.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rui Miguel Silva <rmfrfs@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG9jdW1lbnQgImZzbCxpbXg2dWwtY3NpIiBlbnRyeS4KClNpZ25lZC1vZmYtYnk6IFPDqWJhc3Rp
ZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCgpDaGFu
Z2VzIGZvciB2MjoKIC0gTmV3IHBhdGNoIHRvIGRvY3VtZW50IG5ldyAiZnNsLGlteDZ1bC1jc2ki
IGVudHJ5LgoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9pbXg3LWNz
aS50eHQgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEv
aW14Ny1jc2kudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2lt
eDctY3NpLnR4dAppbmRleCAzYzA3YmM2NzZiYzMuLjQ5ZTlhZjE5YjNlYSAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2lteDctY3NpLnR4dAorKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvaW14Ny1jc2kudHh0CkBA
IC05LDcgKzksNyBAQCB0byBjb25uZWN0IGRpcmVjdGx5IHRvIGV4dGVybmFsIENNT1MgaW1hZ2Ug
c2Vuc29ycy4KIAogUmVxdWlyZWQgcHJvcGVydGllczoKIAotLSBjb21wYXRpYmxlICAgIDogImZz
bCxpbXg3LWNzaSI7CistIGNvbXBhdGlibGUgICAgOiAiZnNsLGlteDctY3NpIiBvciAiZnNsLGlt
eDZ1bC1jc2kiOwogLSByZWcgICAgICAgICAgIDogYmFzZSBhZGRyZXNzIGFuZCBsZW5ndGggb2Yg
dGhlIHJlZ2lzdGVyIHNldCBmb3IgdGhlIGRldmljZTsKIC0gaW50ZXJydXB0cyAgICA6IHNob3Vs
ZCBjb250YWluIENTSSBpbnRlcnJ1cHQ7CiAtIGNsb2NrcyAgICAgICAgOiBsaXN0IG9mIGNsb2Nr
IHNwZWNpZmllcnMsIHNlZQotLSAKMi4xOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
