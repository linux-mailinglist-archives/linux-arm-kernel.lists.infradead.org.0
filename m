Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAECC5F8C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4F20iVqNw1g4Qo7xiiqPyH7pwa1LPvq0hl32V/qHeA=; b=DI8EaW5PZ5G4nI
	DAL2VIUfFbU6bjNM+f1L9G6UeYqj7QI/jOQh1QsGA6T4IKXhZtsmdo1FSisf+xcXKuI/D4BCzgqQs
	iKPEbkPJHt7GTZUy5U1CJn101snSmo/i0cJGx57aNWKR2wfnlMnZDh6coPwvQ7M6HhEGPhtvug2/J
	KY2PRhE+p3tm8C4E/k17kXnTasl/L/8VldkugBfO0SQKj6TBdT88KOVeWVcngw+Opy8s85IRUIdUv
	Ycf4XHf7f1oPV43zFnaU3pnn6Jn9jC9BWIIklowolLYThARDa+QsgjFVdJUlyuRwr4Kw1sdGnok4c
	vWeWdge1z3OjN+OFM0OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1Mo-0000GI-Tk; Thu, 04 Jul 2019 13:01:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1ME-0008R1-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:01:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id 131so6103831ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bILvk7zww/MHzS0Ry8ydW5zQpvSdBYxtDr+zE8tM+sU=;
 b=jMNp8dC0A+sar0j+Ndv2aZcg+m3SjKWN/qql2KbBPlRWm3MHYJ8akksCCNPYMD8J4l
 4OPaCADR1zli5dsaAtbhCQFInApBlhTWZVZWUyGWgByqiH5/WIkVE/E/r65y9UlAYyCp
 cEGYQ2Fz27/v/Y6QegXtdZFNfg6XEyTzebOIe0OO/2xKABH9tD1UQJbDPwXD3wQ71wqY
 2/nhBLK5ntmjo2Ubnf5i6xQi7ZglF7sIHR5IArXx4eeCG4OwmhYKnMn+k8hVtdhn0eWi
 M5DQ9Z0ET1yMFygcSBJ73IKC2JVjIatVm8U60D9Bvzx8GDItnOPCJtwcfmo4H+vlQI36
 NInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bILvk7zww/MHzS0Ry8ydW5zQpvSdBYxtDr+zE8tM+sU=;
 b=KwtZxOjAYGTXB8YRx1Vfy/x2kzbPtWBNhCfJp8XGkTJfBE6Q2Ucu1Cb1rjoMvXf/mv
 RrdxwC/Oy8WrYFffFYw8fQrcF++OdlaUGn2laGnAP6AjDa8sMGtiqK5f9uetpTNORlix
 d7gnrquOBJ8zZbAIPd8FFGuzDgx4jiRRImjMvR66jk4K+dDJ0sbNOd7liN4XoC5BsUQh
 IjkAno8eogqXNDpR2seQbo/m90bDxBCJgqE0JAlPKLxKIp5OhuSAKKQ4kBH6ajXtBQQK
 NRroQUdlONKc3aFQxwaixcb844KpJMCyt+5SPjRIU6pJsFdi00E8pg1J4PU7Nk0zkciL
 oSSQ==
X-Gm-Message-State: APjAAAXuikkrRhbActm/gszFurb2x1vr9IRM7yUP5gDoT6C0nVuaK0aS
 RMge8N53AJTh4IuBFXeS5RKDJ8M1
X-Google-Smtp-Source: APXvYqwqe6vwvjs4G2dhy4KMCh3DxCD4S1TAcq7FkC6YdKvcUHqEmzDueEOmUFZoOHStbQl7zawztg==
X-Received: by 2002:a2e:88d3:: with SMTP id a19mr11892513ljk.32.1562245260861; 
 Thu, 04 Jul 2019 06:01:00 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h1sm485914lfj.21.2019.07.04.06.00.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 06:01:00 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v3 1/7] serial: imx: fix locking in set_termios()
