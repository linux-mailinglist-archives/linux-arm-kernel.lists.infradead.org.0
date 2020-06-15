Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C3E1F92AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YruPaAL82+DC25Sq5UmUfcSbSYwn2TPg4RoxOqmUfeE=; b=IE5/VFDyJntoUH
	MKMFqIkATVmEwqWt6+11rRGmFsiXN6H/jZ6UX0A2+j6XOXpAYu4yQHSVTdcN9Pk9vSevUpgPYH1p7
	3iDN1k2meaqfw7Q8rwjrQBKdiziDGz16E5/chJPV6S9JRtlBj2dTxqPSW37eWX8HjkFXIUayyWKlb
	6LG/VxLYHFd2w5C7G7vlxO6U+JCNangDet6ls8/Sd+QlgIMp5Tbi+z1omeYPYlmhN1KDjmQ0HqEma
	XUjjeXx4ttV0uMNkbVt1L/FLiCCyoaXDihYZl5atpQJTAHC6epAr8lCEFcvAhEQPhUHGTwG9lsZM7
	XV0Tq9V9o6KDtjgusmBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkl4J-0003aq-Ad; Mon, 15 Jun 2020 09:06:15 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl0o-0007cn-NY
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:02:42 +0000
Received: by mail-wm1-x32c.google.com with SMTP id y20so13980495wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BfSpJilVz5MBdXnFVVixX+VqMK8O5L3P9Oe2sInGfUM=;
 b=V9GLQDL3wjU9TOCgzcvu6TCUM+VKlkblaqX4gJ7pP7t2m+Sm0nPsply5hEji1jR934
 NUhC7XMASudvtIebY8xfTrpCa2xpBRX5+t8rcc3RxWhQDIE2/rNLs4FgKmpcy3fWJNVn
 XVavyZVGbTQH90sZCreABuwre50CSDStxcvC+keG4gG6Nitc1X1MTxgVNaXU7FHBGly+
 Qh0PNOC9//LzzLdQKnZyRsyhdlOoUUwIwBRfCpEZcj/lWfJtL8mtYQ7HPQ8F8XOVuGI8
 W3NXoFKEYk0ei9O2l4cR9st7Cz6V6GCeLm3ALcwI7mfJc37BpYvNgSdbr6Yx82yo5BJI
 pxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BfSpJilVz5MBdXnFVVixX+VqMK8O5L3P9Oe2sInGfUM=;
 b=LbwAkvKYnOVRiPso4puc5DQGDHScrepOu66zVMcs0hsa3s1JQttjTmbHh+hasYCquC
 Nbo6i2KolqyTvhSSiQQDuoSFmdS+n8BFhOToIn3ZkILkn74ym/6+/mu1W04nNr/qeCdq
 RglT7a8sjtA4hx2jHqExT0DLfuzpKUgxTOxHuIf8e5fCGxbM67nzYxlb305kX5Z5WIPA
 wQVq6BjOa/GzuhOD0mkRTcs7yjcI3mu2a2ZqaWdt7GlZQFSatFXz+D7DVUh28QwA/lk2
 vgfLgjfhz0tO5BOKHQaPc0K3ogoEIcLSdvr4oc7u7446pAkwXYwMYKKIbnSzkta91GCn
 /gGw==
X-Gm-Message-State: AOAM533U3UCMwttewj2hlCaeulUoYgOYglGkqGXX+JB2zhKd4aiXz8k1
 +/drhkadCkex2KobE4mZcDM=
X-Google-Smtp-Source: ABdhPJw+jc3rlKaMwpSlxfMFAU48Fr+Ju6bjKOG9sAgPzoyaLt5Rasi5J4H9aIUviEWunmnThUtH9Q==
X-Received: by 2002:a7b:cf06:: with SMTP id l6mr11958504wmg.63.1592211756856; 
 Mon, 15 Jun 2020 02:02:36 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id o15sm24089516wrv.48.2020.06.15.02.02.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:02:36 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 2/8] mips: bmips: add BCM6318 clock definitions
Date: Mon, 15 Jun 2020 11:02:25 +0200
Message-Id: <20200615090231.2932696-3-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090231.2932696-1-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020238_794971_7314DE60 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
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

