Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69DD27329
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 02:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0jBdd5L5lTolq2j1J/g/eu9ofDQ+Tibv4v36t9EHnn4=; b=l1E
	15ct2Ng+vQDbv0AXWlqz8F0+38Ld0sH24kaLxnpwqPTTBxU8WduRkX6akxxCG02/tKjq3Gqovw9eW
	hEKE0pa0kM9OnfNeq4NnxkPJWAdPEcgsWX90NiDD5w/hiGObAy1z9H97sLrfSKo/S2jUbcYkYFVg0
	U8/l2Crz2eilsaPD9OGOMwwUKOZQacDSsenzQavJFUj0k2ILt5r7zi3B/kwOa+qNLAjTbWH6SzwMU
	FBpDXDm6fp901/vmXhdWYq5e8QgIHjzsQMjQpPtr4rw5cvK5sU5duiv2K4609uP5l31vX7OSqxjUQ
	V6idTckrZvn9Lg9yfu+zWgn8A56bJ/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTbMi-0002ZL-1V; Thu, 23 May 2019 00:13:48 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTbMb-0002Z2-CE
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 00:13:42 +0000
Received: by mail-qk1-x742.google.com with SMTP id i125so611955qkd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 17:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CAAVCkRuBI0e6m+i9nH99blgCysQM7p9/3WE4nNdp98=;
 b=HahybX4EYjTIw0G4/2Gb7Ww2tKMa5jDJZ/J2wczrsFc1cR5nq2akOtSpQBugqw18K5
 tuGh6uiYroEX8qzLy1+kd5btw4Adgg9flMrJumAckVhsj2fGkhnAYsJcrct1QJlweAcH
 t/uche/kUKLyVSh7vwe0HoDAbTvEZzkK0I4YUbIGpxQ8v7Aqja/XqhJuPHi2TRdR+Fre
 SWdw+kMQocXNpmyQal24hJ8d9XjESDCeVv2ol88yspTYWe2FBb1zwpzJd+QLIkEeXlpc
 Gnq1aAIEq2Xm/dSEjDb/n000zuKIx5wQDhGj/+LdDXjDqXcQ7gpm2t58gm++rfA8VpD0
 51oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CAAVCkRuBI0e6m+i9nH99blgCysQM7p9/3WE4nNdp98=;
 b=EcQ5K52lFCsi5ORb6ClLCupXm8yCRCJMvvNymad5YVmvl5CX2bOULXcAv7Wda50Tiu
 y34hcuDpawKjxr6rwyLbVj71NZUxQ8o1kUguRoLZmOPYMyoLhWEVDoZIx+3VYpgI3c5+
 RYyPCCDiv3184jOiF1dOEY6xFrQT0GCt+DvKzCe0q5/E6PkskKuAo9sdk7C0Hl76Va9y
 dpkvKd97zQc7CcL+ug0fuLrVJ84NCuTgSlY9S5tTvOExCK325CiU8aGgolOb2yvSwHn8
 zgnKJpl1z7GkDTj9csBLq1xUCZfyfZ+5AptSm5dYx0IGbEnKq+rnxkRjcoXNsROygBsR
 bMPg==
X-Gm-Message-State: APjAAAWLUK4QBfYCstpK1p8pk6eMda3sKJC3FeKvHg5LVccSodJj9D3i
 r4slBA45dPz1itQUA0ko88w=
X-Google-Smtp-Source: APXvYqxOXU1H1tgc2+e+Y2AyyAJqAIvFJgkXT1ZZUliGYEyNKk32g/AeXw7UCTsWUQ/fUuGFYqREiw==
X-Received: by 2002:a37:dcc1:: with SMTP id
 v184mr62432658qki.338.1558570419041; 
 Wed, 22 May 2019 17:13:39 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 29sm14198425qty.87.2019.05.22.17.13.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 17:13:38 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: imx_v6_v7_defconfig: Select CONFIG_NVMEM_SNVS_LPGPR
Date: Wed, 22 May 2019 21:13:35 -0300
Message-Id: <20190523001335.14081-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_171341_444496_C7CC98F4 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SNVS LPGPR hardware is present on several i.MX SoCs.

Select its driver by default.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 2cdce7be27f1..658982063dd8 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -406,6 +406,7 @@ CONFIG_PWM_IMX27=y
 CONFIG_PWM_IMX_TPM=y
 CONFIG_NVMEM_IMX_OCOTP=y
 CONFIG_NVMEM_VF610_OCOTP=y
+CONFIG_NVMEM_SNVS_LPGPR=y
 CONFIG_TEE=y
 CONFIG_OPTEE=y
 CONFIG_MUX_MMIO=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
