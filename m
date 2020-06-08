Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B05F1F1597
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jY8BBZb9FsLnFVKdW5grD11Q4jYCTdVVOjomZthaLFA=; b=XRE
	6fQ9HpxFO/b+g4rWUH3z08g+KoDxbAVVvGGPrc0KEos9XpxWxxCQ9Q2AqWXXMXddSYKU7ocHyin0C
	izra6TfDwVrHj0pC2o3BWim+JSTo9IiW+X2XbmkZMFRqrG0BBqiX2JN0BjkSc+TxfXXY3kAYYGhXd
	MX7lkaMDCwivXwfw4X797TS5N4IkbwwFKRCL4Ffjb8m9spkr782pTUYGnahZO9tJJEqoTvjjLyHtL
	EmUp53zO5NQJxh9WrC8pcf5yEEpJixiybuHbVvOSQRCCgqqGCyiDanUOgi0z0CsMCucgQswfvX3eB
	oM6S+y+4yA40Rm+jOzK8T1WWo4vFTkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEFE-0008F6-4r; Mon, 08 Jun 2020 09:39:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEF4-0008EO-JW; Mon, 08 Jun 2020 09:38:55 +0000
Received: by mail-pf1-x441.google.com with SMTP id h185so8306636pfg.2;
 Mon, 08 Jun 2020 02:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8nFZFr9b1fII+6D0rKTzWsSJAU76ASsrlWrZljZL5Jk=;
 b=UXKeks0pXHxRBTysC/Dt0BNmLfmM0klkVdz12QpU0BFeAKumvbD71rgnaTd4tuoz7l
 Mrwz9oSPeQvdDqY2l2O4dnubnH/EJpYUaE9ZXglhOwOzcOIL+/gQvq2ZzjKntDGy8TLp
 Zir9ueSk4XHrtIHm5ALzLQJMYVuMRg4Ofo2tSo1NGrOVMugSB+1PdI+zZ5wvbCj0KrYT
 WS2KTs+JOusH1Q9nHP2Tpf/mjJ6Tn0pykUpuiqcQeosoK9HKVFvk/7XvMlKcm5ODPujo
 6e+KbK+RGT6gfHgYvtA2aHtMBpt239ZmMQvp1ue7ugYh0sRyyJ4dzc4sNxKaLivakaFu
 Bn4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8nFZFr9b1fII+6D0rKTzWsSJAU76ASsrlWrZljZL5Jk=;
 b=IMt+hutbjta361AzUF0i8MOqQHDYhtm4gRrQO93uuF+J+gPVsbldhRPFqb+NzaXdpW
 Ne7UfJA7pu5D+Ivwe5OeS3aygzsqOpMd3nmSRWWo6IaSwNQzJk2LG1rbS73flYJ07QHH
 6a/SeSMazEz+K6KTsWhr/6uWqA15aDlc3/9dsO1bC9jjxOqTdKJW23M8eylREYRYAarz
 1q9w5MnC2zj5bFrSAdpTuEA11rfpVpWKil//Gefnb+5JJUlw9R0+HOOBPL1HCZ9ZV0j9
 DGcJKSSAnNH38LjymMViYzTOFJiuZIIHNVZmvo3DmXfHq+Mm2L4cRmpn/UMUH5jVqFg5
 na7A==
X-Gm-Message-State: AOAM532j89SIMJ5xe+5kwl7aAySok+1dSFWY1OpVevcl1B8EuYnX8fRr
 7QXggvGDY5QlZReguOIvCD0=
X-Google-Smtp-Source: ABdhPJwbUtaqyDj7BTPatpRYTufbUH1GbiGng6XdEOmxI8JEukNzBV+RjIAaS5544ZUrmOPqjBijzQ==
X-Received: by 2002:a63:b904:: with SMTP id z4mr20109401pge.25.1591609133685; 
 Mon, 08 Jun 2020 02:38:53 -0700 (PDT)
Received: from localhost.localdomain ([2402:7500:4dc:9812:acc3:6aae:21fa:62f8])
 by smtp.gmail.com with ESMTPSA id 3sm6608971pfe.85.2020.06.08.02.38.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jun 2020 02:38:53 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: lee.jones@linaro.org,
	matthias.bgg@gmail.com
Subject: [PATCH] mfd: mt6360: Fix register driver NULL pointer by add driver
 name
Date: Mon,  8 Jun 2020 17:38:45 +0800
Message-Id: <1591609125-3761-1-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_023854_640967_E3353CB1 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gene Chen <gene_chen@richtek.com>

accidentally remove driver name when
replace probe by probe_new in add mt6360 mfd driver patch v4

[  121.243012] EAX: c2a8bc64 EBX: 00000000 ECX: 00000000 EDX: 00000000
[  121.243012] ESI: c2a8bc79 EDI: 00000000 EBP: e54bdea8 ESP: e54bdea0
[  121.243012] DS: 007b ES: 007b FS: 0000 GS: 0000 SS: 0068 EFLAGS: 00010286
[  121.243012] CR0: 80050033 CR2: 00000000 CR3: 02ec3000 CR4: 000006b0
[  121.243012] Call Trace:
[  121.243012]  kset_find_obj+0x3d/0xc0
[  121.243012]  driver_find+0x16/0x40
[  121.243012]  driver_register+0x49/0x100
[  121.243012]  ? i2c_for_each_dev+0x39/0x50
[  121.243012]  ? __process_new_adapter+0x20/0x20
[  121.243012]  ? cht_wc_driver_init+0x11/0x11
[  121.243012]  i2c_register_driver+0x30/0x80
[  121.243012]  ? intel_lpss_pci_driver_init+0x16/0x16
[  121.243012]  mt6360_pmu_driver_init+0xf/0x11
[  121.243012]  do_one_initcall+0x33/0x1a0
[  121.243012]  ? parse_args+0x1eb/0x3d0
[  121.243012]  ? __might_sleep+0x31/0x90
[  121.243012]  ? kernel_init_freeable+0x10a/0x17f
[  121.243012]  kernel_init_freeable+0x12c/0x17f
[  121.243012]  ? rest_init+0x110/0x110
[  121.243012]  kernel_init+0xb/0x100
[  121.243012]  ? schedule_tail_wrapper+0x9/0xc
[  121.243012]  ret_from_fork+0x19/0x24
[  121.243012] Modules linked in:
[  121.243012] CR2: 0000000000000000
[  121.243012] random: get_random_bytes called from init_oops_id+0x3a/0x40 with crng_init=0
[  121.243012] ---[ end trace 38a803400f1a2bee ]---
[  121.243012] EIP: strcmp+0x11/0x30

Signed-off-by: Gene Chen <gene_chen@richtek.com>
---
 drivers/mfd/mt6360-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/mt6360-core.c b/drivers/mfd/mt6360-core.c
index db8cdf5..e9cacc2 100644
--- a/drivers/mfd/mt6360-core.c
+++ b/drivers/mfd/mt6360-core.c
@@ -412,6 +412,7 @@ MODULE_DEVICE_TABLE(of, mt6360_pmu_of_id);
 
 static struct i2c_driver mt6360_pmu_driver = {
 	.driver = {
+		.name = "mt6360_pmu",
 		.pm = &mt6360_pmu_pm_ops,
 		.of_match_table = of_match_ptr(mt6360_pmu_of_id),
 	},
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
