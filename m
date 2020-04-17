Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683711ADBB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lr09Q4IqaHi7+yz30L/iPFa3vpPi/4BHmXtYGIFBsgM=; b=qo3
	AmsFr9RuoRbeEuqJ6VvB7YFWsTf+btsDwvEX3NraozIco6mfCyB71IbD/VzJv0YtIw/Ul6gp5PlIg
	c7zzOsTw9JPvODycd4eBEuz0GM46BgeLwP+PVlECPAnJ0vZTgDE8JjMjiucYYS0ODTmzbKw/vIZL/
	JFzq40puKhArntkI9Xl9pYGizKpyZBEwDffTOy6B01B+XWAkpRaYM/NQ660L2vY0wclJlpM0v/C59
	D2CgPmWyIGDR727C77yegPVJOY64mk+kjpdU2JFUq5+NdhQ4g1gcg9QBfCUgjfv3eIyTXJ8XPxrLs
	GjPhJes3+UujznS4D8XTTpJgS0/jNkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOh2-0004w3-9T; Fri, 17 Apr 2020 10:57:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOgu-0004ve-Ah; Fri, 17 Apr 2020 10:57:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id d17so2509405wrg.11;
 Fri, 17 Apr 2020 03:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sd4wlffcDUJn6Is+ybIxeg/rBrW/CCyK3C6+QSMdYME=;
 b=gjdna/g3IzY/pyWOBItBCeNMdcUr+uO10O8QuvDpW60z5OqqNmORxi+TYBa/LRV414
 zmusD26KSyJVJnoErCLG/iKn0m/dTxT2/wtYXzyOFUk7o50ahvsYTvTut2zXF5U3CbAO
 HEV8ACDi0DY34sWlmqPb1KjNFsBOMLdBiLSsGz1DSvRyxZuU+L8Y1/HPLcZO6TMrchp6
 OqSa1uuhtnqCqQUw7TruoP92l4Cq69kJskAi73jbwbazujr7rP2mdou5e99rW2r8+tL3
 4dANdKV2bCsU23nbZDQk81Of0lMoNT/GJTWEXiEAcdKj1aaEdpRaLPN5gvgpg7rbLIuq
 yc5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sd4wlffcDUJn6Is+ybIxeg/rBrW/CCyK3C6+QSMdYME=;
 b=S0VpweZ0sNiGjKkLuVqinDZwZPVxDcccc42PXL0y/MRopKvRE4XQ5KyU57a8ottP0s
 +0hvd1vVpHHqrwV6oZWt2Qi0n7Zv2ua8FJ1EeLGvgVDflvsY3EnFijjGo5GuILnalbDd
 T9QuMr/P4h2jzgDc+/3iUQdjt5Oog9yW0M+s/DDGNDHnlIygF2wUIILPGePieAu0B5nt
 8zPLqwkr2wWqvc9NAOkgcnQtCqJx5W8Mg+dgcioFpKhsDPzej6FCVbTcOmGCOP/wR3bE
 kY/BE1FMjj6l187epaWDVbLCvTD0TFRs8T+SJSQPlKM1oAB9w7i5ZEVCc9jVbdlzjdlB
 RIVA==
X-Gm-Message-State: AGi0PuYZnUDB3o8gshLPwMDRyjTSRO2x6hRgubgU3L+fz3cpWztZbKX9
 jTS58Gja838clqhxJyGTE1U=
X-Google-Smtp-Source: APiQypIg8WTXvGq3JpweHchn60zYamjb/Or2vqhi0jfvt7lqZWVeLMjnHZZ/4dWF9Mv3SS3R3JAZhg==
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr3230178wrp.82.1587121066885; 
 Fri, 17 Apr 2020 03:57:46 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i17sm21410274wru.39.2020.04.17.03.57.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Apr 2020 03:57:46 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH] arm64: dts: rockchip: add core devicetree for rk3318
Date: Fri, 17 Apr 2020 12:57:39 +0200
Message-Id: <20200417105739.3718-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_035748_368774_5D6F0EEA 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rk3318 is basically a rk3328 with improved gpu,
so add a dtsi based on that.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3318.dtsi | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3318.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3318.dtsi b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
new file mode 100644
index 000000000..a32f771bc
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
@@ -0,0 +1,3 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include "rk3328.dtsi"
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
