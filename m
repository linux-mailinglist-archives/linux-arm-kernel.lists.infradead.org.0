Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88021FBD06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kK4GXXSc9omkLSVOU2Z3HILE5S4/++Wio/e6axL7CTc=; b=Obs90gjmEImB7K
	SVam/HiJ4NuDLHQJoCL3fya0lhUlq8fnpns92lK++QHjwbaAZe8sHex7Y424k6JiqxniRPa/76XAP
	aFhAeDmooiblZPdEOCdvexEW7CMDff7E8rlqjaZqAf/MDg2nhT9cQkFFmAWjk+Yx+rZl0Y2DAGvKT
	trcaI177Wh7EHEvvxffOd69zfP3rA/VIkeWmwbW0X1dqVVB6F0M1Ean2bIUe8hUMti4fyPH7b+YXk
	//l+huEdhuLRNAmuoU225I3PuhewKJpF8V61mGLZlaridJtVS15R789Q0Fmuiym1+PuFvTiJ5M4Nb
	Tc3k5dDam+9STuH/bu/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFSN-0001Nt-1q; Tue, 16 Jun 2020 17:33:07 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFRx-0001Bg-PH
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:32:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id x14so21647878wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M4FwC0tS2PEwWfH1L/1mjQoscnZK9tIH6DB/QnDAvYw=;
 b=UPCcaccHoC730cubgO602KTX+ru6qHNRcUXjlQasKj/h4dn9MQb8yDIsBVziiPPCfA
 g5Tb+2i3K/2byUrVysBNmSUWuWmMepzJ7yqh5LqqsZB7R8o5uPXpAYNL8y6qhX/auMa0
 iysdD3VU7/CX24psf0PwUQ243V3bzB9m4857g7bvO4f85HK1YFgfpfHCirSOdLI45Htw
 VtIZxRiMdnCabRwQb/6bONXHXwgRleq6oncLPLemh9s8ya9i3Aa4us7lLXse92/6rqs0
 fdhRdgAqCSHQSqtOLA8mmb9uCrQ5eLc0T+brtmz+adUyJTGLPUAIUu/Rp9VhniDOZc42
 Ix2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M4FwC0tS2PEwWfH1L/1mjQoscnZK9tIH6DB/QnDAvYw=;
 b=GqeOxph9hhvxnHLW6JZp5CJka3sAiX7fw8UP8iV7CeXsm5RtmM+cLqiKwcqts38ggc
 s0LXsfrvuovXkNE7G4R7drzdVvvLW9+FEXRTuebAxUkTajX/TAExdl5YdZxxeDeKQRCN
 ZwOxVACSVOG81Gv0ZcaTRMpKpApa+RB2W4g7NbazBZJW3ZOv6p+EIitA634/UAjxozyq
 52hkTSGyM0EOmlU42+0Pwk3NWeKi+HWEVPZkwlzn4inNzrXutlxGTgDeMaea3JoCo3Wb
 VBnCKyseatsoOqdqOdxVMbMPqWyfdfuUGQKA7yT3od6Z5n7Y9Hp5b1B7jaQJuMT+4bu7
 y4ZA==
X-Gm-Message-State: AOAM531YiiTd+r2e52PiPSwjBLOHvIMhtD49ibNLFApruBdN+UBGAcLE
 Qy2xw0F8x+/C0zDZfL13I0I=
X-Google-Smtp-Source: ABdhPJxvTnhoOvZGU81shEIy5Tfm8z+l9F2YHek8X7iqGR8tqtNnL5yw4dUJ8+qy1TgfWOogqSm7dQ==
X-Received: by 2002:a5d:4d4d:: with SMTP id a13mr4238758wru.252.1592328759836; 
 Tue, 16 Jun 2020 10:32:39 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id f16sm5014402wmh.27.2020.06.16.10.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 10:32:39 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/2] spi: bcm63xx-spi: add reset support
