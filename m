Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1AC14CDD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 16:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=24wDEh06yqkzL9A7dlr2PMKY02XpIXzHFd/PV1upKJ8=; b=e6l0oxglPB8UxC
	0ODg23wg60JqoFtCFckMIsjf6gpCB6osQ86uetB/5yXb8vbvvOoajCIWjkp1FZSOR4HdnzCyEwKcH
	uSM3csGsPyHWmxTMu/z8lCgg1MlV9ZxQUnjuRh6X5XdvwYe15WgdTtBBzB8ucw1C/7T6eN64mjIyC
	u7CTV6WNYVSwABKds0EJFSCiiSz8BxO71mzcPV3mPC+AoTcUICf56odX6mK+g5evm3xymSIc9gSiG
	+gClRBHY/yA+AymJEVoOk7wc0fl4urAC3qhpaBNRIu4owSKEzjs8ia/8Rj4uSdIC1CmmzUGVihe/y
	+C/NabWzuuCoPDKup98Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwpjZ-0005SG-UZ; Wed, 29 Jan 2020 15:58:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwpjQ-0005RG-GW; Wed, 29 Jan 2020 15:58:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 499C2AD06;
 Wed, 29 Jan 2020 15:58:17 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: soc@kernel.org
Subject: [GIT PULL] ARM: realtek: soc for v5.6
Date: Wed, 29 Jan 2020 16:56:14 +0100
Message-Id: <20200129155615.7322-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_075820_695515_4AB97C04 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Olof Johansson <olof@lixom.net>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xvZiwKCkhlcmUncyBhIGxhdGUgc29jIHB1bGwgZm9yIFJlYWx0ZWsuCgpSZWdhcmRzLApB
bmRyZWFzCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGU0MjYxN2I4MjVmODA3
MzU2OWRhNzZkYzQ1MTBiZmEwMTliMWMzNWE6CgogIExpbnV4IDUuNS1yYzEgKDIwMTktMTItMDgg
MTQ6NTc6NTUgLTA4MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FmYWVyYmVy
L2xpbnV4LXJlYWx0ZWsuZ2l0IHRhZ3MvcmVhbHRlay1zb2MtZm9yLTUuNgoKZm9yIHlvdSB0byBm
ZXRjaCBjaGFuZ2VzIHVwIHRvIDE5NDBiMTY0ZWIyOTI0ZmVlODljNWE4MjZmODNiNmFjZDY5MmQy
ZTE6CgogIE1BSU5UQUlORVJTOiBBZGQgUmVhbHRlayBhcm0gRFQgZmlsZXMgKDIwMjAtMDEtMTUg
MTQ6MTU6MTUgKzAxMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClJlYWx0ZWsgQVJNL0FSTTY0IGJhc2VkIFNvQyBmb3Ig
djUuNgoKSW50cm9kdWNlIEFSQ0hfUkVBTFRFSyBhbHNvIGZvciAzMi1iaXQgYXJtIGFuZCB1cGRh
dGUgTUFJTlRBSU5FUlMuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFuZHJlYXMgRsOkcmJlciAoMik6CiAgICAgIEFSTTog
UHJlcGFyZSBSZWFsdGVrIFJURDExOTUKICAgICAgTUFJTlRBSU5FUlM6IEFkZCBSZWFsdGVrIGFy
bSBEVCBmaWxlcwoKIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgfCAgMiArKwogYXJj
aC9hcm0vS2NvbmZpZyAgICAgICAgICAgICAgICB8ICAyICsrCiBhcmNoL2FybS9NYWtlZmlsZSAg
ICAgICAgICAgICAgIHwgIDMgKysrCiBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvS2NvbmZpZyAgIHwg
MTEgKysrKysrKysrKysKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9NYWtlZmlsZSAgfCAgMiArKwog
YXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYyB8IDQwICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDYgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmlnCiBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2VmaWxlCiBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
