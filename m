Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD862A61F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wmtjzLCk0KMejlxVvZsMJQzZzePrJcCcbL4wikMCwU0=; b=H1QZoAENizRAyc
	JV+vV95AB6l3Hx6zp6WDYNAFVnitG8cRPy75e56BTSxCWV6SXQ9CfX8KR91/7DGlszN6zrVlw7Doh
	uM/wuDe5FNrVYMaJovo7BeCvYDLrPD1zV9ePJ8LbwZW9A+KyogdA9zHozJfUiWiMqCibtLuROH5XH
	t5YQ9GWGvB0lX2boRZaQTRYCTISPox5jnllZlRr8+LorkU4Po+p4hmhbgDtjMM/lEVOtkHwNSJink
	zeYuzElOopFXnghuipY7hF4rp/dUmEt+E5tVuLJR3++zouov/TWJH7rAAj+FwFqAgnbCnXjh+HMAQ
	LL/BatjDRtFWl3xAb2qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb80-0000hb-9c; Sat, 25 May 2019 18:10:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb6w-0006nj-BO
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id s17so12974489wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=arTMrDnZfRr2oC1YgiWwIELzhnqDrvGvkslS7X+mMzM=;
 b=hA1ETWwq1RFBgDXp0XWT3rlQ3Bx3tpvsW2EE7raknAvoDXNzyoYA0j+i8HCVZmc6yi
 yEp9NzEFFne7+6R3HHR8IGwD7XunbJDXrKd+PXcPqGrU6ybNXKaK9ICB34zGJcd2Xv3M
 ahOUapJrs+00YIS4U3AdFwvYkfXQIrwjw0DCA8E3+O3WY+naic1C/czUPt0l6T5DlDrq
 VaLMLdLWeSaN40yxzmkZuBn6IPi7OsM7z7+xi0sAEjUp1A350K6iaCogHORkdVZqz279
 LYFNgNldW8dZCrqB9qkWLmGhngvEJsYCQOTgLKKzhQcwLaLEtGGPDCJWJOAylxklbx4/
 tieA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=arTMrDnZfRr2oC1YgiWwIELzhnqDrvGvkslS7X+mMzM=;
 b=PidjcuyPkvEPKQUIx4M5APaUK6LFRfqkbFhPrAPaLXzBTXSmYEmRUJ3t/wjmpmAIxi
 oAJXNAUFOxR1xYcltX69qLzD0iAvuviBp0M6fYkWKGNm3zDllAx9lQVNiVenGsdcv1ID
 IEg/86x0nRnhNdV2C9A71OzmyXc+lHV0z6ZqvKjspbRr+3y2qs7X9uWFOdcVyF9p+teY
 I/ox4oecEAQoUSmpV/sw3ke4IeGLiohyBnXPpDT1DYm/VWeE7Y6kg7r2jktR3XvEGIna
 2RYKJJX4G8qJupOLKRJy1sT/f0Qe7Zoq+fwqA4yOWEWFL+VsqDGYRhEN41cWcRvKH3/z
 0tJQ==
X-Gm-Message-State: APjAAAXlPfZIDcEEHfLJ6x9kL2VVSpEXAAfFksaYseMN5Hpqp7a/FZGf
 2YSf79jAjAWfQy+dW8XHYGo=
X-Google-Smtp-Source: APXvYqzwGqeGwmwYPdmQPkcptYHBYFkXN5Iham1dBSArtqgGwT0omke9cxGVq8Sux1JvKcwJUpXPJg==
X-Received: by 2002:a5d:624c:: with SMTP id m12mr3990228wrv.354.1558807769625; 
 Sat, 25 May 2019 11:09:29 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:28 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 00/10] Allwiner A64/H6 IR support
