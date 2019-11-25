Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97ED410906A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 15:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5AMzJpejRKIKY/39Xcok6ZME6Z1emSlFLZCvnqPbLo=; b=Q3XwGnOjtImYvL
	Igg0bOT576teXGjyHKIY9RsLvqZ/X2oDglYWs/BQZUs1EELHX5zSizQDqrcqE+V5NONb5nQX3y32D
	JZHWmmnZefuhY/fxZ9YcHrUv/LiT7KNwl1EaJlKukHY55OEvlxTtCmlr/jqxmwV+Q0ZNuYTKtgPuN
	ygHmQiF//0rJz5OiphjNP3PLUZawLuMqXfutX6hRgXMS1AUPSsD1A9pMCoAjGUNnU8/KugGMuLbj/
	9cNVsIgBjr8KvHSusnPpvLOS4oflqgutVmECjovQDL+6Wc6nh4AuZ2fyN3PdteLrd+e7dAEvfH4/I
	SeFC8QjbtQxr7PXKf4OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFhz-0000Sj-Nf; Mon, 25 Nov 2019 14:51:23 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFhV-0000Gh-SK
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 14:50:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 226D7FB07;
 Mon, 25 Nov 2019 15:50:45 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBEq2K-xOEii; Mon, 25 Nov 2019 15:50:42 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id E128E4928D; Mon, 25 Nov 2019 15:50:07 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Anson Huang <Anson.Huang@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Carlo Caione <ccaione@baylibre.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: imx8mq: Add eLCDIF controller
Date: Mon, 25 Nov 2019 15:50:07 +0100
Message-Id: <742d9ef4a98a5cf771d9763e6d68be3bd7cb7461.1574693313.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1574693313.git.agx@sigxcpu.org>
References: <cover.1574693313.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_065054_082174_9FC2F221 
X-CRM114-Status: UNSURE (   9.93  )
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

QWRkIGEgbm9kZSBmb3IgdGhlIGVMQ0RJRiBjb250cm9sbGVyLCAiZGlzYWJsZWQiIGJ5IGRlZmF1
bHQuCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgpSZXZp
ZXdlZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwgMTcgKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4bXEuZHRzaQppbmRleCA3ZjkzMTk0NTJiNTguLjFmYWRkMmIxMjZhOSAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKQEAgLTQ0OCw2ICs0NDgs
MjMgQEAKIAkJCQlmc2wsc2RtYS1yYW0tc2NyaXB0LW5hbWUgPSAiaW14L3NkbWEvc2RtYS1pbXg3
ZC5iaW4iOwogCQkJfTsKIAorCQkJbGNkaWY6IGxjZC1jb250cm9sbGVyQDMwMzIwMDAwIHsKKwkJ
CQljb21wYXRpYmxlID0gImZzbCxpbXg4bXEtbGNkaWYiLCAiZnNsLGlteDI4LWxjZGlmIjsKKwkJ
CQlyZWcgPSA8MHgzMDMyMDAwMCAweDEwMDAwPjsKKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
NSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQljbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0xD
RElGX1BJWEVMPjsKKwkJCQljbG9jay1uYW1lcyA9ICJwaXgiOworCQkJCWFzc2lnbmVkLWNsb2Nr
cyA9IDwmY2xrIElNWDhNUV9WSURFT19QTEwxX1JFRl9TRUw+LAorCQkJCQkJICA8JmNsayBJTVg4
TVFfVklERU9fUExMMV9CWVBBU1M+LAorCQkJCQkJICA8JmNsayBJTVg4TVFfQ0xLX0xDRElGX1BJ
WEVMPiwKKwkJCQkJCSAgPCZjbGsgSU1YOE1RX1ZJREVPX1BMTDE+OworCQkJCWFzc2lnbmVkLWNs
b2NrLXBhcmVudHMgPSA8JmNsayBJTVg4TVFfQ0xLXzI1TT4sCisJCQkJCQkgIDwmY2xrIElNWDhN
UV9WSURFT19QTEwxPiwKKwkJCQkJCSAgPCZjbGsgSU1YOE1RX1ZJREVPX1BMTDFfT1VUPjsKKwkJ
CQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwwPiwgPDA+LCA8MD4sIDw1OTQwMDAwMDA+OworCQkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQl9OworCiAJCQlpb211eGM6IGlvbXV4Y0AzMDMzMDAw
MCB7CiAJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLWlvbXV4YyI7CiAJCQkJcmVnID0gPDB4
MzAzMzAwMDAgMHgxMDAwMD47Ci0tIAoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
