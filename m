Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9CE1E6403
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EL9qjniwwxz1PSbt6OeMmg4hOQtMTqO7wgf85Bmkpgo=; b=kZHoskoJOYZUUd
	wKni4vE+UJtrmk+m3AJHHcPIjarSSNlhYNvfGY4pveayE2QvoJIRMMajw5cEIf+8KVsB1BXo69aMJ
	lA1pVDRPiVA0gKeCID9Qj56ubiAP20rzVI3lLve6FpgpY9zqKsz5ROy3aeWOT8ay2jeZJBOUG8Nf5
	0iznJAhUPuVSzyVHs6aIyKrVPalVoIzO95Fa9xso4fSG3t9kCvDuVHvXDKQUDB6YfpUvrvzTYMHXr
	eyPKaw1VHfyr4VAvZhzZCE7KShoIXaDRiZ4TSj6qf1yfwYaCxxNgBI6OcS4SCHwS7PFJKw76uqClt
	vD3yAqGtEXxhohq7qwqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJaH-0003dn-0y; Thu, 28 May 2020 14:32:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJZp-0003Mi-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 14:32:11 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F098207D3;
 Thu, 28 May 2020 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590676328;
 bh=akyLuHeiAlZIZHfR0soky+wL6Do/cboTPXXRrmLbVcM=;
 h=From:To:Cc:Subject:Date:From;
 b=d2K+pAeTDZ5RpezmH6ZH/G46972OO1eS9ejtgl4eRc+z7CDanFwXHD1jvVuStpsI5
 fwr7nmGoeDP3rq4Ie9BtO8Gr19T8OYE3cDJ41T8Iz8Mgrg0s9egdszpU5+1TEu6Rgk
 rRysRM5YScuyL1XYDRPU9YQDjqjugHwQLtkIgmaI=
Received: by pali.im (Postfix)
 id 8BC2B865; Thu, 28 May 2020 16:32:05 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Remi Pommarel <repk@triplefau.lt>, Tomasz Maciej Nowak <tmn505@gmail.com>,
 Xogium <contact@xogium.me>
Subject: [PATCH] PCI: aardvark: Don't touch PCIe registers if no card connected
Date: Thu, 28 May 2020 16:31:41 +0200
Message-Id: <20200528143141.29956-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_073209_912735_D8EC3D1F 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiB0aGVyZSBpcyBubyBQQ0llIGNhcmQgY29ubmVjdGVkIGFuZCBhZHZrX3BjaWVfcmRfY29u
ZigpIG9yCmFkdmtfcGNpZV93cl9jb25mKCkgaXMgY2FsbGVkIGZvciBQQ0kgYnVzIHdoaWNoIGRv
ZXNuJ3QgYmVsb25nIHRvIGVtdWxhdGVkCnJvb3QgYnJpZGdlLCB0aGUgYWFyZHZhcmsgZHJpdmVy
IHRocm93cyB0aGUgZm9sbG93aW5nIGVycm9yIG1lc3NhZ2U6CgogIGFkdmstcGNpZSBkMDA3MDAw
MC5wY2llOiBjb25maWcgcmVhZC93cml0ZSB0aW1lZCBvdXQKCk9idmlvdXNseSBhY2Nlc3Npbmcg
UENJZSByZWdpc3RlcnMgb2YgZGlzY29ubmVjdGVkIGNhcmQgaXMgbm90IHBvc3NpYmxlLgoKRXh0
ZW5kIGNoZWNrIGluIGFkdmtfcGNpZV92YWxpZF9kZXZpY2UoKSBmdW5jdGlvbiBmb3IgdmFsaWRh
dGluZwphdmFpbGFiaWxpdHkgb2YgUENJZSBidXMuIElmIFBDSWUgbGluayBpcyBkb3duLCB0aGVu
IHRoZSBkZXZpY2UgaXMgbWFya2VkCmFzIE5vdCBGb3VuZCBhbmQgdGhlIGRyaXZlciBkb2VzIG5v
dCB0cnkgdG8gYWNjZXNzIHRoZXNlIHJlZ2lzdGVycy4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9o
w6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFy
ZHZhcmsuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKaW5kZXggOTBmZjI5MWMyNGYwLi41M2E0Y2ZkN2Qz
NzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKKysr
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwpAQCAtNjQ0LDYgKzY0NCw5
IEBAIHN0YXRpYyBib29sIGFkdmtfcGNpZV92YWxpZF9kZXZpY2Uoc3RydWN0IGFkdmtfcGNpZSAq
cGNpZSwgc3RydWN0IHBjaV9idXMgKmJ1cywKIAlpZiAoKGJ1cy0+bnVtYmVyID09IHBjaWUtPnJv
b3RfYnVzX25yKSAmJiBQQ0lfU0xPVChkZXZmbikgIT0gMCkKIAkJcmV0dXJuIGZhbHNlOwogCisJ
aWYgKGJ1cy0+bnVtYmVyICE9IHBjaWUtPnJvb3RfYnVzX25yICYmICFhZHZrX3BjaWVfbGlua191
cChwY2llKSkKKwkJcmV0dXJuIGZhbHNlOworCiAJcmV0dXJuIHRydWU7CiB9CiAKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
