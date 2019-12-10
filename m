Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22921189D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgQ4hOhDpgbMoZlBY3NVX3j308RsOAGegJ1LGWj4A9Q=; b=Cx1XHMXwUSKB/+
	aRhxpu7KssxsaYIlCvsP2ph0/tWdivTt9vS8mqK3253Ha03FRSS/D7ylM+q7I+Bn6A/liwrC59DDz
	nGJl/J+/fuIstozvicp1m+qtvZJnMTImyvRODAZKlPmHvPOXVPlrpx5AnyHqvkAwr9I23+lKenVba
	eddKOsnORzAMrIwwZcb9heX9o098Y+2XHaole6k7k7KdyheQ9aGnZPNYJSCKUKm7POg3RKElvD0DY
	Aoz+nP4dnfSYvHvZsUFesF2pO7nzBrPV/J/l9c4ytACF+XD+CXl7nSO+bI5dCM+NkVGgTjbET07kq
	EPygtzfEbCkN1cTCIIKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefaQ-0008Qm-9j; Tue, 10 Dec 2019 13:29:58 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefaE-0008PO-TQ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:29:48 +0000
X-Originating-IP: 90.182.112.136
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9839CFF804;
 Tue, 10 Dec 2019 13:29:39 +0000 (UTC)
Date: Tue, 10 Dec 2019 14:29:36 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] rtc: stm32: add missed clk_disable_unprepare in error
 path of resume
Message-ID: <20191210132936.GL1463890@piout.net>
References: <20191205160655.32188-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205160655.32188-1-hslester96@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052947_080724_90CC6B49 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/12/2019 00:06:55+0800, Chuhong Yuan wrote:
> The resume() forgets to call clk_disable_unprepare() when failed.
> Add the missed call to fix it.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/rtc/rtc-stm32.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
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
