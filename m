Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42D112A55D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 02:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OeoZCuNwqJkd05dCHxi31Ov7rp6kibS5daDL5R/7eGE=; b=gLOPzNw5iyUqr2
	aQW/BFFS1Ev8KEToOj1ArGHf5sB/0ygIvocNSGtLdXfUlS+qemKrn6hQVKJIc81hJm+d8usZVf1eG
	X6+PD1JBBdEZw0gSzYmdMJZ1RWGRFecZijYnsRtT6dqpAURWx+/5gUfTYOjYE0f16UuQqQHIeYTlN
	dcg/73P7aUVZsmONnsHTM3AFmo7dDNwGveZD/97Qy3g/rC0nL3OMV5TVsjUCm5noU++3ixwvvun3k
	JjvENHVGZCkVMG0i631y4pFRvRNTNHPoPk+LRO6DlLT6Rb2QHjCpaW0vYkc2yKa94zu89f+3J8BDZ
	RXI++Snw0mbCCQRTr8Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijv8Z-00015q-T8; Wed, 25 Dec 2019 01:06:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijv84-0000d4-8c; Wed, 25 Dec 2019 01:06:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so20943258wru.3;
 Tue, 24 Dec 2019 17:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0zGgacboR5FhlzsxMkhuulP1I0LChnVXb7P5KAUVsko=;
 b=iP6JNjcSn31FVQziFhKwwn2t3pTM8vlWUCrShoH9MJDAosBuj/KiNcx1vf8pNd7wG1
 QiUxrKh3iwhUIH6nxH7XcE6FTRE59SZ8Uh+YbeNnrA6Z+4rCnwLCTDLGEWoCVZkAIp62
 2VETkvDcNXpOXHVy1up2KVfXT1yUd/sZ+zP0J+IUwQs9cjKU5qqrl2QMc3WjmBJ1Aikd
 JiKP+gnqh92wDKBbtPe1qYG10udAupF0c9k+brOD5G/9QDFM7kTSusxXXnfeY4uSm3z1
 pFJfY6XJbgTTqIDcJqgpGuPKmdIK/PjWoTKRXfQVyZmV1ncdO/qyRLGUwtcyLnwiCUQG
 iWMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0zGgacboR5FhlzsxMkhuulP1I0LChnVXb7P5KAUVsko=;
 b=fo1qjEMuwfbpDk5Qr9a6sm562FuCkC9EHXZoNLzS3Ga8zruScsZfbY411XRogOUT90
 +jdVCWw2fCaSYHuNeJAyihTzlTxrLb6XHjyUzjKp38uSW2MVmQJVrUmBRq7oLCjoWMgy
 bQOY3ZNeJAvmV5z+wArateDaPlPdOjjSSKo8yeo/Ue2AugRJ5rHqxnDqzphxdjYN6CWG
 CeU+PrkMH3lydXozIUrsRVZwOzcNRN6b5PZbYfUfmLeEmvkL1QHA/4uSpE2R+YuIl7p6
 nJ4gZ0Z9Pvty405abyXrLaM50tEureODc5y0IeWfIw3lol2hjxASoARgjLAeZ1Tx5pXy
 BfWQ==
X-Gm-Message-State: APjAAAW8db7zzOtBJSfJJjSslYSjPXk2HTUiohRne8Ig+2QMaXc+2jY2
 5m3+TukP1mo0zbMJZiF9vki5lCLd
X-Google-Smtp-Source: APXvYqysmD2sVl/eNjmOaZfVfpZd4euoYnmvq2Vt7G/i+H8BAtX7T/Qi2791EsGXTyiaakkZJM8clA==
X-Received: by 2002:a5d:53d1:: with SMTP id a17mr36188586wrw.327.1577235981614; 
 Tue, 24 Dec 2019 17:06:21 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id x26sm4066127wmc.30.2019.12.24.17.06.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 17:06:20 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/3] ARM: dts: meson: fixes for GPU DVFS
Date: Wed, 25 Dec 2019 02:06:04 +0100
Message-Id: <20191225010607.1504239-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_170624_332817_F7AC5D78 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While testing my patch to add DVFS support to the lima driver [0] I
found one bug and two inconveniences with the GPU clocks in the
Meson8 and Meson8b .dts:
- the first patch is an actual fix so the two mali GPU clock trees can
  actually be used on Meson8b
- patch two and three are to prevent confusion when comparing the
  frequencies from the .dts with the actual ones on the system

Neither of these patches are critical, so I based them on top of
v5.6/dt (meaning they target Linux 5.6, not v5.5/fixes).


[0] https://patchwork.kernel.org/patch/11293193/


Martin Blumenstingl (3):
  ARM: dts: meson8b: fix the clock controller compatible string
  ARM: dts: meson8: use the actual frequency for the GPU's 182.1MHz OPP
  ARM: dts: meson8b: use the actual frequency for the GPU's 364MHz OPP

 arch/arm/boot/dts/meson8.dtsi  | 4 ++--
 arch/arm/boot/dts/meson8b.dtsi | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
