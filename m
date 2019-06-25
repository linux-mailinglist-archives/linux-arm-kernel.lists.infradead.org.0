Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04278521D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 06:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMyZ/VD5YWtG15kvXOaF6E2r3gf9xznLvNqhquHufII=; b=WI19oHWMzWepNs
	HvQ8/h0aCahKE0CrdgsKuZ+AkzpwsCpzfGwbKHW4wpbFpQ7Hu5ynAdTe/mmSp0rCd1saaN5Gsh7+Z
	tyHFW4ljXjiHedL801WkiqnYULOEhBq0nlk0i4zM9TaiFi/npBdL0RbLnk0qcivnAOBb2SM0v7Eul
	6lFL75ZiQV+QGs7u86LXXKa8RCknIkt2oIZuZSfgdPZl7JOLHTbsJcPmEiCxUX+bQmh2ysimX8NG+
	S8DqqQk+NA+cd8jHBPByQ5Hpx0LpC0dCHuvzdv0/0t4YasFG/feelJc2c4/bVXhAQBaTLGgzSrD5h
	2K7r6H+rzUBs7IQcjkwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfcrw-0004hq-2P; Tue, 25 Jun 2019 04:15:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfcrf-0004h4-BU
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 04:15:28 +0000
Received: from localhost (unknown [106.201.40.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B00BA20659;
 Tue, 25 Jun 2019 04:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561436126;
 bh=yiFX7jrnzfFDLJD+nZSTKbVmX0FksTqWGaKxBhnQdGA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FOHh1ZCQPvSJUEOQ1v0P0F7Xp/ZdZFJSlLQmvLls0ZxvnMFyRLt+t4zd7W5pxYy7J
 X6a2MbZtxa/Fdiz7V7DfvHFksuLa5H79xI1gNSpdCiU9TNiE7q4kSDwWyBsIPwMtki
 3kT+nhdM7POHUElZ1UsjskwtvoHFv0uJ2O5yQpiw=
Date: Tue, 25 Jun 2019 09:42:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v4 1/6] dmaengine: fsl-edma: add drvdata for fsl-edma
Message-ID: <20190625041216.GE2962@vkoul-mobl>
References: <20190614081724.13366-1-yibin.gong@nxp.com>
 <20190614081724.13366-2-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614081724.13366-2-yibin.gong@nxp.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_211527_419098_C65030EB 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, robh@kernel.org, angelo@sysam.it, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14-06-19, 16:17, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> There are some differences between vf610 and next i.mx7ulp. Put such
> differences into static driver data for distiguish easily at driver

Typo distiguish 

Though I tried to apply 1-5 it doesnt apply for me, can you rebase and
resend

Thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
