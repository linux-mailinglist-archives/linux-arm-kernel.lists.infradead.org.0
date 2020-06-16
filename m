Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38EA1FBD07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dr9icdw5NotsOoO9d656xXavOeVQm2LqcpaW18ZOuk=; b=KufaH9dj96EjXv
	PgusjN5+gTgDpU7c/y7ktVD4duqbW0KTH+nUOhhrt/6C46Ku4HcE+tstz7wdRCSBbL9s5CB4Vas3Y
	IrnBMH5MVwpmPsRexTdk+4PQL+zBkY0OK634SJZAza7RRjgfzPVQx08j6fUv1ShVomW23vgcyOTH1
	rDILXZ3xqAi1JmfzfJyI2y/dUwWvrlxJ4xnkWHmIJGjc1lc/WqoPnTztAvZoFkhXxYH8f2edWB3Bd
	k5WdTIhJG1XAUcDjSvcRAVsqP6ybQZwMg5X0KJ+eB1pbS1W94dgBoribEoo5+7maoeG6Orf7SdgJW
	7EElIPiyG6fe1xj6RIoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFSa-0001bQ-3S; Tue, 16 Jun 2020 17:33:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFRy-0001Bj-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:32:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id y20so3956393wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NXWT0XBDvfCeaNJqhvulIouNPW+S3KxeQ8adKa8xo70=;
 b=m8+w7OW6QX97DxbPYywNN319UsCFVqHFB1bt397I2B0wcYD7eJ7HYJ2TxQJb/L5Cv5
 SuYjVYu1zS6zR/DGUJYciirVFQnPgQr8zUkAqyq38AAYG9zN5t9jSyms3x7ZUqr8TBiq
 Eelzd+BkxzyMfK3fDVBATI8jfhTWUiXOxu+15RcQxy4Lw1k3AJCXZLTvZJDj11dj5B7z
 pJUlpl9YQK8q66FejtIoYv/9JjWXQEpNLUpB517v51sNqWnpFCBJLPCQInPfUBBFACp3
 0y7UeengdqAmizU2B/wSRhXRg6HMvnz9y4QBAfb9P8bcXI7OOfU9Lr2hQYCKMIpv0Ilg
 S8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NXWT0XBDvfCeaNJqhvulIouNPW+S3KxeQ8adKa8xo70=;
 b=aXuZnMo2dTuVyxzj+BmoD2BH+vi30bV+RYUPqwoA+/XOZpB24aBJJuMCKyMfAMVp2v
 4L7YIQLIIbbiW6OsnBvjeS+bWeeLsDPeWaatdT1hiN/bE1IHcw8YII8/0F3ihoMTSU/Q
 cmNbxlyU7ZbeXOKNbKUru3taVkSLQVkjClsE4ivoKAZLdWCwM4Ut6vVE9TO2fQARFzA3
 K56ApPmoKoVXQ69xLrCHMSzPSEej0hESo+0BMADgx1Jvqnf26INT/j9l+f+Hgo6noVw3
 5BAEiDx8B79kebEyGQs56oceQpIl8ie/ZJp4dPY7wcx/YoL9yYt9uI9fs6Bx1yPTp7oK
 6XuQ==
X-Gm-Message-State: AOAM531mXw7fMaqd20OvXpjDLFSVdcr/AbgSAuwUxmlx5CCvhoswY8Au
 fwznDNuoI1N0E301xsGUYLc=
X-Google-Smtp-Source: ABdhPJyqQgCtDv/pypP89GRXyglSLvJdg+YyNDVE2UIgLYu/pYE+pkfKqRd/5TuXWFtvbYYz8RJaMw==
X-Received: by 2002:a1c:59c7:: with SMTP id n190mr4137654wmb.61.1592328760706; 
 Tue, 16 Jun 2020 10:32:40 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id f16sm5014402wmh.27.2020.06.16.10.32.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 10:32:40 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/2] spi: bcm63xx-hsspi: add reset support
