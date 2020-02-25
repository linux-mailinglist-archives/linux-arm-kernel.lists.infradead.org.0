Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAB516EA99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=shGKR6ljC0o/KK/EdgDScKFA+qAQ5iePduXICQ2tHEs=; b=ij7/wQlalfgGw7
	YUnjAehFStCX/38FiQE1K03v+2uPonCrZmkxsOAu/Ag3SzeLw7BjUbJTH3H4NWXkfyFwjVO4ibPFq
	HYyMr/d1EUyudbkpz7xvphqI8+by35Kq3AEWPugDAJ84/HcjkDpU2/640X/u3QELSQ2jYmRqHAWpo
	wfb1asRRyv1CZ5Ct/LMUcjlYRCXDi68opSQRZJP+v+wvepDyULFAWvuJnPGANTMOzXa+VkN/ivMEl
	JsK2+EhF1+l92F7g+g0cYz1trTuLxmAJTtqBDy4y2x6hXA/F5C4QzLJt5G0E0Eq8TXzP1SlTxpo61
	Ao5s2kQ4zmCRL6DYAu6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cWu-00065P-Je; Tue, 25 Feb 2020 15:53:52 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cWl-00063w-3i
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:53:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id D2C98FB04;
 Tue, 25 Feb 2020 16:53:37 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDnBPv5pFWUt; Tue, 25 Feb 2020 16:53:35 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 9C517405CD; Tue, 25 Feb 2020 16:53:34 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Robert Chiras <robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/1] phy: fsl-imx8-mipi-dphy: Hook into runtime pm
Date: Tue, 25 Feb 2020 16:53:33 +0100
Message-Id: <cover.1582645780.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_075343_313235_79E326BE 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

VGhpcyBhbGxvd3MgdXMgdG8gc2h1dCBkb3duIHRoZSBtaXBpIHBvd2VyIGRvbWFpbiBvbiB0aGUg
U09DLiAgVGhlCmFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIGRyb3AgdGhlIGRwaHkgZnJvbSB0aGUg
bWlwaSBwb3dlciBkb21haW4gaW4gdGhlClNPQ3MgZGV2aWNlIHRyZWUgYW5kIG9ubHkgaGF2ZSB0
aGUgRFNJIGhvc3QgY29udHJvbGxlciB2aXNpYmxlIHRoZXJlCihhbmQgcmVseSBvbiB0aGUgcGh5
IGxheWVyJ3MgYnVpbHQgaW4gcnVudGltZSBwbSBoYW5kbGluZykgYnV0IHRoaXMKbWFrZXMgdGhl
IHBvd2VyIGRvbWFpbiBkZXBlbmRlbmN5IGxlc3MgZXhwbGljaXQuCgpDdXJyZW50bHkgdGhlIHBt
IGRvbWFpbiBjYW4ndCBiZSBzaHV0IG9mZiB3aGVuIGJsYW5raW5nIHRoZSBwYW5lbDoKCnBtX2dl
bnBkX3N1bW1hcnkKZG9tYWluICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgICAgICAg
ICAgc2xhdmVzCiAgICAvZGV2aWNlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcnVudGltZSBzdGF0dXMKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQptaXBpICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIG9uCiAgICAvZGV2aWNlcy9wbGF0Zm9ybS9zb2NAMC9zb2NAMDpidXNAMzA4
MDAwMDAvMzBhMDAzMDAuZHBoeSAgdW5zdXBwb3J0ZWQKICAgIC9kZXZpY2VzL3BsYXRmb3JtL3Nv
Y0AwL3NvY0AwOmJ1c0AzMDgwMDAwMC8zMGEwMDAwMC5taXBpX2RzaSAgc3VzcGVuZGVkCgp3aGls
ZSB3aXRoIHRoaXMgd2UgY2FuIHNodXQgZG93biB0aGUgcG93ZXIgZG9tYWluIG9uIHBhbmVsIGJs
YW5rOgoKbWlwaSAgICAgICAgICAgICAgICAgICAgICAgICAgICBvZmYtMAogICAgL2RldmljZXMv
cGxhdGZvcm0vc29jQDAvc29jQDA6YnVzQDMwODAwMDAwLzMwYTAwMzAwLmRwaHkgIHN1c3BlbmRl
ZAogICAgL2RldmljZXMvcGxhdGZvcm0vc29jQDAvc29jQDA6YnVzQDMwODAwMDAwLzMwYTAwMDAw
Lm1pcGlfZHNpICBzdXNwZW5kZWQKClRoaXMgaXMgc2ltaWxhciB0byB3aGF0IGRyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYwpkb2VzLgoKUGF0Y2ggaXMgYWdh
aW5zdCBuZXh0LTIwMjAwMjE3CgpHdWlkbyBHw7xudGhlciAoMSk6CiAgcGh5OiBmc2wtaW14OC1t
aXBpLWRwaHk6IEhvb2sgaW50byBydW50aW1lIHBtCgogLi4uL3BoeS9mcmVlc2NhbGUvcGh5LWZz
bC1pbXg4LW1pcGktZHBoeS5jICAgIHwgMjIgKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNo
YW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCi0tIAoyLjIzLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
