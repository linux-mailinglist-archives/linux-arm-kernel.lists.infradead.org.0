Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FA61B0E67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oU1dLrFPInz3PxYVidMM90UU5aYIWbxJEIb1Vnjx08g=; b=J7oEdGjCBIvwe0
	FjAOXViIt2PBoQwpVwXM2IIr9SZSudbZseQMrKvkS8r7UxiwdQi7Z9Mj2BOPEDxMesIFq7xrlepRs
	nK8Z2bDF3heljIFQ/oIAqOHrx7GlxmFMGDpRRj6TfJ6x4gK1iaFRoYlsWkQgkC4xHcoyFCw+w4Uj0
	jnvHDx6zgG2cprafwE5CE/jv9pAQbiKnWGoQN2v1hPl9U3+v0F47ffGDMxzJ1AL2kMj++6ufe8BRh
	XfAj1Lb5gFBbrcQ0JBforrGSZUaOX6F58rgKvzR1IYilNAh76TjVtlUL51/wd5y+go8y3EmNn/pxi
	NdJWGm8+Sv5xe6jqMwWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXRe-0004SN-S9; Mon, 20 Apr 2020 14:30:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXRW-0004Qh-M3
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:30:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so11284834wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 07:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dI1Gh5Ia/IrSE8braqcvjE9iwr/Xeiid7dJ9xFJyCNc=;
 b=s0y6D57U6WglS20eFoAv4FmLmev5Pg9B16Yk09l/PNX24/97t7ckTkGfYzvlkZw0on
 YWCUPILmyo+8FpjJxBZzcc+NUZTnFw1aimtyVysHJ+DYOSk/LPP6rsCCD8+bzuAxqk8Z
 X13V6yNBTptXhlrFhUxIRYyVzRhogVBjBlcHN2AcaRrWxxGAc0WrJ+CO/ACe7Aa9GlX7
 Fo24zIIdl4k2938F/y1TY9MhT9hU+6VX/MVUxNsby+dE8LyFzKRWDssqYGqDWoOyj1jV
 SuYn/vAmMHeCtwC5cxI5E7Hz5Lr6TAj3Aj79HmNZpS4fyJOQzDbTef0sKK3lPDhRKPh+
 T8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dI1Gh5Ia/IrSE8braqcvjE9iwr/Xeiid7dJ9xFJyCNc=;
 b=Fa1WtJArSc+vww/eWO/Eesfzn8LhJkWFfITBd8r2cwwgxZPBlmNA9r6NMXMbTW4pE6
 SW5O2/B1glNoWJLkfMfJunfLoMdznzSj7Cp933N/AHVF/ccllYAhTxNcl4Z9cCxiyo3F
 n4tq7vF4tGTAYerepNjcO+IApY8XAMOgofiG2K48cTM+bK7dcXVV1vVOklLdwYdazcij
 I9PKrY/6kpZpvUSmDtScVrb65ZiMcS8ntVPywtQptRXcmLaAR+DJLmDheEj5PbF2uov3
 pnYR4zTb/ZMUd9oK5BqbLRzalu0nKpX0x4OhUt/qh8IIeHkufnnTSpmtuMOGs2JRV+a0
 j3Cw==
X-Gm-Message-State: AGi0PuaW5bd2j8Ts32zsc+qvQ+k7rClUf9w+5Z/PePlj4tRzTxtBFHn5
 sV7HdG7rqdyh+D8Qlfdrzb0=
X-Google-Smtp-Source: APiQypIJnP/ANrM/0Xq5qXboBFie6OC/sX9QxmPufyHRw6vMmOHVbp/Ybowp2RM8T3Rv0+n8ep75gA==
X-Received: by 2002:a05:600c:1:: with SMTP id
 g1mr13041186wmc.142.1587393036662; 
 Mon, 20 Apr 2020 07:30:36 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:554b:e8c8:c8c2:f119])
 by smtp.gmail.com with ESMTPSA id
 v1sm1510452wrv.19.2020.04.20.07.30.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 07:30:35 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: allwinner: h6: fix cooling-cell property
