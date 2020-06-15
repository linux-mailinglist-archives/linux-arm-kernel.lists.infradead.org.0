Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807B41F92B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/burm980SheOpdMgnQkBfCmgQZe/VRyA3scfSl8HCJM=; b=qiTcfm4R86YU0L
	DWS3/y/A/XPiyuYt09jIObdA5AjbO+YnIbWXZY6P3xeqC5jZbu2xh0J4fOe7EQ0ddLecpeL+wqKiq
	FLRaagLW44WUF6kIdGjad3S7r5XLJ9iQNWXCoVTpN0CA5V9juzetJWY0ER/+AIPh+KdtJRpcVW3Tk
	E0NTTjgc58B6id31Bh7a+S58gEXY78M28OXdypWWtiMc0qB+aqjgfMS2asjSNnrN7X32bexFTU77t
	dSAvoSVJnx3pkSJMKxus7sJS6AEMnctoj9jjQMO9Elm8TOaC/yzx1gGLbFRNyP5Lwxy25/ymmf3L+
	GBCpDJLAfPG4O86ZoNzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkl5H-0004Pu-07; Mon, 15 Jun 2020 09:07:15 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl0r-0007eu-5M
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:02:46 +0000
Received: by mail-wr1-x42e.google.com with SMTP id q11so16256513wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ues0PsnnVMTN2sbMwsEgElj1LE6JXXdWEnRPN/tZ0o8=;
 b=EqXU/lM0q9MIXJDBQ0s380kcW+nwN7WLe4/vY5JTK+vuhc0adCvlPshXYcSUe6mouY
 Tx1ke6mDRM8b13Ft5Ssn+oAoadmjL5tyV18TEIIR+LwRbAqkBO/7rRDKmSDj2X5JiK8Y
 6cqcJfNoYWswyhhwk/5fd8l31FJfO7J3g7rR7T3sfcxghvvpnbWJysrbwYWtB+XzfYaR
 1H8haYAtvNUxTzIpHd+gPDtr0qci0ohLJspZtqG7TQk60/l40cr71P1Ub8KeaORyFnL+
 WAMQhAQZsn/V7Cbd94D+Q4Bm/JtKi/8JBbvX+O4yC8DEtaDeg75HUPO1HjRF+Anthm0e
 QgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ues0PsnnVMTN2sbMwsEgElj1LE6JXXdWEnRPN/tZ0o8=;
 b=psjyXQJ2vdNUpJtmuOHvp3G2ZmcVhxGQwh1HVmHjVtWiwiPYbJN70gu4IW2JgPzPPS
 T6PlRbK/2o354W8kxw4M/tTQAttBkRgwLu0Dxi1Z1AklCl6WALk7upAgiqepH7cs5pDL
 HKtbpguLL92RdQCVFwUOOTgVqHvMMO5irP4peRXsAciI8E6oGXrOapd57m6f7uA1fSlG
 6qrkVW9X4jtfuazAcy+BW0G+0HKch8pPdTy6x7sP7bJuf4uFO9Qckk/gKX18FgE9E3xf
 TOfjY5dRDyhC0xnRa7uaEaTTU53JDmrC+S3/8mixVyv/iyFhRymCrm+BhhCR7BqVt/PF
 VE/g==
X-Gm-Message-State: AOAM531LIo1n7zQBOzDhqiZQ2vGRzQrHOteZRzgE1L1/TwnKrRsV9X1f
 4chTdisQmtTStWSzhY1Si0I=
X-Google-Smtp-Source: ABdhPJyirIebTfKJActCxB0+Ojr4+xV+GSbhqF9ARgewihQbqIEyIQhSLHFoGV8d5Y2rDpjPg5sjpw==
X-Received: by 2002:a05:6000:7:: with SMTP id h7mr29770003wrx.55.1592211759463; 
 Mon, 15 Jun 2020 02:02:39 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id o15sm24089516wrv.48.2020.06.15.02.02.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:02:39 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 4/8] mips: bmips: add BCM6358 clock definitions
Date: Mon, 15 Jun 2020 11:02:27 +0200
Message-Id: <20200615090231.2932696-5-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090231.2932696-1-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020241_385578_003CEA9C 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
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

QWRkIGhlYWRlciB3aXRoIEJDTTYzNTggZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KZGV2aWNlIHRyZWUgZmlsZXMuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svYmNtNjM1OC1jbG9jay5oIHwgMTggKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1
ZGUvZHQtYmluZGluZ3MvY2xvY2svYmNtNjM1OC1jbG9jay5oCgpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9kdC1iaW5kaW5ncy9jbG9jay9iY202MzU4LWNsb2NrLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdz
L2Nsb2NrL2JjbTYzNTgtY2xvY2suaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAw
MDAwMDAuLjk4MGM5Y2FjNDc2NQotLS0gL2Rldi9udWxsCisrKyBiL2luY2x1ZGUvZHQtYmluZGlu
Z3MvY2xvY2svYmNtNjM1OC1jbG9jay5oCkBAIC0wLDAgKzEsMTggQEAKKy8qIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wKyAqLworCisjaWZuZGVmIF9fRFRfQklORElOR1NfQ0xPQ0tf
QkNNNjM1OF9ICisjZGVmaW5lIF9fRFRfQklORElOR1NfQ0xPQ0tfQkNNNjM1OF9ICisKKyNkZWZp
bmUgQkNNNjM1OF9DTEtfRU5FVAk0CisjZGVmaW5lIEJDTTYzNThfQ0xLX0FEU0xQSFkJNQorI2Rl
ZmluZSBCQ002MzU4X0NMS19QQ00JCTgKKyNkZWZpbmUgQkNNNjM1OF9DTEtfU1BJCQk5CisjZGVm
aW5lIEJDTTYzNThfQ0xLX1VTQlMJMTAKKyNkZWZpbmUgQkNNNjM1OF9DTEtfU0FSCQkxMQorI2Rl
ZmluZSBCQ002MzU4X0NMS19FTVVTQgkxNworI2RlZmluZSBCQ002MzU4X0NMS19FTkVUMAkxOAor
I2RlZmluZSBCQ002MzU4X0NMS19FTkVUMQkxOQorI2RlZmluZSBCQ002MzU4X0NMS19VU0JTVQky
MAorI2RlZmluZSBCQ002MzU4X0NMS19FUEhZCTIxCisKKyNlbmRpZiAvKiBfX0RUX0JJTkRJTkdT
X0NMT0NLX0JDTTYzNThfSCAqLwotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
