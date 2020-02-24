Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274AA16A9BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 16:16:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=96hrJRHnaUyWMSDD2JStUjeYp0KPOLkT4yGItuiQIEY=; b=mU1Cu6ZoS+kMAg
	x7YMEHisN9LYZpgyYMK7DVhaCZNng+q9Db61KFthYtQjNve/IpCV9WvPYX9Xclr2+Gy2gyjUvIfd+
	tnhbY6Lvh5odesckPP39aZfVk2cZ8GkQDdSkACNymbM/5UidvDLzVABavukmpmD5D4gg20UXSfl4S
	K0Rj1QyPv8posW4VC/hEVWWb75OOViTHjZzc+9G1MWqQ5of+Fr2ixpQ3IXl7IV9ffPTiOQsG64I5r
	1b7+utGu4ak/wcwoj5xLbR4qopAyE3iAjW7PIKN2/vlyqhKTKgT93ApLRnBBFQLi1XhC+XVgVo6Sr
	o6wuvtnNWuBH2QMaoBJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6FSy-000425-Pe; Mon, 24 Feb 2020 15:16:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6FSr-00041e-Ac
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 15:16:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31D9E1FB;
 Mon, 24 Feb 2020 07:16:08 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A05783F534;
 Mon, 24 Feb 2020 07:16:06 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] clocksource: Fix arm_arch_timer clockmode when vDSO
 disabled
Date: Mon, 24 Feb 2020 15:15:52 +0000
Message-Id: <20200224151552.57274-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_071609_410041_3F8DC787 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: Mark.Rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, luto@kernel.org, maz@kernel.org, tglx@linutronix.de,
 vincenzo.frascino@arm.com, m.szyprowski@samsung.com
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
L2FybTY0OiB2ZHNvOiBVc2UgY29tbW9uIHZkc28gY2xvY2sgbW9kZSBzdG9yYWdlIikKQ2M6IE1h
cmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+CkNjOiBNYXJrIFJ1dGxhbmQgPE1hcmsuUnV0bGFu
ZEBhcm0uY29tPgpDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+CkNjOiBU
aG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KUmVwb3J0ZWQtYnk6IE1hcmVrIFN6
eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KU2lnbmVkLW9mZi1ieTogVmluY2Vu
em8gRnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+Ci0tLQogZHJpdmVycy9jbG9j
a3NvdXJjZS9hcm1fYXJjaF90aW1lci5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspCgpUaGlzIHBhdGNoIGhhcyBiZWVuIHJlYmFzZWQgYW5kIHRlc3RlZCBvbiB0aXAv
dGltZXJzL2NvcmUuCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90
aW1lci5jIGIvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jCmluZGV4IGVlMjQy
MGQ1NmY2Ny4uZDUzZjRjN2NjYWFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNlL2Fy
bV9hcmNoX3RpbWVyLmMKKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5j
CkBAIC02OSw3ICs2OSwxMSBAQCBzdGF0aWMgZW51bSBhcmNoX3RpbWVyX3BwaV9uciBhcmNoX3Rp
bWVyX3VzZXNfcHBpID0gQVJDSF9USU1FUl9WSVJUX1BQSTsKIHN0YXRpYyBib29sIGFyY2hfdGlt
ZXJfYzNzdG9wOwogc3RhdGljIGJvb2wgYXJjaF90aW1lcl9tZW1fdXNlX3ZpcnR1YWw7CiBzdGF0
aWMgYm9vbCBhcmNoX2NvdW50ZXJfc3VzcGVuZF9zdG9wOworI2lmZGVmIENPTkZJR19HRU5FUklD
X0dFVFRJTUVPRkRBWQogc3RhdGljIGVudW0gdmRzb19jbG9ja19tb2RlIHZkc29fZGVmYXVsdCA9
IFZEU09fQ0xPQ0tNT0RFX0FSQ0hUSU1FUjsKKyNlbHNlCitzdGF0aWMgZW51bSB2ZHNvX2Nsb2Nr
X21vZGUgdmRzb19kZWZhdWx0ID0gVkRTT19DTE9DS01PREVfTk9ORTsKKyNlbmRpZiAvKiBDT05G
SUdfR0VORVJJQ19HRVRUSU1FT0ZEQVkgKi8KIAogc3RhdGljIGNwdW1hc2tfdCBldnRzdHJtX2F2
YWlsYWJsZSA9IENQVV9NQVNLX05PTkU7CiBzdGF0aWMgYm9vbCBldnRzdHJtX2VuYWJsZSA9IElT
X0VOQUJMRUQoQ09ORklHX0FSTV9BUkNIX1RJTUVSX0VWVFNUUkVBTSk7Ci0tIAoyLjI1LjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
