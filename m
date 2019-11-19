Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62794101142
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 03:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/QQJuyALpqHTOHiPD4pI9lcggPR9YbyDST8YwNw8Jik=; b=T9Pp531HRd+dHO
	JJkKA3chrWtVchNptNwmCSIeCHpPyXEqyaKAWMFfbiFY94sFeBFFB7KyjKp4yT08+nNEFBPhjbuCL
	8rE5beCu0jwBzpHqTWTsPbL/AJuKsPrmYGLWTmCGnZ9hDp7MDdnncf6275VmXPIa+FcApvO6c+MQG
	x/+1dysuC5WKrIlB8xguk6WIqwMM6FzUw4DhdfPM4YJkbu1LJAjuru3SC1pN5tjq072MC8gUSVtqZ
	BfcXjAIhxtEErLilDYjMN4LyNLZlLQTZu/9cYEfvnbjbHJ9rKURsEL0XKKuGJEFMoUBFUHWUChWnO
	+OH44JyJmtezhI4205Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWt7h-0006eG-4U; Tue, 19 Nov 2019 02:20:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWt70-0006S1-CA; Tue, 19 Nov 2019 02:19:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5C2BAAC6F;
 Tue, 19 Nov 2019 02:19:22 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 0/8] ARM: Realtek RTD1195/RTD1295/RTD1395 IRQ mux
