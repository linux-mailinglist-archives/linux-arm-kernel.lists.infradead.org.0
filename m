Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 358AEFDE81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 14:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uz1MC3m/Mv8W3bxs6xrIffHKe1vD7coiIHrXiU/kYnc=; b=s9FlPwOsww5pH8
	K074BGxxaLLJrL5DU3IH0LjzsShBC+U+Df6IlOGJXUBMq03QLNMMY9q1O6mmEz6Kj4PoY0kRdAIWs
	bZBsdinx23/kcrGl8D90wmmqBvoJHNdDIg+cfYvUaWIlYbVkBgvYTFxvthJan7Y5uHeyzcNzk5Fs0
	Byh0sr6p3xAkVXqPx0xvFzA/qFx/z51+WVYYgoW8kzHo0gXIOUO+V2rrXAew/jzLGMCQMb/858FvP
	g2QT376eRWhS97PHmcQS/eiqNXbDnqsDvXpyWKJSn80bCYymKfnncTmA3qd9tNIxFlIvR09N4jdnD
	NlNpDi4McTIU5cR+ROfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbEs-0002fY-PW; Fri, 15 Nov 2019 13:02:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbEm-0002fK-3L
 for linux-arm-kernel@bombadil.infradead.org; Fri, 15 Nov 2019 13:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p/UoGTxsjNouPk4+iH3/uEjINbbCS3kX+J9hRQge9rc=; b=zw9S0KUvinFEXSUF6VQEpHBXw
 H6G5w/xkJaODXUBrePJVdcLLrYcJoVGxENgD5tqAGK+W/RieRG6c/4mo9QFMO3ViNxMBhugd13PhX
 U3n+AdF9cNJ/w/yEkvH7uB8wKbG6z5DJC3b6JbLcxGQf+8D3DTcU1qDBg3hspC+qyFVLX7K0/ZEP8
 hh11rOWlr8g5RrRhsFdiT102S0S9mJrnO+OMRnCp8iJ7kAtY2tm6varr6TuydpwOS5oZtVJTfmMxD
 rKSfxhNjKbHicAn475GkkOBljBpywhmCDbRDoDMQQxAvboEqm4YXW0uV/2m1yl16d/fkPDAQMUxdn
 4lngmTsuw==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbEi-0007vM-0x
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 13:02:05 +0000
X-Originating-IP: 90.66.177.178
Received: from localhost (lfbn-1-2888-178.w90-66.abo.wanadoo.fr
 [90.66.177.178])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 55AB2FF805;
 Fri, 15 Nov 2019 13:01:21 +0000 (UTC)
Date: Fri, 15 Nov 2019 14:01:21 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] rtc: fsl-ftm-alarm: remove select FSL_RCPM and default y
 from Kconfig
Message-ID: <20191115130121.GS3572@piout.net>
References: <1573252856-11759-1-git-send-email-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573252856-11759-1-git-send-email-leoyang.li@nxp.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 YueHaibing <yuehaibing@huawei.com>, lkml <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, Biwen Li <biwen.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/11/2019 16:40:56-0600, Li Yang wrote:
> The Flextimer alarm is primarily used as a wakeup source for system
> power management.  But it shouldn't select the power management driver
> as they don't really have dependency of each other.
> 
> Also remove the default y as it is not a critical feature for the
> systems.
> 
> Signed-off-by: Li Yang <leoyang.li@nxp.com>
> ---
>  drivers/rtc/Kconfig | 2 --
>  1 file changed, 2 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
