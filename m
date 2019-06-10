Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0983AF50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 09:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8iofYewlQXEvPDbSTxHW9DftH+H07QjXj2nvEA87HU=; b=MF3LIngDM3rgUd
	rAQRQvBwWBFbQYEeK4Uf1Sr6FxeVBtkqlOIRcigyFqOWrxAPuUK1AE99ScpZo1dTgoFKPt46Oo8qB
	H98yXrIxGP7yOWcwKJtK8hOWkhit/gLYx7XibsGVkNwLjCgkweNUn8i08Wbo9etQP9CMh7CEHriU0
	7Js6MkPaRqn0Yd5RPME7KlFOaYm97OVmUh6dBBjqMk2OlAaC/wQ/s68c7WLvsYEXOtOOT3W5i+Ok+
	8hqJnch4UTAL2anP8s5iNePDvgJm54zDuSuQ135eGPD1yzRT5k8Q733Ieq4AGPFy/UJsUVfX3hqQY
	8t6bjnpd/DwlPNnlfKXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haEPP-0003x4-6m; Mon, 10 Jun 2019 07:07:59 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haEP2-0003wY-55
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 07:07:37 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id B02B3807E;
 Mon, 10 Jun 2019 07:07:56 +0000 (UTC)
Date: Mon, 10 Jun 2019 00:07:32 -0700
From: Tony Lindgren <tony@atomide.com>
To: Teresa Remmet <t.remmet@phytec.de>
Subject: Re: [PATCH 1/7] ARM: dts: am335x phytec boards: Fix cd-gpios active
 level
Message-ID: <20190610070732.GU5447@atomide.com>
References: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
 <1558704003-393769-2-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558704003-393769-2-git-send-email-t.remmet@phytec.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_000736_237750_2E6EC6CD 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Daniel Schultz <d.schultz@phytec.de>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Teresa Remmet <t.remmet@phytec.de> [190524 06:20]:
> Active level of the mmc1 cd gpio needs to be low instead of high.
> Fix PCM-953 and phyBOARD-WEGA.

Thanks I'll pick this patch into fixes.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
