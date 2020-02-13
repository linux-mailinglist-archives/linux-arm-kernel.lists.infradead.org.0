Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73B715B6D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 02:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SxIFRb6t1S1WyJFkw+jXeP1Yat+Q/mwf/lXfEwpGzw=; b=Vjd0/t6fnlLLnK
	GuCFYikpG5C9SHTcArOaA708MWzpURqWPXM5bDnxwlNuhyLrSMJzwIRdi8EGDG/U80ASwz0T2Eiq9
	SYvPfgp8ODeF5vF91qWq1XG6zYChobZ1DHUUqsHrMD4SIVI+RYk9+JjQUtEmHbOFTWp7sGN9wFNiT
	ghLvzhu8DZI8LBhUj9SM0RkNc/PVA5SWeAwS2BN8K65LvUzkC9VmiT5/lAitLwsrt+XpiSWyy/9S8
	cN21lDT2EgN6mGoem4HeVpQ1AmpRe+orAyhg9qq7i/AzP+O52HMslQnIOXSSojDlJ8USuHIfdF+F8
	ldSyz4nL1pMUdPWCb9Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j23Zv-0000rY-Pe; Thu, 13 Feb 2020 01:46:07 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j23Zn-0000rA-GU
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 01:46:00 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 78B77223F7;
 Wed, 12 Feb 2020 20:45:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 12 Feb 2020 20:45:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=+
 OiiUTivHdmH9KQ7jtR4n13EhH4lgC0fTu891WGMH+o=; b=JcQgXXp2trrWcrsw2
 1Ct3k2CYTajGRHmKw/H2oePHTHQ5PJiZJz25Ar6nTWxvAsVHEjttgUccXxU1p67m
 eEQf87GnD8B/TTUCrBQ7OXCbPGvBsCjAL2b6GIiXY+gZX7XkWQKRnNdaXLvFhFqC
 +4CQB/t4fNnBPQDfFuNEBObYjeN90eRay8QEbZjnfXe8YyxNAflWlE+Rusx5noSj
 G2JKaNNgDP9nS2J9IK9x8KbeuoBWtVWRds8XWWOlDqF6xvgtLjGCPG+w1Qdqvc88
 SzZMyg+2j2DAyQTQTU7TvLjlNXSOJr0lWPFVKkTf/uCO7EIPoorUxTi2X7K+n3P/
 c9FMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=+OiiUTivHdmH9KQ7jtR4n13EhH4lgC0fTu891WGMH
 +o=; b=jhimdcRUwwSpSESDDyMF/vkDPXwPUD7BmNSno3FXQHycd5Ntx02Xs4JFG
 yHk1WtAWWfhkKeDg8i/o7/jP15FiVulIOptLC5f9dsbSzZ1vWuowhyh0sbYY1nMj
 hBxiPVH6kGG5vppCL89NMEGg/XBwG1zhIOPGlrHERWLyaqSxF5eni2/qZaI/JS/u
 n2WBqIxWGjklmOc9zDwpXxXNUtAltQZPixuJZOXOVBjpevdwzfHcYd2o6dXIbzpj
 vo6m+hYxR1E2DVhGLdsBf6LddyhZMV/d8f8pVWYPsH4XcHLBUU8d+WhGkFzZo/Qh
 gvZKr3Ov5shbpNId3DDoqPM9Puzgg==
X-ME-Sender: <xms:T6pEXl12cMgxPGJZosP426IUR2MUAmZaJcRtvDCD6UK-0IxIQ31FTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieejgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:T6pEXm9bW1IA0QeK4VrEzr6oqFR--cwv2sDafJ1Q5KhUArQoUv2IHw>
 <xmx:T6pEXm2IZx_gxYZs32xNZQgyt5U2Pts4Cr1LiUe8TNCjzRBYeyJLXQ>
 <xmx:T6pEXp1i-agx7GLAH6EZLXEAj0NkpZPlPsWaWI5IOSaNVE9EKvcVNA>
 <xmx:T6pEXk6Iy9fgU_ku8WPn9kZv5HS7irhRgXj5OlLTkyaAhRoqHdhJNg>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id C7D2D3060A08;
 Wed, 12 Feb 2020 20:45:50 -0500 (EST)
Subject: Re: [PATCH 1/2] pinctrl: sunxi: Forward calls to irq_set_irq_wake
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20200117213340.47714-1-samuel@sholland.org>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <9103f638-b733-5f4d-1a64-ee35cbfd8236@sholland.org>
Date: Wed, 12 Feb 2020 19:45:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200117213340.47714-1-samuel@sholland.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_174559_623019_F7FE50B7 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All,

On 1/17/20 3:33 PM, Samuel Holland wrote:
> The pinctrl irqchip may be connected to an irqchip that implements the
> .irq_set_wake callback, such as the R_INTC on A31 and newer sunxi SoCs.
> In order for GPIOs to be able to trigger wakeup, the IRQ from the
> pinctrl to the upper irqchip must also be enabled for wakeup. Since the
> kernel's IRQ core already manages the "wake_depth" of each IRQ, no
> additional accounting is needed in the pinctrl driver.

Ping. Any comments on these two patches?

Thanks,
Samuel Holland

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
