Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031891FF2B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srR5qE/4Y2PcFN8KhLlr1V257SA/HM26QwiJdlx6Fls=; b=KeboX/62XyrnV4
	5hNrYM37peAeZAxeKllwcuHSa93zgAS3SyGbaH+DUUPvK8tUZWoby79nm22p7fY69zendlCKdSDEI
	gr1LiUO48Dl3nsuYjZdRMMvVLCHDRUiAMLzBBDAht++Yf9I9izKXJS9hqcR+dnvWLrFjEt9fQ+JSD
	3N/KdoBQlgiNXmkroIxpR4V01ur7sxn4XxT9A+K1vrwHTFg1p5PECkt82Fc/1+ngRSyjkapqgqdB4
	fTOZ6VrAZPVDXq4M+q3Qfdo1s2jScCsKqLXmxKJLQ6OhqlE9Ccky8LWIvKgeCGOQhetZLUu++RroG
	i7GFL4fOCATDq5DG9ROA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluI2-0004PV-LJ; Thu, 18 Jun 2020 13:09:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluGf-0003Mj-Rb
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:07:48 +0000
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1jluGZ-0017DV-W7; Thu, 18 Jun 2020 15:07:39 +0200
Date: Thu, 18 Jun 2020 15:07:39 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sven Auhagen <sven.auhagen@voleatech.de>
Subject: Re: [PATCH 1/1] cpufreq: ap806: fix cpufreq driver needs ap cpu clk
Message-ID: <20200618130739.GM249144@lunn.ch>
References: <20200618072936.n4yifupski3wnjka@SvensMacbookPro.hq.voleatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618072936.n4yifupski3wnjka@SvensMacbookPro.hq.voleatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_060745_905423_EB523F6B 
X-CRM114-Status: UNSURE (   3.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: jason@lakedaemon.net, antoine.tenart@bootlin.com, viresh.kumar@linaro.org,
 gregory.clement@bootlin.com, rjw@rjwysocki.net, maxime.chevallier@bootlin.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 09:29:36AM +0200, Sven Auhagen wrote:

> Diese Information ist ausschlie=DFlich f=FCr den Adressaten bestimmt und
> kann vertraulich oder gesetzlich gesch=FCtzte Informationen
> enthalten. Wenn Sie nicht der bestimmungsgem=E4=DFe Adressat sind,
> unterrichten Sie bitte den Absender und vernichten Sie diese
> Mail.

Hi Sven

As requested, i just destroyed this email.

For patches, you should be use git send-email, which probably avoids
this problem.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
