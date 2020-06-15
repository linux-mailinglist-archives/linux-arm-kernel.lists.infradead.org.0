Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24901F92B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXWjGMFU8JFe+DX5R6yvu6Nu39PHX13W8jTmpUg8Nlk=; b=payoUzoNzl5vjC
	YHg0yTzrd0593zX0GA1l0eGKAUk8iYn/JDZ7mRPYkHIgKqgf3cc9bO44vsbALuyLPmhm20cYjzslC
	SgFrCbYTp3efb1l+2Hx3Mr8ByLukRADm45bWgZ1le1TaeRcX59auArxtCB2dwWHl9Bj4a0cvDmIcD
	zFLLEhnRbmcQY2X/Erz48YNlBjNbLcob/6T6tnzkwIK6Z4GqcdOhl1kBObXAhfwF9JVIMSxVWlMVy
	5tmd2iWeGBdW1o3KT5kqQAD6AedDZBTjmPwJHXpo01pgpUBBFl5OlnBAVmwaIo3igtZVLEj87qAt4
	7iVEpqtgNsrJgi3MXZIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkl5h-0004xk-CV; Mon, 15 Jun 2020 09:07:41 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl0s-0007gJ-Uu
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:02:49 +0000
Received: by mail-wm1-x330.google.com with SMTP id j198so13625146wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ld57nJnZAP689cxMru8QNpuCGfHmRHQ2rq3i8nGEfuQ=;
 b=E4aEUiPCNp+XDU5iaBC6jRQltGKGR7evgt2RgQKR2QAsCUh+4OS56aWYuDmMYg9OV/
 jOsgDFKCNQOh/iDgpKE/FNP+orbWp2EoUg+keNx1OPoedbFPRcLLCLh/sPoWQC1iEHcP
 8y2iX7WG2mzGuPRBn8r2ZKxjC9PbiQiQgB+m7sGjcKTfnrRle5RAjqrbwR3LBSSBurq+
 xFrzvYZX9JWxcZpof5u/Pa6631bzp6XeJfMEeY94o7D/ONy/Q1D++fqvfPsQvOl6LwoK
 wWcHjYlrfDob7rSQBXzsY8XzisWlKmWnzJoIy30k4oHEEFNKgIGH+WUdwCpNSng3PQu2
 KdnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ld57nJnZAP689cxMru8QNpuCGfHmRHQ2rq3i8nGEfuQ=;
 b=N5l+h6ytE+zIUFkQrOVrX8S7SETbJH3mv9WWim9taNQVvQGpC4ieF+Ejmlg16Df+SV
 40vJa4QborhJtzeZajaWH0U93+CIx34DYrE8/Z6fOzyBLQO0fc2/7Ea18+cnlT4/SeNv
 sw2ym16tBDMLdeclA4j9ok+zw09kJvAeqO6+Bo/TY4HdYc9NfKYmbxHuS3apg1gffTqm
 d2uxK/QnQUXzZjy7gde+rfbKriT3bKtPm/sgzsyvgyOYpUMSQUHTvOIZz/ToYyDvsMj+
 K5XiRFtcjSWR+/be9i41RU39Mm4S+D9yWtbrXk23StLQrObDKRhTrdJRufJ/jjv9v/VD
 Dcrg==
X-Gm-Message-State: AOAM530vTtfnSDSkrO23s/NeRb/lsbGipAjnwnUP/iuXGebe+T8z9MjI
 ffVBapRED6k0qjmN1R2O1uE=
X-Google-Smtp-Source: ABdhPJytr5S09yPh9QES843sEaKRMapl23pdGMM5fYzqE8LsqKW3v7pIqGJ6d/IkGL562wILewGwDQ==
X-Received: by 2002:a1c:4143:: with SMTP id o64mr11668285wma.157.1592211760672; 
 Mon, 15 Jun 2020 02:02:40 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id o15sm24089516wrv.48.2020.06.15.02.02.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:02:40 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 5/8] mips: bmips: add BCM6362 clock definitions
Date: Mon, 15 Jun 2020 11:02:28 +0200
Message-Id: <20200615090231.2932696-6-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090231.2932696-1-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020243_101749_88140F93 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

QWRkIGhlYWRlciB3aXRoIEJDTTYzNjIgZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KZGV2aWNlIHRyZWUgZmlsZXMuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svYmNtNjM2Mi1jbG9jay5oIHwgMjYgKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9iY202MzYyLWNsb2NrLmgKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzNjItY2xvY2suaCBiL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvY2xvY2svYmNtNjM2Mi1jbG9jay5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uMTc2NTVjZDViZjI1Ci0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9iY202MzYyLWNsb2NrLmgKQEAgLTAsMCArMSwyNiBAQAorLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArICovCisKKyNpZm5kZWYgX19EVF9CSU5ESU5HU19D
TE9DS19CQ002MzYyX0gKKyNkZWZpbmUgX19EVF9CSU5ESU5HU19DTE9DS19CQ002MzYyX0gKKwor
I2RlZmluZSBCQ002MzYyX0NMS19BRFNMX1FQUk9DCTEKKyNkZWZpbmUgQkNNNjM2Ml9DTEtfQURT
TF9BRkUJMgorI2RlZmluZSBCQ002MzYyX0NMS19BRFNMCTMKKyNkZWZpbmUgQkNNNjM2Ml9DTEtf
TUlQUwk0CisjZGVmaW5lIEJDTTYzNjJfQ0xLX1dMQU5fT0NQCTUKKyNkZWZpbmUgQkNNNjM2Ml9D
TEtfU1dQS1RfVVNCCTcKKyNkZWZpbmUgQkNNNjM2Ml9DTEtfU1dQS1RfU0FSCTgKKyNkZWZpbmUg
QkNNNjM2Ml9DTEtfU0FSCQk5CisjZGVmaW5lIEJDTTYzNjJfQ0xLX1JPQk9TVwkxMAorI2RlZmlu
ZSBCQ002MzYyX0NMS19QQ00JCTExCisjZGVmaW5lIEJDTTYzNjJfQ0xLX1VTQkQJMTIKKyNkZWZp
bmUgQkNNNjM2Ml9DTEtfVVNCSAkxMworI2RlZmluZSBCQ002MzYyX0NMS19JUFNFQwkxNAorI2Rl
ZmluZSBCQ002MzYyX0NMS19TUEkJCTE1CisjZGVmaW5lIEJDTTYzNjJfQ0xLX0hTU1BJCTE2Cisj
ZGVmaW5lIEJDTTYzNjJfQ0xLX1BDSUUJMTcKKyNkZWZpbmUgQkNNNjM2Ml9DTEtfRkFQCQkxOAor
I2RlZmluZSBCQ002MzYyX0NMS19QSFlNSVBTCTE5CisjZGVmaW5lIEJDTTYzNjJfQ0xLX05BTkQJ
MjAKKworI2VuZGlmIC8qIF9fRFRfQklORElOR1NfQ0xPQ0tfQkNNNjM2Ml9IICovCi0tIAoyLjI3
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
