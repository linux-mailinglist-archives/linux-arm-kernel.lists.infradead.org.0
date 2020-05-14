Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D4A1D3DEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlT/uhJP3lvNI4tI2YpKrHhhb5YggbftbU9PlvXlRmk=; b=Slwsvcc8Q8aWZ+
	X6/oKj6XEdH1LI5MePBDYlKVnyRmesUbt3iIrPHIOHJw7R4NB79dVoP/jHXBSmuOZOh9VV/QvxVME
	uegCRxRdnYgrOLeHRnDczyvZg1bO4WGFZBtLkBDMFjfj9Gzssh4DYMiNq/PFv+0F59ki6BgYnDyvu
	VQ6U+p7rKowlTh2N8M0E4aGBb2yZCJ8akk02Cwu3NXB3c0Z5Fy+IGbADR+ehkVlxIQ4aegNEmFObC
	UACQX38YWW5jkpUmVgsgqz+5QASZN1/leaXxMrhYZ9TwbBgAYE2V89HD+Jnd3JeZgrAz4pinHjxDV
	ZXq4b22Yixr49TD7nS7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJr7-00026j-8m; Thu, 14 May 2020 19:49:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJqz-00023f-Js
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:49:14 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 33386128CF131;
 Thu, 14 May 2020 12:49:09 -0700 (PDT)
Date: Thu, 14 May 2020 12:49:08 -0700 (PDT)
Message-Id: <20200514.124908.1791254966123977524.davem@davemloft.net>
To: vkoul@kernel.org
Subject: Re: [PATCH] net: stmmac: fix num_por initialization
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200514062836.190194-1-vkoul@kernel.org>
References: <20200514062836.190194-1-vkoul@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 14 May 2020 12:49:09 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_124913_652444_49BA13D0 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: rahulak@qti.qualcomm.com, alexandre.torgue@st.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 netdev@vger.kernel.org, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vinod Koul <vkoul@kernel.org>
Date: Thu, 14 May 2020 11:58:36 +0530

> Driver missed initializing num_por which is por values that driver
> configures to hardware. In order to get this values, add a new structure
> ethqos_emac_driver_data which holds por and num_por values and populate
> that in driver probe.
> 
> Fixes: a7c30e62d4b8 ("net: stmmac: Add driver for Qualcomm ethqos")
> Reported-by: Rahul Ankushrao Kawadgave <rahulak@qti.qualcomm.com>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Applied and queued up for -stable, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