Date: Tue, 16 Jun 2020 19:32:34 +0200
Message-Id: <20200616173235.3473149-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616173235.3473149-1-noltari@gmail.com>
References: <20200616173235.3473149-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_103241_836379_92A75773 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

YmNtNjN4eCBhcmNoIHJlc2V0cyB0aGUgU1BJIGNvbnRyb2xsZXIgYXQgZWFybHkgYm9vdC4gSG93
ZXZlciwgYm1pcHMgYXJjaApuZWVkcyB0byBwZXJmb3JtIGEgcmVzZXQgd2hlbiBwcm9iaW5nIHRo
ZSBkcml2ZXIuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRh
cmlAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRy
b25peC5kZT4KUmV2aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwu
Y29tPgotLS0KIHY0OiBzaW1wbGlmeSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX2V4
Y2x1c2l2ZSByZXR1cm4gaGFuZGxpbmcKIHYzOiB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9v
cHRpb25hbF9leGNsdXNpdmUKIHYyOiB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNp
dmUKCiBkcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jIHwgMTIgKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3NwaS1i
Y202M3h4LmMgYi9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jCmluZGV4IDBmMWIxMGE0ZWYwYy4u
OTZkMDc1ZTYzM2Y0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jCisrKyBi
L2RyaXZlcnMvc3BpL3NwaS1iY202M3h4LmMKQEAgLTE4LDYgKzE4LDcgQEAKICNpbmNsdWRlIDxs
aW51eC9lcnIuaD4KICNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+CiAjaW5jbHVkZSA8bGlu
dXgvb2YuaD4KKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgogCiAvKiBCQ00gNjMzOC82MzQ4IFNQ
SSBjb3JlICovCiAjZGVmaW5lIFNQSV82MzQ4X1JTRVRfU0laRQkJNjQKQEAgLTQ5Myw2ICs0OTQs
NyBAQCBzdGF0aWMgaW50IGJjbTYzeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJc3RydWN0IGJjbTYzeHhfc3BpICpiczsKIAlpbnQgcmV0OwogCXUzMiBudW1fY3Mg
PSBCQ002M1hYX1NQSV9NQVhfQ1M7CisJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJlc2V0OwogCiAJ
aWYgKGRldi0+b2Zfbm9kZSkgewogCQljb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsK
QEAgLTUyOSw2ICs1MzEsMTAgQEAgc3RhdGljIGludCBiY202M3h4X3NwaV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4gUFRSX0VSUihjbGspOwogCX0KIAorCXJl
c2V0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9leGNsdXNpdmUoZGV2LCBOVUxM
KTsKKwlpZiAoSVNfRVJSKHJlc2V0KSkKKwkJcmV0dXJuIFBUUl9FUlIocmVzZXQpOworCiAJbWFz
dGVyID0gc3BpX2FsbG9jX21hc3RlcihkZXYsIHNpemVvZigqYnMpKTsKIAlpZiAoIW1hc3Rlcikg
ewogCQlkZXZfZXJyKGRldiwgIm91dCBvZiBtZW1vcnlcbiIpOwpAQCAtNTc5LDYgKzU4NSwxMiBA
QCBzdGF0aWMgaW50IGJjbTYzeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJaWYgKHJldCkKIAkJZ290byBvdXRfZXJyOwogCisJcmV0ID0gcmVzZXRfY29udHJvbF9y
ZXNldChyZXNldCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byByZXNl
dCBkZXZpY2U6ICVkXG4iLCByZXQpOworCQlnb3RvIG91dF9jbGtfZGlzYWJsZTsKKwl9CisKIAli
Y21fc3BpX3dyaXRlYihicywgU1BJX0lOVFJfQ0xFQVJfQUxMLCBTUElfSU5UX1NUQVRVUyk7CiAK
IAkvKiByZWdpc3RlciBhbmQgd2UgYXJlIGRvbmUgKi8KLS0gCjIuMjcuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
