Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17CEF943C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rif8fGMdMqmWQf3bzNhPA9UxKCFD5G6KbTLuJx/dDPc=; b=bo9aO+NOOCSIeC
	Th/vgLMFJJcwln64ltNJyaIjOeCdtZuHrgkPup6C2m6tNSiJ4RPvfXTGevqWmRzqTsGagBwmY3g9i
	1oZ8INnJMwO9eZFYazeBP0JuNXBW4f1G8L0PiYwRVGrY6TESzkd2dzojDjMhrti6Yx/HdchP1H+Ub
	7zpB919WITyFyWUugJAqr39CQikYDuCX35Lm4tk5Y5K8mtoxsV7W1BOi2rhthDiGBuy1vjNOF0h8N
	s+vBlhSUVnCgQvNCajGe7QBepOAOfxxsxazk6fej38CAzk5lNTAvnFp7S87jYMeFcilnMiQdi+jFN
	cQ82rsfuW28z9bqJBG+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUY5E-0000Kk-98; Tue, 12 Nov 2019 15:27:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUY57-0000K3-73
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:27:50 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 6A89C80F3;
 Tue, 12 Nov 2019 15:28:25 +0000 (UTC)
Date: Tue, 12 Nov 2019 07:27:45 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v3 01/10] clk: ti: dra7: add cam clkctrl data
Message-ID: <20191112152745.GE5610@atomide.com>
References: <20191112142753.22976-1-bparrot@ti.com>
 <20191112142753.22976-2-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142753.22976-2-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_072749_297397_B64765F8 
X-CRM114-Status: UNSURE (   4.86  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Benoit Parrot <bparrot@ti.com> [191112 14:25]:
> Add clkctrl data for CAM domain.

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
