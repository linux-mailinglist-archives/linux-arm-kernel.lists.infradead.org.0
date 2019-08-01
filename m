Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC217D78C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bRJad8F9Ge8K7BZyaNJvvyolq8bhnIsKIjon25yoyT0=; b=ujM24WKj8JzZ/4
	KO+tITG6yO/9fA4V6z1XQK871AC8gl7Wppg6qVOr9aQcRF6KiA+7QenunrjlC+/ANAGkx7rwhJ70n
	zjDyAbloQhqiE7QH64bpL+xW40IfJ32WZEFYZ9/JFIlkB/xH8oUOHrD7ZbP+OBE1Ci2vP9esSS4nB
	J9hHX8F+16Km5VXpcQPgZhBTOR6sI0JL28ZclVZUHED4DfEqOUKaRCPzl+jwGh1R3pan4STpmIqVM
	M3JkOsGFa9ahqPMPcIztAyShtAbaZKmkrvZvQvjp99dE2LTplD/Uf5hBmOem3Newg2qtgsMQ3pq97
	SGtTkUv856dr0utJ57aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6QE-00039n-Bl; Thu, 01 Aug 2019 08:26:50 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Kd-00034Y-5k
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 9306CFB04;
 Thu,  1 Aug 2019 10:21:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtZoogl4K8vi; Thu,  1 Aug 2019 10:20:59 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 4457246DEA; Thu,  1 Aug 2019 10:20:59 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 0/1] imx: Fix typo in iMQ8MQ reset names
Date: Thu,  1 Aug 2019 10:20:58 +0200
Message-Id: <cover.1564647612.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012103_407792_E7838BF1 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

U29tZSBvZiB0aGUgbWlwaSBkc2kgcmVzZXRzIHdlcmUgY2FsbGVkCgogIElNWDhNUV9SRVNFVF9N
SVBJX0RJU18KCmluc3RlYWQgb2YKCiAgSU1YOE1RX1JFU0VUX01JUElfRFNJXwoKU2luY2UgdGhl
eSdyZSBEU0kgcmVsYXRlZCB0aGlzIGxvb2tzIGxpa2UgYSB0eXBvLiBUaGlzIGZpeGVzIHRoZSBv
bmx5IGluIHRyZWUKdXNlciBhcyB3ZWxsIHRvIG5vdCBicmVhayBiaXNlY3RpbmcuCgpHdWlkbyBH
w7xudGhlciAoMSk6CiAgZHQtYmluZGluZ3M6IHJlc2V0OiBGaXggdHlwbyBpbiBpbXg4bXEgcmVz
ZXRzCgogZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmMgICAgICAgICAgICAgICB8IDEyICsrKysr
Ky0tLS0tLQogaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaCB8ICA2ICsr
Ky0tLQogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
