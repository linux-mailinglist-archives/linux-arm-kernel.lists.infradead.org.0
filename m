Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6232167DF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:05:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RrdyYmMjeq7E57Pgtn0Axpu3Dvgd8wamcJjfo5v4qzw=; b=s5nYmeXL23aJKY
	FYD1FU0mPAaXwN1mcq36MHxo3PwVkyqKNMBL0CoX02IB7DzAx7BByVyZewqSAMm0ODzIvS4k3SsDn
	vVrMBpAMoHPvFgKrGR3/F/ci8ojHEz+XB+7XVUn76/Z0C9hZ3/0vo1gcDAornhTkuOr455NZLOZi4
	kkrIZKnVG1lsqP8yfxxGhYQ1CbyKOcsMbkg37iHapSeAkni9r88paD5eDJ+FirF18yz+MBm2cXm09
	3OGz0R2YU7FKADYr6whoAUwVZq/2AXRc+eNcYpuhuAivXnZpA3fmyyjkXYakdmRi9NeYVom7ZOcZB
	VeZp82sy4P4wKWrXbpDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j57zh-0007PP-DF; Fri, 21 Feb 2020 13:05:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57zF-0005zD-BT
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:04:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8903530E;
 Fri, 21 Feb 2020 05:04:53 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 388F73F703;
 Fri, 21 Feb 2020 05:04:52 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] clocksource: Fix arm_arch_timer clockmode when vDSO disabled
Date: Fri, 21 Feb 2020 13:03:55 +0000
Message-Id: <20200221130355.21373-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_050457_432289_7EB46719 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk,
 luto@kernel.org, tglx@linutronix.de, vincenzo.frascino@arm.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGFybV9hcmNoX3RpbWVyIHJlcXVpcmVzIHRoYXQgVkRTT19DTE9DS01PREVfQVJDSFRJTUVS
IHRvIGJlCmRlZmluZWQgdG8gY29tcGlsZSBjb3JyZWN0bHkuIE9uIGFybSB0aGUgdkRTTyBjYW4g
YmUgZGlzYWJsZWQgYW5kIHdoZW4KdGhpcyBpcyB0aGUgY2FzZSB0aGUgY29tcGlsYXRpb24gZW5k
cyBwcmVtYXR1cmVseSB3aXRoIGFuIGVycm9yOgoKICQgbWFrZSBBUkNIPWFybSBtdWx0aV92N19k
ZWZjb25maWcKICQgLi9zY3JpcHRzL2NvbmZpZyAtZCBWRFNPCiAkIG1ha2UKCmRyaXZlcnMvY2xv
Y2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYzo3Mzo0NDogZXJyb3I6CuKAmFZEU09fQ0xPQ0tNT0RF
X0FSQ0hUSU1FUuKAmSB1bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1bmN0aW9uKQogIHN0YXRp
YyBlbnVtIHZkc29fY2xvY2tfbW9kZSB2ZHNvX2RlZmF1bHQgPSBWRFNPX0NMT0NLTU9ERV9BUkNI
VElNRVI7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4Kc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDoyNjc6IHJlY2lwZSBmb3IgdGFyZ2V0Cidkcml2ZXJzL2Nsb2Nr
c291cmNlL2FybV9hcmNoX3RpbWVyLm8nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMvY2xv
Y2tzb3VyY2UvYXJtX2FyY2hfdGltZXIub10gRXJyb3IgMQptYWtlWzJdOiAqKiogV2FpdGluZyBm
b3IgdW5maW5pc2hlZCBqb2JzLi4uLgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTogcmVjaXBl
IGZvciB0YXJnZXQgJ2RyaXZlcnMvY2xvY2tzb3VyY2UnIGZhaWxlZAptYWtlWzFdOiAqKiogW2Ry
aXZlcnMvY2xvY2tzb3VyY2VdIEVycm9yIDIKbWFrZVsxXTogKioqIFdhaXRpbmcgZm9yIHVuZmlu
aXNoZWQgam9icy4uLi4KTWFrZWZpbGU6MTY4MzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMn
IGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCkRlZmluZSBWRFNPX0NMT0NLTU9E
RV9BUkNIVElNRVIgYXMgVkRTT19DTE9DS01PREVfTk9ORSB3aGVuIHRoZSB2RFNPcyBhcmUKbm90
IGVuYWJsZWQgdG8gYWRkcmVzcyB0aGUgaXNzdWUuCgpGaXhlczogNWUzYzZhMzEyYTA5ICgiQVJN
L2FybTY0OiB2ZHNvOiBVc2UgY29tbW9uIHZkc28gY2xvY2sgbW9kZSBzdG9yYWdlIikKQ2M6IFJ1
c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPgpDYzogVGhvbWFzIEdsZWl4bmVyIDx0
Z2x4QGxpbnV0cm9uaXguZGU+ClJlcG9ydGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbmNlbnpvIEZyYXNjaW5vIDx2aW5j
ZW56by5mcmFzY2lub0Bhcm0uY29tPgotLS0KIGRyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hf
dGltZXIuYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmMgYi9kcml2ZXJzL2Ns
b2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmMKaW5kZXggZWUyNDIwZDU2ZjY3Li42MTk4MzkyMjFm
OTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYworKysg
Yi9kcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmMKQEAgLTQ5LDYgKzQ5LDExIEBA
CiAjZGVmaW5lIENOVFZfVFZBTAkweDM4CiAjZGVmaW5lIENOVFZfQ1RMCTB4M2MKIAorI2lmbmRl
ZiBDT05GSUdfR0VORVJJQ19HRVRUSU1FT0ZEQVkKKy8qIFRoZSBkZWZpbmUgYmVsb3cgaXMgcmVx
dWlyZWQgYmVjYXVzZSBvbiBhcm0gdGhlIFZEU09zIGNhbiBiZSBkaXNhYmxlZCAqLworI2RlZmlu
ZSBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVIJVkRTT19DTE9DS01PREVfTk9ORQorI2VuZGlmIC8q
IENPTkZJR19HRU5FUklDX0dFVFRJTUVPRkRBWSAqLworCiBzdGF0aWMgdW5zaWduZWQgYXJjaF90
aW1lcnNfcHJlc2VudCBfX2luaXRkYXRhOwogCiBzdGF0aWMgdm9pZCBfX2lvbWVtICphcmNoX2Nv
dW50ZXJfYmFzZTsKLS0gCjIuMjUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
