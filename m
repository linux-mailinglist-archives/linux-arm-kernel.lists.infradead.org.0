Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FCC1DB1B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM3Zm8glxE4bblqcaI7r1ZbalC0TuFSR+CpGNulMooc=; b=CuBx0xTCJC6s4I
	GL8kkWKDUs1QqxM38C0LhQ94pjZFCYEa0cnyZ33RT8cs8pqPclLWqqCOJwSWzIiNVRil49TcESdzS
	jgXcphRozy4o1dhK9lFp25JNNJ7n9OFSPAZeaMACU+/vL+uAgacwhlcb6uP6h1g6oGrqTl/HIKtiA
	EluyU74g+ssWz0Ab6vtf0OE18WXOx48WRGn8WsyAO7KwqD9JtSPLKS99FGb8y/i/qurESGCRlETty
	MGnZzgOGR9vuIN248HsZOq0VsNh8ll0qTbGwmJ924MToZqs8a2gUk4XRJvxd48D6gWJ7G8qPdbzqe
	XXoSLMzkJIfIBLQVSJjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMu0-0000uC-Rj; Wed, 20 May 2020 11:28:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMr5-000742-3F
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id g12so1558184wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=hPUb+38ZdEA5j+6g5LHfDwWL5eh8efRY1B/ixdvGsNR4XuXCt7sgEl2KeRlJ01EfHE
 EwHOGNPCwWkPsPu0H2xE7XhCrvUD+VrSuLITBNLMrGEkQ7QcY0s+80+VPg1swVLHURWP
 xHwAimb0cSrRccyWhXbCLPH8OB51GJEHSGjSJ1ZGPPkIvhUxXcjhQQCPpR2FZ6iw+FDE
 pMyarLDzJYC1+xU12NnxQm+UFb9ClIV1caF73rLdPiOEs14KFs7zfNQ/MYOBYO6BxrGw
 sw8ZuuR4q30AfOxECvB4qm/LO3wwL5t1niEhB547XDw+i4/coyqEUjEheZS3hEKIEu87
 psOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qePp19LiRiOBXtccpgQ+eI6GUOhz0auoBWQ11adkXY=;
 b=TrsSNEgjXOuYj5MaokIxA1Ce7lwqc5AKBeoXnyJc33byclRYhCBpJWkEFkB53rX2Zy
 /aCJ/+MPqk5OgnQNiGba3LLMzYBtBrBThMAhGQBLsImwDBgmXM//1/1+7QbIkRNPzpO1
 AuDkM3s/hyV7tSAqBjAg/rWlSUtMfnCc38UOFMWTS1ZrMTRW85yeEAF0qim3JuTc4gw3
 K0aa+cOozKBr3pf/qO9Ywn2vrqMYSDFU0P4DfAZmslTdfK2nTX/XBTtS8XI6cz55EcQU
 SeeRbyPUqm1Zuap8Sc1ESm3TiLRR0bR9778U8KrwhPYo93umj+2ufK54DzGpYVYpx0pA
 8zxA==
X-Gm-Message-State: AOAM530/L+bYdx+Bc8XzcEuzJ1x7mEgJ+0Ze7svymeOudd1zdRQkUzk2
 ccTSTbjPCvDAh9NY/eCc9jMlKw==
X-Google-Smtp-Source: ABdhPJz8mA5+qKq8TXk4kO+lD9LIsszxlWW/zHrrIHr4SjCq6c8Fk/Cwl+qGKKL/YPBN3XFy4kA7Tg==
X-Received: by 2002:a5d:6a83:: with SMTP id s3mr3877082wru.308.1589973945873; 
 Wed, 20 May 2020 04:25:45 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:45 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 09/11] ARM64: dts: mediatek: add an alias for ethernet0 for
 pumpkin boards
Date: Wed, 20 May 2020 13:25:21 +0200
Message-Id: <20200520112523.30995-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042547_147538_2A185939 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add the ethernet0 alias for ethernet so that u-boot can find this node
and fill in the MAC address.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index a31093d7142b..97d9b000c37e 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -9,6 +9,7 @@
 / {
 	aliases {
 		serial0 = &uart0;
+		ethernet0 = &ethernet;
 	};
 
 	chosen {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
