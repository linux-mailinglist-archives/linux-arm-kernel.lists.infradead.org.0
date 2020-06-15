Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542DA1F90EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y9tBrUG0FJcKW1eT0Q1jqAS+Hg5ooWrXo387zR/r1Fk=; b=hj2FoYlPl+ADDY
	vV8ywhj9NouF4gx0Nto2aUD5hjU/5X7UeLt8usduU9KrHRl2HkIA04weAZusoKnqv4GicamcYg2P+
	VmSJPvYvdMQEa6r3oOF41wl+DIAebmqTKiIxcNq8QnQ5yuwUkq6MuXEo4vt4OITBOwyl5C2GDumwx
	BEtMImeegD9BZdqqknp1wYeayuMQH3/jju2cPJDlToU3MIYIPhor+i0fgxM/J36lk4fbY3OFmarWZ
	6p8Ret3xDaOJ8cJfWMa8A1EgYFExA+rYsj47cS4+hCG9U9UcBvfZYqQRye8LOrrDlO7zZjQ+oY6P0
	VGeLrr2kLfx5ibmkKIBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkk5T-0007A2-1G; Mon, 15 Jun 2020 08:03:23 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkk5J-000799-63
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:03:14 +0000
Received: by mail-wr1-x42b.google.com with SMTP id h5so16064375wrc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 01:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vDP7eI93BA6O8vNpenJlTbc7LwUcGedkrTzHRTDYCp0=;
 b=R0He0pmvK3ON8oQZm76JHE8+ZBhJuGefP3ORNCcxg7vw1Cc/Tgq6pglgsYxeCHt4km
 nCi7LtwAtxz06fouLKCayAojFytnvkIP/GGKF0FMAKcjz8nB99ImspWqyvM8f7mV4Jdt
 wzX/m8qGoAFHXCtLfPyu1wYcsE0+NqIP3ehRgaVb3t4gTEm2yf8fBjJPfVdnEXTRBFwo
 JODnCdBocXtxsMi05fcJl5jRkeCpHhODvaFsVD58GU4DBULfnExVvSkqj9akRFxKmYmj
 +jqw4z0U96PVZ5MsR9RlG2fBce9aNwe92Eiyh3Y5lgdusl4ve2mB4L8FOJTCpkwtVdV6
 MmXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vDP7eI93BA6O8vNpenJlTbc7LwUcGedkrTzHRTDYCp0=;
 b=TuhS/XgUl1UwvZpxVVv5mlyg9DKeHCCN2uDaHdqjiEeN0XZasC+9VNJADcDpqcNtRg
 PUHvR2HR3nxa9gc7fpuh9Roccr4NcqhtPHIfS0fxGsoooS6Y3Tfr7SjA8Ztd/2nUUO1B
 xiKmDt6duNKhgsZp1K2YDgOuz2bj75SFlgkfWlN/Ufj1mXB/EW7gIY/OZVOWCHCa5yZW
 cLPvPXSyR1wVTNsOE80BGtEIAJkFDxwdyJmfMPw6qyNdI7OFPYPEIfkJ5yJBFql09eUA
 n7AHYm2EVzH4dGZ4FVT9+5Q+QuBSlrxgw/YMPcQcsw8O7+TLJ4wFjerjt13kKnMApVf+
 dDiA==
X-Gm-Message-State: AOAM532RszwD78i7OCMn3qEzd0HTA/w1i0aiHk9Uq8LX8vIJlkedQRRm
 +ZJA/sgJQBHs/IRFdcFt9Ks=
X-Google-Smtp-Source: ABdhPJwFV/dnQvP+WYtbJ6DuX19B+uGzQznL4K8oB2ZPk+rsIlgW7MOxwp/PkedE2uCq2eCOa7q5sw==
X-Received: by 2002:adf:97cb:: with SMTP id t11mr27410732wrb.314.1592208191230; 
 Mon, 15 Jun 2020 01:03:11 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id d9sm23107054wre.28.2020.06.15.01.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 01:03:10 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] spi: bcm63xx: add BMIPS support
Date: Mon, 15 Jun 2020 10:03:05 +0200
Message-Id: <20200615080309.2897694-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_010313_239155_6AD8F12D 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

QkNNNjN4eCBTUEkgYW5kIEhTU1BJIGNvbnRyb2xsZXIgYXJlIHByZXNlbnQgb24gc2V2ZXJhbCBC
TUlQUyBTb0NzIChCQ002MzE4LApCQ002MzI4LCBCQ002MzU4LCBCQ002MzYyLCBCQ002MzY4IGFu
ZCBCQ002MzI2OCkuCgrDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDQpOgogIHNwaTogYmNtNjN4
eC1zcGk6IGFkZCByZXNldCBzdXBwb3J0CiAgc3BpOiBiY202M3h4LXNwaTogYWxsb3cgYnVpbGRp
bmcgZm9yIEJNSVBTCiAgc3BpOiBiY202M3h4LWhzc3BpOiBhZGQgcmVzZXQgc3VwcG9ydAogIHNw
aTogYmNtNjN4eC1oc3NwaTogYWxsb3cgYnVpbGRpbmcgZm9yIEJNSVBTCgogZHJpdmVycy9zcGkv
S2NvbmZpZyAgICAgICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvc3BpL3NwaS1iY202M3h4LWhz
c3BpLmMgfCAxNyArKysrKysrKysrKysrKysrKwogZHJpdmVycy9zcGkvc3BpLWJjbTYzeHguYyAg
ICAgICB8IDE3ICsrKysrKysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
