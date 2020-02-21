Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C10168649
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:19:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTg4uLsUnkjy/3m1/xtRCK+BZ3Kss9TEiI22IhyrMHk=; b=pU3c9Vdtwio3lW
	VCDO0d8X6oe21KIV7DaYwU5UUNKe5SxAjYfUruhU/h7wqPvosx6KUX1roFPhvVGMkbLNOObXkf4LH
	SOAKYM0b/j6W5oMxKlEGaIbrL+eGFJ/vTJngsoLTB7k2SAiK47DMf00RcsF7A7SaKYaJcnc5htFIH
	cD7tmOLANfsAR8geQzH2e2hav4/3yPrsWdA/MFmjc2AZuyDkPkmTNC/NP6imeTnNV9ERAFkH3LsyE
	3Af9nCZCEWoCn8iX5OWJk4lhKDMWH5E5iJZMEOMKsulv+9gCSLjHX7LrEZ/wy2cIvG0vx832W4ohA
	zn3KHLKZ2tJeGG3EMDtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Ctf-0007An-AZ; Fri, 21 Feb 2020 18:19:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CtE-0006y5-B6
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:19:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1314D30E;
 Fri, 21 Feb 2020 10:19:00 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E8163F6CF;
 Fri, 21 Feb 2020 10:18:58 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Fix arm_arch_timer clockmode when vDSO disabled
Date: Fri, 21 Feb 2020 18:18:46 +0000
Message-Id: <20200221181849.40351-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_101904_437391_C1F8FD33 
X-CRM114-Status: GOOD (  11.32  )
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
ZWZjb25maWcKICQgLi9zY3JpcHRzL2NvbmZpZyAtZCBWRFNPCiAkIG1ha2UKCiBkcml2ZXJzL2Ns
b2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmM6NzM6NDQ6IGVycm9yOgog4oCYVkRTT19DTE9DS01P
REVfQVJDSFRJTUVS4oCZIHVuZGVjbGFyZWQgaGVyZSAobm90IGluIGEgZnVuY3Rpb24pCiBzdGF0
aWMgZW51bSB2ZHNvX2Nsb2NrX21vZGUgdmRzb19kZWZhdWx0ID0gVkRTT19DTE9DS01PREVfQVJD
SFRJTUVSOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KIHNj
cmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY3OiByZWNpcGUgZm9yIHRhcmdldAogJ2RyaXZlcnMvY2xv
Y2tzb3VyY2UvYXJtX2FyY2hfdGltZXIubycgZmFpbGVkCiBtYWtlWzJdOiAqKiogW2RyaXZlcnMv
Y2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIub10gRXJyb3IgMQogbWFrZVsyXTogKioqIFdhaXRp
bmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4KIHNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA1OiBy
ZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9jbG9ja3NvdXJjZScgZmFpbGVkCiBtYWtlWzFdOiAq
KiogW2RyaXZlcnMvY2xvY2tzb3VyY2VdIEVycm9yIDIKIG1ha2VbMV06ICoqKiBXYWl0aW5nIGZv
ciB1bmZpbmlzaGVkIGpvYnMuLi4uCiBNYWtlZmlsZToxNjgzOiByZWNpcGUgZm9yIHRhcmdldCAn
ZHJpdmVycycgZmFpbGVkCiBtYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKClRoaXMgcGF0Y2gg
c2VyaWVzIGFkZHJlc3NlcyB0aGUgaXNzdWUgZGVmaW5pbmcgYSBkZWZhdWx0IGFyY2ggY2xvY2tt
b2RlCmZvciBhcm0gYW5kIGFybTY0IGFuZCB1c2luZyBpdCB0byBpbml0aWFsaXplIHRoZSBhcm1f
YXJjaF90aW1lci4KCkNoYW5nZXM6Ci0tLS0tLS0tCnYyOgogIC0gQWRkcmVzc2VkIE1hcmMgWnlu
Z2llciBjb21tZW50cy4KICAtIFJlYmFzZWQgb24gNS42LXJjMi4KCkNjOiBDYXRhbGluIE1hcmlu
YXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgpDYzogV2lsbCBEZWFjb24gPHdpbGwuZGVhY29u
QGFybS5jb20+CkNjOiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFybWxpbnV4Lm9yZy51az4KQ2M6IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogTWFyYyBaeW5naWVyIDxtYXpA
a2VybmVsLm9yZz4KQ2M6IE1hcmsgUnV0bGFuZCA8TWFyay5SdXRsYW5kQGFybS5jb20+CkNjOiBN
YXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+ClNpZ25lZC1vZmYtYnk6
IFZpbmNlbnpvIEZyYXNjaW5vIDx2aW5jZW56by5mcmFzY2lub0Bhcm0uY29tPgoKVmluY2Vuem8g
RnJhc2Npbm8gKDMpOgogIGFybTogY2xvY2tzb3VyY2U6IEFkZCBWRFNPIGRlZmF1bHQgY2xvY2tt
b2RlCiAgYXJtNjQ6IGNsb2Nrc291cmNlOiBBZGQgVkRTTyBkZWZhdWx0IGNsb2NrbW9kZQogIGNs
b2Nrc291cmNlOiBGaXggYXJtX2FyY2hfdGltZXIgY2xvY2ttb2RlIHdoZW4gdkRTTyBkaXNhYmxl
ZAoKIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgICAgICB8ICAxICsKIGFyY2gvYXJt
L2luY2x1ZGUvYXNtL2Nsb2Nrc291cmNlLmggICB8IDEwICsrKysrKysrKysKIGFyY2gvYXJtNjQv
aW5jbHVkZS9hc20vY2xvY2tzb3VyY2UuaCB8ICAxICsKIGRyaXZlcnMvY2xvY2tzb3VyY2UvYXJt
X2FyY2hfdGltZXIuYyB8ICAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCi0tIAoyLjI1LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
