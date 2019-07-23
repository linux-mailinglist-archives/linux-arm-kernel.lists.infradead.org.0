Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC7371EA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o+z8CZ1yKG1oFIH74wL45jFsfdo9ddLBZR5Hrz3r7mA=; b=hFQ
	IUWfsHT2GIwvgzCwrIgl+Tm5MoT+mN6iZUGOqqo/dWHemJweBiVKtsZi80W+cM4LCOU71eTWL5npn
	5JcYNcBcvzO8tmbpmHEJ5YHdaibV1HUBmZe11LxRME1DKZRrJwQU4rWe8AvmxtXKNGTcXYWita8Bg
	0TzEe7DBAdqmfql32kyjyna9dbgP6CAOsETnORJ3XNCa506h6G7O1K/qaWL8fmDXEYmi7AMWDiNN8
	qv/ufutLMODqhCfX9QB0n28PzZnyGuLmux2uAV8X42yDW+OAdnxseqlOcFX8XC1htiq9PhD4bdGAK
	BIg4+Q6uDNKRncAksmbZ7E0LtBoD1LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzAW-0004NN-9z; Tue, 23 Jul 2019 18:05:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz7K-0000e9-2V
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:02:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id f17so15530847pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 11:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tF8TgWL4DJzE35U5Q29Egtl3/WZUXHlu9H5bcFtB+v8=;
 b=qgpZq1OwEaHuQpz8h4B2Dm8ZguMKgkDFf6oqw1nfNDThHvoYnWaGFS0h6RnY9s3RvW
 Gyij/a8F0pLMg2WSAV+Ox7SSOH7aQmLUF+TpcYe3RuBAlLwpQUMleRZdqeA44zkZ+8T5
 99iialPYd24SGmtLL3KUAucm56OPykpZY24Cs3fj1wImp2Qht4cXgsnIL+ud03Ue3rJ0
 CGbLTLVRKZWbd+xiD8LiXvoH/2FU4av/HicxPly9LFBloIfqxccdgF0WcZrJi8L2cDWF
 X6aiJFAMivze1mTqGBt3JTSVx1Pyq0EYDdoOdBa1E5i6wOPs4tEPZTDLT5QeggyEi5wM
 dJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tF8TgWL4DJzE35U5Q29Egtl3/WZUXHlu9H5bcFtB+v8=;
 b=UJQ+ebgOXHJF8O4uopdD71CDSmwGU6qMo93kSb/D1xx7/YNkKhQ4Tgf86wLSRoDXRS
 +RYcu1oV+E187EaHO/nWl+vk7cSUPgVRF4UcC3Mj9GqddQbVOyLpmykvobabr3Zy8W2m
 x7FY7V3gfIx9ND7nOmGYb/6vk3/b6U5/U0g19c8YsUihhMr6RL8E+08pwoH1t3RFqd45
 HQn1b/JmwA/99FwPXDDDyTI2kkvxzfaBPMXr4TH6jE2T6cmmk+mW8t/9rl03ELvbng2a
 rDXUvHQXmVECFEYLx2w0opeINSeIRsXCPk7J30Asc5fQ0UIYJHS2gKQbDv75KTPoGMsv
 iL/Q==
X-Gm-Message-State: APjAAAXN1lLw0lbp2RJ1TdbLY8A2TuDrJM/YaLM0IU/DRTGuB8ig+zPQ
 ZtKdeVHs34TTxeMPtQbg2aA=
X-Google-Smtp-Source: APXvYqy/0/GoX/jLLuQsxuVf2cI/YqgN1Wsb6QYTGkfv5TY4NxUc6JtVaCmlwsSkkuuh3KA8klMLuQ==
X-Received: by 2002:a17:90a:bb0c:: with SMTP id
 u12mr84804822pjr.132.1563904944517; 
 Tue, 23 Jul 2019 11:02:24 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id u69sm49758940pgu.77.2019.07.23.11.02.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 23 Jul 2019 11:02:23 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a7796-salvator-x: sort nodes
Date: Wed, 24 Jul 2019 03:02:08 +0900
Message-Id: <1563904928-2797-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_110226_223986_A31D1E94 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/r8a7796-salvator-x.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7796-salvator-x.dts b/arch/arm64/boot/dts/renesas/r8a7796-salvator-x.dts
index 2aefa53..de37e91 100644
--- a/arch/arm64/boot/dts/renesas/r8a7796-salvator-x.dts
+++ b/arch/arm64/boot/dts/renesas/r8a7796-salvator-x.dts
@@ -36,11 +36,6 @@
 		      "dclkin.0", "dclkin.1", "dclkin.2";
 };
 
-&sound_card {
-	dais = <&rsnd_port0	/* ak4613 */
-		&rsnd_port1>;	/* HDMI0  */
-};
-
 &hdmi0 {
 	status = "okay";
 
@@ -81,3 +76,8 @@
 		};
 	};
 };
+
+&sound_card {
+	dais = <&rsnd_port0	/* ak4613 */
+		&rsnd_port1>;	/* HDMI0  */
+};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