Date: Thu,  4 Jul 2019 16:00:23 +0300
Message-Id: <1562245229-709-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1562245229-709-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1562245229-709-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060102_757255_4713756A 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aW14X3VhcnRfc2V0X3Rlcm1pb3MoKSBjYWxsZWQgaW14X3VhcnRfcnRzX2FjdGl2ZSgpLCBvcgpp
bXhfdWFydF9ydHNfaW5hY3RpdmUoKSBiZWZvcmUgdGFraW5nIHBvcnQtPnBvcnQubG9jay4KCkFz
IGEgY29uc2VxdWVuY2UsIHNwb3J0LT5wb3J0Lm1jdHJsIHRoYXQgdGhlc2UgZnVuY3Rpb25zIG1v
ZGlmeQpjb3VsZCBoYXZlIGJlZW4gY2hhbmdlZCB3aXRob3V0IGhvbGRpbmcgcG9ydC0+cG9ydC5s
b2NrLgoKTW92ZWQgbG9ja2luZyBvZiBwb3J0LT5wb3J0LmxvY2sgYWJvdmUgdGhlIGNhbGxzIHRv
IGZpeCB0aGUgaXNzdWUuCgpSZXZpZXdlZC1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1
dHJvbml4LmRlPgpUZXN0ZWQtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5k
ZT4KVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KClNp
Z25lZC1vZmYtYnk6IFNlcmdleSBPcmdhbm92IDxzb3JnYW5vdkBnbWFpbC5jb20+Ci0tLQogZHJp
dmVycy90dHkvc2VyaWFsL2lteC5jIHwgMjMgKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKaW5k
ZXggZGZmNzVkYy4uMTA1NTEyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5j
CisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwpAQCAtMzgzLDYgKzM4Myw3IEBAIHN0YXRp
YyB2b2lkIGlteF91YXJ0X3VjcnNfcmVzdG9yZShzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0LAogfQog
I2VuZGlmCiAKKy8qIGNhbGxlZCB3aXRoIHBvcnQubG9jayB0YWtlbiBhbmQgaXJxcyBjYWxsZXIg
ZGVwZW5kZW50ICovCiBzdGF0aWMgdm9pZCBpbXhfdWFydF9ydHNfYWN0aXZlKHN0cnVjdCBpbXhf
cG9ydCAqc3BvcnQsIHUzMiAqdWNyMikKIHsKIAkqdWNyMiAmPSB+KFVDUjJfQ1RTQyB8IFVDUjJf
Q1RTKTsKQEAgLTM5MSw2ICszOTIsNyBAQCBzdGF0aWMgdm9pZCBpbXhfdWFydF9ydHNfYWN0aXZl
KHN0cnVjdCBpbXhfcG9ydCAqc3BvcnQsIHUzMiAqdWNyMikKIAltY3RybF9ncGlvX3NldChzcG9y
dC0+Z3Bpb3MsIHNwb3J0LT5wb3J0Lm1jdHJsKTsKIH0KIAorLyogY2FsbGVkIHdpdGggcG9ydC5s
b2NrIHRha2VuIGFuZCBpcnFzIGNhbGxlciBkZXBlbmRlbnQgKi8KIHN0YXRpYyB2b2lkIGlteF91
YXJ0X3J0c19pbmFjdGl2ZShzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0LCB1MzIgKnVjcjIpCiB7CiAJ
KnVjcjIgJj0gflVDUjJfQ1RTQzsKQEAgLTQwMCw2ICs0MDIsNyBAQCBzdGF0aWMgdm9pZCBpbXhf
dWFydF9ydHNfaW5hY3RpdmUoc3RydWN0IGlteF9wb3J0ICpzcG9ydCwgdTMyICp1Y3IyKQogCW1j
dHJsX2dwaW9fc2V0KHNwb3J0LT5ncGlvcywgc3BvcnQtPnBvcnQubWN0cmwpOwogfQogCisvKiBj
YWxsZWQgd2l0aCBwb3J0LmxvY2sgdGFrZW4gYW5kIGlycXMgY2FsbGVyIGRlcGVuZGVudCAqLwog
c3RhdGljIHZvaWQgaW14X3VhcnRfcnRzX2F1dG8oc3RydWN0IGlteF9wb3J0ICpzcG9ydCwgdTMy
ICp1Y3IyKQogewogCSp1Y3IyIHw9IFVDUjJfQ1RTQzsKQEAgLTE1NTAsNiArMTU1MywxNiBAQCBp
bXhfdWFydF9zZXRfdGVybWlvcyhzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0LCBzdHJ1Y3Qga3Rlcm1p
b3MgKnRlcm1pb3MsCiAJCW9sZF9jc2l6ZSA9IENTODsKIAl9CiAKKwlkZWxfdGltZXJfc3luYygm
c3BvcnQtPnRpbWVyKTsKKworCS8qCisJICogQXNrIHRoZSBjb3JlIHRvIGNhbGN1bGF0ZSB0aGUg
ZGl2aXNvciBmb3IgdXMuCisJICovCisJYmF1ZCA9IHVhcnRfZ2V0X2JhdWRfcmF0ZShwb3J0LCB0
ZXJtaW9zLCBvbGQsIDUwLCBwb3J0LT51YXJ0Y2xrIC8gMTYpOworCXF1b3QgPSB1YXJ0X2dldF9k
aXZpc29yKHBvcnQsIGJhdWQpOworCisJc3Bpbl9sb2NrX2lycXNhdmUoJnNwb3J0LT5wb3J0Lmxv
Y2ssIGZsYWdzKTsKKwogCWlmICgodGVybWlvcy0+Y19jZmxhZyAmIENTSVpFKSA9PSBDUzgpCiAJ
CXVjcjIgPSBVQ1IyX1dTIHwgVUNSMl9TUlNUIHwgVUNSMl9JUlRTOwogCWVsc2UKQEAgLTE1OTMs
MTYgKzE2MDYsNiBAQCBpbXhfdWFydF9zZXRfdGVybWlvcyhzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0
LCBzdHJ1Y3Qga3Rlcm1pb3MgKnRlcm1pb3MsCiAJCQl1Y3IyIHw9IFVDUjJfUFJPRTsKIAl9CiAK
LQlkZWxfdGltZXJfc3luYygmc3BvcnQtPnRpbWVyKTsKLQotCS8qCi0JICogQXNrIHRoZSBjb3Jl
IHRvIGNhbGN1bGF0ZSB0aGUgZGl2aXNvciBmb3IgdXMuCi0JICovCi0JYmF1ZCA9IHVhcnRfZ2V0
X2JhdWRfcmF0ZShwb3J0LCB0ZXJtaW9zLCBvbGQsIDUwLCBwb3J0LT51YXJ0Y2xrIC8gMTYpOwot
CXF1b3QgPSB1YXJ0X2dldF9kaXZpc29yKHBvcnQsIGJhdWQpOwotCi0Jc3Bpbl9sb2NrX2lycXNh
dmUoJnNwb3J0LT5wb3J0LmxvY2ssIGZsYWdzKTsKLQogCXNwb3J0LT5wb3J0LnJlYWRfc3RhdHVz
X21hc2sgPSAwOwogCWlmICh0ZXJtaW9zLT5jX2lmbGFnICYgSU5QQ0spCiAJCXNwb3J0LT5wb3J0
LnJlYWRfc3RhdHVzX21hc2sgfD0gKFVSWERfRlJNRVJSIHwgVVJYRF9QUkVSUik7Ci0tIAoyLjEw
LjAuMS5nNTdiMDFhMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
