Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7ACC2DE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DalDKeBEpKFRDSbnINLqmyvOCjEV5Z00TJrQsEfen1g=; b=J6TCtzjsGLXInx
	MgojvpzpkUqWtLQQr4O9ld42tGmVo5jeW8jMzcPMkRddgp8GVDfx2ubvivDjewWF4ud/F2Pobmwn8
	+s2eCAQv5prlNH9D9y2QP5STr40nPIuG9oP/ne+P2b2ukczglX/bkWRv3Gyckcz6iMizd8Mp+E/Qz
	iMZlIv1/opJAQr7IcchPMDeqNc1TMOP2m58sqx8LaCcsFI+tcXGBTAA4+yMHPq4BPb/wR5ID3UIww
	lNV/SAnRqXA75sxUwQrko0bHSIOqWAl2DlOSfcq5eJsppY8vGC+tMxeFxptgaMUB1XqJovN1sh0xD
	usfl/X4JmqAMIi/RT25Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCkh-0001d6-95; Tue, 01 Oct 2019 07:39:19 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCka-0001cG-Na; Tue, 01 Oct 2019 07:39:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id q1so981377pgb.0;
 Tue, 01 Oct 2019 00:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d+XFVlqmdczgfds1Dy3o5Q1n0UPcPm7FLBJVkbS1FRI=;
 b=kZCCL6Wv6ckxpsHQfP+jMu5n4JpfOYT7ga47pCoO6uutcU6zZrOm55rBGFlhH9x5zO
 x8Iwi3y9n+iUUObpezPF57bsLFwJcXhgmKd0JCEjTZ3Mgta7i4vx3+eh+ac9CIWMFdGU
 P+k8VHxMK7iG0ka/iHqUkv1dug5WK2tQEtbN+rJcMEZ2q4w8OcJl5239zu3Amrxm8ZRP
 EwKcuShpZ85tg2suVwzZ8lDLUjsmZetUDc+LWuiIcM4B7mowdLHNONz1qMc0+pFxi8Kk
 YesWe/Y3LQxpfw2FeJrVpb9eUF9Wb/2a5EkQody0trLjgKnQFkQuiH5HiPbbRpRybzfW
 pYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d+XFVlqmdczgfds1Dy3o5Q1n0UPcPm7FLBJVkbS1FRI=;
 b=TN+DXyk3uS4/6/F1wrEInrwItlbS/z04yHZKSnXQjGDj0RDHRdhekMHbe70lH4m7vW
 xZAsexG0MrViG+JABxSqrxiNtWeHFL0GLoU3+bIoy6EFMU9XPP9HpNIrtTPxyU/QooA7
 iYV6W7IrX+2RiAZKuBu7/kYreTqkux2ibCMYd0Vjr4rGVhxclo1cCkNz7v4qb4RS+he+
 zsxJhTNuuy/BMukdv3+1XVFXlcn2fAp1hxbEi4Frx2/sC2twRbvp1spSkxo9RcnOVDDr
 swTRlhNMXsrWcTRPypvjqLpCIQY8UdLoEfuHFgwhz89Pivg4pN8zq5kyCm6ly/sv1Pz2
 c+/g==
X-Gm-Message-State: APjAAAUh1T+nxWTNSjXTa4Lr2wS4SU+mRNO4InEKT04FqKm5grDB3ryF
 xmDNg1+TJZ4TmPUhrW7i5kHE50ce
X-Google-Smtp-Source: APXvYqyS/slV7GS5YvJ7kRHM3s6Z948KYm85VVT9ES4WvZ/YOhx/a+DDOUToG0ox75TZC06wlRzJew==
X-Received: by 2002:a17:90a:7bce:: with SMTP id
 d14mr3979423pjl.96.1569915551132; 
 Tue, 01 Oct 2019 00:39:11 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.191])
 by smtp.gmail.com with ESMTPSA id g19sm23133024pgm.63.2019.10.01.00.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 00:39:10 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv3 RESEND-next 0/3] Odroid c2 missing regulator linking
Date: Tue,  1 Oct 2019 07:38:58 +0000
Message-Id: <20191001073901.372-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_003912_768332_A926B3A3 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [103.51.74.191 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like this changes got lost so resend these changes again.

Below small changes help re-configure or fix missing inter linking
of regulator node.

Re-based on *next-20191001*
Changes from previous patch's series.
Build using Cross Compiler.

Added missing Reviewed-by Neil's and Martin.
Added few suggestion from martin for rename of node.

Changes for previous changes.
Fix some typo.
Updated few patches as per Martin's suggestion.

Best Regards
-Anand

Anand Moon (3):
  arm64: dts: meson: odroid-c2: Add missing regulator linked to P5V0
    regulator
  arm64: dts: meson: odroid-c2: Add missing regulator linked to
    VDDIO_AO3V3 regulator
  arm64: dts: meson: odroid-c2: Add missing regulator linked to HDMI
    supply

 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 53 +++++++++++++++++--
 1 file changed, 50 insertions(+), 3 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
