Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189B3202511
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WaxmH47LeM1729pj+b9oi0Li9V8vIZ+M22qPFrdy3O4=; b=S44p6tXU+rfkaj
	18RCc6bQmghzlcv1fRAoPqAiUMm9gZroxp1okDFj62fisqE1Ktn0zPKVGlMRAi6n4RN1zepBGxhWC
	tWvPF1ZFytvHVcUSqcDAD8tQ62mHG/ABuhydhq5lYtE5ALW8cGT//PNkYpg+4sS9tMuSUIZmzrqsY
	XF5rf32yDFH2LLbaAgqJ5xa2eiFfeWldRFsNrHu1URriFFEkc4HwMfd+PlMb6oPQBIb5CKsEWXezr
	yukd09V3O7Uizt5SLW8fXmpxyzS3KGo6D4A8shUJyup91inkCGfkLJaOZMKniXB9mU6tHqBExkNf9
	h1a95E5+nH8NLvszvpaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmg4i-0007ls-Rl; Sat, 20 Jun 2020 16:10:36 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmg4T-0007iy-T7; Sat, 20 Jun 2020 16:10:23 +0000
Received: by mail-ej1-x644.google.com with SMTP id p20so13497088ejd.13;
 Sat, 20 Jun 2020 09:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P39RlTWkw0BHM8mvqJKNvOXDRAeGzZyejrciSa95gwM=;
 b=S0YC3KV8a2NBmYIMxO/n6t0meIE0bdqVX4U2CvoxhupjcRUtIFT2Kp3BoI81jxfcvn
 JCg9Z/PiBNwImI+ZyByV4vDaA9Yymz6kIxbJhF93pD6jfgDiXGdUvoMJ/DbRGVYo6ND3
 Eq2nz+Gncg+1hQf0e1Tav5JW/8Alvs1ooV1WaA4vH3PbubgzSwYsSPdM5bGCL1SiPXgc
 vkmjXdXS9WAxj/VFkiNjR1Ce7dBIlRsHIKddcDOledogCU09HkK6ueLorYD5JaQtSV0O
 YoDg8Tlxq57u1KPWzeiWUYVgAfD3ty98eXggAkO0zi7RVFsXKSJJvZ7Mn4NGa0SnUZjq
 XxWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P39RlTWkw0BHM8mvqJKNvOXDRAeGzZyejrciSa95gwM=;
 b=EMty4rlCiX4y8OhEtpFZIQPkwelGpirh/rlxTqrFy1UfCAVql57r249f+ai99Y+FRE
 gX9eocaL0ZIcp9KNUo/djoYn+Wa0m62piIbkQxDp9ZA679JxTo5y0hMTC4767ywrK/B3
 lcUQPR2tUgNsCbRWGB0jsoBHadO+oxWlddv1wfXOf2XWt0KLCLfMQJsQbLh3CELq92V3
 gaebC4jDnJh4afQpXTH0EJsbMh7de2KfuM1xPgD5FSAhT4ETACRbUiN/JlOX6SFDSbLz
 oLyyAePOSNeAGxV9ETE4WOObDkQGXjHb/rzhjUszNFueHCFPcKdOkNJh1un0NoxrQ+XR
 yyVg==
X-Gm-Message-State: AOAM531ZwtPjjrRflQEmS0/OvX7OBsnTElMRt5soz+E5hMRFuKf5N/sy
 1sLbdTf37qwafvRv8dNtMgsQ6i2U
X-Google-Smtp-Source: ABdhPJyy+F5IG38rKAwE7wgt+OOCiPnNkSne3o6MVgOnxyeTGTDzrvCAYL9G35mP5uc1iM6vLD3+sg==
X-Received: by 2002:a17:906:2a94:: with SMTP id
 l20mr8259553eje.224.1592669419143; 
 Sat, 20 Jun 2020 09:10:19 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a62sm8033207edf.38.2020.06.20.09.10.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:10:18 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/3] ARM: dts: wire up the power domains on Meson8/8b/8m2
Date: Sat, 20 Jun 2020 18:10:07 +0200
Message-Id: <20200620161010.23171-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_091021_955730_7D50738C 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Now that the meson-ee-pwrc driver has gained support for the power
domains on Meson8/Meson8b/Meson8m2 we can add it to the corresponding
.dtsi files.

So far this doesn't fix (or break) anything for me (probably because all
vendor u-boots are enabling the Ethernet power domains unconditionally).
But at least it's one preparation step which is needed for video output
in the future.


Martin Blumenstingl (3):
  ARM: dts: meson8: add power domain controller
  ARM: dts: meson8m2: add resets for the power domain controller
  ARM: dts: meson8b: add power domain controller

 arch/arm/boot/dts/meson8.dtsi   | 13 +++++++++++++
 arch/arm/boot/dts/meson8b.dtsi  | 27 +++++++++++++++++++++++++++
 arch/arm/boot/dts/meson8m2.dtsi | 19 +++++++++++++++++++
 3 files changed, 59 insertions(+)

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
