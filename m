Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B30A13875A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 18:28:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lqu8be42ydTkEpd3LRv45l6FHaZtZCyl+PacTEQg/5s=; b=WFn
	TWaGrpI5IvHSoXxZXcd20gBtzeHR8RaKyyW8MlsfGEa9Bz7BrvWvDry7QFxwAzRNEmjQiGacCVcCX
	9VpY1I31JD+taH1XN9wEMd965gYCwTvFQl3Pb7vpjmNLqxBN5ANAdKwy4KgzYHqBOqcFDFNIWYO8b
	s80hS25Di2QYnfMCyprfmW4jQzpyZsLwo05hKdZuG+S6vj0bZG0toqbsY31N10Bx2p6nTvDXm3D9n
	EAoVTL1k4W2Ln0EPVvQNlBc3ryyho90eRW25paSGtqxcduU/1jKQkVarX12kc09iNrgUVfd/c3dN2
	C5mMcERLjhWDBKwKlp/LlFCscSklLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqh2X-0002PY-DA; Sun, 12 Jan 2020 17:28:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqh2N-0002Oc-KZ
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 17:28:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id i23so3719992pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 09:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mWAcq9bb+JndPzUhrr5Pb2HRZwmhGDpzE1gJ4Awh0iE=;
 b=VaPlFfdOq+DlRixUbvY7uOaKV8x9tGYxMk/mMIztPXQ90iS7bPhb2v8tDfQ1G8ONNE
 EVCuFCVVFxt3Ic6pf6M+20qRjGABhGbYQDOSNKApv4NWmyc9Beb6njFrMqb0Bvv8fN1E
 lSYrIMWksLS9w8Bqb0JECSgxyuE8nL+DujYGRZ3pWPR77ZdTBFmAI1+yNKg960Ad6E7P
 +WZzexY1l34yY7/VuU1OUXaxh01vY15l+N5P1J+shALFh/kjVsOSzkUYffhAjnWPIBX1
 V6XdTGoL87JnCf+haztWChVF9/PwNVgEXSJGU6cp3q+XE5O+GY177IHscpCGy7E5+/LP
 gy4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mWAcq9bb+JndPzUhrr5Pb2HRZwmhGDpzE1gJ4Awh0iE=;
 b=tr6q0RmWlUjhYIs26XzY0IyhyPFubinSLBQ7Pdrcgn56F93EqOKYjCcsjnvuJBTLsC
 5OW0z/MWCMOcNsYAWOLi3e/itdG7T4RQTf8Mc7cF85Br52GGpbMM0z/VwmY3pkIkqeHP
 deVdOonkd3KiXwePOzzbTjBnyVQzrLMWqITy56RqeG1+1H8pbDKA1Q/0Gfh3Riyjgcxc
 0NgchnvDr/UFF8mJ5Af+SLHawO0eYisOX5E5VfOBpz4hYJ0Z+pILvF5wxfV8r8EHYOZr
 49xfiRUb5lE1xqBj2Svz8J9w3cHLGAQYqA8ykSC9IFYI4qWYn9bqn56vjOrjTUa8zvek
 CJnA==
X-Gm-Message-State: APjAAAV20HwwUsmCfA+e2/EnMMzEMAkfPQWLGg8EniJ/M64OBFwFvDdq
 hn9afgonjyVdb8adztqnTkQ=
X-Google-Smtp-Source: APXvYqzqWp3rd2E4Gh5ieMTKf/wQ6uq1DjhlX73ZEhRTeq9FbLjUfguGvxj3jMgwUU37ZVdRyuGCUg==
X-Received: by 2002:a63:a555:: with SMTP id r21mr16539281pgu.158.1578850111207; 
 Sun, 12 Jan 2020 09:28:31 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id w187sm11114777pfw.62.2020.01.12.09.28.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 Jan 2020 09:28:30 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: kishon@ti.com, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 p.zabel@pengutronix.de, yamada.masahiro@socionext.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] phy: stm32: fix using plain integer as NULL pointer in
 stm32_usbphyc_probe
Date: Sun, 12 Jan 2020 17:28:28 +0000
Message-Id: <20200112172828.23252-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_092831_681845_64AB0376 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The parameter of devm_reset_control_get should be a pointer, so fix it.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/phy/st/phy-stm32-usbphyc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 56bdea4b0bd9..8cf24c330f5e 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -340,7 +340,7 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	usbphyc->rst = devm_reset_control_get(dev, 0);
+	usbphyc->rst = devm_reset_control_get(dev, NULL);
 	if (!IS_ERR(usbphyc->rst)) {
 		reset_control_assert(usbphyc->rst);
 		udelay(2);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
