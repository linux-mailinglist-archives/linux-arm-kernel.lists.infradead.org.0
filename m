Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B891D182C9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rbl7MXG0t2atZch/I1toAOeQ2/RUfJ8BLCaCosGQHtw=; b=U5DLEhg7scJVey
	SFvJdW6gj7/7U6MRj4dUoCEm0f0gGPEZgaOgAwgr4LdgVAQ2vmCaA1/qtbVd8/HfS0N4KMwvxJWDk
	HiHqGrG2P+Q4RZpRwBJRRi4HgTOZ5oGeuMdH8+gTt8PJTUmtyYEPIGgnvQGR4xqmu7vnxLGOSbzlH
	z6inWD5dgW7SpWvdmjWhQCPPS423X0Cifr+O7nIr7QzErlRQOG8fIaM/PbANFyCcNPUBEqhxn4jPd
	PBLdkgLvCcJPMOau7LR04r8vu2sEmxnaHwr3tTTqcc1lUvp/euATX4v4tbVPtvN37kDO3x2aQZJCM
	jCsllnvYEHzdRjwFbDpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKK8-0004To-FY; Thu, 12 Mar 2020 09:40:16 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKJv-0003wT-VE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:40:05 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 983595FD7F;
 Thu, 12 Mar 2020 10:40:02 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: move kimage_vaddr to .rodata
Date: Thu, 12 Mar 2020 11:40:02 +0200
Message-Id: <20200312094002.153302-1-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_024004_597728_2A90717F 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, catalin.marinas@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3VybW9udEBodWF3ZWkuY29t
PgoKVGhpcyBkYXR1bSBpcyBub3QgcmVmZXJlbmNlZCBmcm9tIC5pZG1hcC50ZXh0OiBpdCBkb2Vz
IG5vdCBuZWVkIHRvIGJlCm1hcHBlZCBpbiBpZG1hcC4gTGV0cyBtb3ZlIGl0IHRvIC5yb2RhdGEg
YXMgaXQgaXMgbmV2ZXIgd3JpdHRlbiB0byBhZnRlcgplYXJseSBib290IG9mIHRoZSBwcmltYXJ5
IENQVS4KKE1heWJlIC5kYXRhLnJvX2FmdGVyX2luaXQgd291bGQgYmUgY2xlYW5lciB0aG91Z2g/
KQoKU2lnbmVkLW9mZi1ieTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWlAcmVtbGFiLm5ldD4K
LS0tCiBhcmNoL2FybTY0L2tlcm5lbC9oZWFkLlMgfCAxMiArKysrKysrLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9rZXJuZWwvaGVhZC5TIGIvYXJjaC9hcm02NC9rZXJuZWwvaGVhZC5TCmluZGV4IDZl
MDhlZTJiNGQ1NS4uOGU1YzBlMDA0MGU0IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9o
ZWFkLlMKKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvaGVhZC5TCkBAIC00NTcsMTcgKzQ1NywxOSBA
QCBTWU1fRlVOQ19TVEFSVF9MT0NBTChfX3ByaW1hcnlfc3dpdGNoZWQpCiAJYglzdGFydF9rZXJu
ZWwKIFNZTV9GVU5DX0VORChfX3ByaW1hcnlfc3dpdGNoZWQpCiAKKwkucHVzaHNlY3Rpb24gIi5y
b2RhdGEiLCAiYSIKK1NZTV9EQVRBX1NUQVJUKGtpbWFnZV92YWRkcikKKwkucXVhZAkJX3RleHQg
LSBURVhUX09GRlNFVAorU1lNX0RBVEFfRU5EKGtpbWFnZV92YWRkcikKK0VYUE9SVF9TWU1CT0wo
a2ltYWdlX3ZhZGRyKQorCS5wb3BzZWN0aW9uCisKIC8qCiAgKiBlbmQgZWFybHkgaGVhZCBzZWN0
aW9uLCBiZWdpbiBoZWFkIGNvZGUgdGhhdCBpcyBhbHNvIHVzZWQgZm9yCiAgKiBob3RwbHVnIGFu
ZCBuZWVkcyB0byBoYXZlIHRoZSBzYW1lIHByb3RlY3Rpb25zIGFzIHRoZSB0ZXh0IHJlZ2lvbgog
ICovCiAJLnNlY3Rpb24gIi5pZG1hcC50ZXh0IiwiYXd4IgogCi1TWU1fREFUQV9TVEFSVChraW1h
Z2VfdmFkZHIpCi0JLnF1YWQJCV90ZXh0IC0gVEVYVF9PRkZTRVQKLVNZTV9EQVRBX0VORChraW1h
Z2VfdmFkZHIpCi1FWFBPUlRfU1lNQk9MKGtpbWFnZV92YWRkcikKLQogLyoKICAqIElmIHdlJ3Jl
IGZvcnR1bmF0ZSBlbm91Z2ggdG8gYm9vdCBhdCBFTDIsIGVuc3VyZSB0aGF0IHRoZSB3b3JsZCBp
cwogICogc2FuZSBiZWZvcmUgZHJvcHBpbmcgdG8gRUwxLgotLSAKMi4yNS4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
