Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A2B15E628
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:47:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8PCd/+pKWNG1eMMLnOIC4j1N3NBA91UOa43sD9BTng=; b=kkt9n8972Sg7ZO
	tw+kEQgpuzHq1GXveitE0UqJCLsEjF8miob60Kd/GHBV+xRHblSMr5o9WZyeSQ6MivNR1QEEQFIVa
	liYNcx+pZX7htzkriWu9ZKL7wRDrFM1KOR5OooyUYm/GRr6jNiy5ljeI+5V9jJhpY8eutKwBod61m
	eSIgIJhWPTLWlk3HYjvT4HXyOL6hYRiuZZyb2IIWms98whkB/QXpc19IDWOBJ0tu88Ivgho3sEqmE
	ajuGx3TCAE0SsVxVf9EdtJDMHLsjvKPNR92PBLirC997ip1NRVIbFJiZJnSJyjX6ntywPi6UlH1ya
	IRaROAjXXAA5HQpX538w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2e7Q-00016h-KN; Fri, 14 Feb 2020 16:47:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dde-0008WM-EJ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:16:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 431BE24682;
 Fri, 14 Feb 2020 16:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696982;
 bh=61KVnLfdNCBRTqllf7fHtuq32lvkJ3ubBKpfsel+Xms=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kHsMdSLpzgkkMrK0l1p4nvuD9JVEctE9vbWhmTGdFdr76bVSICClQ+RJiVw7lB28Q
 bpczFl6N2M6yhA4kikTChXMXQrp4HhqMtmR33OgfarxHS0oKACVNtfA04XEV4l15Uy
 BtOq4xNJOK9VjTV+828ODIU3ED5lc0tOKugdNRWs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 218/252] ARM: 8951/1: Fix Kexec compilation issue.
Date: Fri, 14 Feb 2020 11:11:13 -0500
Message-Id: <20200214161147.15842-218-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_081622_511944_36ED36C5 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogVmluY2Vuem8gRnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+CgpbIFVw
c3RyZWFtIGNvbW1pdCA3Njk1MGY3MTYyY2FkNTFkMjIwMGViZDIyYzYyMGMxNGFmMzhmNzE4IF0K
ClRvIHBlcmZvcm0gdGhlIHJlc2VydmVfY3Jhc2hrZXJuZWwoKSBvcGVyYXRpb24ga2V4ZWMgdXNl
cyBTRUNUSU9OX1NJWkUgdG8KZmluZCBhIG1lbWJsb2NrIGluIGEgcmFuZ2UuClNFQ1RJT05fU0la
RSBpcyBub3QgZGVmaW5lZCBmb3Igbm9tbXUgc3lzdGVtcy4gVHJ5aW5nIHRvIGNvbXBpbGUga2V4
ZWMgaW4KdGhlc2UgY29uZGl0aW9ucyByZXN1bHRzIGluIGEgYnVpbGQgZXJyb3I6CgogIGxpbnV4
L2FyY2gvYXJtL2tlcm5lbC9zZXR1cC5jOiBJbiBmdW5jdGlvbiDigJhyZXNlcnZlX2NyYXNoa2Vy
bmVs4oCZOgogIGxpbnV4L2FyY2gvYXJtL2tlcm5lbC9zZXR1cC5jOjEwMTY6MjU6IGVycm9yOiDi
gJhTRUNUSU9OX1NJWkXigJkgdW5kZWNsYXJlZAogICAgIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5j
dGlvbik7IGRpZCB5b3UgbWVhbiDigJhTRUNUSU9OU19XSURUSOKAmT8KICAgICAgICAgICAgIGNy
YXNoX3NpemUsIFNFQ1RJT05fU0laRSk7CiAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+
fn5+fn4KICAgICAgICAgICAgICAgICAgICAgICAgIFNFQ1RJT05TX1dJRFRICiAgbGludXgvYXJj
aC9hcm0va2VybmVsL3NldHVwLmM6MTAxNjoyNTogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50
aWZpZXIKICAgICBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBw
ZWFycyBpbgogIGxpbnV4L3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY1OiByZWNpcGUgZm9yIHRh
cmdldCAnYXJjaC9hcm0va2VybmVsL3NldHVwLm8nCiAgICAgZmFpbGVkCgpNYWtlIEtFWEVDIGRl
cGVuZCBvbiBNTVUgdG8gZml4IHRoZSBjb21waWxhdGlvbiBpc3N1ZS4KClNpZ25lZC1vZmYtYnk6
IFZpbmNlbnpvIEZyYXNjaW5vIDx2aW5jZW56by5mcmFzY2lub0Bhcm0uY29tPgpTaWduZWQtb2Zm
LWJ5OiBSdXNzZWxsIEtpbmcgPHJtaytrZXJuZWxAYXJtbGludXgub3JnLnVrPgpTaWduZWQtb2Zm
LWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogYXJjaC9hcm0vS2NvbmZp
ZyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL0tjb25maWcgYi9hcmNoL2FybS9LY29uZmlnCmluZGV4IDlm
MDNiZWZkZmJmMDYuLmUyZjdjNTBkYmFjZTUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL0tjb25maWcK
KysrIGIvYXJjaC9hcm0vS2NvbmZpZwpAQCAtMjAwOCw3ICsyMDA4LDcgQEAgY29uZmlnIFhJUF9E
RUZMQVRFRF9EQVRBCiBjb25maWcgS0VYRUMKIAlib29sICJLZXhlYyBzeXN0ZW0gY2FsbCAoRVhQ
RVJJTUVOVEFMKSIKIAlkZXBlbmRzIG9uICghU01QIHx8IFBNX1NMRUVQX1NNUCkKLQlkZXBlbmRz
IG9uICFDUFVfVjdNCisJZGVwZW5kcyBvbiBNTVUKIAlzZWxlY3QgS0VYRUNfQ09SRQogCWhlbHAK
IAkgIGtleGVjIGlzIGEgc3lzdGVtIGNhbGwgdGhhdCBpbXBsZW1lbnRzIHRoZSBhYmlsaXR5IHRv
IHNodXRkb3duIHlvdXIKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
