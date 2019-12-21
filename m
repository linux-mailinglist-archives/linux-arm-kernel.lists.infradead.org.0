Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC91128788
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 06:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMmjrJwG1I70Tsit4zSWkLCy+5jMUrBPyH9+0Ys9iGE=; b=Tz3D583mEbMQPk
	h2FmPNqz9oOOnWMPh0Tqj2/kbI/LEipNYRpfl0R/vtqE02XdbTYGhZEUo/fMqJRf3KW3rtagCRvMd
	H3utZLVwYjjLMo/qS6giiwZkU5xw/WCunKhOGJC4C46YYMzZTEgU8seBXzvrYvYRSqa5LFvcwQiXl
	sCvQDORBiPDwO4gcZotHDBvcj9bY8CD5hiKZwcylI+uMF//WBUFMX4ewJr/uiPn04n9+7BAY8Bomd
	TbqD53W69e/AEsey3Qj+yQmLP2EcgCvC80tUj0rHWdf53SBS13qMjt4Cr/pJbonVt4pQuFEqzPAV2
	rDWN+SaAhZzOQYziWTwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiXKZ-0002rs-Mt; Sat, 21 Dec 2019 05:29:35 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiXKQ-0002ra-TT
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 05:29:28 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 80A41153D31DC;
 Fri, 20 Dec 2019 21:29:19 -0800 (PST)
Date: Fri, 20 Dec 2019 21:29:18 -0800 (PST)
Message-Id: <20191220.212918.1661751615125167321.davem@davemloft.net>
To: p.rajanbabu@samsung.com
Subject: Re: [PATCH] net: stmmac: platform: Fix MDIO init for platforms
 without PHY
From: David Miller <davem@davemloft.net>
In-Reply-To: <1576750621-78066-1-git-send-email-p.rajanbabu@samsung.com>
References: <CGME20191219102407epcas5p103b26e6fb191f7135d870a3449115c89@epcas5p1.samsung.com>
 <1576750621-78066-1-git-send-email-p.rajanbabu@samsung.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 20 Dec 2019 21:29:20 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_212926_951059_F9EAD46E 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jose.Abreu@synopsys.com, jayati.sahu@samsung.com, alexandre.torgue@st.com,
 rcsekar@samsung.com, netdev@vger.kernel.org, sriram.dash@samsung.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, pankaj.dubey@samsung.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
Date: Thu, 19 Dec 2019 15:47:01 +0530

> The current implementation of "stmmac_dt_phy" function initializes
> the MDIO platform bus data, even in the absence of PHY. This fix
> will skip MDIO initialization if there is no PHY present.
> 
> Fixes: 7437127 ("net: stmmac: Convert to phylink and remove phylib logic")
> Acked-by: Jayati Sahu <jayati.sahu@samsung.com>
> Signed-off-by: Sriram Dash <sriram.dash@samsung.com>
> Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>

Applied and queued up for -stable, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
