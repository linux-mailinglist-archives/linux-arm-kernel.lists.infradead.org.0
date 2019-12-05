Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBC1114914
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 23:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LUk6d0/SlVFOKW9fG5Loc5mV+9IwbbiZ+90F0NvNPjU=; b=audGEzp09mqe0r
	J9cc0HBvjmE738xAEN/stohU3i1VXh8Axlfb5nkSTd7iqJS4A9gpeZEh6I2npL6qc6Loog+S2wLRp
	Zwa8mEuohX+mGlFV/J+dg2sqbRYMwQOt9Xg98hbgrxjJKfKxz1aESCqwoMiPdGAvasr5hbkgLQUUU
	IP+5UfvUizM28wr4qITPLVYMyRLTOpttFTnZbKGfbf/3AJq3T/b+mJtHO1X9zcnLB6pgUUW9OYAkc
	kdzU80eqc7YDqyMw7YhcsyNAHhONqafSchdANwKCJRzN8aj0hSem6JSLJ5ScobtBvWM6UluCDVcDE
	ixLmuI2X7iZ3GtAs/tSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iczLU-00007I-6a; Thu, 05 Dec 2019 22:11:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iczLM-00006p-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 22:11:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so5598729wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 14:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CUi98cwSoCKi/I/0JIIfMi/RPZNRK6SsahfPRECZalM=;
 b=UWwYuaEQz2jJLTXRR27FAvmeLUr7FTHVV1WSN3Z/262cU//30TQHE3UpyULyYYeywy
 q5uXuU2DurFK/gpxzvK4fazZJbM0Xn+QFk1k9UwwvwzX4E/2eVhRLx2CTO4RRVsiWnUj
 tPE2PS2zJEz8A3c40SVxU547YktUyuIx/5HW76ZGCDF33ghGJ3siOImXDwZUYbJq80GC
 klt/Ub6XkQGp/ge4Ue2soX9RcXgO+0TLY1aZuwhnv/rvo/ZLXxjiEefldBXH1AQShgGu
 /V+5lz3U4kXrSKAOAcTTZzYy1ip4g88OiRqzFiR1mbw76yH3zOwYxx6E/EZcuBvHPSpY
 VFqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CUi98cwSoCKi/I/0JIIfMi/RPZNRK6SsahfPRECZalM=;
 b=RTx2231wjAUsUG/k2oLx7yIR61uN9iwMn7aKLbhjq30BC0J4Qe/1tJozA4ldWJijsD
 pwFKQbZGm5kC9Jxu+hkxhwz2mJoQ9iAVLoXZCV6nq826cTnXwW493iMyx1qPKaS6MRcx
 TaCSIw41YJt/WBwAWgaj8h3DT9ukROvIM1uQtdMfW5S75ivXNFDCNpKX05nGZdaaycBk
 BAdHRecvyF2tsxnMoTmt4K2ijeS6G4QDNTLGqanhQiHylrk9dG/b2Yqav6Wif0kvx8GV
 U3bUXBlNgwQ9B0HqfRgV50wVh79OwquBFxShW742Mi0MU4U3INyLnQzLAHduSVeWmhvi
 pCUQ==
X-Gm-Message-State: APjAAAX7+X30vroJ3+omDETQII7H9OK33xBb3zj8hZI/Cz7dyLff7EWB
 uDyRDWv6OOpsEOOVVGe5+LY=
X-Google-Smtp-Source: APXvYqz1RLUsU0nkiHg33UXp6iDHMizIMj4ZHRsIh50USDPd8MMgZM/ReLIHHDN84SB7+V/LMsmYSw==
X-Received: by 2002:a5d:4acb:: with SMTP id y11mr12710232wrs.106.1575583887033; 
 Thu, 05 Dec 2019 14:11:27 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::42f0:c285])
 by smtp.gmail.com with ESMTPSA id r21sm1265490wmh.4.2019.12.05.14.11.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 14:11:26 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Subject: [PATCH] drm/panfrost: no need to display probe deferred error
Date: Thu,  5 Dec 2019 23:11:02 +0100
Message-Id: <20191205221102.28248-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_141128_989049_415781B5 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGFuZnJvc3QgZHJpdmVyIGlzIHNob3V0aW5nIGFuIGVycm9yIGlmIHRoZSByZWd1bGF0b3IgaW5p
dApyZXR1cm4gYW4gLUVQUk9CRV9ERUZGRVIuIFRoaXMgaXMgYSBub3QgYSByZWFsIGVycm9yIGFu
ZAppdCBkb2Vzbid0IHJlcXVpcmUgdG8gYmUgZGlzcGxheS4KCkNoZWNrIGlmIHRoZSBlcnJvciBp
cyBub3QgYW4gRVBST0JFX0RFRkZFUiBiZWZvcmUgZGlzcGxheWluZyBpdC4KClNpZ25lZC1vZmYt
Ynk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5jIHwgNiArKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5jIGIvZHJpdmVycy9ncHUvZHJtL3Bh
bmZyb3N0L3BhbmZyb3N0X2RldmljZS5jCmluZGV4IDIzOGZiNmQ1NGRmNC4uMDBjZWYwNjJjMzVk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5jCkBAIC05Miw3
ICs5Miw4IEBAIHN0YXRpYyBpbnQgcGFuZnJvc3RfcmVndWxhdG9yX2luaXQoc3RydWN0IHBhbmZy
b3N0X2RldmljZSAqcGZkZXYpCiAJcGZkZXYtPnJlZ3VsYXRvciA9IGRldm1fcmVndWxhdG9yX2dl
dChwZmRldi0+ZGV2LCAibWFsaSIpOwogCWlmIChJU19FUlIocGZkZXYtPnJlZ3VsYXRvcikpIHsK
IAkJcmV0ID0gUFRSX0VSUihwZmRldi0+cmVndWxhdG9yKTsKLQkJZGV2X2VycihwZmRldi0+ZGV2
LCAiZmFpbGVkIHRvIGdldCByZWd1bGF0b3I6ICVkXG4iLCByZXQpOworCQlpZiAocmV0ICE9IC1F
UFJPQkVfREVGRVIpCisJCQlkZXZfZXJyKHBmZGV2LT5kZXYsICJmYWlsZWQgdG8gZ2V0IHJlZ3Vs
YXRvcjogJWRcbiIsIHJldCk7CiAJCXJldHVybiByZXQ7CiAJfQogCkBAIC0xMzAsNyArMTMxLDgg
QEAgaW50IHBhbmZyb3N0X2RldmljZV9pbml0KHN0cnVjdCBwYW5mcm9zdF9kZXZpY2UgKnBmZGV2
KQogCiAJZXJyID0gcGFuZnJvc3RfcmVndWxhdG9yX2luaXQocGZkZXYpOwogCWlmIChlcnIpIHsK
LQkJZGV2X2VycihwZmRldi0+ZGV2LCAicmVndWxhdG9yIGluaXQgZmFpbGVkICVkXG4iLCBlcnIp
OworCQlpZiAoZXJyICE9IC1FUFJPQkVfREVGRVIpCisJCQlkZXZfZXJyKHBmZGV2LT5kZXYsICJy
ZWd1bGF0b3IgaW5pdCBmYWlsZWQgJWRcbiIsIGVycik7CiAJCWdvdG8gZXJyX291dDA7CiAJfQog
Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
