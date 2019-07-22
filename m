Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402B97099F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1GlJVkFUHVsL7e3wF9NCq6Z28WtxuHNgfJN7pO6Um8=; b=tWAjzBTFC5KJfJ
	Gwu7teRV3LLC476qbB0+qzncdhY26+XHjJEMxPrlEHNu4eo8nreOnUGoX+lnVIPGLbjSOk2iDNy1W
	1Xf4AYOZFvq/QBFnoaXV624kAEiSC8v39ZlqntWznUm+/RnFS4CchkN8rjxN37jm9H/WmHrq5L6Co
	tq6aSq4RvTwyeG/e76eMg+kyZMYcvVMHWw4dyM4wwnYAeycR/tBhyAVQQWXlhrPMgQXHDAuE9XXph
	kbOC8fThb/pq8AMv3slgHzrQKxOLVtZkE9cQp08Vbg2paRUpQ0u0FuYT5P+C/6R4lH3Y1urmz5gPw
	32RlCTPY5Z72eul813BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdtc-0000Ar-HY; Mon, 22 Jul 2019 19:22:52 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdt8-00009J-Kq
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:22:24 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so23204162lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B+wLTNf/Uwskbq5M303aynV2tJy9ox88Qjj+ByJiaYE=;
 b=ANdHlqKbTdBYHjMAbE0HYGNKESqdyGrOqyoFguo2nHCiTzNm+nSOlTB75vmGn9lM7o
 C0AMP0scdDw1qesdwa02ykA8zCk+pNWn00vz/h6ULYYZcQ43hGZe2JSH5l5FHPO/I1mT
 A3VSyqcnvlJ5rB/UfF1mGYDuIOHON/Xcmt3zFJ8bfZrqXJKrBYT610UeOHiW9ny7wHoz
 iTWdtLGn/EuXcwoYYXlJft8KbQjNhuq+iTGRGL3bpMlcOkIkwoxwX91vShcMjgzqWqk1
 MJlDIT07H+6EY1iF1KxhnA80tGNjUIluTF62/Rs8GIokuuwPcjmbnUdmvhr3IwhjQV8Q
 WVfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B+wLTNf/Uwskbq5M303aynV2tJy9ox88Qjj+ByJiaYE=;
 b=hSSOLhpNMtooCBETV8yNdx9JmBpp1QMDO5YzPKI847FlzL6c1kJysMSCfbx2lNKbqU
 TD2GS8QLRew/dDPrkO1Ng/+dRVNtESlMeoagmYvq3HCYBIRmrdsDJ8ijBNMqPYx+tBT8
 gvB9LLHi4OtR/lH50BHUa4n/jipxl9ph/IZqgZoTQZTVN8DNoje907dM156lCiAZWMvv
 KvOKukLYYyAUhdbv7hOl8xDD+bLevdFsusaKnjVmyYW7TY8pnhOlKtQ1IceoVdSiPfCD
 9E116ttYquCf6B++2P4GJ8U9pq4DBgg/XdKYcrUKIOYONjEg97Tp2MsZXM5h7EqLq2tS
 H+QA==
X-Gm-Message-State: APjAAAX0BaG1QAZ72p+GO/j4FdwMfzn8JDHhFV0hB+lIuJhuKFQf/u/Z
 RZ+Dz42N7CjJSztkIgVxZyE=
X-Google-Smtp-Source: APXvYqxybz96lY/OxtuFHly5X1VQ1wXpABYlNEv5AuhHbT96ydrSIk0EcBLs+DyXCOunCA9cPFhX6A==
X-Received: by 2002:a19:f819:: with SMTP id a25mr34288851lff.183.1563823340126; 
 Mon, 22 Jul 2019 12:22:20 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id n124sm6129307lfd.46.2019.07.22.12.22.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 12:22:19 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v6 0/3] serial: imx: fix RTS and RTS/CTS handling
Date: Mon, 22 Jul 2019 22:22:08 +0300
Message-Id: <1563823331-5629-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_122222_718165_6E87F2DE 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

