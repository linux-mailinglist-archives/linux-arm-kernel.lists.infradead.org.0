Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9AE858A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 05:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fs0Q7nliC0rDgDZ7gee0Lm9x/ejdcoNeTZBA/sSi0hE=; b=grWc7BF16LXSghLMfrulrf+pL5
	SpjeFDYTFXvKDXd2bV9StY3O4YwnjCNABoTqRB3UPW4QMHJBGbHM+dwerV6MIXe7Y+kkOcpuXpROW
	rgXqih1tPmRZ9/JJY2jaFzIieHDKALkWl8L1+IlG+9Pm6qFi7lN8z/1rRShZ6WacIjHZl9+tbs043
	KnOEcr7dBr6xrhcHRWIEQFNCt6/XLqQQBe7OwZcYxjIluw7bzR9fYgz6e8NlLorNaVqwELGnn8kwe
	nFd3i2orjSsDNHcF0VuHzu8T501hge7LCg6q9eA2JIbZ2GnzsOuvHL3cqOG4bsK129G8dm6VOVgj8
	RGxTnQFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZK1-0000XM-1C; Thu, 08 Aug 2019 03:42:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZJU-0000LR-Qk
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 03:42:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id i2so42946174plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 20:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5jMXrFkjRDxZEak/KeRUnh4UCld5MbB91tFVhNYMLPw=;
 b=PWgHHS0qNOhHpCy5KKESZ4GVaCpzQ+fl/ugAs1shJwv7WXYzrXDC7SuAoKMP9VU/tx
 o04A/xw4LcenrEqFf2azeE7WFh2Ewno/7aBRVYv+JJAN8JPRO3h+Kk1LzvAi4JmTiG7X
 z3sn+cKYOGXQUyRqRjEdXPuAqqtsUuaLJeW+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5jMXrFkjRDxZEak/KeRUnh4UCld5MbB91tFVhNYMLPw=;
 b=BBHcvBoLStXNsS9Won0qRhZLUZ6dVypsFTJB99RLQYKv9mCcqglfoVr81J+JuNYzOF
 kM0bbQhXt7aV/kbBCx87EiqLr2d4FVRm9BKSH7It7pxIrBLq6pCXj/8l+JEDvv3pBd+l
 ihAx0C4c2EVq2kMv5m3UyCPP1UREgdeXb9XU/SsJGHwJcmYfqjDgG55OlqYWqZZCeL1X
 kHhWE3y0cQaPD3d3IOCx3nAnNMZhOLgZh0ZvVAdnrhTWpUgcfIroVp1g/SUrpO0YWn4+
 AJJDfZspckzStvIKUdS9QnWiQR/nY7IqE/3l+Im0gFbr046LMfu+DR1w2u/juRAevZjH
 TICg==
X-Gm-Message-State: APjAAAXZG8Zu2gW5irxISyYelAAGTWNmS/Zzm3Qw4cB4RjAdSMZPxzYN
 6WrdnwHRLfglkIx2aBzjs6F1vQ==
X-Google-Smtp-Source: APXvYqzJDoCufDWHxxbnj+8ZDUw1mT0489ya33GQJzf7bEfLt/OiDvuJEym/afEPtn37iqiNDeuFOg==
X-Received: by 2002:a17:902:b415:: with SMTP id
 x21mr11335513plr.287.1565235723861; 
 Wed, 07 Aug 2019 20:42:03 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id y14sm46425482pge.7.2019.08.07.20.42.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 20:42:03 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v1 1/2] i2c: iproc: Stop advertising support of SMBUS quick cmd
Date: Thu,  8 Aug 2019 09:07:52 +0530
Message-Id: <1565235473-28461-2-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
References: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_204205_048874_27F394BC 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 linux-i2c@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lori Hikichi <lori.hikichi@broadcom.com>

The driver does not support the SMBUS Quick command so remove the
flag that indicates that level of support.
By default the i2c_detect tool uses the quick command to try and
detect devices at some bus addresses.  If the quick command is used
then we will not detect the device, even though it is present.

Fixes: e6e5dd3566e0 (i2c: iproc: Add Broadcom iProc I2C Driver)

Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/i2c/busses/i2c-bcm-iproc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
index d7fd76b..19ef2b0 100644
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
@@ -790,7 +790,10 @@ static int bcm_iproc_i2c_xfer(struct i2c_adapter *adapter,
 
 static uint32_t bcm_iproc_i2c_functionality(struct i2c_adapter *adap)
 {
-	u32 val = I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
+	u32 val;
+
+	/* We do not support the SMBUS Quick command */
+	val = I2C_FUNC_I2C | (I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
 
 	if (adap->algo->reg_slave)
 		val |= I2C_FUNC_SLAVE;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
