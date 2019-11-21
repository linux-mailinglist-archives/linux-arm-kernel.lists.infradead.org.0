Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7225D1049D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FRPfqi+Ikeoax+LcosJQbaa2F4ORiQOhW+YHt3AyP5k=; b=NrzCfOubzmnbUe
	+l1K+eX2eTMavcVcg6EtwTvujVRYEjmk74pC9/PaQbprkS+47JVECMvZZ5LIaQ2k2PF3NZpLM9TKs
	c8DftNAPjiD5T9QxpTAHIxss6ikIwhW4vmtSX8wWPoxLGtSGOuU/MXSMtXX5ytrifsepaofMhT/uT
	eC+IR/Oov7cFh/Xj191VatpMfGp4UsyiTgUp1zZFux0Q0DbqrJyPrrScaI11cw54Rq7ktKcF6EuMs
	mshOwcXP0SY1jF3uTRKbQohhAhAKord0MkXDEB+G+SKQ5arMMKmRlootPkfZxZZbdq6VIo3yLHd1/
	6BOpWu0xuk/gdlsYOLJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXecs-0004pP-Gm; Thu, 21 Nov 2019 05:03:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXebm-00044Y-26; Thu, 21 Nov 2019 05:02:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F1DE8AFF4;
 Thu, 21 Nov 2019 05:02:18 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v5 0/9] ARM: Realtek RTD1195/RTD1295/RTD1395 IRQ mux
