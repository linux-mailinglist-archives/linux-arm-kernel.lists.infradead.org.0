Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575071DDDC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGmdyZcnx89B9c8F+Jq7mPCCCA8JobsK4fgtlnB0C8c=; b=rHJJKLLg08RJ4c
	wtInt+I/GsTEZDz6Tvre1SDfTbbh+d7ZaNYTckhweD15CZDESOUQ0aVgHoa7yDE3493FVvvSClKoN
	0dscLomOQlH/cNmZKJ2UDMPfnpy7MjC6DO9GwoUfJo0j5BlmQ0xqtc5W/tP/ksz3Oi9u0+dEFy8gI
	I7UqPXfP0eYO68jM4x1Y0l6j7ObTXWoxWbo0XfTQ/0XCr2V1gBMoPrP4tzdTJNH7I1xg7ne1aASxm
	IYB5nwaxuc7u6+NLcMB7x9XlqMokzEUwLrJESux1NXxIEcF16u6TLcmbGZEtrx5mMYsJT3ExPeZMh
	tmyF1wqmZIpv2aT8MHuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jby4I-00073A-2r; Fri, 22 May 2020 03:09:54 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jby2r-00069A-SN
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 03:08:27 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.2008003|-1; CH=green; DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.101682-0.00181878-0.8965;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03312; MF=frank@allwinnertech.com; NM=1; PH=DS;
 RN=15; RT=15; SR=0; TI=SMTPD_---.HbxBGFJ_1590116882; 
Received: from allwinnertech.com(mailfrom:frank@allwinnertech.com
 fp:SMTPD_---.HbxBGFJ_1590116882)
 by smtp.aliyun-inc.com(10.147.41.178);
 Fri, 22 May 2020 11:08:22 +0800
From: Frank Lee <frank@allwinnertech.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linus.walleij@linaro.org,
 p.zabel@pengutronix.de, frank@allwinnertech.com,
 huangshuosheng@allwinnertech.com, tiny.windzz@gmail.com
Subject: [PATCH 4/4] arm64: allwinner: A100: add support for Allwinner Perf1
 board
Date: Fri, 22 May 2020 11:07:43 +0800
Message-Id: <20200522030743.10204-5-frank@allwinnertech.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200522030743.10204-1-frank@allwinnertech.com>
References: <20200522030743.10204-1-frank@allwinnertech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_200826_127878_3B775FFC 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QTEwMCBwZXJmMSBpcyBhbiBBbGx3aW5uZXIgQTEwMC1iYXNlZCBTQkMsIHdpdGggdGhlIGZvbGxv
d2luZyBmZWF0dXJlczoKCi0gMUdpQiBERFIzIERSQU0KLSBBWFA4MDMgUE1JQwotIDIgVVNCIDIu
MCBwb3J0cwotIE1pY3JvU0Qgc2xvdCBhbmQgb24tYm9hcmQgZU1NQyBtb2R1bGUKLSBvbi1ib2Fy
ZCBOYW5kIGZsYXNoCi0gwrfCt8K3CgpBZGRzIGluaXRpYWwgc3VwcG9ydCBmb3IgaXQsIGluY2x1
ZGluZyB0aGUgVUFSVC4KClNpZ25lZC1vZmYtYnk6IEZyYW5rIExlZSA8ZnJhbmtAYWxsd2lubmVy
dGVjaC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUgICAg
ICAgIHwgIDEgKwogLi4uL2FsbHdpbm5lci9zdW41MGktYTEwMC1hbGx3aW5uZXItcGVyZjEuZHRz
IHwgMjcgKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25z
KCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWExMDAtYWxsd2lubmVyLXBlcmYxLmR0cwoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL01ha2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
TWFrZWZpbGUKaW5kZXggZTRkM2NkMGFjNWJiLi5hYjc4MGRiZGQxN2IgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL01ha2VmaWxlCisrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL01ha2VmaWxlCkBAIC0xNCw2ICsxNCw3IEBAIGR0Yi0kKENPTkZJR19B
UkNIX1NVTlhJKSArPSBzdW41MGktYTY0LXBpbmVwaG9uZS0xLjEuZHRiCiBkdGItJChDT05GSUdf
QVJDSF9TVU5YSSkgKz0gc3VuNTBpLWE2NC1waW5ldGFiLmR0YgogZHRiLSQoQ09ORklHX0FSQ0hf
U1VOWEkpICs9IHN1bjUwaS1hNjQtc29waW5lLWJhc2Vib2FyZC5kdGIKIGR0Yi0kKENPTkZJR19B
UkNIX1NVTlhJKSArPSBzdW41MGktYTY0LXRlcmVzLWkuZHRiCitkdGItJChDT05GSUdfQVJDSF9T
VU5YSSkgKz0gc3VuNTBpLWExMDAtYWxsd2lubmVyLXBlcmYxLmR0YgogZHRiLSQoQ09ORklHX0FS
Q0hfU1VOWEkpICs9IHN1bjUwaS1oNS1iYW5hbmFwaS1tMi1wbHVzLmR0YgogZHRiLSQoQ09ORklH
X0FSQ0hfU1VOWEkpICs9IHN1bjUwaS1oNS1iYW5hbmFwaS1tMi1wbHVzLXYxLjIuZHRiCiBkdGIt
JChDT05GSUdfQVJDSF9TVU5YSSkgKz0gc3VuNTBpLWg1LWVtbGlkLW5ldXRpcy1uNS1kZXZib2Fy
ZC5kdGIKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1h
MTAwLWFsbHdpbm5lci1wZXJmMS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktYTEwMC1hbGx3aW5uZXItcGVyZjEuZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IDAwMDAwMDAwMDAwMC4uMzJjOTk4NjkyMGVkCi0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWExMDAtYWxsd2lubmVyLXBlcmYxLmR0cwpAQCAt
MCwwICsxLDI3IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIG9yIE1J
VCkKKy8qCisgKiBDb3B5cmlnaHQgKGMpIDIwMjAgRnJhbmsgTGVlIDxmcmFua0BhbGx3aW5uZXIu
Y29tPgorICovCisKKy9kdHMtdjEvOworCisjaW5jbHVkZSAic3VuNTBpLWExMDAuZHRzaSIKKwor
L3sKKwltb2RlbCA9ICJBMTAwIHBlcmYxIjsKKwljb21wYXRpYmxlID0gImFsbHdpbm5lcixhMTAw
LXBlcmYxIiwgImFsbHdpbm5lcixzdW41MGktYTEwMCI7CisKKwlhbGlhc2VzIHsKKwkJc2VyaWFs
MCA9ICZ1YXJ0MDsKKwl9OworCisJY2hvc2VuIHsKKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMDox
MTUyMDBuOCI7CisJfTsKK307CisKKyZ1YXJ0MCB7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKKwlwaW5jdHJsLTAgPSA8JnVhcnQwX3BiX3BpbnM+OworCXN0YXR1cyA9ICJva2F5IjsKK307
Ci0tIAoyLjI0LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
