Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C78B3EEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UU4REw/3uaVOwndYBDqf9l2uEx7dttjaRHwzfjLnzS8=; b=Z4WnGRrcRNKnDE
	Mtn2fE+vfbrVPkFVNUWZtz36G/dTjq6ZvxLdh4puR23ISKtx5mpr/qUM5IJUEkQB+2lemsZyNqRhR
	u9VNzttxD2JK22cMAe7Tq662B25flAOcNVaIbf7GEqt6zwK1ash50x6fcDO6oBTthk0c4lf6T/6M4
	TTj5b453hSL4wMQhIOmOKGk8TdLrPbhtE5czxVjAqEU57bpS8zIpLd/6+sk+cZWwnpFBpC5K00S/L
	wiWulh0u8A5TTQEH3HSIZByJiTVHo/WpELWUX8zlPujZaKiu1ET/6uAacFYzuVPfHeMfH8fa0BztU
	EER7J7ovgf8t3xWc+O+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tpx-0001fm-16; Mon, 16 Sep 2019 16:26:49 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tpe-0001ex-Tn
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:26:35 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8365980EA;
 Mon, 16 Sep 2019 16:27:00 +0000 (UTC)
Date: Mon, 16 Sep 2019 09:26:26 -0700
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v3 7/8] cpufreq: ti-cpufreq: Add support for AM3517
Message-ID: <20190916162626.GD52127@atomide.com>
References: <cover.1568224032.git.hns@goldelico.com>
 <beda9274922c0fdc293a974a707426fac7c77921.1568224033.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <beda9274922c0fdc293a974a707426fac7c77921.1568224033.git.hns@goldelico.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_092631_007876_ED3AAF5A 
X-CRM114-Status: UNSURE (   9.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 letux-kernel@openphoenux.org, linux-pm@vger.kernel.org,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [190911 17:48]:
> From: Adam Ford <aford173@gmail.com>
> 
> The AM3517 only lists 600MHz @ 1.2V, but the register values for
> 0x4830A204 = 1b86 802f, it seems like am3517 might be a derivative
> of the omap36 which OPPs would be OPP50 (300 MHz) and OPP100
> (600 MHz).
> 
> This patch simply adds the am3517 to the compatible table
> similar to a mix of the omap3430 and omap3430 structure.

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
