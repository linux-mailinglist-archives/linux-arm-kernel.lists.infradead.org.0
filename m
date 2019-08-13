Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AC28B5E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnWd/a3k2RudfISNqcuCxUZ1TP10+3qELN/XBu6RZJs=; b=ZmLWUFKs91lR7R
	4S3+wsZqTYtQsE+mj5uanKbMUxsX0IfEWQKNurAHYw+4bb7TXeROJQwClMBO6qSaOUwwBg6/VpQZe
	2rZJ9nHCXkbB0wNBCIJmXq96RteMFk2lEZscv5kt7GKFqEAv/5mrdAZll0nqajb1V/ATQb3S5FnOO
	HKEK6oEJVH4be3RpAzAwQi3wZjig8Rj3Y1XaQ3I6ez4rm1x/T9hCXCSNSUOWV/33QcBla8aD7U4pA
	HF5VeNCoeJGguUyU9cimYJNeJ/wcKBpZ9DuV0PP/qNEe9f20+budOuC/W7mcXzJWqJR8YWPL3agfo
	69Se5qKjxaGoTpyhdP1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxULS-0006kk-Vb; Tue, 13 Aug 2019 10:48:03 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxULH-0006kM-Bt
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:47:52 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7D027805C;
 Tue, 13 Aug 2019 10:48:17 +0000 (UTC)
Date: Tue, 13 Aug 2019 03:47:46 -0700
From: Tony Lindgren <tony@atomide.com>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/8] ARM: OMAP2+: Remove unconfigured midlemode for am3
 lcdc
Message-ID: <20190813104746.GM52127@atomide.com>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-3-tony@atomide.com>
 <bcc130a5-f7e0-e182-9f4b-5a48fc3d6e17@ti.com>
 <52328e14-58b2-2ea1-8b0a-33548a1c6a7a@ti.com>
 <20190724063110.GT5447@atomide.com>
 <d2414422-3ca5-4883-c94a-d3acdca70c87@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2414422-3ca5-4883-c94a-d3acdca70c87@ti.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_034751_447769_7B498328 
X-CRM114-Status: UNSURE (   6.97  )
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Suman Anna <s-anna@ti.com> [190724 18:29]:
> On 7/24/19 1:31 AM, Tony Lindgren wrote:
> > OK thanks for testing. Let's drop this for now, sounds like there is
> > some midlemode configuration happening even with no flags set.
> 
> You were dropping the ti,sysc-midle property in patch 8, is that still
> ok without this patch?

Yeah let's wait on that one too until we hear back from Jyri.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