Date: Tue, 19 Nov 2019 03:19:09 +0100
Message-Id: <20191119021917.15917-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_181926_574101_61029696 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
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
UCdzIHJ0azExOXggYW5kClN5bm9sb2d5J3MgUlREMTI5My85NiBHUEwgY29kZSBkdW1wcy4KCnYz
IGRvZXMgdmFyaW91cyBjbGVhbnVwcywgcmVuYW1lcyB2YXJpYWJsZXMsIHJld29ya3MgdW5tYXNr
IHZzLiBlbmFibGUvZGlzYWJsZQphbmQgYWRkcyBhbiBpc3Ivc2NwdV9pbnRfZW4gbWFwIGFzIHdl
bGwgYXMgZnVsbCBSVEQxMTk1IHN1cHBvcnQuCgpNb3JlIGV4cGVyaW1lbnRhbCBwYXRjaGVzIGF0
OgpodHRwczovL2dpdGh1Yi5jb20vYWZhZXJiZXIvbGludXgvY29tbWl0cy9ydGQxMjk1LW5leHQK
CkhhdmUgYSBsb3Qgb2YgZnVuIQoKQ2hlZXJzLApBbmRyZWFzCgp2MyAtPiB2NDoKKiBEcm9wIG5v
LW9wIC5pcnFfc2V0X2FmZmluaXR5IGNhbGxiYWNrIChUaG9tYXMpCiogQ2xlYXIgYWxsIGludGVy
cnVwdHMgKEphbWVzKQoqIFVwZGF0ZWQgU1BEWC1MaWNlbnNlLWlkZW50aWZpZXIKKiBVc2UgdGFi
dWxhciBmb3JtYXR0aW5nIChUaG9tYXMpCiogQWRvcHQgZGlmZmVyZW50IGJyYWNlcyBzdHlsZSAo
VGhvbWFzKQoqIFVzZSByYXdfc3BpbmxvY2tfdCAoVGhvbWFzKQoqIFNob3J0ZW5lZCBjYWxsYmFj
ayBuYW1lIChUaG9tYXMpCiogRml4ZWQgb2ZfaW9tYXAoKSBlcnJvciBoYW5kbGluZwoqIERvbid0
IG1hc2sgdW5tYXBwZWQgTk1JcwoqIENhY2hlIFNDUFVfSU5UX0VOIChUaG9tYXMpCiogUmVuYW1l
ZCBiaW5kaW5nIGFuZCBzb3VyY2UgZmlsZXMKKiBEcm9wcGVkIFVBUlQxL1VBUlQyIFRPIGludGVy
cnVwdHMKKiBFeHBhbmRlZCBjb21taXQgbWVzc2FnZXMKKiBBZGRlZCBSVEQxMzk1IHBhdGNoZXMK
CnYyIC0+IHYzOgoqIFJlYmFzZWQsIGFkZGluZyBub2RlcyB0byBydGQxMjl4LmR0c2kgaW5zdGVh
ZCBvZiBydGQxMjk1LmR0c2kKKiBBZG9wdGVkIHtyZWFkbCx3cml0ZWx9X3JlbGF4ZWQoKSAoTWFy
YykKKiBBZG9wdGVkIHNwaW5fbG9ja19pcnFzYXZlKCkgKE1hcmMpCiogSW1wbGVtZW50ZWQgUlRE
MTE5NQoqIEltcGxlbWVudGVkIG1hcHBpbmcgZm9yIG5vbi1saW5lYXIgYml0cyBzdWNoIGFzIGky
YzMKCnYxIC0+IHYyOgoqIFJlYmFzZWQsIGF2b2lkaW5nIGRlcGVuZGVuY3kgb24gcmVzZXQgc2Vy
aWVzIGZvciBEVCBub2RlcwoqIERvbid0IGZvcndhcmQgc2V0X2FmZmluaXR5IHRvIEdJQyAoTWFy
YykKKiBBZGRlZCBtb3JlIHNwaW5sb2NrcyAoTWFyYykKKiBDb2RlIGNsZWFudXBzCiogSW52ZXN0
aWdhdGVkIHF1aXJrCiogRml4ZWQgc3BpbmxvY2sgaW5pdGlhbGl6YXRpb24gKEFuZHJldykKCkNj
OiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KQ2M6IEphc29uIENvb3BlciA8
amFzb25AbGFrZWRhZW1vbi5uZXQ+CkNjOiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgpD
YzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4KQ2M6IEFsZWl4IFJvY2EgTm9uZWxsIDxrZXJuZWxyb2Nrc0BnbWFpbC5jb20+CkNjOiBK
YW1lcyBUYWkgPGphbWVzLnRhaUByZWFsdGVrLmNvbT4KCkFuZHJlYXMgRsOkcmJlciAoOCk6CiAg
ZHQtYmluZGluZ3M6IGludGVycnVwdC1jb250cm9sbGVyOiBBZGQgUmVhbHRlayBSVEQxMTk1L1JU
RDEyOTUgbXV4CiAgaXJxY2hpcDogQWRkIFJlYWx0ZWsgUlREMTI5NSBtdXggZHJpdmVyCiAgYXJt
NjQ6IGR0czogcmVhbHRlazogcnRkMTI5eDogQWRkIGlycSBtdXhlcyBhbmQgVUFSVCBpbnRlcnJ1
cHRzCiAgaXJxY2hpcDogcnRkMTE5NS1tdXg6IEFkZCBSVEQxMTk1IGRlZmluaXRpb25zCiAgQVJN
OiBkdHM6IHJ0ZDExOTU6IEFkZCBpcnEgbXV4ZXMgYW5kIFVBUlQgaW50ZXJydXB0cwogIGR0LWJp
bmRpbmdzOiBpbnRlcnJ1cHQtY29udHJvbGxlcjogcnRkMTE5NS1tdXg6IEFkZCBSVEQxMzk1CiAg
aXJxY2hpcDogcnRkMTE5NS1tdXg6IEFkZCBSVEQxMzk1IGRlZmluaXRpb25zCiAgYXJtNjQ6IGR0
czogcmVhbHRlazogcnRkMTM5eDogQWRkIGlycSBtdXhlcyBhbmQgVUFSVCBpbnRlcnJ1cHRzCgog
Li4uL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMTE5NS1tdXgueWFtbCAgfCAgNTUg
KysrCiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgICAgICAgICAgICAgICAgICAgICB8
ICAyMCArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpICAgICAgICAg
ICB8ICAyMiArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpICAgICAg
ICAgICB8ICAyMiArCiBkcml2ZXJzL2lycWNoaXAvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMgICAgICAg
ICAgICAgICAgICB8IDQ2MyArKysrKysrKysrKysrKysrKysrKysKIDYgZmlsZXMgY2hhbmdlZCwg
NTgzIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGQxMTk1LW11eC55
YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9pcnFjaGlwL2lycS1ydGQxMTk1LW11eC5j
CgotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
