Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB73E1F5931
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzeEQWXlvEpgOQtEuKOStwbniOJyrwuyP3rjdWDASiI=; b=c87v2eZWoU883d
	17SEmeZxuo1Qi4cI60R+1VAY8u8GJxV/fhN2umiyPs31BAISX5giEg6wGc9xIntiNSkO0/XHiGp02
	vAhwM/BFdr56BDFS4bvUYBGI7pZUJwrX1wO8UB4SP13Cpyc1hH02PzceeYEwR5L+2UVKIRbinN7eu
	mZuZBrdPt3jmduZWrh54lzq/30l35r06o3X+nvgoamqOZwYPHKWfd4MWDZSI+Nc68SlEw7SkwE1zm
	AmEdJi0yFdGXHhJNbapZvfi05IRAAigCkZB32NrJ2ZM78d7NxhlgAVvCkOfwdo9b06fYRETiZVyUB
	u9nW5PsQGdVYPoNXAC5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3gv-0001nu-Tw; Wed, 10 Jun 2020 16:35:05 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3f6-0000Jm-S4
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:33:14 +0000
Received: by mail-wm1-x336.google.com with SMTP id l17so2425996wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fqwKTvqJkGg3U39QHZ2bKv0DfMfv0d599Yf7DOdzpvw=;
 b=eukpjncHy/Z2w4gkNI7k+0tLZ6Ll2oFh7hiKhksiX9cQXuPjsjvZGSz3ypxGgD43fn
 5QlWh82VBRBB2RZw2vPHWEARMYAHknyofH4axCdXpSPI+9Bkd7mYX7Gl5KS9MyWKJPm3
 f+UzP46peTVtPgyuXNg5HcUhhrWiwoUpkcHp48cINjBG957UlFJr7t7gq1L+9BcesOaD
 Yw+XJlUQXSw7ILVvpYwEJ8PvOYejEjnfZvNqG5JkJkJIj2CICW2051lReK5MDHuVnfPH
 jOpzyl7wKj3RoAKsYkNPNC0SNOz7WUbHciux4YDazXKQo6a2MYvqllIBbcyEpQ7uE2im
 gG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fqwKTvqJkGg3U39QHZ2bKv0DfMfv0d599Yf7DOdzpvw=;
 b=pwsY9c0J6w7WrWIXU5yxuQ1VS0uOlBMBOrBSeaIDZs5J0pCA5DhSdlgUmPwoJ+8DOr
 NtbH53VZbwAWTZEHP9XvyiyzRCeJhNAPgbr62OFZPr41p5r7lCKiKAqz077B34gkP8Ne
 vE9vp0Scd1tn9DFr5ZXmURPVpiayhSjz1j+0sgZFS0m38quH4cta52kaodJqZ+f4+6tM
 snmk1DQXvaJPL9AVuYwywHe+asnHJavNZlvFAx/zao0SwBfVozhCI4bm7hBT0kf+DsE6
 DtFFE2FiBG6lXM5OLfds/uNi2ksfodpF8UxlsFn4teoTre74KzxyUQIhFUh4FSVCgNS+
 iwCg==
X-Gm-Message-State: AOAM531oACtb0xhXCchmCU1JEPRDRGbLjADC52EkR8+ccq8tv053yE44
 AEgK3gFpNccDjnEL3tAMpbI=
X-Google-Smtp-Source: ABdhPJwQCzIsG/5U9juTnJBM31DCeYFKjsEV0nQc2jBejOEFCSljh/P504f6d2eyDzSXr4iDGY5RQw==
X-Received: by 2002:a1c:c3d7:: with SMTP id t206mr4051918wmf.69.1591806789797; 
 Wed, 10 Jun 2020 09:33:09 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id t7sm414430wrq.41.2020.06.10.09.33.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 09:33:09 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 6/6] mips: bmips: add BCM6318 power domain definitions
Date: Wed, 10 Jun 2020 18:33:01 +0200
Message-Id: <20200610163301.461160-7-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610163301.461160-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200610163301.461160-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_093312_978280_D9926362 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
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

QkNNNjMxOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
djI6IEFkZCBCQ002MzE4IGR0LWJpbmRpbmdzIGhlYWRlciBmaWxlLgoKIGluY2x1ZGUvZHQtYmlu
ZGluZ3Mvc29jL2JjbTYzMTgtcG0uaCB8IDE3ICsrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMTcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmlu
ZGluZ3Mvc29jL2JjbTYzMTgtcG0uaAoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3Mv
c29jL2JjbTYzMTgtcG0uaCBiL2luY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMTgtcG0uaApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjA1OTMxZGNlODMzMwotLS0g
L2Rldi9udWxsCisrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMTgtcG0uaApAQCAt
MCwwICsxLDE3IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsgKi8KKwor
I2lmbmRlZiBfX0RUX0JJTkRJTkdTX0JNSVBTX0JDTTYzMThfUE1fSAorI2RlZmluZSBfX0RUX0JJ
TkRJTkdTX0JNSVBTX0JDTTYzMThfUE1fSAorCisjZGVmaW5lIEJDTTYzMThfUE9XRVJfRE9NQUlO
X1BDSUUJMAorI2RlZmluZSBCQ002MzE4X1BPV0VSX0RPTUFJTl9VU0IJMQorI2RlZmluZSBCQ002
MzE4X1BPV0VSX0RPTUFJTl9FUEhZMAkyCisjZGVmaW5lIEJDTTYzMThfUE9XRVJfRE9NQUlOX0VQ
SFkxCTMKKyNkZWZpbmUgQkNNNjMxOF9QT1dFUl9ET01BSU5fRVBIWTIJNAorI2RlZmluZSBCQ002
MzE4X1BPV0VSX0RPTUFJTl9FUEhZMwk1CisjZGVmaW5lIEJDTTYzMThfUE9XRVJfRE9NQUlOX0xE
TzJQNQk2CisjZGVmaW5lIEJDTTYzMThfUE9XRVJfRE9NQUlOX0xETzJQOQk3CisjZGVmaW5lIEJD
TTYzMThfUE9XRVJfRE9NQUlOX1NXMVAwCTgKKyNkZWZpbmUgQkNNNjMxOF9QT1dFUl9ET01BSU5f
UEFECTkKKworI2VuZGlmIC8qIF9fRFRfQklORElOR1NfQk1JUFNfQkNNNjMxOF9QTV9IICovCi0t
IAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
