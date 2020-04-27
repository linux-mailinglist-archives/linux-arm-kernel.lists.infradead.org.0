Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A75E1BAE48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ci0bOHAGskxkSkL9lOdYodauNcJpcHFjN9AHe4K+djM=; b=ewcJ900So/xz6K
	/TG6+QszUi/WLiTIdf47teF2LlMHfmK5R1Wq3APb7S65us9MI093fq3lPm0STzOjHnpUPjznIFGqe
	3mlU3BnD6XzmnWQX51BJhAS25BcrDi1gq+ZIyrkWTk75tV/KrhdvXZh0HGSq7EwcOI2fK/pF0Dvl2
	gw2RtXhXN+731DhRISshxDdd5k04YVWY4GzF9DHKvuD32JGpqT/TPrKy+kidBpOmA4WLKy1ObQE+j
	/oEKNSnpo3PnN/2VvpjU0wFY9BClGK6RKKwQYHexWf6JtXLm9q9Y3JqnBkDD6pKofCvGIilknilqo
	c6f4x6/sWQuCQ6V+gLWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9fW-0003h3-Hd; Mon, 27 Apr 2020 19:43:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9eD-0002jO-58; Mon, 27 Apr 2020 19:42:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9eB-00007W-KU; Mon, 27 Apr 2020 21:42:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: swap clock-names of gpu nodes
Date: Mon, 27 Apr 2020 21:42:27 +0200
Message-Id: <158801649141.50507.12679129425303471594.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200425192500.1808-1-jbx6244@gmail.com>
References: <20200425192500.1808-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124233_191988_C20EE01D 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 21:25:00 +0200, Johan Jonker wrote:
> Dts files with Rockchip 'gpu' nodes were manually verified.
> In order to automate this process arm,mali-utgard.txt
> has been converted to yaml. In the new setup dtbs_check with
> arm,mali-utgard.yaml expects clock-names values
> in the same order, so fix that.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: swap clock-names of gpu nodes
      commit: b14f3898d2c25a9b47a61fb879d0b1f3af92c59b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
