Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B0D1623CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDmo6t/cAmEyUTAdxH0iUF3Sh+qE83oeIAR7SR+xXyU=; b=XLvQw1UpCuH1MY
	LlmOteqmLNmqkzuvcshhO6lX94IAlPYrgeUDIeF8cZfuyWmdCPYgB1KRFlEQAd4HfLc7MFlTBeqXM
	00MlDv4Ey6cdAJKpKA3SDBqt4FcRHvULXsqrCzSzMGdvr2ZcIPbtdNHVaeF3wknogahiugIJ8T5vp
	PWYRg2g/B3ZkoCRNSppw9G3SS6h82IvYi9pjXphImDwpnLlKVzvcTKB05KagxlsRO2tdPYI3I/e4g
	LZIhyYbXFfZXxTVChsbm1dWRzh6skEsvAuRGWsTQpoBND16MkylN4R2f0wlZ9TgoiGljcvWs/QTl9
	r+BbQtdUPbLUJknGIqOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zSm-0002Ic-UU; Tue, 18 Feb 2020 09:46:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zSb-0002Ge-Mc
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:46:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 638E4206E2;
 Tue, 18 Feb 2020 09:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582019193;
 bh=wbpMc1MVbg40n0/gW71pGkctZMTT4kZFYH24D32jamY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wwLLZeaS0In7WJ5AxPXmqRY3ZUJra+9yqvRwSEZTpmywGQ9Tl6O+v9Eg0Tig5q1AT
 JIinsBLNGG6LOvvoOoIoRt7f51w5riFJMmFtEHTFPnX19xIbTZr1ihI06o7TnvrZ/n
 sl6knbsDaZsTNSFdpvscpaoactMcS3un3IfajO1I=
Date: Tue, 18 Feb 2020 17:46:24 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3] ARM: imx: Add missing of_node_put()
Message-ID: <20200218094622.GF6075@dragon>
References: <1581582933-901-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581582933-901-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_014633_752246_3A58E538 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: kstewart@linuxfoundation.org, peng.fan@nxp.com,
 sakari.ailus@linux.intel.com, andrew.smirnov@gmail.com,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, rfontana@redhat.com, dsterba@suse.com,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 bhelgaas@google.com, okuno.kohji@jp.panasonic.com, tglx@linutronix.de,
 festevam@gmail.com, allison@lohutok.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 04:35:33PM +0800, Anson Huang wrote:
> After finishing using device node got from of_find_compatible_node(),
> of_node_put() needs to be called.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
