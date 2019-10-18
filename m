Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAAADC302
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RciEG4Px83TVS8hpAOI4oYFIMY1iyGeGZ8xZtX3F/W4=; b=ZyKQMGAV0FWiTsuEb9MVCMRbO
	Rqn9BP/1mBs454VySoftQGkdgDqS08Jnoj4cuUJHbQIfxjk2MOF0GidTVi0kNvMa7J5CuaHTHVRpi
	ZByLD88MJ2Nh2Hv78M9YwF5z9uLDAaIXk3tpXf+mLFK/+9yVU/XOtNAb6A4Fny/cEz0D2CW1GIvIP
	De0lHO5JOZokA5AKomArSVsouxQw0cD2uLTmbaR6+Fed2ZJI03Ym7bygM18xrbLuVBRD3I2egkBnK
	XYTziSIGTPPjkWW0ytJ2aADwSiWHT99adEAM/FgNKAwNbfZXEL6Pxl0l+ggIf3/z6oCRLTFcwD6jf
	S7y9GKfbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPkv-0000mJ-MX; Fri, 18 Oct 2019 10:45:13 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPkb-0000kf-Oa
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:44:55 +0000
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iLPkY-0007y2-Ky; Fri, 18 Oct 2019 11:44:50 +0100
Subject: Re: [PATCH] do not export show_fiq_list
To: linux-kernel@lists.codethink.co.uk
References: <20191018103513.24096-1-ben.dooks@codethink.co.uk>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <9319967b-56da-1387-aaf6-261e72b84961@codethink.co.uk>
Date: Fri, 18 Oct 2019 11:44:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018103513.24096-1-ben.dooks@codethink.co.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_034453_947283_887BE264 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 11:35, Ben Dooks (Codethink) wrote:
> The show_fiq_list() is not used outside the file it is
> defined in, so make it static and remove the header
> file declaration (which it did not include) to remove
> the following sparse warning:
> 
> arch/arm/kernel/fiq.c:85:5: warning: symbol 'show_fiq_list' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>

Ignore, this is I clearly can't tell the difference between fiq.c and irq.c


-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