VGhpcyBpcyByZWJhc2Ugb2YgdjMgb24gdG9wIG9mICd0dHktbmV4dCcsIHRvIGdldCByaWQgb2Yg
Y29tbWl0cyB0aGF0CmFyZSBhbHJlYWR5IGFkb3B0ZWQgdG8gbWFpbmxpbmUuCgpSVFMgc2lnbmFs
IGFuZCBSVFMvQ1RTIGhhbmRzaGFrZSBoYW5kbGluZyBoYWQgYSBmZXcgcHJvYmxlbXMgdGhlc2UK
cGF0Y2hlcyBmaXguCgpJbiBhZGRpdGlvbiwgbWlub3IgY2xlYW51cHMgYXJlIG1hZGUgdG8gdGhl
IGludm9sdmVkIGNvZGUuCgpDaGFuZ2Vsb2c6CgogIHY2OgoKICAgICAqIGNoYW5nZWQgIlJldmll
d2VkLWJ5OiIgCiAgICAgICBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1
dHJvbml4LmRlPgogICAgICAgdG8gIkFja2VkLWJ5OiIgaGltLCBhY2NvcmRpbmcgdG8gaGlzIHJl
cXVlc3QKCiAgdjU6CgogICAgICogaW1wcm92ZWQgY29tbWl0IGRlc2NyaXB0aW9uIGFuZCBhZGRl
ZCBtb3JlIGNvbW1lbnRzIGZvcgogICAgICAgInNlcmlhbDogaW14OiBzZXRfdGVybWlvcygpOiBk
byBub3QgZW5hYmxlIGF1dG9SVFMgaWYgUlRTIGlzCiAgICAgICB1bnNldCIgYXMgc3VnZ2VzdGVk
IGJ5CiAgICAgICBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4
LmRlPgogICAgICAgYW5kIGFkZGVkIGNvcnJlc3BvbmRpbmcgIlJldmlld2VkLWJ5OiIKCiAgdjQ6
CgogICAgICAqIHJlYmFzZWQgb24gdG9wIG9mICd0dHktbmV4dCcsIHRvIGdldCByaWQgb2YgY29t
bWl0cyB0aGF0CiAgICAgICAgYXJlIGFscmVhZHkgYWRvcHRlZCB0byBtYWlubGluZS4KCiAgdjM6
CgogICAgICAqIEltcHJvdmVkIGNvbW1lbnRzIGluICJzZXJpYWw6IGlteDogc2V0X21jdHJsKCk6
IGNvcnJlY3RseQogICAgICAgIHJlc3RvcmUgYXV0b1JUUyBzdGF0ZSIsIGFzIHN1Z2dlc3RlZCBi
eSBVd2UgS2xlaW5lLUvDtm5pZwogICAgICAgIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXgu
ZGU+CgogIHYyOgoKICAgICAgKiBBcHBlbmRlZDogIlJldmlld2VkLWJ5OiIgYW5kICJUZXN0ZWQt
Ynk6IgogICAgICAgIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KCiAgICAg
ICogUmVtb3ZlZCAiUkZDIiBmcm9tIGhlYWRlcgoKICB2MToKCiAgICAgICogRml4ZWQgaW4gInNl
cmlhbDogaW14OiBzZXRfdGVybWlvcygpOiBwcmVzZXJ2ZSBSVFMgc3RhdGUiCgotKwl1Y3IyID0g
VUNSMl9TUlNUIHwgVUNSMl9JUlRTOworKwl1Y3IyIHw9IFVDUjJfU1JTVCB8IFVDUjJfSVJUUzsK
CiAgICAgICAgYXMgbm90aWNlZCBieSBMb3RoYXIgV2HDn21hbm4gPExXQEtBUk8tZWxlY3Ryb25p
Y3MuZGU+CgogICAgICAqIEZpeGVkIGluICJzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3MoKTogcHJl
c2VydmUgUlRTIHN0YXRlIgoKLSsJdWNyMiA9IG9sZF91Y3IyICYgKFVDUjJfVFhFTiB8IFVDUjJf
UlhFTiB8IFVDUjJfQVRFTiB8IFVDUjJfQ1RTQyk7CisrCXVjcjIgPSBvbGRfdWNyMiAmIChVQ1Iy
X1RYRU4gfCBVQ1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NUUyk7CgogICAgICAgIGFzIHRo
ZSBmaXggZm9yIHRoZSBwcm9ibGVtIGZvdW5kIGJ5IFNhc2NoYSBIYXVlcgogICAgICAgIDxzLmhh
dWVyQHBlbmd1dHJvbml4LmRlPgoKICAgICAgKiBSZW9yZGVyZWQ6CgogICAgICAgIHNlcmlhbDog
aW14OiBzZXRfdGVybWlvcygpOiBwcmVzZXJ2ZSBSVFMgc3RhdGUKICAgICAgICBzZXJpYWw6IGlt
eDogc2V0X3Rlcm1pb3MoKTogZG8gbm90IGVuYWJsZSBhdXRvUlRTIGlmIFJUUyBpcyB1bnNldAoK
ICAgICAgICBhcyB0aGUgbGF0dGVyIG1ha2VzIHNlbnNlIG9ubHkgcHJvdmlkZWQgdGhlIGZvcm1l
ciBpcyBhbHJlYWR5CiAgICAgICAgYXBwbGllZC4KClNlcmdleSBPcmdhbm92ICgzKToKICBzZXJp
YWw6IGlteDogc2V0X3Rlcm1pb3MoKTogZG8gbm90IGVuYWJsZSBhdXRvUlRTIGlmIFJUUyBpcyB1
bnNldAogIHNlcmlhbDogaW14OiBzZXRfbWN0cmwoKTogY29ycmVjdGx5IHJlc3RvcmUgYXV0b1JU
UyBzdGF0ZQogIHNlcmlhbDogaW14OiBnZXQgcmlkIG9mIGlteF91YXJ0X3J0c19hdXRvKCkKCiBk
cml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgfCAzMiArKysrKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoK
LS0gCjIuMTAuMC4xLmc1N2IwMWEzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
