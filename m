Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24654168652
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:20:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xcf6mC2gb5AWB0KFdz9DIXQAWwrm2Dg4YhE6N6zPRvk=; b=Ib/uhbmVlzpfFv
	VZqI0MHvrNpxtxht0HihikbVclaA5qVkM3iF4kLVMiVCB6TA+yLd1HebRJx1ftsfc6hZUPy+83iVJ
	FAAqSE+e7M79cYGnoov3LYg2osfa6KVRlCp0S8a3cYJGO0W+RJywsSCWsOpKvsuDPiM43QgGI+Hl3
	ZpPr58jttB4WC8fh2+z4HCkFrT3Ns9SYLzbWrnk1BOSE7hzrHgAca7cu1KSD1ctETxWlyWHbpxj+3
	km1NMatOoJ46opgHqqiJJT/u/fYa9nz6gESEps7iFl9DtuEEubQJdEYytG8HkQLKyotsjeJhOg8OX
	VQzOfmVFvd20KQmiuxmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CuA-0007cp-8q; Fri, 21 Feb 2020 18:20:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CtF-0006zP-VJ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:19:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E125101E;
 Fri, 21 Feb 2020 10:19:05 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE73D3F6CF;
 Fri, 21 Feb 2020 10:19:03 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] clocksource: Fix arm_arch_timer clockmode when vDSO
 disabled
Date: Fri, 21 Feb 2020 18:18:49 +0000
Message-Id: <20200221181849.40351-4-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221181849.40351-1-vincenzo.frascino@arm.com>
References: <20200221181849.40351-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_101906_050020_432E0CF3 
X-CRM114-Status: GOOD (  12.71  )
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
IGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKClNldCB2ZHNvX2RlZmF1bHQgdG8g
VkRTT19DTE9DS01PREVfQVJDSF9ERUZBVUxUIHRvIGFkZHJlc3MgdGhlIGlzc3VlLgoKRml4ZXM6
IDVlM2M2YTMxMmEwOSAoIkFSTS9hcm02NDogdmRzbzogVXNlIGNvbW1vbiB2ZHNvIGNsb2NrIG1v
ZGUgc3RvcmFnZSIpCkNjOiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgpDYzogTWFyayBS
dXRsYW5kIDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT4KQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBs
aW51dHJvbml4LmRlPgpSZXBvcnRlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tp
QHNhbXN1bmcuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaW5jZW56byBGcmFzY2lubyA8dmluY2Vuem8u
ZnJhc2Npbm9AYXJtLmNvbT4KLS0tCiBkcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVy
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmMgYi9kcml2
ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmMKaW5kZXggZWUyNDIwZDU2ZjY3Li5lYWRj
OTk5NzNmZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIu
YworKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmMKQEAgLTY5LDcgKzY5
LDcgQEAgc3RhdGljIGVudW0gYXJjaF90aW1lcl9wcGlfbnIgYXJjaF90aW1lcl91c2VzX3BwaSA9
IEFSQ0hfVElNRVJfVklSVF9QUEk7CiBzdGF0aWMgYm9vbCBhcmNoX3RpbWVyX2Mzc3RvcDsKIHN0
YXRpYyBib29sIGFyY2hfdGltZXJfbWVtX3VzZV92aXJ0dWFsOwogc3RhdGljIGJvb2wgYXJjaF9j
b3VudGVyX3N1c3BlbmRfc3RvcDsKLXN0YXRpYyBlbnVtIHZkc29fY2xvY2tfbW9kZSB2ZHNvX2Rl
ZmF1bHQgPSBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVI7CitzdGF0aWMgZW51bSB2ZHNvX2Nsb2Nr
X21vZGUgdmRzb19kZWZhdWx0ID0gVkRTT19DTE9DS01PREVfQVJDSF9ERUZBVUxUOwogCiBzdGF0
aWMgY3B1bWFza190IGV2dHN0cm1fYXZhaWxhYmxlID0gQ1BVX01BU0tfTk9ORTsKIHN0YXRpYyBi
b29sIGV2dHN0cm1fZW5hYmxlID0gSVNfRU5BQkxFRChDT05GSUdfQVJNX0FSQ0hfVElNRVJfRVZU
U1RSRUFNKTsKLS0gCjIuMjUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
