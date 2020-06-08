Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A801F1694
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 12:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zfX8+d2/hwqqyI72c1PCRlWIhMOAoxuOhz3vIHJS/Ak=; b=oKUaDr3K5xoSh9
	hYLQl4SMpikMLp3CpSZrM3kxCsBfsR4z00s69ynkSkHcyyQ1F5B5VVzkPgSvn3IksM1I6Z6aYkY/W
	b3LEP054b1mjo3f68CyRFB+hTp/fKZ6SzVpZfv5SBJuFeQG5rHS8GtriqM/cbPCpjogqhd936u1p9
	fzpHo1hvpQpocMs7cDZOXAUTZHVhs+UqVsxVa9clp54VWNuxF90kWNcOJliIsefh0IAO5fgdlgYnt
	UdbLi4G0kNn6XW3bD3TsFcMpUeYj3VQp8KFbS7PQyET/98OH2InAFvyLJKTMAYJPqZtOS0cbM+p70
	zMvQ/Qb9G4S+KJSQZGkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiErY-0000Mx-Qn; Mon, 08 Jun 2020 10:18:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiErQ-0000M6-TM
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 10:18:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id l17so3591007wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 03:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8E3tUlnNWH0tzK24PYQO2JZkSdZVKVSOuDxhAs4jB0Q=;
 b=U3ywOkUmYf3mWHDJ5irFC8gmotq0uHroech3SdtnZ2h1j//7yautxyU6AVnYtQKDDd
 MLw1jO00ILaP9kybA31O0kfxOLcnCx0WSmIit7FKhJjM/+xIiOeX3PMeZ1xDHUQtjLc7
 YRG1HiT8tWEh9ZzHbz4UQMAIuJWIxfBcLiujlcrE3PI4XQ6b+5S0X45sY9x5lYB6MZPb
 fS1rMNdST7gM0V7CPm1ShXW0pTZ0s9Pb5mdzMEThvn2nrX9yRiLa17rbXDJLXW7piOiy
 lwn1Jbbi+Mo4QVVHlF0t6sBmrNwa6LFTUCzZwrj0iKZPldI44bkj3/f5o6xU2WA6/rfc
 CLrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8E3tUlnNWH0tzK24PYQO2JZkSdZVKVSOuDxhAs4jB0Q=;
 b=azkOXIFd/uXEPyubpzF+nrgZjObRre8mkleild/Tk+HayhHhPMM4qjil6qa95TqNNY
 TZLuS8bqIzbPGOD4zEJ+H2208Frj/oG/Y5SSYjWYic+FvtHwSILO1vCH100zgyO/b6IB
 czKckMmORSASbl6RCPDPRz5driZf57Biu8v2frFmlb4Ux6H+YkljHcSj7pRHeaxnQQ6c
 7YaSJk9AUWBtVqsdZa0DlgOWXVG7B6R6m/eYxrzmF8+CXcdFDimXmtJw6YGaiDqhycko
 crs9+2G4kQsG87vpNCEof397MR+WdY/RmKbX7da7YYwRAmm/RK2nCTMS9SlxSzXT/yHx
 yyFA==
X-Gm-Message-State: AOAM531uR/AXqnHaCg3RPhSQlJhm41H91YfEDopSuuu4zpMgcR1r0gdH
 yqT0IYVrOYfo4Vc3zWW8/Bw=
X-Google-Smtp-Source: ABdhPJzEzWvF3GXeVLXaWIlhisc6qKBmVJ6I624X62ATg/sd/QOg5XVIOCaiAD+Pgto1msHjSemKuw==
X-Received: by 2002:a1c:dd44:: with SMTP id u65mr16847352wmg.180.1591611511286; 
 Mon, 08 Jun 2020 03:18:31 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id z2sm22378439wrs.87.2020.06.08.03.18.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 03:18:30 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: tsbogend@alpha.franken.de, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] MIPS: BCM63xx: add endif comments
Date: Mon,  8 Jun 2020 12:18:28 +0200
Message-Id: <20200608101828.3383942-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_031832_960135_6B41B1F2 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

