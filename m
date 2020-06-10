Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0332A1F5A0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dP3uQV+/mGatPSXD5xxzWls228r9CScJUkN/HhXakRM=; b=nOQTaiKtqZmy9Q
	/6EkUYgI49dkIblDTahJ1ueLqkiZdwYVT1SjBdCAI5ds8W2T6rxcQxsbgIGntNoxbhBGbl9fk3QKB
	lPK0JH5qwe9rb7iZyJIj2K7550L66m9XDFiyI1xUl1SG4coDTLwMtrrVUfdKxJH29WcSJ9fE3P9gV
	WVYRtimuDzBRfjXHkig16dKcXsYxG7hMHzv0ptzV+h5vN2ef5+MeByvGbXTR682WOkVZx1L6GRTzF
	wSZ8tPp50r7ect9ZIS4D5r4UwmsYKdiBOnupFhazY0qfnHUw2R2OC5/0rL8HnEgRFg8lz31wTKSgF
	f1rvxMG7exeKHNCLc3Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4Ny-00088z-06; Wed, 10 Jun 2020 17:19:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4LD-0005o0-As
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id e1so3173479wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5Z5HmDtV/uFdRn9AN/WhBRbcRr/O4rtkluxMrfIJN0s=;
 b=fd37f0BFKkT2dMXloiiCDGGxDqQW2UM1Gqs9hsUCTJHrIMsznCmrphGvKwLWSf09OQ
 FZ/PU8zWotSr3ZdZH7s5eCn52gzfXfr1tjeLXFII3k8ooBcolu00v3pdmXRkZpE/6Eaf
 f+R5cqW6M2mDLdCgRCgsApoEaHi7nq6Z2Jh0J2fq+wz8lsI5sKHAcmsLlfjBNTbUGFJ8
 UlFI4Q5hsHzNVI+Wa9bXfTDbQs+8uGOyAubuoeQFhW6MKjVU7RFOCyVXFAlLQGNmrhkr
 nqOB0STrqyWMkEFMeBGi5OPuxgM7ZMqfgfIfC4BTeaUP3BVZgnMSvkLgiSVs2pOFsU2a
 FFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5Z5HmDtV/uFdRn9AN/WhBRbcRr/O4rtkluxMrfIJN0s=;
 b=FTzmPjRSwEv3mJqdqBcvsjm6IqqW4+iKGyEXcJR4iaQ0ybA1xRbxHGMIPuOM5csa+A
 qBYy1icKJ3JkuRtgTbWFgZPVzA0HTn/2/rgSzCQV81f5wY9uJ7eY2ZGyvEplLbUDf+Ou
 pRTlajc3KR2okROez4hXvBGHMkvbOs3wn0435Z2fsroWd0UFV7bbI39DFas1oZ+totm4
 GWWFFrGDti8X1737r/OfUmsA3tBI4GgnDujLAepdi9/5ydLIDseUDYOLKQ9+q1QDb6Gq
 jAK2X7uFVYqKq8lVHmXrMERQjI/8WJTeXXx6v0yj+hJxdZlbVu1a6mFdLoPiSM3s4aE2
 mVDg==
X-Gm-Message-State: AOAM531WGso0mtqibs7scng48IhQtAlGrrcO9frdGOijorcYYHnfbur5
 CYlZyfOBisFuvbOpEdQtAGlqVxJPq20=
X-Google-Smtp-Source: ABdhPJwwhcrMFSDWf49dyge+OJdhoE3YU2B7KXd0sYZzv3guwN9R5Sp6bftxIqpZxmqZXOYSfjIbcQ==
X-Received: by 2002:adf:cd08:: with SMTP id w8mr4763720wrm.36.1591809401794;
 Wed, 10 Jun 2020 10:16:41 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:41 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 9/9] mips: bmips: dts: add BCM63268 power domain support
Date: Wed, 10 Jun 2020 19:16:30 +0200
Message-Id: <20200610171630.465579-10-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101645_141177_6687076A 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIgdG8gZW5hYmxlL2Rp
c2FibGUgY2VydGFpbgpjb21wb25lbnRzIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpTaWduZWQt
b2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0K
IHYzOiBTZXBhcmF0ZSBkdC1iaW5kaW5ncyBkZWZpbml0aW9ucyBmcm9tIHBvd2VyIGRvbWFpbiAu
ZHRzaSBzdXBwb3J0LgogdjI6IEFkZCBkdC1iaW5kaW5ncyBoZWFkZXIgZmlsZXMuCgogYXJjaC9t
aXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyNjguZHRzaSB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20v
YmNtNjMyNjguZHRzaSBiL2FyY2gvbWlwcy9ib290L2R0cy9icmNtL2JjbTYzMjY4LmR0c2kKaW5k
ZXggYmVlYzI0MTQ1YWY3Li41YWNiNDliNjE4NjcgMTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9ib290
L2R0cy9icmNtL2JjbTYzMjY4LmR0c2kKKysrIGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNt
NjMyNjguZHRzaQpAQCAtMTE3LDYgKzExNywxMiBAQCBsZWRzMDogbGVkLWNvbnRyb2xsZXJAMTAw
MDE5MDAgewogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIAorCQlwZXJpcGhfcHdyOiBw
b3dlci1jb250cm9sbGVyQDEwMDAxODRjIHsKKwkJCWNvbXBhdGlibGUgPSAiYnJjbSxiY202MzI4
LXBvd2VyLWNvbnRyb2xsZXIiOworCQkJcmVnID0gPDB4MTAwMDE4NGMgMHg0PjsKKwkJCSNwb3dl
ci1kb21haW4tY2VsbHMgPSA8MT47CisJCX07CisKIAkJZWhjaTogdXNiQDEwMDAyNTAwIHsKIAkJ
CWNvbXBhdGlibGUgPSAiYnJjbSxiY202MzI2OC1laGNpIiwgImdlbmVyaWMtZWhjaSI7CiAJCQly
ZWcgPSA8MHgxMDAwMjUwMCAweDEwMD47Ci0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
