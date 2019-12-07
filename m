Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1757A115C48
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 14:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ejl12hLX1b6ykka+JMX9Es8BEb5Y27GZXNTFobNNgDI=; b=V3J
	7vydO14J8CpMPy9UUbmloEoO6l4usKi4uBNALH5P9+YpS811hna12uazVeysDtVpeiFLGHkhd4j2G
	94LPKzxUcDGK/XBn8NbWj4LDUW831Qljki1UNyS3ky0AUEXO02euemAfEgiXcuSm4zB4D7CggwuE+
	gn47RjwskwH5qRo2vOdr75W8+t1PxNpV8ySuhPOM7Dr9/rjPpYXVRJhDKxMjreQU3Jr77X2eTvC5y
	cm3gfvkDYtjbHwwY3YS9RJFzlZVkEPZCfNtLuDemaCk7fLq5py6aCZFa/pHVEhebp8efizMLE5WHN
	lmbKyF26R+t1B90H7uq006vi2lQGsxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idZi6-0001ba-MS; Sat, 07 Dec 2019 13:01:22 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idZi0-0001av-Iu
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 13:01:17 +0000
Received: by mail-pj1-x1043.google.com with SMTP id w5so3906231pjh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Dec 2019 05:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5fKjUze8cgTvBYXr/xD7IQCKvwgAbAm/M927SNG2I2I=;
 b=dPy+lZJgFngrRMeT6iOLRHKWYCd3SKLGtIJ5Dd8E3oQlD5jvYo4CMpj+fPb64fHvds
 NbKXaZXnomsPFWKTN+KusvMjCIRQSs1FEdF8oHfyd1OgnCHDVATUKRKlfAPimu+wi4GG
 sdjLJwe2RbHicK0ER5es56Ya4qTmtbn4GTZbzGPrROt3YniibE98mEhEZlOsiMMs+b0b
 9RmspwHUtBVksnvItSwApuz9h8B5dqN37+2cD26TxxDQMwWBROOIvOGssY9Z5lbnRhjc
 QXAX1kIeppmtKFdFlQW21UklLfA1UnZyeUQuOMiR6GypNbUCMbIcaifxAB9LUMMnTUt8
 VW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5fKjUze8cgTvBYXr/xD7IQCKvwgAbAm/M927SNG2I2I=;
 b=pgxO/f4NBKsosF3ZQERhu0IT0zNzoPT3WERvTzUyjEwcmsoMbDxdYDaR+j8sLlOux1
 h5dJxmbRUUftmWshCv7h21dFZhzjZgLIGZgnqH5iZfYvfxpEuqerRle/+toxjj+vFx7/
 C4I1wrwEvPCwJ/gWq7WOlg7eL083IDRy8mp51EEXLZ/EXon4ZUvB6u7K5sfhsNvO6ZEE
 z+Zz2e7Nd9/4bftVBmn374MDQrl+2id7e27D0kScSwkBovZBFgMHTZxeebh2RaNTmwg6
 o+bnA0c2mU9mVcbvJ7ZUbhvZ9lERBnHw9dwOaZTPV34IDP68P+0Tcjo2PZUOd/jYbm4u
 Bjdw==
X-Gm-Message-State: APjAAAXLcNCPoqKDvb1tyTeGL808CcgO/oK9aWtL5fgzp3YYYoaMEKWv
 cr4YWcOyLl0zRH11KX8q8Bcuirz1
X-Google-Smtp-Source: APXvYqxZxwm7RvLeAh38k1Gj3cZ7dj0pl76m+2AQ6s0Ras6tURFp580sNwwn4bqwCEvF9f/9Kn4MqA==
X-Received: by 2002:a17:90a:30a4:: with SMTP id
 h33mr21279555pjb.50.1575723674750; 
 Sat, 07 Dec 2019 05:01:14 -0800 (PST)
Received: from localhost.localdomain ([211.243.117.64])
 by smtp.gmail.com with ESMTPSA id f7sm10241246pfk.183.2019.12.07.05.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 05:01:14 -0800 (PST)
From: Hyunki Koo <hyunki00.koo@gmail.com>
To: linux@armlinux.org.uk, kgene@kernel.org, krzk@kernel.org,
 tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org
Subject: [PATCH 0/2] remove direct dependancy between irq and exynos
Date: Sat,  7 Dec 2019 22:00:47 +0900
Message-Id: <20191207130049.27533-1-hyunki00.koo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_050116_651756_106EB34D 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hyunki00.koo[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hyunki Koo <hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hyunki Koo <hyunki00.koo@samsung.com>

This patch series is written to clean up dependancy of ARCH_EXYNOS
Not all exynos device have IRQ_COMBINER, especially aarch64 EXYNOS
but it is built for all exynos devices.
Thus add the config for EXYNOS_IRQ_COMBINER
remove direct between ARCH_EXYNOS and exynos-combiner.c
and only selected on the aarch32 devices

Hyunki Koo (2):
  irqchip: define EXYNOS_IRQ_COMBINER
  ARM: exynos: add select EXYNOS_IRQ_COMBINER

 arch/arm/mach-exynos/Kconfig | 1 +
 drivers/irqchip/Kconfig      | 7 +++++++
 drivers/irqchip/Makefile     | 2 +-
 3 files changed, 9 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