VGhlcmUgYXJlIHBsZW50eSBvZiBpZmRlZnMgaW4gYm9hcmRfYmNtOTYzeHguYyB3aXRob3V0IGVu
ZGlmIGNvbW1lbnRzLgpMZXQncyBtYWtlIHRoZSBjb2RlIGVhc2llciB0byBmb2xsb3cgYnkgYWRk
aW5nIHByb3BlciBjb21tZW50cy4KClNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBS
b2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQogYXJjaC9taXBzL2JjbTYzeHgvYm9hcmRzL2Jv
YXJkX2JjbTk2M3h4LmMgfCAzMyArKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gv
bWlwcy9iY202M3h4L2JvYXJkcy9ib2FyZF9iY205NjN4eC5jIGIvYXJjaC9taXBzL2JjbTYzeHgv
Ym9hcmRzL2JvYXJkX2JjbTk2M3h4LmMKaW5kZXggMzZlYzNkYzJjOTk5Li5lODYyMTA3NGE4YzIg
MTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9iY202M3h4L2JvYXJkcy9ib2FyZF9iY205NjN4eC5jCisr
KyBiL2FyY2gvbWlwcy9iY202M3h4L2JvYXJkcy9ib2FyZF9iY205NjN4eC5jCkBAIC02Nyw3ICs2
Nyw3IEBAIHN0YXRpYyBzdHJ1Y3QgYm9hcmRfaW5mbyBfX2luaXRkYXRhIGJvYXJkX2N2ZzgzNGcg
PSB7CiAJLmVwaHlfcmVzZXRfZ3BpbwkJPSAzNiwKIAkuZXBoeV9yZXNldF9ncGlvX2ZsYWdzCQk9
IEdQSU9GX0lOSVRfSElHSCwKIH07Ci0jZW5kaWYKKyNlbmRpZiAvKiBDT05GSUdfQkNNNjNYWF9D
UFVfMzM2OCAqLwogCiAvKgogICoga25vd24gNjMyOCBib2FyZHMKQEAgLTExNSw3ICsxMTUsNyBA
QCBzdGF0aWMgc3RydWN0IGJvYXJkX2luZm8gX19pbml0ZGF0YSBib2FyZF85NjMyOGF2bmcgPSB7
CiAJCX0sCiAJfSwKIH07Ci0jZW5kaWYKKyNlbmRpZiAvKiBDT05GSUdfQkNNNjNYWF9DUFVfNjMy
OCAqLwogCiAvKgogICoga25vd24gNjMzOCBib2FyZHMKQEAgLTIwNCw3ICsyMDQsNyBAQCBzdGF0
aWMgc3RydWN0IGJvYXJkX2luZm8gX19pbml0ZGF0YSBib2FyZF85NjMzOHcgPSB7CiAJCX0sCiAJ
fSwKIH07Ci0jZW5kaWYKKyNlbmRpZiAvKiBDT05GSUdfQkNNNjNYWF9DUFVfNjMzOCAqLwogCiAv
KgogICoga25vd24gNjM0NSBib2FyZHMKQEAgLTIxNiw3ICsyMTYsNyBAQCBzdGF0aWMgc3RydWN0
IGJvYXJkX2luZm8gX19pbml0ZGF0YSBib2FyZF85NjM0NWd3MiA9IHsKIAogCS5oYXNfdWFydDAJ
CQk9IDEsCiB9OwotI2VuZGlmCisjZW5kaWYgLyogQ09ORklHX0JDTTYzWFhfQ1BVXzYzNDUgKi8K
IAogLyoKICAqIGtub3duIDYzNDggYm9hcmRzCkBAIC00NjQsNyArNDY0LDYgQEAgc3RhdGljIHN0
cnVjdCBib2FyZF9pbmZvIF9faW5pdGRhdGEgYm9hcmRfcnRhMTAyNXdfMTYgPSB7CiAJfSwKIH07
CiAKLQogc3RhdGljIHN0cnVjdCBib2FyZF9pbmZvIF9faW5pdGRhdGEgYm9hcmRfRFYyMDFBTVIg
PSB7CiAJLm5hbWUJCQkJPSAiRFYyMDFBTVIiLAogCS5leHBlY3RlZF9jcHVfaWQJCT0gMHg2MzQ4
LApAQCAtNTA1LDcgKzUwNCw3IEBAIHN0YXRpYyBzdHJ1Y3QgYm9hcmRfaW5mbyBfX2luaXRkYXRh
IGJvYXJkXzk2MzQ4Z3dfYSA9IHsKIAogCS5oYXNfb2hjaTAgPSAxLAogfTsKLSNlbmRpZgorI2Vu
ZGlmIC8qIENPTkZJR19CQ002M1hYX0NQVV82MzQ4ICovCiAKIC8qCiAgKiBrbm93biA2MzU4IGJv
YXJkcwpAQCAtNTMwLDcgKzUyOSw2IEBAIHN0YXRpYyBzdHJ1Y3QgYm9hcmRfaW5mbyBfX2luaXRk
YXRhIGJvYXJkXzk2MzU4dncgPSB7CiAJCS5mb3JjZV9kdXBsZXhfZnVsbAk9IDEsCiAJfSwKIAot
CiAJLmhhc19vaGNpMCA9IDEsCiAJLmhhc19wY2NhcmQgPSAxLAogCS5oYXNfZWhjaTAgPSAxLApA
QCAtNjU0LDcgKzY1Miw3IEBAIHN0YXRpYyBzdHJ1Y3QgYm9hcmRfaW5mbyBfX2luaXRkYXRhIGJv
YXJkX0RXVlMwID0gewogCiAJLmhhc19vaGNpMAkJCT0gMSwKIH07Ci0jZW5kaWYKKyNlbmRpZiAv
KiBDT05GSUdfQkNNNjNYWF9DUFVfNjM1OCAqLwogCiAvKgogICogYWxsIGJvYXJkcwpAQCAtNjYy
LDE3ICs2NjAsMTcgQEAgc3RhdGljIHN0cnVjdCBib2FyZF9pbmZvIF9faW5pdGRhdGEgYm9hcmRf
RFdWUzAgPSB7CiBzdGF0aWMgY29uc3Qgc3RydWN0IGJvYXJkX2luZm8gX19pbml0Y29uc3QgKmJj
bTk2M3h4X2JvYXJkc1tdID0gewogI2lmZGVmIENPTkZJR19CQ002M1hYX0NQVV8zMzY4CiAJJmJv
YXJkX2N2ZzgzNGcsCi0jZW5kaWYKKyNlbmRpZiAvKiBDT05GSUdfQkNNNjNYWF9DUFVfMzM2OCAq
LwogI2lmZGVmIENPTkZJR19CQ002M1hYX0NQVV82MzI4CiAJJmJvYXJkXzk2MzI4YXZuZywKLSNl
bmRpZgorI2VuZGlmIC8qIENPTkZJR19CQ002M1hYX0NQVV82MzI4ICovCiAjaWZkZWYgQ09ORklH
X0JDTTYzWFhfQ1BVXzYzMzgKIAkmYm9hcmRfOTYzMzhndywKIAkmYm9hcmRfOTYzMzh3LAotI2Vu
ZGlmCisjZW5kaWYgLyogQ09ORklHX0JDTTYzWFhfQ1BVXzYzMzggKi8KICNpZmRlZiBDT05GSUdf
QkNNNjNYWF9DUFVfNjM0NQogCSZib2FyZF85NjM0NWd3MiwKLSNlbmRpZgorI2VuZGlmIC8qIENP
TkZJR19CQ002M1hYX0NQVV82MzQ1ICovCiAjaWZkZWYgQ09ORklHX0JDTTYzWFhfQ1BVXzYzNDgK
IAkmYm9hcmRfOTYzNDhyLAogCSZib2FyZF85NjM0OGd3LApAQCAtNjgyLDE0ICs2ODAsMTMgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBib2FyZF9pbmZvIF9faW5pdGNvbnN0ICpiY205NjN4eF9ib2Fy
ZHNbXSA9IHsKIAkmYm9hcmRfRFYyMDFBTVIsCiAJJmJvYXJkXzk2MzQ4Z3dfYSwKIAkmYm9hcmRf
cnRhMTAyNXdfMTYsCi0jZW5kaWYKLQorI2VuZGlmIC8qIENPTkZJR19CQ002M1hYX0NQVV82MzQ4
ICovCiAjaWZkZWYgQ09ORklHX0JDTTYzWFhfQ1BVXzYzNTgKIAkmYm9hcmRfOTYzNTh2dywKIAkm
Ym9hcmRfOTYzNTh2dzIsCiAJJmJvYXJkX0FHUEZTMCwKIAkmYm9hcmRfRFdWUzAsCi0jZW5kaWYK
KyNlbmRpZiAvKiBDT05GSUdfQkNNNjNYWF9DUFVfNjM1OCAqLwogfTsKIAogLyoKQEAgLTcyOCw3
ICs3MjUsNyBAQCBpbnQgYmNtNjN4eF9nZXRfZmFsbGJhY2tfc3Byb20oc3RydWN0IHNzYl9idXMg
KmJ1cywgc3RydWN0IHNzYl9zcHJvbSAqb3V0KQogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiB9Ci0j
ZW5kaWYKKyNlbmRpZiAvKiBDT05GSUdfU1NCX1BDSUhPU1QgKi8KIAogLyoKICAqIHJldHVybiBi
b2FyZCBuYW1lIGZvciAvcHJvYy9jcHVpbmZvCkBAIC04MDcsNyArODA0LDcgQEAgdm9pZCBfX2lu
aXQgYm9hcmRfcHJvbV9pbml0KHZvaWQpCiAJCWlmIChCQ01DUFVfSVNfNjM0OCgpKQogCQkJdmFs
IHw9IEdQSU9fTU9ERV82MzQ4X0cyX1BDSTsKIAl9Ci0jZW5kaWYKKyNlbmRpZiAvKiBDT05GSUdf
UENJICovCiAKIAlpZiAoYm9hcmQuaGFzX3BjY2FyZCkgewogCQlpZiAoQkNNQ1BVX0lTXzYzNDgo
KSkKQEAgLTg5Miw3ICs4ODksNyBAQCBpbnQgX19pbml0IGJvYXJkX3JlZ2lzdGVyX2RldmljZXMo
dm9pZCkKIAkJCQkmYmNtNjN4eF9nZXRfZmFsbGJhY2tfc3Byb20pIDwgMCkKIAkJCXByX2Vycigi
ZmFpbGVkIHRvIHJlZ2lzdGVyIGZhbGxiYWNrIFNQUk9NXG4iKTsKIAl9Ci0jZW5kaWYKKyNlbmRp
ZiAvKiBDT05GSUdfU1NCX1BDSUhPU1QgKi8KIAogCWJjbTYzeHhfc3BpX3JlZ2lzdGVyKCk7CiAK
LS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
