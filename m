Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6846108F09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 14:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+d0dtGhVJOQ7hRQZcy3jKHsllKn+dJganIH8OgDnXT8=; b=oK62wIAN/Og0SH
	Jah9ZAL/MhxLraRlf6KiL6ugtlO+5By+mvJG9o3ePnGQWIpEK2gjKc3kv9zlj2hPDpoIwgWkzxpVB
	MKnw7kf9Q3plBW6ZxUZdLra2V44D2Y1TBRb+49EHEEYv3YaaZoS+zfT4m3zk5KBbirBLX3kJBPPjG
	NOyO/kfSWHjwPNXAw/RUBGhYB+N4aXBOM+wJySbugXj1ThowsO5fwZPqCbLQpem6Oz3YYWHMuUItv
	PnhNqq5blmzDZQGphmFpQ0FPjR/plqa6XVPzRI9sSDAy/C/xxwMu3EWyVB90/xm11O1TuChQwNIiB
	pk4XdDcpTjrThQFxbZrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZEZU-0002Zj-E0; Mon, 25 Nov 2019 13:38:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZEZE-0002SH-4U
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 13:38:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1oPwCncRA2y31PmdF7i8SD1A/QIZHpVvVM+tOv4nEWY=; b=HTROZ17YQfnk9a3KpJMqKCAhj
 VGwuTT5RUc8NphiI7dy/pQPJUnloOvVbC0qwZGfJi/TLIwiW0JdhYf/iRXS7wG8+Vke9nTs5Lc+cf
 ij6xzfuNNBUpwH64lffDsUM84vlNw2+yqFXKu5idoDbAyb56mvddL/TpeQJpc+M6J4kB3MzscxlB8
 OsVK6aBxDRnbtOjDKu3et7x84STnjbV0LQNxgFiMAhDp6PnvO3YjUFz/gFUp0BHeuk+9eKcHfVvOl
 AVPpvXlz1rx3Ja5V/lmeX8JigyvOYzNCwvkDKXb2QWYe+iTdLaerME3sspRKRiy/1wBfPAQzSfohp
 h3qiwfOgw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:32788)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZEZ5-0007zq-MC; Mon, 25 Nov 2019 13:38:07 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZEZ5-0006iB-3V; Mon, 25 Nov 2019 13:38:07 +0000
Date: Mon, 25 Nov 2019 13:38:07 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
Message-ID: <20191125133806.GT25745@shell.armlinux.org.uk>
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
 <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
 <20191125125231.GO25745@shell.armlinux.org.uk>
 <45730e3c-efc7-4433-4980-e6aefebdcbff@free.fr>
 <20191125133103.GR25745@shell.armlinux.org.uk>
 <7373182d-753c-a87b-8408-ffe4b7ac341f@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7373182d-753c-a87b-8408-ffe4b7ac341f@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_053816_189244_DE0C7C51 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 02:34:35PM +0100, Marc Gonzalez wrote:
> On 25/11/2019 14:31, Russell King - ARM Linux admin wrote:
> 
> > The clk API and CCF are two different things.  I look after the clk API.
> > The CCF is an implementation of the clk API.  Do not introduce clk API
> > code in files that are CCF specific.
> 
> CCF is the acronym for Common Clock Framework?

Yes.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
