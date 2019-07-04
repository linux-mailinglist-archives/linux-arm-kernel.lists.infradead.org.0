Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03365F8C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YA30sIiNvmSWGtRqBa/PSujN7iYxEIV43ugThvZYHAI=; b=TAJnVXGAum6PTM
	Iqxfmu0rLLv1/iycAwYt9anHX1/Jdstk55msm9iP8IF0V/+Hm52JJqRcE9JktrHA4Ye79NTqBpccg
	DZ6XaTaG4DylqTNb4jOQ58FkMGH1ff/GgDQZcfW5QpGhhwrxCa/CDfsGTNNG2PEnJ2lDBwOxsfkAc
	2P0ySk2jma8Kd6vgPTsaXJq1vlBenj+M6mabS8w+tnoEID1fibH8BmMYHAxTWmTOhP4uITC47wljb
	r31ftY4nUP8V0G8oYaI2/Ln0vXpqokB6XmKAnepXt+gqJI0T8uPJw4/ZL1Wp8UwB5Wo/fXgAy0c7W
	y0akhiaHShFf5Nh/xFVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1N6-0000bJ-To; Thu, 04 Jul 2019 13:01:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1MF-0008RV-Rt
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:01:05 +0000
Received: by mail-lj1-x243.google.com with SMTP id a21so6102449ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GovB0KsV809AJW6tOWDxmHhyRG51oTvazg+HECC24X8=;
 b=vEPEzke0valyfsuQGRkaINfMgvEaL34LSMeazDtcXBSYIsCUjHGDkIqdV4AqVexD0i
 F/fHwh6MgjNiSgtDccaDE+5JLSt9ln98xz4GiS83kd3KE0njPccfsRa7fEUM2jJLkvFt
 p96cFAXbhspaBGyfBp8mKKOLQHx4uyo5AdFw3WwheZGg3LFIeXfH2zdactpZ0v6r4WNN
 8CsLtStxKemadRcE4jf8tBU4pnVXBb8VYSXRWtvtCYMB8RpnyQ4WpN28rNZqn8Bsd+AS
 Q+KWDdp6uiKbsmPTnEBBcvlkhi6bJKtLyVJ7GYMtsLTSwObZefpsnCsUsIpXUqHJxJdT
 GvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GovB0KsV809AJW6tOWDxmHhyRG51oTvazg+HECC24X8=;
 b=RXEH9ebgQysyRRu0iLZa+IewGCs0dZhmNilQftkWP50KLNcwA9MQ6iJNuyzqpUXL6l
 YdX0TsPkWa+GR7ORph6JB74B1h1cNMWuD4eZkxYv/sakNelQpDEooO6PTdFrlyZBeAKJ
 5I5h8etGRWMeO9PKf5q96/6cEfyLmRRHjd76UdnGwO6cWrgNcbWxGSUx8fHuJbFyBD2A
 TslKmrsLR2unbgfLGNSyODmsV998QsQIoNqHpFau41Ob/Ecv6hw91FNQwlEZ7dD+OYdM
 SGzCR/7gW9mQkAmml7rHeYQSHq5tLqDzr4jF0oKr1uDrMpxEZ5n5q0H4KVrseSfOzJhh
 KV6w==
X-Gm-Message-State: APjAAAU5isHz6p2RN5gvLaVq+55nrrbgCZ5gyxYdET+hN/4Pn8jM2PZN
 SrqcOkxKNDRU+DrYxUirfRw=
X-Google-Smtp-Source: APXvYqwJ2WjaNtVJPAJY+EIZRKqqbDSgCqxD35lCya0AJ5Yf6vXOpOTzZ3tP361M9YOHNH7dyQnfgQ==
X-Received: by 2002:a2e:5d46:: with SMTP id r67mr23597540ljb.187.1562245262585; 
 Thu, 04 Jul 2019 06:01:02 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h1sm485914lfj.21.2019.07.04.06.01.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 06:01:01 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v3 2/7] serial: imx: set_termios(): factor-out 'ucr2' initial
 value
Date: Thu,  4 Jul 2019 16:00:24 +0300
Message-Id: <1562245229-709-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1562245229-709-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1562245229-709-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060103_902113_184D2FB8 
X-CRM114-Status: GOOD (  11.11  )
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

U2V0IGNvbW1vbiBiaXRzIGluIGEgc2VwYXJhdGUgc3RhdGVtZW50IHRvIG1ha2UgaW5pdGlhbGl6
YXRpb24KZXhwbGljaXQgYW5kIG5vdCByZXBlYXQgdGhlIGNvbW1vbiBwYXJ0LgoKUmV2aWV3ZWQt
Ynk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KVGVzdGVkLWJ5OiBTYXNj
aGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+ClV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CgpTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgT3JnYW5v
diA8c29yZ2Fub3ZAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDUg
KystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jIGIvZHJpdmVycy90dHkvc2VyaWFs
L2lteC5jCmluZGV4IDEwNTUxMjQuLjg3ODAyZmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdHR5L3Nl
cmlhbC9pbXguYworKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKQEAgLTE1NjMsMTAgKzE1
NjMsOSBAQCBpbXhfdWFydF9zZXRfdGVybWlvcyhzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0LCBzdHJ1
Y3Qga3Rlcm1pb3MgKnRlcm1pb3MsCiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmc3BvcnQtPnBvcnQu
bG9jaywgZmxhZ3MpOwogCisJdWNyMiA9IFVDUjJfU1JTVCB8IFVDUjJfSVJUUzsKIAlpZiAoKHRl
cm1pb3MtPmNfY2ZsYWcgJiBDU0laRSkgPT0gQ1M4KQotCQl1Y3IyID0gVUNSMl9XUyB8IFVDUjJf
U1JTVCB8IFVDUjJfSVJUUzsKLQllbHNlCi0JCXVjcjIgPSBVQ1IyX1NSU1QgfCBVQ1IyX0lSVFM7
CisJCXVjcjIgfD0gVUNSMl9XUzsKIAogCWlmICh0ZXJtaW9zLT5jX2NmbGFnICYgQ1JUU0NUUykg
ewogCQlpZiAoc3BvcnQtPmhhdmVfcnRzY3RzKSB7Ci0tIAoyLjEwLjAuMS5nNTdiMDFhMwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
