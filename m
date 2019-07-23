Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3761F70F54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 04:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb2+Leu7UpiYdIogPnixtmfSe0uq+oyuwMIXQ/FHjXY=; b=I3kW7F373fhvO1
	u+DKNLwR4tg+6ez7hygXCeVEQP2mAG84jJ4iFV8l5CiUGaTKPBtvPtNcH8Q89loQqLCE2kiYkHhTB
	RcPdnEin7HaKaoR0TUqrRVwlHFhgV6cIOX7vZe4JGNCNvYbsd7tll6sQ5pcXUL2Pp7wysgOiG0diJ
	0SyE4OBv8M9IyVwuaChY5VuIIH49DzlhwmsrdJ8wTv7zJCcFUrqZmQpI+fsN9HwESQEEan9Te1rWo
	ud9VcWzrW9ubNhc6xkzEPgP8SNgeKgmvuk+AictG7dYS7rC45dzyKsIIPSWkbEq/H6FCmm7dvm6nk
	qWBWPbNqn4QPhLUoZJ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpkv9-0005JQ-JG; Tue, 23 Jul 2019 02:52:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpkuY-0005J6-79
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 02:52:19 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F37522387;
 Tue, 23 Jul 2019 02:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563850337;
 bh=cKV8vZriVe9N4KR1Ynxsn5jL6pnY+Z6YbKZNF3ww9JU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0RrnLlyEGlBwKBK5VbAg6ODpRhy76XatqfhongR7oZMfMsEKaxyf5Cio/Xv0IjUIz
 s35VyYm0te5EYF1WoQfkIccDh5Ii+dD7CoaaqknUl2dgvaANy+PNMT47tZTJiKgYKV
 XA7E/H44bKrR+u/UWim3CeegZHlQGYlf278wrR9g=
Date: Tue, 23 Jul 2019 10:51:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 6/6] arm64: dts: imx8mq: Add clock for TMU node
Message-ID: <20190723025143.GJ3738@dragon>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-6-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705045612.27665-6-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_195218_281951_4AB96449 
X-CRM114-Status: UNSURE (   7.53  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, ccaione@baylibre.com, agx@sigxcpu.org, angus@akkea.ca,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-clk@vger.kernel.org,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, daniel.lezcano@linaro.org,
 Linux-imx@nxp.com, rui.zhang@intel.com, mturquette@baylibre.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, s.hauer@pengutronix.de,
 edubezval@gmail.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 12:56:12PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MQ has clock gate for TMU module, add clock info to TMU
> node for clock management.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
