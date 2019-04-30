Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623A0FDE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6z2quMzHWjbO1PqnKsinQLrXM/4jqT64EoSr0QPl01Q=; b=e6Bvdu8C11enCd
	ipcza03Heocu2a7kmp9FBDNbdDvfnwker2W2aWydwLdafPFYz16eORIt+nh7L6GgVRih25rU9XN4x
	8GGyo5oElsRE4eEFyy1YkG+YWBHg+HHzO8/Oi3+Dx3lybNJvhZUw0BTk/XZLgJ9YC6+9HLhlGzOVi
	Ft7Up0svFHPlg3Ii73uaVNv+GmU1kuomAW9J/5nK4ZVijqcGcsyOMFTR5fzl8kxXUs8S7SijFcWbb
	7fTxRYrtiS+i7hYhaGHqzcAwSlRhN3VtCvR+mDsXwS/m1dyl/mesIH5Ecj7rAUX0JEXskFvYcc+MB
	l/67mhfp/L27ZRTSGq/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVe3-0003zW-0s; Tue, 30 Apr 2019 16:30:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVda-0003SO-Tl
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:29:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id c12so21740777wrt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XAG/7MBNQKcnyRwTABVR+nnLiDuF8S7/Ttp9kLBqJQA=;
 b=X4pJCHvvH1jl7YriWnYI3P6pm05wYYAwtB5o4CMqVQbMFjXTWi0UDOYoj945mXUEhT
 d/Qzk8ICzQbu/2WivlhGUtzSuhULo5NGEHAGmdgBIsGxXt0SUmIMxLmcTX7/e4/ZRXNr
 qyyO+Yt35VNI0JYwsDQJB0vrIJN/T3pLTy6DlbXBs4p1oSAO0of5HKj4ds5ZvRw9Rqmz
 aX2G/zIyFb1FQAPPvWv4JsYrgr2qtVLn2XuGFduwBcJvcRC/Yp/2Pz1ssb++QZAM9cRd
 zwBWsYWbyiIkk5pPMPjGxJPpVphCHmRawZeUToVWC0BMG3epM5yYyPyEp0uFGAsmoWed
 nxCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XAG/7MBNQKcnyRwTABVR+nnLiDuF8S7/Ttp9kLBqJQA=;
 b=T/X9O1d9J+RGjjFfpU9t1Fr/srP1gLU8V4csaNqX24t52glWX6/4GZ7wt9M28Xw3QF
 17RfsEsYO28lMtvmUvlVSZn2oNyPsspSVAGvTcJm8jcPOMNMqf6wU+nRdK9y7Sw/FbEf
 pyVfKsjib/O3inL1R02q4VjeAriXcXzz5cW+XlRWivb+PsOgykgdgkMwrlL/92ypQipe
 V9N8KuKVwJocNBP3HXMGsD85hzSfvzqHZf7Txh5YZknvoQQ4EMkuezMra6f9x3HWQWc7
 saCSU/PwzS0atEbC9+dKDw7KpTSYwElDAg9gZK5nKMaRf0NG1YESsdphpETrqkIDQlpT
 b7uA==
X-Gm-Message-State: APjAAAVnKQ/qcFCJA+eNYFp3E0HyZB4gEzK4HieW8pRVrDba5q5fS8BC
 +W3gfDXOioNO3+5A/EYCg8biTg==
X-Google-Smtp-Source: APXvYqwwUKVo8dN+hu0W322cYGbaZaoO+o1yIqu5vND3Xr90ukmMX12QXn38I8REPelGYGocceQSzQ==
X-Received: by 2002:adf:ebd0:: with SMTP id v16mr18190336wrn.175.1556641785176; 
 Tue, 30 Apr 2019 09:29:45 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:1ca3:6afc:30c:1068])
 by smtp.gmail.com with ESMTPSA id t67sm5848890wmg.0.2019.04.30.09.29.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 09:29:44 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 1/5] i2c: acpi: permit bus speed to be discovered after
 enumeration
Date: Tue, 30 Apr 2019 18:29:05 +0200
Message-Id: <20190430162910.16771-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_092946_955138_B62DD79A 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linus.walleij@linaro.org, Mika Westerberg <mika.westerberg@linux.intel.com>,
 joakim.bech@linaro.org, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the I2C ACPI enumeration code only permits the max bus rate
to be discovered before enumerating the slaves on the bus. In some
cases, drivers for slave devices may require this information, e.g.,
some ATmel crypto drivers need to generate a so-called wake token
of a fixed duration, regardless of the bus rate.

So tweak the code so i2c_acpi_lookup_speed() is able to obtain this
information after enumeration as well.

Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/i2c/i2c-core-acpi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
index 272800692088..7240cc07abb4 100644
--- a/drivers/i2c/i2c-core-acpi.c
+++ b/drivers/i2c/i2c-core-acpi.c
@@ -115,8 +115,7 @@ static int i2c_acpi_do_lookup(struct acpi_device *adev,
 	struct list_head resource_list;
 	int ret;
 
-	if (acpi_bus_get_status(adev) || !adev->status.present ||
-	    acpi_device_enumerated(adev))
+	if (acpi_bus_get_status(adev) || !adev->status.present)
 		return -EINVAL;
 
 	if (acpi_match_device_ids(adev, i2c_acpi_ignored_device_ids) == 0)
@@ -151,6 +150,9 @@ static int i2c_acpi_get_info(struct acpi_device *adev,
 	lookup.info = info;
 	lookup.index = -1;
 
+	if (acpi_device_enumerated(adev))
+		return -EINVAL;
+
 	ret = i2c_acpi_do_lookup(adev, &lookup);
 	if (ret)
 		return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
