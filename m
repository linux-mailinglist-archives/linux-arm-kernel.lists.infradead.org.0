Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C16CE334
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DvTxo5dE5kJ9DCkomdqxjqagcbQ/C/VU48uJDiEm7MU=; b=OFv
	HKHi2I1wsC5O9rlFNx9ny0NdmofxwcDctcCInS8+kDqFmUxzVuZgCPRxTXmvKPPi3Zbx5nyx08/IC
	xFwfsgVGb7R2Wbkqx2zmpem1EOxvZ5Swegw3jLbMUQZvUEv3UczC6JzyxaGufgEhGnHRmQxxkFPUW
	vs4PMfVq8o0sQTex8YQjREOyOll4Jc702tGvp7SyvPHye4Jkn3S4brqKv3ndADH+j6ATke3B2mUkX
	NwBnPBQN4kbIN8tNaAcO3J6zcnhhQmKabx9H5mFxQo/8/CDcFTZIT0ehUcwkGkoOjQENZKhyykKWm
	5BfmQocN65GqnVYRWcwbC1+tTQjKCbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSxR-0005lL-T6; Mon, 07 Oct 2019 13:21:49 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSxI-0005kF-JY
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:21:41 +0000
Received: by mail-lf1-x142.google.com with SMTP id u28so9252696lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 06:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8lFKpywdPpAsicgn0/2wcRw41YVk58KkpKaw3FhsBFg=;
 b=kzlZ1z4pnQ9ElMcAAvOAiALRNqpqyMMoDDh6kl2IFt1Qp45uDKh6abSvD0oEiGal+H
 MBnfKpBtjz50DsDYc3uh3L02w5MD77BD5eFT4gdVpfd+EZxBXRrsu1S1LvzkXl81Kr2y
 KukRAsEvizvL8jjIz9pWP5hthlbKDXXKauZE8JBU1Haz9GXujFr+Ngc1jXoHW42W8B0U
 szNRAvXXQ5BDUZpOIJBcvCdwyWIdAE4Ykfye3tfRzVbkk29N0OAqnXNWgI7XJsCxLwN4
 UOfRTbN2IZAuq7VWS5/64GvKfCfdvQC3cNTBDixQgKGMGjK0hOMxCRkD0PIRfMJ92Fcu
 2EXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8lFKpywdPpAsicgn0/2wcRw41YVk58KkpKaw3FhsBFg=;
 b=DEe65JM1XRXES41rCSFKjd6ga/Nr6+NOEQ9xoZGZcihhlJxT87Gki6Jj3Ax+v8+9ka
 4VEHW1ne1Lm+P4H5Wq70Ehz/koGgig222y2DRahXAav/O6uL0PhlVDNcBFsuXdNj6xW7
 DpNWKvwjMObLNnJn3OrF33MM4e/dLgpOYYdhDBCTErjm4n36qjNj/9TxZ5k0J0QJfJxW
 9UkQUVKhCuyW+9m/bu+o+YO1ngjY4b6ocHnozeZ2sQHQ//36p6lp4PYC6oL1l8RY64od
 FP2wPNaSJSebVYSda/V7AfGzmq/9PZJHpwgkWMd1qSfou5Xz3KhmT+GgQrXPD+6KocwI
 YANQ==
X-Gm-Message-State: APjAAAWJijSHtyvWZk3gMxY7M38Yo29T3P8XCCA93o2MP1abMGeSeO87
 KpLss60uOpyVjLyFbF33fCk=
X-Google-Smtp-Source: APXvYqzkmVDDzi+6y2wMEn6caUhn1m4J52DjMbKL7et0q2OMyTb5IcTV1Br0sOtRl74VRsS0ZZqJaA==
X-Received: by 2002:a19:f512:: with SMTP id j18mr17055451lfb.169.1570454498586; 
 Mon, 07 Oct 2019 06:21:38 -0700 (PDT)
Received: from marek-VirtualBox.ccr.corp.intel.com ([78.133.233.210])
 by smtp.gmail.com with ESMTPSA id y3sm2894932lfh.97.2019.10.07.06.21.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 06:21:38 -0700 (PDT)
From: marek.bykowski@gmail.com
To: robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org,
 pawel.moll@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] bus: arm-ccn: Enable stats for CCN-512 interconnect
Date: Mon,  7 Oct 2019 15:21:14 +0200
Message-Id: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_062140_644132_8651F0BF 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [78.133.233.210 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.bykowski[at]gmail.com)
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
Cc: Marek Bykowski <marek.bykowski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Bykowski <marek.bykowski@gmail.com>

Add compatible string for the ARM CCN-512 interconnect

Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
---
 drivers/perf/arm-ccn.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
index 7dd850e02f19..b6e00f35a448 100644
--- a/drivers/perf/arm-ccn.c
+++ b/drivers/perf/arm-ccn.c
@@ -1545,6 +1545,7 @@ static int arm_ccn_remove(struct platform_device *pdev)
 static const struct of_device_id arm_ccn_match[] = {
 	{ .compatible = "arm,ccn-502", },
 	{ .compatible = "arm,ccn-504", },
+	{ .compatible = "arm,ccn-512", },
 	{},
 };
 MODULE_DEVICE_TABLE(of, arm_ccn_match);
-- 
2.21.0.896.g6a6c0f1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
