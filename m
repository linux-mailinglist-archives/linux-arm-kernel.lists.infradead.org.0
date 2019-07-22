Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E756FC0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miiA8R59lprX7/ohCvUsF+h8TkvFiPXnx7/k8W3wWXM=; b=egbgzWqH6zeOLE
	mpAfN7O+1ulxYTetIDWp7jgC4Lh7dYSej72Vqt1tbidboObXrtP+aD42EmB+vCOTTLAh5qIjhPCsx
	V0/TTt5uSATBlr/io6CKhWFymzWYNnryDAZaoJM+94AU1B2JOZ7n35qRPophcAhMKnHQ3qadsotHK
	ZiNJxcMR7zstFZEn3tSrq8n/Za/8svfSYlPflCCl5hr0Sc1dHShKX3VrW0bmHQ+z8PQl6Gqigb+zk
	n26WruhfQDmLZaNjEqAySagfi33nZmimG5hnky40IR6cZOyt8yOgJ0nEFF5816cwQNz+9n9HwtxHu
	JM0jRpQYSe7TMm5iBMRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUXq-0007jB-9b; Mon, 22 Jul 2019 09:23:46 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUWW-0005bE-1g
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:22:25 +0000
Received: by mail-lj1-x241.google.com with SMTP id h10so36893940ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AB9Uhy9tvuGFyl7GXO1etpCNViYG1ibv00O/NXtQ8qI=;
 b=sfVmdXLMToo060hTaOQKGSekZo/nQgI+rUVXwxbsl1zWdeT8Ou8wZ2DSd0Toat2wvE
 OY1ig9BZzEetVuVQGSORIFmmHnPUwFm7cQFl1YXb3YIvN3sfr25StiCPz4e0OpVN4UhN
 AIPqCCFbyocLbejYqn4Dmhxpd8r9m+llxm+qMTYzq++NXuTisw6SfkSNDajoA1gsKMK9
 vkU9B5j3VTR04W7+JApSihLVrQc4YUwovUGv7R5RlXmhR3qsaxEVGlp7kCQu1vJ6KyR7
 /dBYolSHWgX619+nxe0XGcpy6BOilJ54y/PPKBuB1LSWcJQQOPB0vmnEQbemPsAIihf4
 LIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AB9Uhy9tvuGFyl7GXO1etpCNViYG1ibv00O/NXtQ8qI=;
 b=WMkEj6Ap8+l0le6ZLj2Uol7THiAv/UtjFf7OT0/Vuf2cp14VpYCsNCHSiMnM2u8ViE
 cBKkz1B9Xttuj8szFRDkNhP886BKhlCJJ4kZiYd+F+Gni5pT1jhIcey9XMv3W45zNUOR
 dE5m1F8pgHOFFjTuYxOa8WO0eG3oqmwDo7m3pLiCKoP6RfnrzytVwrr+gCjwgBaieRTU
 wx96jkLD9+zba83AH1Zgtc+LrdU/qNlqvsaUPxrfuf/tNpYUaXWvfTcggi/0X5T6HQZa
 yQzmhU+slsvfiuyQ0KDFg3ASpOfC+p3bP5Z0MOct37tYlbC58I9WEahdR81A3PTZtjst
 AREQ==
X-Gm-Message-State: APjAAAVgSt0FoGnmRVGxCYzpnq7CVjVW1xyFVjq1FojNPYjI88ZtCOkV
 ypNLGNK7zGWSrZYOnXqqYHg=
X-Google-Smtp-Source: APXvYqxWQrMDT2vKFWjVmiipEuXJG5cCZHpd/xcTl4RwYawjhu07ztS2G7AVcrSV4iEL+yeypBPnlQ==
X-Received: by 2002:a2e:9a19:: with SMTP id o25mr35933375lji.63.1563787342756; 
 Mon, 22 Jul 2019 02:22:22 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id b68sm8425088ljb.0.2019.07.22.02.22.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 02:22:22 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v5 3/3] serial: imx: get rid of imx_uart_rts_auto()