Date: Tue, 16 Jun 2020 19:32:35 +0200
Message-Id: <20200616173235.3473149-3-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616173235.3473149-1-noltari@gmail.com>
References: <20200616173235.3473149-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_103242_122883_0BF2F9A7 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

YmNtNjN4eCBhcmNoIHJlc2V0cyB0aGUgSFNTUEkgY29udHJvbGxlciBhdCBlYXJseSBib290LiBI
b3dldmVyLCBibWlwcyBhcmNoCm5lZWRzIHRvIHBlcmZvcm0gYSByZXNldCB3aGVuIHByb2Jpbmcg
dGhlIGRyaXZlci4KClNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9s
dGFyaUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1
dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFp
bC5jb20+Ci0tLQogdjQ6IHNpbXBsaWZ5IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxf
ZXhjbHVzaXZlIHJldHVybiBoYW5kbGluZwogdjM6IHVzZSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0
X29wdGlvbmFsX2V4Y2x1c2l2ZQogdjI6IHVzZSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1
c2l2ZQoKIGRyaXZlcnMvc3BpL3NwaS1iY202M3h4LWhzc3BpLmMgfCAxMiArKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
cGkvc3BpLWJjbTYzeHgtaHNzcGkuYyBiL2RyaXZlcnMvc3BpL3NwaS1iY202M3h4LWhzc3BpLmMK
aW5kZXggNmMyMzUzMDZjMGU0Li45OTA5YjE4ZjNjNWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Bp
L3NwaS1iY202M3h4LWhzc3BpLmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHgtaHNzcGku
YwpAQCAtMjAsNiArMjAsNyBAQAogI2luY2x1ZGUgPGxpbnV4L3NwaS9zcGkuaD4KICNpbmNsdWRl
IDxsaW51eC9tdXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L29mLmg+CisjaW5jbHVkZSA8bGludXgv
cmVzZXQuaD4KIAogI2RlZmluZSBIU1NQSV9HTE9CQUxfQ1RSTF9SRUcJCQkweDAKICNkZWZpbmUg
R0xPQkFMX0NUUkxfQ1NfUE9MQVJJVFlfU0hJRlQJCTAKQEAgLTMzNCw2ICszMzUsNyBAQCBzdGF0
aWMgaW50IGJjbTYzeHhfaHNzcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
IAlzdHJ1Y3QgY2xrICpjbGssICpwbGxfY2xrID0gTlVMTDsKIAlpbnQgaXJxLCByZXQ7CiAJdTMy
IHJlZywgcmF0ZSwgbnVtX2NzID0gSFNTUElfU1BJX01BWF9DUzsKKwlzdHJ1Y3QgcmVzZXRfY29u
dHJvbCAqcmVzZXQ7CiAKIAlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwogCWlmIChp
cnEgPCAwKQpAQCAtMzQ4LDEwICszNTAsMjAgQEAgc3RhdGljIGludCBiY202M3h4X2hzc3BpX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihjbGspKQogCQly
ZXR1cm4gUFRSX0VSUihjbGspOwogCisJcmVzZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29w
dGlvbmFsX2V4Y2x1c2l2ZShkZXYsIE5VTEwpOworCWlmIChJU19FUlIocmVzZXQpKQorCQlyZXR1
cm4gUFRSX0VSUihyZXNldCk7CisKIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoY2xrKTsKIAlp
ZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJcmV0ID0gcmVzZXRfY29udHJvbF9yZXNldChyZXNl
dCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byByZXNldCBkZXZpY2U6
ICVkXG4iLCByZXQpOworCQlnb3RvIG91dF9kaXNhYmxlX2NsazsKKwl9CisKIAlyYXRlID0gY2xr
X2dldF9yYXRlKGNsayk7CiAJaWYgKCFyYXRlKSB7CiAJCXBsbF9jbGsgPSBkZXZtX2Nsa19nZXQo
ZGV2LCAicGxsIik7Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
