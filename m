Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241591894FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 05:38:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8IwAQFFPFhtPIYireRBTpkYYGYbG3Gv2i5KqGk756U=; b=ldDcC5CYzzhA+7
	yhd9Le23Nx6EH550NC1RhNv/31Phs2ThcuF39apSKwp9uduP7jzYU3CRmRFO2aU6TOu/hBXXU9oVc
	sFSH3s+M0kMhZGdtq7c2h7KJ2+CzPTb4Zm96bGzyy8fOjMslPRMPRSOfAA0jL/AfoF0Z+g/SfmUqE
	lxM88ldJwDBlb6JfK6brh0N0FxiNqYH6k4RejGdTzlMAiJIQFnC2gJhS77nR+H7gYS1OpVf4Ym3fX
	Hy3TU6wPeAubKUrlUNLPio0OxW6vvmGotujVI4jw6CKDRZK2tSQOlYgVZf32d2mGKc0PftpdtZoma
	Vo0GweNbSmNglMKw4jzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEQSt-00019E-GL; Wed, 18 Mar 2020 04:37:59 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEQSm-00018p-81
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 04:37:53 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4B979120F52AA;
 Tue, 17 Mar 2020 21:37:51 -0700 (PDT)
Date: Tue, 17 Mar 2020 21:37:50 -0700 (PDT)
Message-Id: <20200317.213750.1737351964613250216.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next 0/4] net: stmmac: 100GB Enterprise MAC support
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1584436401.git.Jose.Abreu@synopsys.com>
References: <cover.1584436401.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 17 Mar 2020 21:37:51 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_213752_289007_C9066583 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, Joao.Pinto@synopsys.com, alexandre.torgue@st.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 f.fainelli@gmail.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Tue, 17 Mar 2020 10:18:49 +0100

> Adds the support for Enterprise MAC IP version which allows operating
> speeds up to 100GB.
> 
> Patch 1/4, adds the support in XPCS for XLGMII interface that is used in
> this kind of Enterprise MAC IPs.
> 
> Patch 2/4, adds the XLGMII interface support in stmmac.
> 
> Patch 3/4, adds the HW specific support for Enterprise MAC.
> 
> We end in patch 4/4, by updating stmmac documentation to mention the
> support for this new IP version.

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