Date: Thu, 21 Nov 2019 06:01:59 +0100
Message-Id: <20191121050208.11324-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_210222_404721_257F6AB4 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, James Tai <james.tai@realtek.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Aleix Roca Nonell <kernelrocks@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhZGRzIHR3byBJUlEgbXV4ZXMgZm9yIHRoZSBSZWFsdGVrIFJU
RDExOTUsIFJURDEyOTUgYW5kIFJURDEzOTUKU29DIGZhbWlsaWVzLgoKVGhlIGltcGxlbWVudGF0
aW9uIGlzIGJhc2VkIG9uIHJlZ2lzdGVyIG9mZnNldHMgc2VlbiBpbiB0aGUgdmVuZG9yIERULApz
cGxpdCB1cCBpbnRvIHR3byBzZXBhcmF0ZSBub2RlcywgYXMgd2VsbCBhcyBjb2RlIGZyb20gUU5B
UCdzIHJ0azExOXggYW5kClN5bm9sb2d5J3MgUlREMTI5My85NiBHUEwgY29kZSBkdW1wcyBhbmQg
QmFuYW5hIEJpIFcyL000IEJTUCByZXBvc2l0b3JpZXMuCgp2NSBjbGVhbnMgdXAgbWFzay91bm1h
c2ssIGFjayBhbmQgbmFtaW5nLgoKRnJvbSAvcHJvYy9pbnRlcnJ1cHRzIG9uIFJURDExOTU6CiAy
NDogICAgICAgIDE1OCAgICAgICBpc28gICAyIEVkZ2UgICAgICB0dHlTMAoKRnJvbSAvcHJvYy9p
bnRlcnJ1cHRzIG9uIFJURDEzOTU6CiAgOTogICAgICAgIDExMCAgICAgICAgICAwICAgICAgICAg
IDAgICAgICAgICAgMCAgICAgICBpc28gICAyIEVkZ2UgICAgICB0dHlTMAoKVGhlIGNoaXAgbmFt
ZSBub3cgbm8gbG9uZ2VyIG92ZXJmbG93cyB0aGUgY29sdW1ucywgYnV0IGlycSB0eXBlIGlzIHN0
aWxsIHdyb25nLgoKQFJlYWx0ZWs6IFBhdGNoIDgvOSBjb250YWlucyBhIHF1ZXN0aW9uIGFib3V0
IFJURDEzOTUuCgpNb3JlIGV4cGVyaW1lbnRhbCBwYXRjaGVzIGF0OgpodHRwczovL2dpdGh1Yi5j
b20vYWZhZXJiZXIvbGludXgvY29tbWl0cy9ydGQxMjk1LW5leHQKCkhhdmUgYSBsb3Qgb2YgZnVu
IQoKQ2hlZXJzLApBbmRyZWFzCgp2NCAtPiB2NToKKiBSZW5hbWVkIGVuYWJsZS9kaXNhYmxlIHRv
IHVubWFzay9tYXNrIChNYXJjKQoqIEZhY3RvcmVkIG91dCBhY2sgKE1hcmMpCiogQ2xlYXIgYWxs
IGludGVycnVwdHMKKiBNYXBwZWQgUlREMTE5NSBXRE9HX05NSQoqIEFkZGVkIGFuZCBtYXBwZWQg
UlREMTI5NSBXRE9HX05NSQoqIFN1cHByZXNzIG1hcHBpbmcgTk1JcyBhbmQgcmVzZXJ2ZWQgYml0
cyAoTWFyYykKKiBEcm9wIG1hc2sgY2hlY2tzIGluIG1hc2svdW5tYXNrIChNYXJjKQoqIERyb3Ag
bWFzayBjaGVjayBpbiBpbnRlcnJ1cHQgaGFuZGxlcgoqIFJlbmFtZWQgUlREMTI5NSBtaXNjIGJp
dHMgd2l0aCBNSVNfIGZvciBjb25zaXN0ZW5jeQoqIFJlbmFtZWQgUlREMTM5NSBtaXNjIGJpdHMg
ZnJvbSBNSVNDXyB0byBNSVNfIGZvciBjb25zaXN0ZW5jeQoqIFJlbmFtZWQgaXJxX2NoaXAgdG8g
ZGlzdGluZ3Vpc2ggaXNvIHZzLiBtaXNjCiogSW1wbGVtZW50ZWQgLmlycV9nZXRfaXJxY2hpcF9z
dGF0ZQoKdjMgLT4gdjQ6CiogRHJvcCBuby1vcCAuaXJxX3NldF9hZmZpbml0eSBjYWxsYmFjayAo
VGhvbWFzKQoqIERpc2FibGUgYWxsIGludGVycnVwdHMgKEphbWVzKQoqIFVwZGF0ZWQgU1BEWC1M
aWNlbnNlLWlkZW50aWZpZXIKKiBVc2UgdGFidWxhciBmb3JtYXR0aW5nIChUaG9tYXMpCiogQWRv
cHQgZGlmZmVyZW50IGJyYWNlcyBzdHlsZSAoVGhvbWFzKQoqIFVzZSByYXdfc3BpbmxvY2tfdCAo
VGhvbWFzKQoqIFNob3J0ZW5lZCBjYWxsYmFjayBuYW1lIChUaG9tYXMpCiogRml4ZWQgb2ZfaW9t
YXAoKSBlcnJvciBoYW5kbGluZwoqIERvbid0IG1hc2sgdW5tYXBwZWQgTk1JcwoqIENhY2hlIFND
UFVfSU5UX0VOIChUaG9tYXMpCiogUmVuYW1lZCBiaW5kaW5nIGFuZCBzb3VyY2UgZmlsZXMKKiBE
cm9wcGVkIFVBUlQxL1VBUlQyIFRPIGludGVycnVwdHMKKiBFeHBhbmRlZCBjb21taXQgbWVzc2Fn
ZXMKKiBBZGRlZCBSVEQxMzk1IHBhdGNoZXMKCnYyIC0+IHYzOgoqIFJlYmFzZWQsIGFkZGluZyBu
b2RlcyB0byBydGQxMjl4LmR0c2kgaW5zdGVhZCBvZiBydGQxMjk1LmR0c2kKKiBBZG9wdGVkIHty
ZWFkbCx3cml0ZWx9X3JlbGF4ZWQoKSAoTWFyYykKKiBBZG9wdGVkIHNwaW5fbG9ja19pcnFzYXZl
KCkgKE1hcmMpCiogSW1wbGVtZW50ZWQgUlREMTE5NQoqIEltcGxlbWVudGVkIG1hcHBpbmcgZm9y
IG5vbi1saW5lYXIgYml0cyBzdWNoIGFzIGkyYzMKCnYxIC0+IHYyOgoqIFJlYmFzZWQsIGF2b2lk
aW5nIGRlcGVuZGVuY3kgb24gcmVzZXQgc2VyaWVzIGZvciBEVCBub2RlcwoqIERvbid0IGZvcndh
cmQgc2V0X2FmZmluaXR5IHRvIEdJQyAoTWFyYykKKiBBZGRlZCBtb3JlIHNwaW5sb2NrcyAoTWFy
YykKKiBDb2RlIGNsZWFudXBzCiogSW52ZXN0aWdhdGVkIHF1aXJrCiogRml4ZWQgc3BpbmxvY2sg
aW5pdGlhbGl6YXRpb24gKEFuZHJldykKCkNjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRy
b25peC5kZT4KQ2M6IEphc29uIENvb3BlciA8amFzb25AbGFrZWRhZW1vbi5uZXQ+CkNjOiBNYXJj
IFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcK
Q2M6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KQ2M6IEFsZWl4IFJvY2EgTm9uZWxsIDxr
ZXJuZWxyb2Nrc0BnbWFpbC5jb20+CkNjOiBKYW1lcyBUYWkgPGphbWVzLnRhaUByZWFsdGVrLmNv
bT4KCkFuZHJlYXMgRsOkcmJlciAoOSk6CiAgZHQtYmluZGluZ3M6IGludGVycnVwdC1jb250cm9s
bGVyOiBBZGQgUmVhbHRlayBSVEQxMTk1L1JURDEyOTUgbXV4CiAgaXJxY2hpcDogQWRkIFJlYWx0
ZWsgUlREMTI5NSBtdXggZHJpdmVyCiAgaXJxY2hpcDogcnRkMTE5NS1tdXg6IEltcGxlbWVudCBp
cnFfZ2V0X2lycWNoaXBfc3RhdGUKICBhcm02NDogZHRzOiByZWFsdGVrOiBydGQxMjl4OiBBZGQg
aXJxIG11eGVzIGFuZCBVQVJUIGludGVycnVwdHMKICBpcnFjaGlwOiBydGQxMTk1LW11eDogQWRk
IFJURDExOTUgZGVmaW5pdGlvbnMKICBBUk06IGR0czogcnRkMTE5NTogQWRkIGlycSBtdXhlcyBh
bmQgVUFSVCBpbnRlcnJ1cHRzCiAgZHQtYmluZGluZ3M6IGludGVycnVwdC1jb250cm9sbGVyOiBy
dGQxMTk1LW11eDogQWRkIFJURDEzOTUKICBpcnFjaGlwOiBydGQxMTk1LW11eDogQWRkIFJURDEz
OTUgZGVmaW5pdGlvbnMKICBhcm02NDogZHRzOiByZWFsdGVrOiBydGQxMzl4OiBBZGQgaXJxIG11
eGVzIGFuZCBVQVJUIGludGVycnVwdHMKCiAuLi4vaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRl
ayxydGQxMTk1LW11eC55YW1sICB8ICA1NSArKysKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUu
ZHRzaSAgICAgICAgICAgICAgICAgICAgIHwgIDIwICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMjl4LmR0c2kgICAgICAgICAgIHwgIDIyICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cmVhbHRlay9ydGQxMzl4LmR0c2kgICAgICAgICAgIHwgIDIyICsKIGRyaXZlcnMvaXJxY2hpcC9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvaXJxY2hp
cC9pcnEtcnRkMTE5NS1tdXguYyAgICAgICAgICAgICAgICAgIHwgNTEyICsrKysrKysrKysrKysr
KysrKysrKwogNiBmaWxlcyBjaGFuZ2VkLCA2MzIgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJv
bGxlci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMKCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