Date: Mon, 22 Jul 2019 12:22:10 +0300
Message-Id: <1563787330-1394-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563787330-1394-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563787330-1394-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_022224_115919_0F65F10A 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Q2FsbGVkIGluIG9ubHkgb25lIHBsYWNlLCBmb3IgUlMyMzIsIGl0IG9ubHkgb2JzY3VyZXMgdGhp
bmdzLCBhcyBpdApkb2Vzbid0IGdvIHdlbGwgd2l0aCAyIHNpbWlsYXIgbmFtZWQgZnVuY3Rpb25z
LAppbXhfdWFydF9ydHNfaW5hY3RpdmUoKSBhbmQgaW14X3VhcnRfcnRzX2FjdGl2ZSgpLCB0aGF0
IGJvdGggYXJlClJTNDg1LXNwZWNpZmljLgoKUmV2aWV3ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmln
IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClJldmlld2VkLWJ5OiBTYXNjaGEgSGF1
ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+ClRlc3RlZC1ieTogU2FzY2hhIEhhdWVyIDxzLmhh
dWVyQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgT3JnYW5vdiA8c29yZ2Fu
b3ZAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDIxICsrKysrKysr
LS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jIGIvZHJpdmVycy90
dHkvc2VyaWFsL2lteC5jCmluZGV4IDA1OWJhMzUuLmQ5YTczYzcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvdHR5L3NlcmlhbC9pbXguYworKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKQEAgLTQw
MiwxNyArNDAyLDYgQEAgc3RhdGljIHZvaWQgaW14X3VhcnRfcnRzX2luYWN0aXZlKHN0cnVjdCBp
bXhfcG9ydCAqc3BvcnQsIHUzMiAqdWNyMikKIAltY3RybF9ncGlvX3NldChzcG9ydC0+Z3Bpb3Ms
IHNwb3J0LT5wb3J0Lm1jdHJsKTsKIH0KIAotLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2Vu
IGFuZCBpcnFzIGNhbGxlciBkZXBlbmRlbnQgKi8KLXN0YXRpYyB2b2lkIGlteF91YXJ0X3J0c19h
dXRvKHN0cnVjdCBpbXhfcG9ydCAqc3BvcnQsIHUzMiAqdWNyMikKLXsKLQkvKgotCSAqIE9ubHkg
bGV0IHJlY2VpdmVyIGNvbnRyb2wgUlRTIG91dHB1dCBpZiB3ZSB3ZXJlIG5vdCByZXF1ZXN0ZWQg
dG8gaGF2ZQotCSAqIFJUUyBpbmFjdGl2ZSAod2hpY2ggdGhlbiBzaG91bGQgdGFrZSBwcmVjZWRl
bmNlKS4KLQkgKi8KLQlpZiAoKnVjcjIgJiBVQ1IyX0NUUykKLQkJKnVjcjIgfD0gVUNSMl9DVFND
OwotfQotCiAvKiBjYWxsZWQgd2l0aCBwb3J0LmxvY2sgdGFrZW4gYW5kIGlycXMgb2ZmICovCiBz
dGF0aWMgdm9pZCBpbXhfdWFydF9zdGFydF9yeChzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0KQogewpA
QCAtMTYwNCw4ICsxNTkzLDE0IEBAIGlteF91YXJ0X3NldF90ZXJtaW9zKHN0cnVjdCB1YXJ0X3Bv
cnQgKnBvcnQsIHN0cnVjdCBrdGVybWlvcyAqdGVybWlvcywKIAkJZWxzZQogCQkJaW14X3VhcnRf
cnRzX2luYWN0aXZlKHNwb3J0LCAmdWNyMik7CiAKLQl9IGVsc2UgaWYgKHRlcm1pb3MtPmNfY2Zs
YWcgJiBDUlRTQ1RTKQotCQlpbXhfdWFydF9ydHNfYXV0byhzcG9ydCwgJnVjcjIpOworCX0gZWxz
ZSBpZiAodGVybWlvcy0+Y19jZmxhZyAmIENSVFNDVFMpIHsKKwkJLyoKKwkJICogT25seSBsZXQg
cmVjZWl2ZXIgY29udHJvbCBSVFMgb3V0cHV0IGlmIHdlIHdlcmUgbm90IHJlcXVlc3RlZAorCQkg
KiB0byBoYXZlIFJUUyBpbmFjdGl2ZSAod2hpY2ggdGhlbiBzaG91bGQgdGFrZSBwcmVjZWRlbmNl
KS4KKwkJICovCisJCWlmICh1Y3IyICYgVUNSMl9DVFMpCisJCQl1Y3IyIHw9IFVDUjJfQ1RTQzsK
Kwl9CiAKIAlpZiAodGVybWlvcy0+Y19jZmxhZyAmIENSVFNDVFMpCiAJCXVjcjIgJj0gflVDUjJf
SVJUUzsKLS0gCjIuMTAuMC4xLmc1N2IwMWEzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
