Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674481EB70C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwq9UP+HehdDkS9VB/51mOIKEdYJzy4wlFx7+H/7GX0=; b=ADnb0YovZVknwP
	PxOcErNabZahsFg4XxEXDUjz2QoZFUZiqP8ZQlkzhTt65K5BLm0sBHuAfWeDEPRWr0Av+yk5bRybw
	sZ42BVhM+4Su2AU0Z9kJoeiNgZeLm960au6ETOQhN5E9UNG2HxpEwNJjNetYaPb3V4wyPSnhLVOPc
	WoxyiZLTlivB93hycLVAK1IRnCaJBXDJBZ4IA09/QcDC1aCkExulh2pVILvJ8cfYunht1VBu65OMk
	PCwpX9eo3BxMijUuihVfXwngOCzo8PSMMH5qaBoc1MERmF0LXLlO/AcnFD8gLd5U/3kX4DY3v1iSX
	P380oajtHDKTdBrTqABw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg1xf-0008TO-Jq; Tue, 02 Jun 2020 08:07:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1xC-00089N-Kh; Tue, 02 Jun 2020 08:07:24 +0000
Received: from ni.home (unknown [IPv6:2a01:cb19:8092:cf00:aaa1:59ff:fe08:91d5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: myjosserand)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9AADB2A2ADE;
 Tue,  2 Jun 2020 09:07:18 +0100 (BST)
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org
Subject: [PATCH v4 2/2] dt-bindings: clocks: rk3288: add rk3288w compatible
Date: Tue,  2 Jun 2020 10:06:44 +0200
Message-Id: <20200602080644.11333-3-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602080644.11333-1-mylene.josserand@collabora.com>
References: <20200602080644.11333-1-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_010722_833795_DD9C29BB 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, mylene.josserand@collabora.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHRoZSBwb3NzaWJsZSBjb21wYXRpYmxlICJyb2NrY2hpcCxyazMyODh3LWNydSIgdGhhdCBo
YW5kbGVzCnRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIHJrMzI4OCBhbmQgdGhlIG5ldyByZXZp
c2lvbiByazMyODh3LgoKVGhpcyBjb21wYXRpYmxlIHdpbGwgYmUgYWRkZWQgYnkgYm9vdGxvYWRl
cnMuCgpTaWduZWQtb2ZmLWJ5OiBNeWzDqG5lIEpvc3NlcmFuZCA8bXlsZW5lLmpvc3NlcmFuZEBj
b2xsYWJvcmEuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlw
LHJrMzI4OC1jcnUudHh0ICAgICB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszMjg4LWNydS50eHQgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszMjg4LWNydS50eHQKaW5k
ZXggOGNiNDdjMzliYTUzLi5iZjNhOWVjMTkyNDEgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazMyODgtY3J1LnR4dAorKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszMjg4LWNy
dS50eHQKQEAgLTQsOSArNCwxNSBAQCBUaGUgUkszMjg4IGNsb2NrIGNvbnRyb2xsZXIgZ2VuZXJh
dGVzIGFuZCBzdXBwbGllcyBjbG9jayB0byB2YXJpb3VzCiBjb250cm9sbGVycyB3aXRoaW4gdGhl
IFNvQyBhbmQgYWxzbyBpbXBsZW1lbnRzIGEgcmVzZXQgY29udHJvbGxlciBmb3IgU29DCiBwZXJp
cGhlcmFscy4KIAorQSByZXZpc2lvbiBvZiB0aGlzIFNvQyBpcyBhdmFpbGFibGU6IHJrMzI4OHcu
IFRoZSBjbG9jayB0cmVlIGlzIGEgYml0CitkaWZmZXJlbnQgc28gYW5vdGhlciBkdC1jb21wYXRp
YmxlIGlzIGF2YWlsYWJsZS4gTm90aWNlZCB0aGF0IGl0IGlzIG9ubHkKK3NldHRpbmcgdGhlIGRp
ZmZlcmVuY2UgYnV0IHRoZXJlIGlzIG5vIGF1dG9tYXRpYyByZXZpc2lvbiBkZXRlY3Rpb24uIFRo
aXMKK3Nob3VsZCBiZSBwZXJmb3JtZWQgYnkgYm9vdGxvYWRlcnMuCisKIFJlcXVpcmVkIFByb3Bl
cnRpZXM6CiAKLS0gY29tcGF0aWJsZTogc2hvdWxkIGJlICJyb2NrY2hpcCxyazMyODgtY3J1Igor
LSBjb21wYXRpYmxlOiBzaG91bGQgYmUgInJvY2tjaGlwLHJrMzI4OC1jcnUiIG9yICJyb2NrY2hp
cCxyazMyODh3LWNydSIgaW4KKyAgY2FzZSBvZiB0aGlzIHJldmlzaW9uIG9mIFJvY2tjaGlwIHJr
MzI4OC4KIC0gcmVnOiBwaHlzaWNhbCBiYXNlIGFkZHJlc3Mgb2YgdGhlIGNvbnRyb2xsZXIgYW5k
IGxlbmd0aCBvZiBtZW1vcnkgbWFwcGVkCiAgIHJlZ2lvbi4KIC0gI2Nsb2NrLWNlbGxzOiBzaG91
bGQgYmUgMS4KLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
