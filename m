Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086361F5930
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYRsYG1OFauEj+iJ95daL0X8gmT2Pmiyy4a/L7FiWCc=; b=N2Sx2gWhuSzWFR
	iSt8kaf1J4ZCz0qaPDgqGzbAwj8Qs5YK0JJ3kRDmFlaB1Pn2DAKkTbuKNujigx1DuwdEpw/HQw72M
	nAh4RU06GkI9yXO72FElbhLqfdh0l0+VeVq6xGnAgWSNRUZMUVM2j+BHDLN82hB35dIFYfFwp0TYE
	y8ZmyolCKBFIqemWVFteM7JRnlaZ0ylN1TQ7/7sl2ytDZXn1vxYl8C3Zok2Z9O1HTZkgFizRi7/fu
	MFVAMbFAsIG1Cre0dtyGbwziY5k6FnDawAXKfaexj5W7fq57LFsiGvPhJracHxxNEyPuB0R0hbdkX
	wZnauWIdumsjxcqkH0yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3gg-0001XA-Cb; Wed, 10 Jun 2020 16:34:50 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3f5-0000IB-Bg
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:33:12 +0000
Received: by mail-wr1-x42f.google.com with SMTP id r7so3026156wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PdAC7nSmr9OcvsOrg8mrZI5Ne82Ui94dUn7AYElcx+A=;
 b=bZcNGl3VEEqJ3YNGmR+Nv9+88gyP4/H/paKxnh18Rrlj/66kxMouAyChn+kHPQONvc
 qd+Wi6/9zcUPBHINkgf8jukNJdL/2FTfdS4gBfiq9Q4d2vghjxyn4ZrYW2W5XSA0LjWI
 PfJzTLvNZC+Q0NVXAOxEz9oCubG+bF96wlnpAvCE3LA7tnc6uORuXVU4nkYczhxBJ9CY
 qK9zM/AJArWCULUocJeyfdf90WIk1r6wvbAjgiuBxW6PKFS9ugxRbBCvgI9UfguVnYX0
 9BBVaQz5XuU81RtnAGeD1eEf9vTa1Iw1I0viJh7DY1fzCYTMjuaAGbA1StiMt33Gtcu+
 xmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PdAC7nSmr9OcvsOrg8mrZI5Ne82Ui94dUn7AYElcx+A=;
 b=OFmb+IuiDLJfNG2F2Q1pNWbKd3hguPqHoRNmVYTfnRWpxpuz+rfmrrWB/0xoyPnBR3
 OLfHPPyhPgEzElXwhm0ynTrveerCO/1KAX11TpfbKkbCZAP7M70sOg0jlrEsUOiFBgTJ
 p2u0USC/WReBFTEccFlBw/DDqWCJ3GX/83tTuYeZfBGKsK2zVWpr/9jhj4bRQ69DZxK6
 20XmQ8gpKGND5xbu1yobi8PwUr/Byvj3+XAqCTTPiyJxmOVKL3JSYw/EQk7r9giVgb5P
 BhsRUTxj1yKvS2DgGH+UshqJB21aqgLv0lffsTARTRJ27/lZmKvEel/7xMt/6ynB0Ifv
 NHYg==
X-Gm-Message-State: AOAM531uKWyrW9IzT6FG+D7u+9tRu53JCbR9DSOll13g9hiX1IOLVp2o
 fNc667ZCG/DRKL9aM7s4dqg=
X-Google-Smtp-Source: ABdhPJz4wCusR0P+cPejtgrMS05sa8pvJxH+wOk9udLYOQpH3KEq84gS9fl7rpb016xQy3I4DhRxLQ==
X-Received: by 2002:adf:f988:: with SMTP id f8mr5035336wrr.81.1591806788834;
 Wed, 10 Jun 2020 09:33:08 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id t7sm414430wrq.41.2020.06.10.09.33.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 09:33:08 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/6] mips: bmips: dts: add BCM63268 power domain support
