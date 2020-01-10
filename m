Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D989C136D18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LZBnkl8EkgHxpFnum68AzHOyW7VV6Ogj+yeRsgiLs40=; b=elzWtA2htyB6g7
	m6ppMzqgfa+z9gDFpAyZJn1MBvULPcGMglb5jHYfFQSubFnX6PTkdyjAc6U4QrEI++kTvZU2WgEM4
	0FD2nhmgtIHsyRZAbl6ktyzW1YlqilOerMBq2/fJZpdyQM7jqyQLRi7t/cXet2MkEO/yMDcCcmQdx
	782OMAvplQnNBWDQLFoGQeCCAlN2wjPsyfSt4BqPazEPU23DntECNTBXozbMGpZfxkn6mIydffGNA
	bQMMLcKbADi3FK7gZ+eIVyII5ia5q73FPqh8Pr20cIy5oXBJjekhrDeTV0/NblECly1i3HPpUjmfu
	6uVChkOQr8M2vfUw8tvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptSI-0003XX-Rk; Fri, 10 Jan 2020 12:31:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptS7-0003Wc-J1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:31:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B11601063;
 Fri, 10 Jan 2020 04:31:44 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0E0943F534;
 Fri, 10 Jan 2020 04:31:43 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux@armlinux.org.uk
Subject: [PATCH] arm: Fix Kexec compilation issue.
Date: Fri, 10 Jan 2020 12:31:25 +0000
Message-Id: <20200110123125.51092-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_043147_669583_76B12EA7 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: vincenzo.frascino@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VG8gcGVyZm9ybSB0aGUgcmVzZXJ2ZV9jcmFzaGtlcm5lbCgpIG9wZXJhdGlvbiBrZXhlYyB1c2Vz
IFNFQ1RJT05fU0laRSB0bwpmaW5kIGEgbWVtYmxvY2sgaW4gYSByYW5nZS4KU0VDVElPTl9TSVpF
IGlzIG5vdCBkZWZpbmVkIGZvciBub21tdSBzeXN0ZW1zLiBUcnlpbmcgdG8gY29tcGlsZSBrZXhl
YyBpbgp0aGVzZSBjb25kaXRpb25zIHJlc3VsdHMgaW4gYSBidWlsZCBlcnJvcjoKCiAgbGludXgv
YXJjaC9hcm0va2VybmVsL3NldHVwLmM6IEluIGZ1bmN0aW9uIOKAmHJlc2VydmVfY3Jhc2hrZXJu
ZWzigJk6CiAgbGludXgvYXJjaC9hcm0va2VybmVsL3NldHVwLmM6MTAxNjoyNTogZXJyb3I6IOKA
mFNFQ1RJT05fU0laReKAmSB1bmRlY2xhcmVkCiAgICAgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0
aW9uKTsgZGlkIHlvdSBtZWFuIOKAmFNFQ1RJT05TX1dJRFRI4oCZPwogICAgICAgICAgICAgY3Jh
c2hfc2l6ZSwgU0VDVElPTl9TSVpFKTsKICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+
fn5+fgogICAgICAgICAgICAgICAgICAgICAgICAgU0VDVElPTlNfV0lEVEgKICBsaW51eC9hcmNo
L2FybS9rZXJuZWwvc2V0dXAuYzoxMDE2OjI1OiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRp
ZmllcgogICAgIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBmdW5jdGlvbiBpdCBhcHBl
YXJzIGluCiAgbGludXgvc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNjU6IHJlY2lwZSBmb3IgdGFy
Z2V0ICdhcmNoL2FybS9rZXJuZWwvc2V0dXAubycKICAgICBmYWlsZWQKCk1ha2UgS0VYRUMgZGVw
ZW5kIG9uIE1NVSB0byBmaXggdGhlIGNvbXBpbGF0aW9uIGlzc3VlLgoKQ2M6IFJ1c3NlbGwgS2lu
ZyA8bGludXhAYXJtbGludXgub3JnLnVrPgpTaWduZWQtb2ZmLWJ5OiBWaW5jZW56byBGcmFzY2lu
byA8dmluY2Vuem8uZnJhc2Npbm9AYXJtLmNvbT4KLS0tCiBhcmNoL2FybS9LY29uZmlnIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vS2NvbmZpZyBiL2FyY2gvYXJtL0tjb25maWcKaW5kZXggYmE3NWUzNjYx
YTQxLi5iYzk5NTgyYmRjODUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL0tjb25maWcKKysrIGIvYXJj
aC9hcm0vS2NvbmZpZwpAQCAtMTkwNCw3ICsxOTA0LDcgQEAgY29uZmlnIFhJUF9ERUZMQVRFRF9E
QVRBCiBjb25maWcgS0VYRUMKIAlib29sICJLZXhlYyBzeXN0ZW0gY2FsbCAoRVhQRVJJTUVOVEFM
KSIKIAlkZXBlbmRzIG9uICghU01QIHx8IFBNX1NMRUVQX1NNUCkKLQlkZXBlbmRzIG9uICFDUFVf
VjdNCisJZGVwZW5kcyBvbiBNTVUKIAlzZWxlY3QgS0VYRUNfQ09SRQogCWhlbHAKIAkgIGtleGVj
IGlzIGEgc3lzdGVtIGNhbGwgdGhhdCBpbXBsZW1lbnRzIHRoZSBhYmlsaXR5IHRvIHNodXRkb3du
IHlvdXIKLS0gCjIuMjQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