Date: Mon, 20 Apr 2020 16:30:16 +0200
Message-Id: <20200420143016.16835-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_073038_723839_840C7DC2 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2UgZGVmaW5lIGNvb2xpbmctY2VsbHMgcHJvcGVydHkgZm9yIENQVXMgb25seSBmb3IgYm9hcmQg
aW5jbHVkaW5nCnRoZSBzdW41MGktaDYtY3B1LW9wcC5kdHNpLiBBcyBub3QgYWxsIGJvYXJkcyBo
YXZlIHRoZSBDUFUgT1BQCmR0c2kgZmlsZSBpbmNsdWRlZCB0aGlzIGNyZWF0ZSBhIHdhcm5pbmcg
YmVjYXVzZSB0aGUgY29vbGluZy1tYXBzCmlzIGRlZmluZWQgYnV0IG5vdCB0aGUgY29vbGluZy1j
ZWxscyBwcm9wZXJ0eSBpbiBDUFUgbm9kZXMuCgpNb3ZlIHRoZSBjb29saW5nLWNlbGxzIHRvIHRo
ZSBzdW41MGktaDYuZHRzaSBpbnN0ZWFkIG9mIHRoZQpzdW41MGktaDYtY3B1LW9wcC5kdHNpCgpT
aWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0K
IGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1jcHUtb3BwLmR0c2kgfCA0
IC0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpICAgICAg
ICAgfCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1jcHUtb3BwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
Y3B1LW9wcC5kdHNpCmluZGV4IDllYmQ5N2IwNGIxYS4uZGNiNzg5NTE5Nzk3IDEwMDY0NAotLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCisr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1jcHUtb3BwLmR0c2kK
QEAgLTEwMiwyMCArMTAyLDE2IEBACiAKICZjcHUwIHsKIAlvcGVyYXRpbmctcG9pbnRzLXYyID0g
PCZjcHVfb3BwX3RhYmxlPjsKLQkjY29vbGluZy1jZWxscyA9IDwyPjsKIH07CiAKICZjcHUxIHsK
IAlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjcHVfb3BwX3RhYmxlPjsKLQkjY29vbGluZy1jZWxs
cyA9IDwyPjsKIH07CiAKICZjcHUyIHsKIAlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjcHVfb3Bw
X3RhYmxlPjsKLQkjY29vbGluZy1jZWxscyA9IDwyPjsKIH07CiAKICZjcHUzIHsKIAlvcGVyYXRp
bmctcG9pbnRzLXYyID0gPCZjcHVfb3BwX3RhYmxlPjsKLQkjY29vbGluZy1jZWxscyA9IDwyPjsK
IH07CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4
IDgzZTMyZjljNDk3Ny4uMmUzMTYzMmM2Y2E4IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAtMjcsNiArMjcsNyBAQAogCQkJZW5hYmxlLW1ldGhv
ZCA9ICJwc2NpIjsKIAkJCWNsb2NrcyA9IDwmY2N1IENMS19DUFVYPjsKIAkJCWNsb2NrLWxhdGVu
Y3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJI2Nvb2xpbmctY2VsbHMg
PSA8Mj47CiAJCX07CiAKIAkJY3B1MTogY3B1QDEgewpAQCAtMzYsNiArMzcsNyBAQAogCQkJZW5h
YmxlLW1ldGhvZCA9ICJwc2NpIjsKIAkJCWNsb2NrcyA9IDwmY2N1IENMS19DUFVYPjsKIAkJCWNs
b2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJI2Nvb2xp
bmctY2VsbHMgPSA8Mj47CiAJCX07CiAKIAkJY3B1MjogY3B1QDIgewpAQCAtNDUsNiArNDcsNyBA
QAogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKIAkJCWNsb2NrcyA9IDwmY2N1IENMS19DUFVY
PjsKIAkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwor
CQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CiAJCX07CiAKIAkJY3B1MzogY3B1QDMgewpAQCAtNTQs
NiArNTcsNyBAQAogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKIAkJCWNsb2NrcyA9IDwmY2N1
IENMS19DUFVYPjsKIAkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVy
aW9kcyAqLworCQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CiAJCX07CiAJfTsKIAotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