Date: Wed, 10 Jun 2020 18:33:00 +0200
Message-Id: <20200610163301.461160-6-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610163301.461160-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200610163301.461160-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_093311_436258_AAB62366 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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
IHYyOiBBZGQgc3VwcG9ydCBmb3IgQkNNNjMyNjggdG9vLgoKIGFyY2gvbWlwcy9ib290L2R0cy9i
cmNtL2JjbTYzMjY4LmR0c2kgfCAgNiArKysrKysKIGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2Jj
bTYzMjY4LXBtLmggfCAyMSArKysrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwg
MjcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mv
c29jL2JjbTYzMjY4LXBtLmgKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9i
Y202MzI2OC5kdHNpIGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyNjguZHRzaQppbmRl
eCBiZWVjMjQxNDVhZjcuLjVhY2I0OWI2MTg2NyAxMDA2NDQKLS0tIGEvYXJjaC9taXBzL2Jvb3Qv
ZHRzL2JyY20vYmNtNjMyNjguZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202
MzI2OC5kdHNpCkBAIC0xMTcsNiArMTE3LDEyIEBAIGxlZHMwOiBsZWQtY29udHJvbGxlckAxMDAw
MTkwMCB7CiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCXBlcmlwaF9wd3I6IHBv
d2VyLWNvbnRyb2xsZXJAMTAwMDE4NGMgeworCQkJY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzMjgt
cG93ZXItY29udHJvbGxlciI7CisJCQlyZWcgPSA8MHgxMDAwMTg0YyAweDQ+OworCQkJI3Bvd2Vy
LWRvbWFpbi1jZWxscyA9IDwxPjsKKwkJfTsKKwogCQllaGNpOiB1c2JAMTAwMDI1MDAgewogCQkJ
Y29tcGF0aWJsZSA9ICJicmNtLGJjbTYzMjY4LWVoY2kiLCAiZ2VuZXJpYy1laGNpIjsKIAkJCXJl
ZyA9IDwweDEwMDAyNTAwIDB4MTAwPjsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3Mv
c29jL2JjbTYzMjY4LXBtLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzI2OC1wbS5o
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uODRkZWQ1M2E3MzJmCi0t
LSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyNjgtcG0uaApA
QCAtMCwwICsxLDIxIEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsgKi8K
KworI2lmbmRlZiBfX0RUX0JJTkRJTkdTX0JNSVBTX0JDTTYzMjY4X1BNX0gKKyNkZWZpbmUgX19E
VF9CSU5ESU5HU19CTUlQU19CQ002MzI2OF9QTV9ICisKKyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJf
RE9NQUlOX1NBUgkwCisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9JUFNFQwkxCisjZGVm
aW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9NSVBTCTIKKyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJf
RE9NQUlOX0RFQ1QJMworI2RlZmluZSBCQ002MzI2OF9QT1dFUl9ET01BSU5fVVNCSAk0CisjZGVm
aW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9VU0JECTUKKyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJf
RE9NQUlOX1JPQk9TVwk2CisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJTl9QQ00JNworI2Rl
ZmluZSBCQ002MzI2OF9QT1dFUl9ET01BSU5fUEVSSVBICTgKKyNkZWZpbmUgQkNNNjMyNjhfUE9X
RVJfRE9NQUlOX1ZEU0xfUEhZCTkKKyNkZWZpbmUgQkNNNjMyNjhfUE9XRVJfRE9NQUlOX1ZEU0xf
TUlQUwkxMAorI2RlZmluZSBCQ002MzI2OF9QT1dFUl9ET01BSU5fRkFQCTExCisjZGVmaW5lIEJD
TTYzMjY4X1BPV0VSX0RPTUFJTl9QQ0lFCTEyCisjZGVmaW5lIEJDTTYzMjY4X1BPV0VSX0RPTUFJ
Tl9XTEFOX1BBRFMJMTMKKworI2VuZGlmIC8qIF9fRFRfQklORElOR1NfQk1JUFNfQkNNNjMyNjhf
UE1fSCAqLwotLSAKMi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
