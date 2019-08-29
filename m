Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C48A18A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OhDARtIzq/v6+YV0r8lw8ZATalFUL8s6yDYK+sc5i4=; b=ExKDZ+1dLFR3mP
	6aZ+yY19ObZU56cWmyFznfLlL+X/u/Qv5RmTisLpMmn0uJXqFHLpZENqQLTsBfKMz7yMgQtb9Gl10
	EFSEUrdlXYh9npre5v+Eb0Dc+f6ob4MdkRg2T0J5WJaP2KbERiB6u1Bbs4p4bhB1/nugob+RJp8tb
	L31sCpesIZM6fjMPF3o1nj+eDWixJYtHF5KpJDGcNuQhSIji91AfAf4CpU8D7yjLzRELz9HUNYRRo
	UBbnQcRLhM09G6saDmFoWcYwNYpilPu3w6xrQznGfh3VArVvgXwkCxWz54JJ6qsRQAou52nJZrk6r
	/aVmdRySSJgTv6Fll6yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3If8-0002AW-C2; Thu, 29 Aug 2019 11:32:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IdG-0000fD-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:30:28 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5BA381A00B9;
 Thu, 29 Aug 2019 13:30:25 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4C47F1A015C;
 Thu, 29 Aug 2019 13:30:25 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 93EAC20613;
 Thu, 29 Aug 2019 13:30:24 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 09/14] dt-bindings: display: Add max-memory-bandwidth
 property for mxsfb
Date: Thu, 29 Aug 2019 14:30:10 +0300
Message-Id: <1567078215-31601-10-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043026_818687_E16135CF 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIG5ldyBvcHRpb25hbCBwcm9wZXJ0eSAnbWF4LW1lbW9yeS1iYW5kd2lkdGgnLCB0byBsaW1p
dCB0aGUgbWF4aW11bQpiYW5kd2lkdGggdXNlZCBieSB0aGUgTVhTRkJfRFJNIGRyaXZlci4KClNp
Z25lZC1vZmYtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KVGVzdGVk
LWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgpSZXZpZXdlZC1ieTogUm9iIEhl
cnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9teHNmYi50eHQgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvbXhzZmIudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvbXhzZmIudHh0CmluZGV4IDQ3MmUxZWEuLmM4ZGNhNTAgMTAwNjQ0Ci0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L214c2ZiLnR4dAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9teHNmYi50eHQKQEAgLTE0LDYg
KzE0LDExIEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAgICAgLSAicGl4IiBmb3IgdGhlIExDRElG
IGJsb2NrIGNsb2NrCiAgICAgLSAoTVg2U1gtb25seSkgImF4aSIsICJkaXNwX2F4aSIgZm9yIHRo
ZSBidXMgaW50ZXJmYWNlIGNsb2NrCiAKK09wdGlvbmFsIHByb3BlcnRpZXM6CistIG1heC1tZW1v
cnktYmFuZHdpZHRoOiBtYXhpbXVtIGJhbmR3aWR0aCBpbiBieXRlcyBwZXIgc2Vjb25kIHRoYXQg
dGhlCisJY29udHJvbGxlciBjYW4gaGFuZGxlOyBpZiBub3QgcHJlc2VudCwgdGhlIG1lbW9yeQor
CWludGVyZmFjZSBpcyBmYXN0IGVub3VnaCB0byBoYW5kbGUgYWxsIHBvc3NpYmxlIHZpZGVvIG1v
ZGVzCisKIFJlcXVpcmVkIHN1Yi1ub2RlczoKICAgLSBwb3J0OiBUaGUgY29ubmVjdGlvbiB0byBh
biBlbmNvZGVyIGNoaXAuCiAKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
