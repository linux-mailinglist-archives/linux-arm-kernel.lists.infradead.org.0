Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5511C1E95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 22:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mQrs+T8VWdc2eiw1argJFSoNP37QWdx6RhhDMOJeUUY=; b=k8g
	znlpO6JdMtr6QJ/EG3zc1AaV1WT6G+kBYSeXLva3xk0tD3+YAbU46vBH6RxmIRGQrnfUvn3lJQzqJ
	m5zWvEtl/2PXFJCAwswOgCRWgaQ96lWBiNwOCQJ6hsDaciIXf7w5GjLphh0PAMAkoXYs2ponOEDuj
	2QXi42EJwAQpDD5vnUO2GR1kgNK0FnokxMJl3eBXbB7XYqslQOX/QL0+BZWLxYxBKo5UDNJKmafrU
	iQYDkRy1Yivm/BqvSQJo0PvUtNMmDpsSvuI5PmiXv+gmBqJp1VPPp15Hl5Le4oetwOMgoQEsdxz6F
	2TFMudAJC7uX8gXtCQV6lk0yvkBfcAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUcR0-0007Nu-00; Fri, 01 May 2020 20:38:58 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcQq-0007GT-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 20:38:50 +0000
Received: by mail-qt1-x844.google.com with SMTP id z90so8888560qtd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 13:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=k39+QqiajZ3DVazOUAAhPhKDQIfEWM5Scf9/x3JEsPA=;
 b=MPohLWFuDUyHq4o5aotIhWOocyxvZvIqMwqp5+alFfoygKRjaHJxVnB60m8yYoW9iJ
 mX5GBkyJOec4KQCX3S059OhojZPwHKgoo8TywiJnwCSqXpwiDLYXj5GoZGkWvNBIfj4i
 o4uRRL9SuLIEpmH8j0mx6w6lzaMMyVuDKDKs2CxlmBQTSVlH/Ecb4NyDU14GmHFF2tpT
 71BHlwA8BaDnMjel7xiEbWIRiCcKWLXkGjhCwN5RO0DLmfJCkVay75f6i6oBZ7jwWsP/
 MqS9cgAYWuFDTCXEHxcnMv5B0NRyL/q4ef0rwq4QzHx/RA3L5WwTAEqQYRtjH+pp1sou
 mSEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=k39+QqiajZ3DVazOUAAhPhKDQIfEWM5Scf9/x3JEsPA=;
 b=Kl3m8Be3q5LwWeDlAu3Qoz71CnPiDwMECnQzO6SsIkcUK6NR555uEBHG1Pa8LI8t9o
 eaYiIx1f8Z1dB9K5L3qjHDKO6aSKeFEkkhFWT442vCPbPivzpYMyD9hbOT2fU5BoFBDs
 AtM1Bouaq26uiVnnkhP6/1zngRytNSL5YUH2N7MYii55WjNv0zL5kor1/oUp7GysWQa9
 SeD6f5BMalHUWciWKWx7O8uyu+CVTMaNSHNK9AoMbkPRSQDuIKYRS2QZST4hKpq1WyOt
 W27gNOB79D1Nziqaq4KVo3YgnuW0BzMyexCn6NCECk2vCoBcVuHeto9FTLWehrUAfcrH
 BgxA==
X-Gm-Message-State: AGi0PuaheGq9Gi6f5uQGeJgdwNbxAnQSVq0K6emdhqeHQNyg0O3RLftO
 yS/oKvFT4seSg4osbdhm0FY=
X-Google-Smtp-Source: APiQypKHOGYCq3ZdKQe0wglqbvMA6mC58iemrTGQIF/Z+rYfoS8tsqMGCoHyj/XjsMZqdiMHjobM6g==
X-Received: by 2002:ac8:3f6d:: with SMTP id w42mr5597441qtk.171.1588365527755; 
 Fri, 01 May 2020 13:38:47 -0700 (PDT)
Received: from localhost.localdomain ([177.194.72.74])
 by smtp.gmail.com with ESMTPSA id v3sm3353073qtq.19.2020.05.01.13.38.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 13:38:46 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx50: Remove unused iomuxc-gpr node
Date: Fri,  1 May 2020 17:37:47 -0300
Message-Id: <20200501203747.14196-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_133848_994250_1EAF0D21 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The iomuxc-gpr node is not used and causes the following dtc
warning with W=1:

arch/arm/boot/dts/imx50.dtsi:286.28-289.6: Warning (unique_unit_address): /soc/bus@50000000/iomuxc@53fa8000: duplicate unit-address (also used in node /soc/bus@50000000/iomuxc-gpr@53fa8000)

Remove the node to fix the warning.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx50.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
index d325658901c5..339294df0399 100644
--- a/arch/arm/boot/dts/imx50.dtsi
+++ b/arch/arm/boot/dts/imx50.dtsi
@@ -288,11 +288,6 @@
 				reg = <0x53fa8000 0x4000>;
 			};
 
-			gpr: iomuxc-gpr@53fa8000 {
-				compatible = "fsl,imx50-iomuxc-gpr", "syscon";
-				reg = <0x53fa8000 0xc>;
-			};
-
 			pwm1: pwm@53fb4000 {
 				#pwm-cells = <2>;
 				compatible = "fsl,imx50-pwm", "fsl,imx27-pwm";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
