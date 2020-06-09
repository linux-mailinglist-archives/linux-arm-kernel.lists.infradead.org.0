Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78831F41A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwNHyUfMikiEjc36zElZlKztdGLbhNDAmJwFLggxcvc=; b=CnN58Mu14OiXGD
	2zuxjEO0yRxoxY5bo2btGeSY+656F55/pvjjqiuDVyqpJqPhILNJIchr8bOVlFR+aNfEbKwdeWHnP
	2elhSGs8x9TBlPj+U13unJOjzCPCt440RXwEJzFNrW3Ot+oMEsVa23FG7uVdEtpA2NRmc6NBf8Rup
	dWvVHjM81ehp40eQXB/ngUafYxFa8dJn/1PtmGuAO4YaL9bpMIXwvze/Hvlp6a063hea1mt0G4OuF
	020wwVuqrapUHz1mLYX4MScTA7gvaQDVszBzbSOI0hfTMJhpXjgcpWogC05+x0qWc7z49Ukjp7K3D
	DAmxlI7tIaObMKp3zNhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihda-0000tb-63; Tue, 09 Jun 2020 17:02:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihd3-0000ck-R1
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 17:01:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id y20so3913585wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 10:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=56AvKWjySgBgySSonnii/IUH4GT5dcqEj7+lumT1cRY=;
 b=XQBCPOQcVAJQlXTu6CWnVAFcgJLUEWrBEKEyghumX8BpKiSz/NS70PbTAcrACrc1QX
 68g9Yhyn00KF4e/vDRky98Ac6TJQohJD8MhVucqhHVTMahC6w1Rbavt6mB7wjin9c3sq
 5JN+0Gz/3AoarQb/kzAgsPxYaworJHJYPHC1Pdzb1NP3w3nhItxMB0p8+1Oo7Z14ODD1
 pwrU+vZfomKirX5Eaj1MFykHr40PtRhGTMIpihX9IaOzpctElvn08+96dFtzjle+SvtV
 2iBMTz41jMTVJFmn8n5+76z+c2SNYjTpmC01emNAdB9TcakjDPzNCNXi7k2SaFbMkyqs
 LQIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=56AvKWjySgBgySSonnii/IUH4GT5dcqEj7+lumT1cRY=;
 b=LnrLH9HatM/a2oggdMz8dcIg5JwY6CHdOTBy0ndSEEzYKeo5cC5qudpTrzq9wGjteq
 1eNhztixfNN5c1VHEHXLxzmguDXeHY7Wa/Wrh2OZJe19KA7fnwefPuRzkrG74vCCutSq
 AoHH5CIMtISaOpkNE3bo3NTTgQhILzSKaTiBparK1TknwfJoRKTqG+AUvPyhMX43tK6g
 VSu8YLOvo5XMyzB81Vs+BGaP7HOKcsEI8zU++kiPDDyxAoldg4WvZYi1drXuMzqqLvrc
 k4BMZuBqlLRquzahtV8ZiaNc//DXBwwWgl+cO8pHBMEFwPbz2EBojYezk/GIhMQJUBZM
 w/Qg==
X-Gm-Message-State: AOAM533nuJ77LY60E57sRZsyB2v9NMHG824V4kLBLQC155Fqua/rBJlb
 ZGbiL3kzqvXmu51zOUZybgrCZ8z3
X-Google-Smtp-Source: ABdhPJziUydPOV9zp3et4UyExSQjH9O6K4W1YcNIq3XL7uN3xQiYGzUUym2Piw3iXAr1nsQN8ubfaw==
X-Received: by 2002:a1c:230a:: with SMTP id j10mr4949426wmj.124.1591722091702; 
 Tue, 09 Jun 2020 10:01:31 -0700 (PDT)
Received: from cluster5 ([80.76.206.81])
 by smtp.gmail.com with ESMTPSA id 23sm3734204wmo.18.2020.06.09.10.01.31
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 09 Jun 2020 10:01:31 -0700 (PDT)
From: Matthew Hagan <mnhagan88@gmail.com>
To: 
Subject: [PATCH 3/3] ARM: bcm: Select ARM_TIMER_SP804 for ARCH_BCM_NSP
Date: Tue,  9 Jun 2020 17:58:31 +0100
Message-Id: <afd290238d7a7b392aa477590f3d05f3ebb2f9b9.1591719237.git.mnhagan88@gmail.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
References: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_100137_868935_45E5D2A3 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mnhagan88[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mnhagan88[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Matthew Hagan <mnhagan88@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The NSP SoC includes an SP804 timer so should be enabled here.

Signed-off-by: Matthew Hagan <mnhagan88@gmail.com>
---
 arch/arm/mach-bcm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index 6aa938b949db..1df0ee01ee02 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -53,6 +53,7 @@ config ARCH_BCM_NSP
 	select ARM_ERRATA_754322
 	select ARM_ERRATA_775420
 	select ARM_ERRATA_764369 if SMP
+	select ARM_TIMER_SP804
 	select THERMAL
 	select THERMAL_OF
 	help
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