Date: Sat, 25 May 2019 20:09:13 +0200
Message-Id: <20190525180923.6105-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110938_501698_371B5826 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBNjQgSVIgc3VwcG9ydCBzZXJpZXNbMV0gcG9pbnRlZCBvdXQgdGhhdCBhbiBBMzEgYmlu
ZGluZHMgc2hvdWxkIGJlCmludHJvZHVjZWQuCgpUaGlzIHNlcmllcyBpbnRyb2R1Y2UgdGhlIEEz
MSBjb21wYXRpYmxlIGJpbmRpbmdzLCB0aGVuIHN3aXRjaCBpdCBvbgp0aGUgYWxyZWFkeSBleGlz
dGluZyBib2FyZC4KCkZpbmFsbHkgaW50cm9kdWNlIEE2NCBhbmQgSDYgc3VwcG9ydC4KClJlZ2Fy
ZHMsCkNsw6ltZW50CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNo
LzEwMzEzOTAvIzEyMjE0NjQKCkNsw6ltZW50IFDDqXJvbiAoOCk6CiAgZHQtYmluZGluZ3M6IG1l
ZGlhOiBBMzEgY29tcGF0aWJsZQogIG1lZGlhOiByYzogc3VueGk6IEFkZCBBMzEgY29tcGF0aWJs
ZQogIEFSTTogZHRzOiBzdW54aTogcHJlZmVyIEEzMSBpbnN0ZWFkIG9mIEExMyBmb3IgaXIKICBk
dC1iaW5kaW5nczogbWVkaWE6IHN1bnhpLWlyOiBBZGQgQTY0IGNvbXBhdGlibGUKICBkdC1iaW5k
aW5nczogbWVkaWE6IHN1bnhpLWlyOiBBZGQgSDYgY29tcGF0aWJsZQogIGFybTY0OiBkdHM6IGFs
bHdpbmVyOiBoNjogQWRkIElSIHJlY2VpdmVyIG5vZGUKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6
IGg2OiBFbmFibGUgSVIgb24gSDYgYm9hcmRzCiAgYXJtNjQ6IGRlZmNvbmZpZzogZW5hYmxlIElS
IFNVTlhJIG9wdGlvbgoKSWdvcnMgTWFrZWpldnMgKDEpOgogIGFybTY0OiBkdHM6IGFsbHdpbm5l
cjogYTY0OiBBZGQgSVIgbm9kZQoKSmVybmVqIFNrcmFiZWMgKDEpOgogIGFybTY0OiBkdHM6IGFs
bHdpbm5lcjogYTY0OiBFbmFibGUgSVIgb24gT3JhbmdlIFBpIFdpbgoKIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCAgICB8ICA3ICsrKysrKy0KIGFyY2gvYXJtL2Jv
b3QvZHRzL3N1bjZpLWEzMS5kdHNpICAgICAgICAgICAgICB8ICAyICstCiBhcmNoL2FybS9ib290
L2R0cy9zdW44aS1hODN0LmR0c2kgICAgICAgICAgICAgfCAgMiArLQogYXJjaC9hcm0vYm9vdC9k
dHMvc3VuOWktYTgwLmR0c2kgICAgICAgICAgICAgIHwgIDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRz
L3N1bnhpLWgzLWg1LmR0c2kgICAgICAgICAgICB8ICAyICstCiAuLi4vZHRzL2FsbHdpbm5lci9z
dW41MGktYTY0LW9yYW5nZXBpLXdpbi5kdHMgfCAgNCArKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kgfCAxOCArKysrKysrKysrKysrKysrKysKIC4uLi9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgICB8ICA0ICsrKysKIC4uLi9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICA0ICsrKysKIC4uLi9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cyB8ICA0ICsrKysKIGFyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpICB8IDE5ICsrKysrKysrKysr
KysrKysrKysKIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgICAgICAgICAgICAgICAgICB8
ICAxICsKIGRyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgICAgICAgICAgICAgICAgICB8ICAx
ICsKIDEzIGZpbGVzIGNoYW5nZWQsIDY1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
