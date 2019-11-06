Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712CAF11A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9lyDYGp3/xgik6wMxaiMlw0bg1el3FtmId9I7ICFvw=; b=ifs+CDeIuiF4yJ
	C2u/2C24Y0WhmD77ilyVTLNoPH6osSNCBQjuPqAvgtg/07nv0ajqcYcKmflHSRxWDUOjwyQ/a07j5
	mElOiEaxkZylwCM4grOO6D0GZHc49Q2kyeRK6f4IGyCBIuEQVBe3bXrNCxu4V7kk8VUPeZa0cBmhU
	4fmRST5/AZY9l3qZyrwbbtFdjTKyWvxxmQFgXoLyWfvUyYuDLctZpV+KTmjXtfW0KQC2gsSCbagD2
	3o6MDi7iIygPsZyFyvULzFsy3qQcTzVcz7M0wYHWgXzeczdpYiLn8blW5B6EiDY9P8ck+zNs845p0
	SQDHGXIzJKiRO3qbeRPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHCR-0002gw-58; Wed, 06 Nov 2019 09:01:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHCJ-0002gM-68
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 09:01:52 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iSHCH-0000o8-DO; Wed, 06 Nov 2019 10:01:49 +0100
Message-ID: <159380b7ec799f15269a4a6e8f2482a02748e6fd.camel@pengutronix.de>
Subject: Re: [PATCH 0/2] Couple of reset-brcmstb fixes
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Florian Fainelli <f.fainelli@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Wed, 06 Nov 2019 10:01:47 +0100
In-Reply-To: <20191104181502.15679-1-f.fainelli@gmail.com>
References: <20191104181502.15679-1-f.fainelli@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_010151_225105_D35B99FC 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Mon, 2019-11-04 at 10:15 -0800, Florian Fainelli wrote:
> Hi Philipp,
> 
> This series replaces the previously submitted fixes to the reset-brcmstb
> driver and also fix the dt binding example.
> 
> Thank you!

Thank you. Both applied to reset/fixes.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