QWRkIGhlYWRlciB3aXRoIEJDTTYzMTggZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KZGV2aWNlIHRyZWUgZmlsZXMuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svYmNtNjMxOC1jbG9jay5oIHwgNDIgKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9iY202MzE4LWNsb2NrLmgKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzMTgtY2xvY2suaCBiL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvY2xvY2svYmNtNjMxOC1jbG9jay5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uYzQ0MTdmODk4M2FiCi0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9iY202MzE4LWNsb2NrLmgKQEAgLTAsMCArMSw0MiBAQAorLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArICovCisKKyNpZm5kZWYgX19EVF9CSU5ESU5HU19D
TE9DS19CQ002MzE4X0gKKyNkZWZpbmUgX19EVF9CSU5ESU5HU19DTE9DS19CQ002MzE4X0gKKwor
I2RlZmluZSBCQ002MzE4X0NMS19BRFNMX0FTQgkwCisjZGVmaW5lIEJDTTYzMThfQ0xLX1VTQl9B
U0IJMQorI2RlZmluZSBCQ002MzE4X0NMS19NSVBTX0FTQgkyCisjZGVmaW5lIEJDTTYzMThfQ0xL
X1BDSUVfQVNCCTMKKyNkZWZpbmUgQkNNNjMxOF9DTEtfUEhZTUlQU19BU0IJNAorI2RlZmluZSBC
Q002MzE4X0NMS19ST0JPU1dfQVNCCTUKKyNkZWZpbmUgQkNNNjMxOF9DTEtfU0FSX0FTQgk2Cisj
ZGVmaW5lIEJDTTYzMThfQ0xLX1NEUl9BU0IJNworI2RlZmluZSBCQ002MzE4X0NMS19TV1JFR19B
U0IJOAorI2RlZmluZSBCQ002MzE4X0NMS19QRVJJUEhfQVNCCTkKKyNkZWZpbmUgQkNNNjMxOF9D
TEtfQ1BVQlVTMTYwCTEwCisjZGVmaW5lIEJDTTYzMThfQ0xLX0FEU0wJMTEKKyNkZWZpbmUgQkNN
NjMxOF9DTEtfU0FSMTI1CTEyCisjZGVmaW5lIEJDTTYzMThfQ0xLX01JUFMJMTMKKyNkZWZpbmUg
QkNNNjMxOF9DTEtfUENJRQkxNAorI2RlZmluZSBCQ002MzE4X0NMS19ST0JPU1cyNTAJMTYKKyNk
ZWZpbmUgQkNNNjMxOF9DTEtfUk9CT1NXMDI1CTE3CisjZGVmaW5lIEJDTTYzMThfQ0xLX1NEUgkJ
MTkKKyNkZWZpbmUgQkNNNjMxOF9DTEtfVVNCRAkyMAorI2RlZmluZSBCQ002MzE4X0NMS19IU1NQ
SQkyNQorI2RlZmluZSBCQ002MzE4X0NMS19QQ0lFMjUJMjcKKyNkZWZpbmUgQkNNNjMxOF9DTEtf
UEhZTUlQUwkyOAorI2RlZmluZSBCQ002MzE4X0NMS19BRkUJCTI5CisjZGVmaW5lIEJDTTYzMThf
Q0xLX1FQUk9DCTMwCisKKyNkZWZpbmUgQkNNNjMxOF9VQ0xLX0FEU0wJMAorI2RlZmluZSBCQ002
MzE4X1VDTEtfQVJCCTEKKyNkZWZpbmUgQkNNNjMxOF9VQ0xLX01JUFMJMgorI2RlZmluZSBCQ002
MzE4X1VDTEtfUENJRQkzCisjZGVmaW5lIEJDTTYzMThfVUNMS19QRVJJUEgJNAorI2RlZmluZSBC
Q002MzE4X1VDTEtfUEhZTUlQUwk1CisjZGVmaW5lIEJDTTYzMThfVUNMS19ST0JPU1cJNgorI2Rl
ZmluZSBCQ002MzE4X1VDTEtfU0FSCTcKKyNkZWZpbmUgQkNNNjMxOF9VQ0xLX1NEUgk4CisjZGVm
aW5lIEJDTTYzMThfVUNMS19VU0IJOQorCisjZW5kaWYgLyogX19EVF9CSU5ESU5HU19DTE9DS19C
Q002MzE4X0ggKi8KLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
