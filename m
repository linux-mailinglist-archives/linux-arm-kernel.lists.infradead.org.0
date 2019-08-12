Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742C38A4E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kQlrYjgZ/A5wgxpWD1jzZUmZHHgjnaxli7Rt7/J1pJQ=; b=XJIQ2Hv8JUCxui
	3JQIxFeU4TtHTUgRKKkSBMsKoE5DyLM+IeHDc6Qt94I8QTpyA5/FVMRgeKiPxIq8aQAbae4KSLe5z
	Md4kd+Q+vZPTvq9DcPwRqnNk3rSbgDuFPnWK+zxC89eUGICLEDs8HQWVomZZR8OG8k8Aif6kXYFG6
	s54fwE2RtrLDOYmDYBulrVXEomIveArpefJFANiJ5iMkwipFatZn5eoasYVnZr9x8e4nDDk5eGmBG
	xVHMF+yMam1D5V6ftZoXLORYVdEk1CKcVTCaKeUMiBeiRDSHAD/nIrhLQkgjKLgybtXReHwwqr4Sl
	bVtlRrF6YBtVmg/PdVmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxESt-0007ZO-FP; Mon, 12 Aug 2019 17:50:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxESg-0007XL-De; Mon, 12 Aug 2019 17:50:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id q12so15070609wrj.12;
 Mon, 12 Aug 2019 10:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=stBKKVsI+4UvfEdFNUUprqBQVBNTUmemikvPps8gLE8=;
 b=Or8HpsYZpLiaPQQNpEID7tVw7MxJmfcAKHT4O/iVrJgsBwWJShl/XcOewcvSHSVEDQ
 k1pnMrQ9FnGFQurkDorTlrcEdAqBwoO1n4I4dbDkMJISpj0YCXjfFb28ieOiL5NRjTtt
 89Sxl690KoN0W+p4ouvNXnqEsBFxEBi13nDzOYF/8/YaaMEkeA0zG05dgPcPDc+f+l0D
 3r9FvjHSccqzm5ydUyCW9wytjP3QoQNJD43V2k0wPkGFCjvZ6sWcQb7mTmMzDlqOm1e4
 jUeuY2lNdxLKeA2OVP0l4rNY9UsW8qIrb+GdKrL6d9G6m+nOW4OZSzbcC4sIz+sllNX3
 dbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=stBKKVsI+4UvfEdFNUUprqBQVBNTUmemikvPps8gLE8=;
 b=aUDlr6owokODMRRSqNnKx/OIFy2LKfYfH0Dvs+MpwHAEhGgHcbFo3dvqkY98bKYmaY
 QstWINLmPzC8M15MF6yKOjR1DRvHrzhfRx0DWabHvsPIzz/emEJrUz5o9GKZfQwHDcxh
 5MQ8SDqCJa57DrNTHrWS92UQ4dpnUJG92YXQFWJzvF9xYziE+9NT1dn5bIcuXddunYn+
 e02moac/GHjccLV9TI3y+b0tSX7he/I0s9KT7WkL5Ds7Sdb+nwxpdNP1rcS3Is3Jx7J2
 qT5YFViBpB7eB1rSJVsGbZezZCUvDYm2bxNeIbi1xYB9+bthLU2kP9ayjnn0X2RKPB2G
 rgcQ==
X-Gm-Message-State: APjAAAXRrocL5ilnon3N36Mn6DbOic1qy8lxkT3ye4OO3OBV0Zsqvofs
 fXMuhJ3+4uWIdwPhdCJJtaeAu4Ze
X-Google-Smtp-Source: APXvYqxZ085YucVRWLR7bncRkqmFLN0Av/atoYmK+5kGSsLcfHbtwGk/UrRgTGET2hkx+86R75kfkw==
X-Received: by 2002:adf:9b9d:: with SMTP id d29mr19369660wrc.132.1565632223084; 
 Mon, 12 Aug 2019 10:50:23 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C1F600059A26DE113A463E.dip0.t-ipconnect.de.
 [2003:f1:33c1:f600:59a:26de:113a:463e])
 by smtp.googlemail.com with ESMTPSA id u7sm4084858wrp.96.2019.08.12.10.50.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 10:50:21 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/1] ARM: dts: meson8b: persistent MAC address for Odroid-C1
Date: Mon, 12 Aug 2019 19:50:03 +0200
Message-Id: <20190812175004.24943-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_105026_464199_C8B95C6F 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: narmstrong@baylibre.com, ottuzzi@gmail.com, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series makes Odroid-C1 use the MAC address which is programmed into
the eFuse.

build-time dependencies:
none

runtime dependencies (without these a random MAC address is assigned,
just like before these patches), both are already part of -next:
- "nvmem: meson-mx-efuse: allow reading data smaller than word_size"
  from [1]
- "net: stmmac: manage errors returned by of_get_mac_address()" from [1]


Changes since v1 at [2]:
- only add the nvmem cell to meson8b-odroidc1.dts as suggested by Neil.
  It turns out that neither MXQ and EC-100 have the MAC address in eFuse
  (which means only 1/3 boards has it at the given eFuse offset, so it's
  not worth having it the common .dtsi)

Kevin: you already have v1 of this series in your tree. Feel free to
replace the two patches from v1 with this single one.


[0] https://patchwork.kernel.org/patch/11062659/
[1] https://patchwork.kernel.org/patch/11062657/
[2] https://patchwork.kernel.org/cover/11062663/


Martin Blumenstingl (1):
  ARM: dts: meson8b: odroidc1: use the MAC address stored in the eFuse

 arch/arm/boot/dts/meson8b-odroidc1.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
