Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8A4BB66D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HzU6jVH9eh37d1HE3aX/hfTngbSGNpBXVVRTN10HhJo=; b=FJ4H/+vBb45sDzerkr0CpeFjYH
	DLbisP+yKn4VLpUqfFjZC0wMVxKLnRuKcxwXAf72sX8SN/5fpWkeZzqRdX3CllaARxHmikhi+rEqD
	IhkmNey0k89OQuHNRvK1hTvFugWBwGcN+V8n5baRUCg26bO3O4ueDr1wib7wKn7WYyGoMuutvhVGb
	Z14uYKvq8qQXD6w7K3g8ws+AZREg8cZ3p9+TC8ACbipPc/dAXtGqdCAqzmu5Bwvr19yMyxUNP7HzS
	MUItXPPQOAi7aKsZw6GJ3lo44NwW8Y0b7xE1yToUNNEKVde2mZZhGrdB2+DTsWGiorwJCCBRvpO2v
	HfFOEHFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCP8O-0007Ia-DI; Mon, 23 Sep 2019 14:16:12 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCP74-0004xL-A8; Mon, 23 Sep 2019 14:14:52 +0000
Received: by mail-wr1-x436.google.com with SMTP id v8so14178474wrt.2;
 Mon, 23 Sep 2019 07:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xDojPBQ0esilIp1GUWD6dVVMPDHyVZuOXZ5O6hXNfas=;
 b=ec7+e/vOexOvTupF4N51DyUI9IK+tzeCpvquHyORkLq46BBh5H1XRCPAgK316lNwp1
 D7+8f/SzrN8b6TBnPmAIQaclhWgoXOsxC9ygJ8ft+vBjwRPRPlkc3HjBLQMb3KvAcpg8
 Le1f6VFKWhQ4xXJiv6POOQaq7spIJohCaaRTO/12bWV522WIpZbVaTEVlDxJG2XwwAj+
 zUWP7PIo9IZHH6NAXPRwYsdKOG2YfrRbt4VyBkw2Eud/aHYU18ZKtQpiZsw4DmX2EaEX
 b2/FIX8uLF1FKHTy/WrZVX/TpcfIh+xoP45nWV/wJtuP8OVqDcFzDRPvHmPjnBgF+oqm
 d7pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xDojPBQ0esilIp1GUWD6dVVMPDHyVZuOXZ5O6hXNfas=;
 b=rvkTA+yaKhvaT+pLGn7Mt7aeyVHMH1VbLDcPPcmKK2PnLSOc6y84UXPN/d7ZakEElE
 pwaxHUP9P2EInFp7E+8Jf096H5hqpuhfVoymbiojyD+QRubGNDYrz0Ta706lmrTUkPQ5
 q0G6rHhnE/9B3Jxc2j0qRO6M46G6I8eyvpdHScxVXXyykBbS1bw2zlDPe/LsglVHiVcu
 bn0qHOdP4XgA1SIoiDMRQmuj7t1l5crHyqGGj40CQVbdn3ByAK3XHQvmi+ClKy/VX1SU
 VpmsBMfbJYtaDR7jF8enbhOltbTsXyto47Zbe9HRnZMqOYJr2v33vVO6sdP8HyLQPswi
 eNgQ==
X-Gm-Message-State: APjAAAUbA36ab/Q9jaOzIqCApGelqycsvPuXIB1Kb2KWezh0cEcP9qvZ
 xCRp+kLPTyFEljqfB9Lx90w=
X-Google-Smtp-Source: APXvYqw3564AefETCZx7N1ORzHLmEWXRNjXvrRmIeHPR7ZbKIzG3YpOhOxBKCySAVsDdCkGT6koM1g==
X-Received: by 2002:adf:fb8e:: with SMTP id a14mr9614815wrr.304.1569248088812; 
 Mon, 23 Sep 2019 07:14:48 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id h17sm7001700wmb.33.2019.09.23.07.14.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 07:14:48 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/3] dt-bindings: Add vendor prefix for Ugoos
Date: Mon, 23 Sep 2019 18:13:54 +0400
Message-Id: <1569248036-6729-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
References: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_071450_760703_6CA92B20 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ugoos Industrial Co., Ltd. are a manufacturer of ARM based TV Boxes/Dongles,
Digital Signage and Advertisement Solutions [0].

[0] (https://ugoos.com)

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbb..d962be9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -965,6 +965,8 @@ patternProperties:
     description: Ubiquiti Networks
   "^udoo,.*":
     description: Udoo
+  "^ugoos,.*":
+    description: Ugoos Industrial Co., Ltd.
   "^uniwest,.*":
     description: United Western Technologies Corp (UniWest)
   "^upisemi,.*":
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
