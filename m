Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9DD12E91E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:10:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMz6DymiClmQ/0NTWVkfGyavABsq7O+14x0Mf93axhQ=; b=Vu5N2tg4sadVZV
	7yXO7UbrXqfOsCPD/7PyUxg8nAkJ3+lXanHNoPhj4PJ63J2jSf5lgoFnqVH+fT41LnY52gFsczrQ1
	oquBw3Iiw8MceWRk8zfLQhopoYVP2/rR1E2moF7uM1GtLpHW9VsP1u0Ovuvnesf/w64mp9QIDi4oZ
	hND8F9kZEHH2A5UhLwN4yFhdIA8Lf+98TgxKlMxMjeFDP6YA4WlwRq9W1zNrnDLYoShdXAkJo3cV/
	fxMJzUx3IjXFXfwLxNRNGlb0fHkGnJhGWJNR71P2iUoSpW2WNJ0oR4DEX8nEi+s1xF46wBqcQYoSa
	jOltFnf8YstzSToixj/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3zB-0001OO-OI; Thu, 02 Jan 2020 17:10:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3yz-0000sN-DP
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:10:03 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 418E08087;
 Thu,  2 Jan 2020 17:10:37 +0000 (UTC)
Date: Thu, 2 Jan 2020 09:09:49 -0800
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: Droid 4 on 5.5-rc3
Message-ID: <20200102170949.GA16702@atomide.com>
References: <20191228162929.GA29269@duo.ucw.cz>
 <20191228193622.GA13047@duo.ucw.cz>
 <20191230173507.GM35479@atomide.com> <20200101201132.GA9612@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200101201132.GA9612@amd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_091001_489486_E362933A 
X-CRM114-Status: UNSURE (   5.77  )
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
Cc: mpartap@gmx.net, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Pavel Machek <pavel@ucw.cz> [200101 20:12]:
> I tried v5.5-rc4, and it does not boot either. I'm kexecing from
> 5.3-rc2. Maybe there's Kconfig difference? This is my...

I also tested with your .config and v5.4-rc4 boots just fine
for me on two different droid4s.

The regulator warning is there with built-in drivers that's probably
related to deferred probe and should be fixed though.

But wlan and mmc work meaning what you're seeing is not a regulator
issue.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
