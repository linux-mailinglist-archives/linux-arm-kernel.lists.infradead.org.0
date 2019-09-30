Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABFAC2532
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 18:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J31S+dnlKXJoVl7R7yJvOtopoaC5nceciYnsoLogQNg=; b=LwtAMMPL2hvziA
	FqePMhKHD1Fc3oPbuWad74Y9nsik9G+8oftQd/NLmesBCKewVPB1P8QLAGUo9ua8V6iR2uz/8ctNd
	tY97PFdR4OT3dt7sHYrrgvmBjgk6yKyZE6SDTkyk1k0j0xbL0MrYuIAnGGhqO7bVlemDt1XXVsSgh
	BlwQSHffU5OIU+ZzAMW03e4phjOjojD6Jvc9Bd8O4Jds/iAS1WqhDMtsNWDsin7BvjycP8wA8iTyk
	Cptwe2k4fVwNwK5YwuluVaf5+3qoKAsQtpzK4KPn81T+J5EpI8H0GdI/BhqCTVIo+V1DEqqkYolX+
	7+cckLbJ76hIMTHoGatw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEybI-0004w7-G0; Mon, 30 Sep 2019 16:32:40 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEyb8-0004vN-Qy
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 16:32:32 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id AF35D80FA;
 Mon, 30 Sep 2019 16:33:01 +0000 (UTC)
Date: Mon, 30 Sep 2019 09:32:25 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH] ARM: dts: am4372: Set memory bandwidth limit for DISPC
Message-ID: <20190930163225.GI5610@atomide.com>
References: <20190930085450.15874-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930085450.15874-1-tomi.valkeinen@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_093230_910145_6D1D9EA7 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 linux-omap@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tomi Valkeinen <tomi.valkeinen@ti.com> [190930 01:55]:
> From: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> Set memory bandwidth limit to filter out resolutions above 720p@60Hz to
> avoid underflow errors due to the bandwidth needs of higher resolutions.
> 
> am43xx can not provide enough bandwidth to DISPC to correctly handle
> 'high' resolutions.

Applying into fixes thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
