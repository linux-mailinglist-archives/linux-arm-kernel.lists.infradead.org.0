Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93702129EA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 08:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HA09ncY6FwNeJ0JiuDlWEUFu7l6pvfLnsl6kKO5uhJc=; b=nHrRyIHGYIDnhn
	1z8biW1df5ymSK3UvDt+2V4LZY06hF2XsIhhvm0LPN73TrdsXnJpsW0/jDCKtsJDw7Oi0ur5vRmyz
	UOkzofcpUfqYkXTI2SMhCHQaauXdQHRC4AkMRvwDTRcbHZY8BM28CIjvA63JZZTf0z0AVcjUCJpsz
	dHttIeW39gc0H4bkNOTHZkfTgxUKtvVJcdo8GpQQIV306UFGhkmqqRf9czyctPtiOadNAS8jh3ATI
	aOVVPgJGLQ05SUTo2OF2ukRQLPhX6NqXc90GxlI3rZMyHdY9g4NIFnKIz3ZO/WCh3DVR49KsgopnG
	rr3qd02wzjfFFWmUOwPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijewM-0000Vz-7b; Tue, 24 Dec 2019 07:49:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijewC-0000V4-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 07:49:05 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9CF620706;
 Tue, 24 Dec 2019 07:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577173742;
 bh=GTiuJToEf1rYPyFg+M8KQHlG48XsZfpkE1FmUWz15rw=;
 h=In-Reply-To:References:Cc:From:To:Subject:Date:From;
 b=LtYDFR5QH+rp40jWZrHpHHIfROItwwLlOpd1+T0oPEZYQQD8VyVLoeikFdTwtapxN
 Fmwpw8nLFLqTN5794+J0FC5rz/Bdfektw2hYboggdM7vjugpp4ZEP/CLzvHEOdp1kB
 oHDxRvHk+ROafWKtHk2qh4a6yopx1uDFfcTNxY3c=
MIME-Version: 1.0
In-Reply-To: <20191210145345.11616-13-sudeep.holla@arm.com>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-13-sudeep.holla@arm.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 12/15] clk: scmi: Match scmi device by both name and
 protocol id
User-Agent: alot/0.8.1
Date: Mon, 23 Dec 2019 23:49:02 -0800
Message-Id: <20191224074902.C9CF620706@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_234904_267457_7156C03C 
X-CRM114-Status: UNSURE (   9.36  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sudeep Holla (2019-12-10 06:53:42)
> The scmi bus now has support to match the driver with devices not only
> based on their protocol id but also based on their device name if one is
> available. This was added to cater the need to support multiple devices
> and drivers for the same protocol.
> 
> Let us add the name "clocks" to scmi_device_id table in the driver so
> that in matches only with device with the same name and protocol id
> SCMI_PROTOCOL_CLOCK.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
