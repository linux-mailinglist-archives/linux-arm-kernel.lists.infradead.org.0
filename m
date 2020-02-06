Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310E815481A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OCyaOi44lNl+EQu2j5xl7Ej/fGoZ/nucK3NvxX0oo1Y=; b=o5g8o5pEvlpaAv
	x4TzgLx+DuKcA309hNA+DRxy49EAB6C127xQtIeL1ja+vwZm0mb0+DlHyiJT1TIhzim1Zr+iYVHGM
	zR6i6WFGg+VnOUpF7IU+t9kjrddRpGkeXD6X2oa92Qg5K1a7m9ROnd5Hsdv/7IR3OE7irtmeYWh2i
	H2PX0oOTTkFXNbZd90D47lMp42rV7tpzpwyQH3Hwy8+rlikCxWKKWEcaLNLfqo+TMVWF/4SuXNVqu
	4qz4ApIIb/NhbJ/rvuqXmDwJI5sF6QUZicvDpZvCBq1lIIFb2/fiIbhc8ZZ4agU+vOVDLemN+Aj0q
	M+PImfO5/tMLw07nB6kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izj6n-0002L8-CV; Thu, 06 Feb 2020 15:30:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izj6a-0002AS-H9
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:30:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id y1so2477226plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 07:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yvImeWdanhuXuKTpYgc+fUvWT1XXGf47f3QA3cS1IIo=;
 b=rFy8JI1vDm33O8mChanZAaw9Ljfkv2cbVdDfPeB6ygWnADagveeIi5z8zmtsfjhtXk
 tX/Hcd+yx6frFoD5raNVuvjk/3vnNIdFDP7R8yiJy2CxUbmqvk6e7GJoqIFIg2Byj4EA
 XMSjcshvC9HFUwkmuc2dZP0x5lfcWssoZVFuunuHnSZEuTX5HfAQzUJjQIz+PQPbmwz8
 GKRiviOt/4ZkcDTyuXqcrq3xuyinxw/KC2HxZAzjL+V+pTp1uHOJC7Tv01vRNfCYGtkK
 4ATt7SzL7W7MvrYlowHvzlAmdqN+Y6UxmRwxpRZcHWZMlv4o6zEfEhISBxlAbX5xTxcC
 dOAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yvImeWdanhuXuKTpYgc+fUvWT1XXGf47f3QA3cS1IIo=;
 b=eGxF/R4dicH4LvDPVmJWB9BK06QEuUukxuqA8+/Y0EnpTNiU6+8pYapTbUeUJqynDi
 u/iYIcc9ZeAXA3ogMR28ZPMMUVhAWiZ5THJSGoVbgGbyVXihqujVPk0kyw8qicsGQeRB
 fzniCZfokNpMqbksAvog3CB7qKNzOFsR9ELZDFN2V8wsM50WSAcYr25UOk3PtbmrZk7y
 ow0csX1yaUCNE/tch1wHD2ShU5y3tZI1Y6vBOjzxFu5hG8bS30/YB1Sh6+vNd/Qnfn/I
 hx5lmpXjYf4kjAU9ebWwI5sB2jtvYoliy6w/vsH3obiL601UjxqztEXJVgjrTHysWn1V
 9Kmw==
X-Gm-Message-State: APjAAAXujlog0Zz2PuhWyxxQDgLP2pMFPsndWRxrFYI0VQmxttsX8NfG
 Pdfl+VrgY7pZKBqgvdBC5SA2CEkf
X-Google-Smtp-Source: APXvYqzpVmwc8UDf4PLytIuzNQu7ecLLGVgM3QijN3zs88b3yKr+R6UlvDt1Mn1NA3D4q/iXZ4uqmA==
X-Received: by 2002:a17:90a:2ec5:: with SMTP id
 h5mr5063197pjs.79.1581003011165; 
 Thu, 06 Feb 2020 07:30:11 -0800 (PST)
Received: from localhost (104.128.80.227.16clouds.com. [104.128.80.227])
 by smtp.gmail.com with ESMTPSA id f43sm3879247pje.23.2020.02.06.07.30.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Feb 2020 07:30:10 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: vkoul@kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net, mcoquelin.stm32@gmail.com,
 niklas.cassel@linaro.org, netdev@vger.kernel.org
Subject: [PATCH v3] net: stmmac: fix a possible endless loop
Date: Thu,  6 Feb 2020 23:29:17 +0800
Message-Id: <20200206152917.25564-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_073012_575521_925B4DE4 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It forgot to reduce the value of the variable retry in a while loop
in the ethqos_configure() function. It may cause an endless loop and
without timeout.

Fixes: a7c30e62d4b8 ("net: stmmac: Add driver for Qualcomm ethqos")
Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---

Hi David, I'm so sorry for that.

v3:
remove an empty line between Fixes and other tags.

v2:
add an appropriate Fixes tag.

 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 7ec895407d23..e0a5fe83d8e0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -413,6 +413,7 @@ static int ethqos_configure(struct qcom_ethqos *ethqos)
 			dll_lock = rgmii_readl(ethqos, SDC4_STATUS);
 			if (dll_lock & SDC4_STATUS_DLL_LOCK)
 				break;
+			retry--;
 		} while (retry > 0);
 		if (!retry)
 			dev_err(&ethqos->pdev->dev,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
