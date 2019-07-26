Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C71B764A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ca+ewlbuyI0ZtiJCRpBmnroCo545me9iem7jn7f/k2s=; b=DOtztIG4IzlVem
	GNGqZlta6VyEa38JJZL8oqziywccSiWlMnxv92OPKXy/WzwONa+lt3P+2cvHVxBigEyCdSIYmF0Oj
	WiyuA08ZAwGjQ2Iapxtv4WkO2BA3AYnYWDSS7ftH8cS4ZwhFRGr8XlDkXpPzjkCI9EbDGQAFpw9js
	NHU0qXACHFPnOyhlPf2EFdVPXrB/K2tJErvLIxwVLNXPW4IE4/kKv+iDCqbLwpkPdiYurgGqgtv6G
	0g1XSXe2o1gxlTrohNv2ia4Y3d/IBL5xwObg4eIoqik1YuHJEpfVnrWqamoqIwvXpgny6Q4TvrV+q
	Rp1QAjrvVb78gUfYs1sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyTo-0006KC-Jg; Fri, 26 Jul 2019 11:33:44 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyTa-0006Jd-1D
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:33:31 +0000
X-Originating-IP: 86.250.200.211
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id ABC04240014;
 Fri, 26 Jul 2019 11:33:17 +0000 (UTC)
Date: Fri, 26 Jul 2019 13:33:16 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
Message-ID: <20190726133316.688a43d8@windsurf>
In-Reply-To: <20190726101925.GA22476@kroah.com>
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
 <20190726084127.GA28470@kroah.com>
 <097942a1-6914-2542-450f-65a6147dc7aa@codeaurora.org>
 <6d48f996-6297-dc69-250b-790be6d2670c@codeaurora.org>
 <20190726101925.GA22476@kroah.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_043330_226957_14780FA2 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Fri, 26 Jul 2019 12:19:25 +0200
Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:

> > This somehow is not mounting etr, etf, stm devices when uevent-helper is
> > disabled. Anyways as Suzuki mentioned, using devtmpfs does fix the issue.  
> 
> Last I looked (many years ago) mdev requires uevent-helper in order for
> it to work.  I recommend that if you rely on mdev to keep that option
> enabled, or to just use devtmpfs and udev :)

Since Busybox 1.31.0, mdev has gained a daemon mode. In this mode, mdev
runs in the background, and receives uevent through a netlink socket.
So there's been some changes in how Busybox mdev works in recent times.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
