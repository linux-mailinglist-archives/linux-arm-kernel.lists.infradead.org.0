Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D794416A5A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/g1lAbbwzVK44VOcxVYzDHFfbvv4yax+Z9DzbSJT2s=; b=RD7X++rhp4u2Kg
	qSUhPZQsV4IGbsal5shF1Q0usXa4WiHcEwxfkZyud19uSNQUo/qMVJzRcsL90eLQR5yi6VC0NeVyj
	mlxYJX6MJ2Mm9Qi8fxHV7qTndLV9vpDO4NGcqzzgDALA8+mphbNgrgcUW8M77V4t2CDEBO9mIPjwx
	S/40PW1lQQ5lZmEnrKbtRxLv/YFtg9kyNXHmXq9baEL/49ZbYMmNvmlS04zw7SwjF3Bn6uZ6rT36W
	G4d6d1NGkEutoiy7vYcvFK5BL84kzYw/uvuRe6+V/fTWlM3r9UBnQPv0GnrY0BlJICbKm+Adwo1o5
	Af06Y/EdBdm3zH1/YePA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CSL-0000qR-K9; Mon, 24 Feb 2020 12:03:25 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CSA-0000pj-T2
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t5KPllfCzU4AasIlRCx7IzfWUIVfM/xDWS4+N7wn5YA=; b=g1I9RIlPEPLzZWdOSbIZxCjpj
 LpMV7CqOwjfFjrIcnMazJf2/Mmg90x8pv9//qmp8jQeSXfZjcEgb41hEb0Cpa+JHdndB/RDrHMXEl
 kWz02pgsYVHwIV4OEGIvsFv7Zm5QioaBlb2MUhpFH7eu7fQoVzymGUxZZ0fMCIkyqDk1cT36KuBGE
 iO73eFzbLIc6kluM0d8NpnNsm0iSbUFe1j3WLJFgVwOe69LzYFiPwTvkfQdqP98jFOyoqtFohXZQJ
 NGcvXqREeIXSER4KikTrW7pnujpKNi56cCH2F1FGoJqfsDl2o/y/N349pCffazDf2+vgVaH715U5T
 EkbTycHjg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56262)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j6CS5-0002Xr-Ky; Mon, 24 Feb 2020 12:03:09 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j6CRz-0006P7-9v; Mon, 24 Feb 2020 12:03:03 +0000
Date: Mon, 24 Feb 2020 12:03:03 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: yifeng wu <y1feng.wu1234@gmail.com>
Subject: Re: Subject: [PATCH] arm/kernel/head.S: optimize
 __create_page_tables function
Message-ID: <20200224120303.GQ25745@shell.armlinux.org.uk>
References: <CAKy1Xqcnkfm7Dn9UvJ7Ufio-szQ75kbGS+GurBjuUFBydi21GA@mail.gmail.com>
 <20200224110508.GP25745@shell.armlinux.org.uk>
 <CAKy1XqdBt=LNpk-7Rt2LXU3tky=fS9jHxD0DV5CKh4wYWxFVRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKy1XqdBt=LNpk-7Rt2LXU3tky=fS9jHxD0DV5CKh4wYWxFVRQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_040316_958689_03B324EE 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Feb 24, 2020 at 07:54:07PM +0800, yifeng wu wrote:
> Thank you very much for your reply.
> I have tested on my machine. It takes about 0.5 seconds to copy the memory
> (16M size) with "str" instruction, and only 0.1 seconds with "stmia"

ITYM 16k.  You say "copy" but we're setting memory to zero.  I'm quite
surprised by that difference, which CPU was this measured on?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
