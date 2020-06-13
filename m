Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A931F81DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SEf4w48w0eITBnpdawFPYUzrhlOFEamee28/Twq1TI=; b=JletUPiWGDNgEW
	FD52etsMR8wDJLx4dDx7ZTlN5BaMm82bXcdjBDpgVGh80F3wEyR1+4tafe74AlpOIxcHMjT1YYqN0
	xWiF+S23fOdhH57eAYmC3za0IlXVqbnn/02N9vCzaMVEM1wrIoiPOzZh4E/GbgnsjwGWXvNFJGRvt
	WoW2p235H2D4RfFObovsBhciPXdCaaojnQUixK0TVUNkzWvzLJrGSFwkbLoG6eKBuKuZIr7Gx5OFH
	HmMuO/IXOqtpJS0ZZf8jX5Ej05gKyd9aC40aE03GyWUMikaEyGXYVQO8wsDuTimZ6fkvmvzZVkSWo
	fQO3lBJcse8mqszReuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1Qg-0005mn-Ob; Sat, 13 Jun 2020 08:22:18 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QB-0005c7-A7
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:48 +0000
Received: by mail-wr1-x434.google.com with SMTP id h5so12159478wrc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1xHqshvxVKt/Lif7hiknmlHxlW07FtmhilPxSVlIbzA=;
 b=hQeMubGl0U1kMD9APCucPsThjqmZErTgqMqpas/RXVrVuKik3XLu267jxm8+MFyp7i
 CxObj0oCpakzUlx30JZ1apyR5ezRwug9pH+/B/XrhK14bNf+HffCgsfIr9QX6bSN+h6A
 QkW9Mw4AQuM8AeYXWXuwI8RbtL4SmXg40XTciweYEYYIH4qYjJDethU72hXLVZvXlZPd
 7/3l550iXVDmRHP6vLtLkMKGmT3nDOEZ7ryXeZXb+9u4DawV6XWkh/lXOwd7VVB/MV0I
 J1lpvgNzEnhQfs8UwJeEjm3TDlCxm7W1X2eGjb5M3hioDrBnaatbok0dZNedkvltqLaP
 +FJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1xHqshvxVKt/Lif7hiknmlHxlW07FtmhilPxSVlIbzA=;
 b=M4zrqrDq9qkrap7H3dtp84xlvLx4zxkAwXXG6kvZtpJCBq3iQHcvkf+wsXz7MDPHgE
 pmR345k+Bd6lFhRiEs3nNVSCcto0U7u2TH/hhZSI340oaLshXk5G+VVSAN5kpVdEPvST
 VACCOsHRUEYhkzB22uuFofQg5tXv7cyJn18g9f4AHsliaqFzduLhacLgZF0yfUM9PRxP
 TRc9enmKJi8dvvLuvzw1paIJKhLNdNtyWvLtU4P3JjnTzNN0UxM/8k0yGE+KyvMzev0N
 0H3dfF3lzq5AADac2+7K5oMsf0K42YjN0HCcxE7k6sx2ydl4ecrh+7Ie7UHmg5GaufOw
 UpDQ==
X-Gm-Message-State: AOAM533WahtpVHRMEDmfYFu8Fu9wulRbHFDKPT8/xVwxCYs5wIBrWj9v
 I+31k+jcTJTAE2or2wmsJFU=
X-Google-Smtp-Source: ABdhPJyoQ7Fl36M6toxK2SERExtYee+vDUqZWL7IQ4fImJNlfNCpjSb7bNaalRlw+jY7fWa03bWqbw==
X-Received: by 2002:adf:f611:: with SMTP id t17mr18253571wrp.69.1592036505707; 
 Sat, 13 Jun 2020 01:21:45 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:45 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/9] mips: bmips: add BCM6328 power domain definitions
Date: Sat, 13 Jun 2020 10:21:33 +0200
Message-Id: <20200613082140.2009461-3-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200613082140.2009461-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012147_353135_B7429CCB 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjMyOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
djQ6IFJlbW92ZSAiZHRzOiAiIGZyb20gY29tbWl0IHRpdGxlLgogdjM6IFNlcGFyYXRlIGR0LWJp
bmRpbmdzIGRlZmluaXRpb25zIGZyb20gcG93ZXIgZG9tYWluIC5kdHNpIHN1cHBvcnQuCgogaW5j
bHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oIHwgMTcgKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9k
dC1iaW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNt
NjMyOC1wbS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNTU3ZTFh
NjliN2Y3Ci0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMy
OC1wbS5oCkBAIC0wLDAgKzEsMTcgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wKyAqLworCisjaWZuZGVmIF9fRFRfQklORElOR1NfQk1JUFNfQkNNNjMyOF9QTV9ICisjZGVm
aW5lIF9fRFRfQklORElOR1NfQk1JUFNfQkNNNjMyOF9QTV9ICisKKyNkZWZpbmUgQkNNNjMyOF9Q
T1dFUl9ET01BSU5fQURTTDJfTUlQUwkwCisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX0FE
U0wyX1BIWQkxCisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX0FEU0wyX0FGRQkyCisjZGVm
aW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX1NBUgkzCisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9N
QUlOX1BDTQk0CisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX1VTQkQJNQorI2RlZmluZSBC
Q002MzI4X1BPV0VSX0RPTUFJTl9VU0JICTYKKyNkZWZpbmUgQkNNNjMyOF9QT1dFUl9ET01BSU5f
UENJRQk3CisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX1JPQk9TVwk4CisjZGVmaW5lIEJD
TTYzMjhfUE9XRVJfRE9NQUlOX0VQSFkJOQorCisjZW5kaWYgLyogX19EVF9CSU5ESU5HU19CTUlQ
U19CQ002MzI4X1BNX0ggKi8KLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
