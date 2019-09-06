Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8024AB809
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 14:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XBFOLx0LYdsShfq1rRs/l19LYbxuihv05qG1kMLkQy0=; b=IlDn6cDAHGXlBB
	I57gUNj1d0mC9x7k1QVhBiIGL3wEZ/E4e3xI0vFI3q2yFKA+ZPx/gVgaqprbECR1rf09rfJFtmGA1
	MOIG3+MizKurMjoB+nxUS7NTB72cbqeVW0VstWP1O+XRuyZ2BIdU0/tJ+91C2LL8AUv8XF/VVeOYY
	rxarkiehyvnibgPCMW1pV/kHEMGSs9hrO2gZxbzpxbhJUos7r5ft6YSppCRo4ceexmHgfXd7NHVzR
	bF6g/UPQfwh4fRFdQ4QK4TQ4OWPb6VqpZUxQwQXKVrYoTCZcPm4rlWeA+s1KH/3z6G7xQXz/2EYxi
	Gwu0hiMCywG33MZhGwRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6DEZ-00062L-MK; Fri, 06 Sep 2019 12:20:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DET-00061R-G9; Fri, 06 Sep 2019 12:20:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id gn20so3071952plb.2;
 Fri, 06 Sep 2019 05:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yz8E2Km3qb90hXAs0IYE6gU7l6QgyfYQZCSLqivyf6E=;
 b=sBi5fWpLkJxLG+1JbIBpFxU2wYFj0Rs9t7FdUjuEGTXEdUskawkWs7bKLQTbSiRpG7
 qjhl0dF9LHFwxei4SsNWyHZYsRyITHY1813nt5Qmhl+ekqxXelwFqEcADBaOHIKXX/0V
 khF8myUbLbxdgH2l8IGeznwGAlWmeOPqKraFv7lW4jPV1UHxMzEYrAaMxmgXfRKklht8
 3KZpkKg8mfU/uXRHZ13pYQo24TfaYwGj180ya/4o/m81xAdpJ+HDpQ6GOZWyXCRx2kaO
 jSNd6NlTTHccjWA3MrzpQdVAtKPzijDLC9pUugAWmkipIibe5KE6wbEzDvoq8MnF4xcE
 D9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yz8E2Km3qb90hXAs0IYE6gU7l6QgyfYQZCSLqivyf6E=;
 b=nqsGOPgo3ErVPSPGe94gdw8R0hCUjCPNgj6UFK71IdZ9tz9Uak/ybB2yxQTREKFHxo
 RqCpJROTXcBpXIKCwb8ayJGMLbXhbY1JaVF7QSwB/wYsPY5uwnOaFTl/4HERFDPMpf4m
 +zGs/7G8LqHdfGippSqm2gpPYONsi+dD5qNr2MSV3vzNa8xQ+YpXcWgmlJqF17XaI/dh
 cJn7Ym9HjTefvdAe+gODhOpXhv+Nt14ymc79wFIsm7o8Ht38oSPUTPcGds/YBqclNoMV
 3dM/fxs/AbVo+sSUa5QE/3OLrL1UWZXbyR5eb/LiLTe3B8PWS/Fnl/XKF0stz3QcovXl
 F75g==
X-Gm-Message-State: APjAAAVzJNtrpaCQHCHJnHd3rezx9PF5QFKusgGgcS5WcrxnbACSaLBs
 OU5tfxVvZq9qfTDLlUYFLVeF8h6F
X-Google-Smtp-Source: APXvYqytNc4583TyUBAV/uTzWtXmL7i+BG+xiP2y5wuQOBP1Lr6CNp2zeZDS6Vji8zuvtspD30AQow==
X-Received: by 2002:a17:902:7b8c:: with SMTP id
 w12mr8244462pll.276.1567772452654; 
 Fri, 06 Sep 2019 05:20:52 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id c23sm4944218pgj.62.2019.09.06.05.20.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 05:20:52 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv3-next 0/3] Odroid c2 missing regulator linking
Date: Fri,  6 Sep 2019 12:20:41 +0000
Message-Id: <20190906122044.372-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_052053_565605_80FD43E0 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Below small changes help re-configure or fix missing inter linking
of regulator node.

Re-based on linux-next-20190904
Changes from previous patch's series.
Build using Cross Compiler.

Added missing Reviewed-by Neil's and Martin.
Added few suggestion from martin for rename of node.

Dependencies:
Changes based top on my previous usb fix series patch's.

[0] https://patchwork.kernel.org/patch/11113095/
[1] https://patchwork.kernel.org/patch/11113099/
[3] https://patchwork.kernel.org/patch/11113103/

Hope this series get picked up for 5.4-rc1, finger crossed.

Changes for previous changes.
Fix some typo.
Updated few patches as per Martin's suggestion.

I will try to commit less mistake in the future.

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
