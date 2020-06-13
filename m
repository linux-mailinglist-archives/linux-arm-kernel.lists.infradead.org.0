Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072001F81EB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIhxw1gIdXqCN5NpXI7/o+wz98Ac1Su46SXsTC6vh4k=; b=opZ/ceF1SksdZ5
	vsW201k4w9g4YsotXklqnnApVoxBAc2o9eGHX3jJhmGJ9jP+gY8NoHB3jOeBya6TG3oWwc2fATmvz
	OXqRjTEEc3WjfSgdF6uLK8Ol7oqbwCdI/M9q1flBIrxSxtbopOiodF3mUkRrqtZvj1xCk0LE2Eanm
	nfDzteCgNQ77kZYCElZ+gsgkyR7jxzq0+vKMcYZ743rlr7Yl8zKRe8VqfgaKtuZy9MUYVf68z8Xml
	YxjnKkZjqXiD47MZZyrGUXHs1UpMb3trRCb2kbdllzTW+yUU9T5V2YCtrGgZsGUjcUNMy2OWQX+Sf
	2p8wTS+QmzUjN54aOpUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1SB-0007An-D7; Sat, 13 Jun 2020 08:23:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QG-0005gs-DM
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id g10so9890638wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3R3IcX5VRxh6jZ4lyLZsasKIXBEDH8AgtJHvT67+p7Y=;
 b=u8Qbtpx7nKpCKSFfL0DenqTmg2sXyyXo7pD8VRz1Qswm06HAp6kA2YB8qMZH2SSZSx
 LiaG3eZzsSPSYkpvBFvlEr5Xk55ejPV2OBP3sfFJ7rbgwVVdPupfeygveY9pBC6v0yuR
 T2HsQD1jBDF6mlpF9WTbDsr8q1+lia7WYKmEt9r1URFynKd72UPvlzRvhRmwml/yLehJ
 OFdj+Zv+btWJDl/Xp2gOdNA3ec/JP+2htmz16KXMUhcej4IvXxHLhvCL6SFHtpMPuLJN
 vvCR5dil1zq43OtbqtbjyUbDukRXgQfRtIEELRJbrw2U+z3+ixSAMNGzBjZZSqa+6GI1
 gYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3R3IcX5VRxh6jZ4lyLZsasKIXBEDH8AgtJHvT67+p7Y=;
 b=f4LsN93YC7+vo7o8pzbLpxzFmDETj2dDd0xBOZG5vfF0QODj2lS8MhH9tn3cWtL8CU
 2+Muts8Xrf0eRrDinxzhyscQv8EDZ86oy94eLf2WutvBKn/koguMGDS8dQhO8HxlL+SE
 19/IhkUckvGkWcI2qBxYuhC1LT1ThO4zXzfxQJ1lmsCOg2goNkyfbBVDXmyK8glk47RP
 kQk5sQi6eKkBtndOgmOY5NvXY9vKkd3l8w5V0N9sEdhmqJYgXfmFEgqgj2xhFEJJDLMW
 Qo3ZgcOFfzkI6+miPidPTyhQO0EsDtQoyebZpdcj+6y+AjNfWvpGrWuRodw/paSg7+4h
 /JbQ==
X-Gm-Message-State: AOAM531nsjU3OVzEcCjVaJeoFXU7nzUYVrgKneJNAkGcTK1kJmoQUPs1
 2jEnbSxAyxnfsF6H0Vo2HGk=
X-Google-Smtp-Source: ABdhPJwfZEl2kJ8mxVWxwjqag+ttdrRGfjRXx/LSWOtwclninU40g8Lk1Qp1z66b78fpbFQElCMDDg==
X-Received: by 2002:a1c:2d54:: with SMTP id t81mr3111530wmt.154.1592036511036; 
 Sat, 13 Jun 2020 01:21:51 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:50 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 7/9] mips: bmips: dts: add BCM6328 power domain support
Date: Sat, 13 Jun 2020 10:21:38 +0200
Message-Id: <20200613082140.2009461-8-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200613082140.2009461-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012152_460004_355F87ED 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CkFja2Vk
LWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2NDogbm8g
Y2hhbmdlcy4KIHYzOiBTZXBhcmF0ZSBkdC1iaW5kaW5ncyBkZWZpbml0aW9ucyBmcm9tIHBvd2Vy
IGRvbWFpbiAuZHRzaSBzdXBwb3J0LgogdjI6IEFkZCBkdC1iaW5kaW5ncyBoZWFkZXIgZmlsZXMu
CgogYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyOC5kdHNpIHwgNiArKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9k
dHMvYnJjbS9iY202MzI4LmR0c2kgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzI4LmR0
c2kKaW5kZXggYWY4NjBkMDZkZWY2Li4xZjllZGQ3MTAzOTIgMTAwNjQ0Ci0tLSBhL2FyY2gvbWlw
cy9ib290L2R0cy9icmNtL2JjbTYzMjguZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJj
bS9iY202MzI4LmR0c2kKQEAgLTExMCw2ICsxMTAsMTIgQEAgbGVkczA6IGxlZC1jb250cm9sbGVy
QDEwMDAwODAwIHsKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKKwkJcGVyaXBoX3B3
cjogcG93ZXItY29udHJvbGxlckAxMDAwMTg0OCB7CisJCQljb21wYXRpYmxlID0gImJyY20sYmNt
NjMyOC1wb3dlci1jb250cm9sbGVyIjsKKwkJCXJlZyA9IDwweDEwMDAxODQ4IDB4ND47CisJCQkj
cG93ZXItZG9tYWluLWNlbGxzID0gPDE+OworCQl9OworCiAJCWVoY2k6IHVzYkAxMDAwMjUwMCB7
CiAJCQljb21wYXRpYmxlID0gImJyY20sYmNtNjMyOC1laGNpIiwgImdlbmVyaWMtZWhjaSI7CiAJ
CQlyZWcgPSA8MHgxMDAwMjUwMCAweDEwMD47Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
