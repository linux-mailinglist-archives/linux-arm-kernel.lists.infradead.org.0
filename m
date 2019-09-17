Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEB6B4FB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GplloDphfzas0T8oC4s4q8z5Ct2iyGDKO5EfbwzpT1E=; b=MNECfm5OuP9Smn
	Hw02NYxWena7zDnUR0qxGbKGG9Yrsm+8SNGUwPQBB2WhrCd5rnwZJCNJ6zK+B9ZmtNzmElwAJX2gw
	emPV0eOIVsRxE9FCkrQBXw9xMOBpAW+Lo87d8tKNWzXpDjOuBS8MuRC+bB8ocGMgIQxzQ3VHCr0/C
	qDsNGe0apbDwy5kvEoUE+N/MpymSxZMIZcRxLkxao42kefxaf/3Jxb2DMzXJq/qkQtYF1SBIZOP95
	R7tpebpDAbL+6DBygxagsmEtOb3cRu0pLJynOHtmGWTvb89koq60+vFuhpdYS90Z+eGEKlqfvyvkv
	FLMDsRYWoZg3qO2gOgDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADuH-000424-UT; Tue, 17 Sep 2019 13:52:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADtq-0003vS-Tm
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0kHpPNNmIunZ8PTjKROUxxoBt7miTlYbdWH51X5C1SM=; b=cgm5dIkwieWEw2rYPeRHqe2BB
 Uv2SyN0l6jOTsy9oaxb5LSe2QiFKFLxcBYR3wHIqrCPKrHwudxiPJLkb8WFszY2hkomxlwdPC/axr
 4NXAfYvCV9lXNHkQbzu3gzMGS5mr2hdTRXGc0syLsXedKCl3EyJqRBqTNPISnfTF3Sn5hMAkcDZq5
 jRDewaqOw3vnLSGydQNpcLNE3Q/mKySAi3GnCmkObAqiI1eZ3tq48HxaSE/MWN+Ce5vVDRUR0U/7c
 Rc/EQgDXhnj2Gjy/of1KFgsxNiqagieWh2sXvcwpVL+HwtZ5PmBDApzGjFgZ7KBecvB88jtvrIHvH
 uAz4FnKXg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40658)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iADte-0002Ct-RF; Tue, 17 Sep 2019 14:51:58 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iADtd-0001LF-EG; Tue, 17 Sep 2019 14:51:57 +0100
Date: Tue, 17 Sep 2019 14:51:57 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190917135157.GT25745@shell.armlinux.org.uk>
References: <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
 <20190917133317.GQ25745@shell.armlinux.org.uk>
 <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_065211_293687_C069CBB2 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dann frazier <dann.frazier@canonical.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Will Deacon <will.deacon@arm.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 10:43:35AM -0300, Fabio Estevam wrote:
> On Tue, Sep 17, 2019 at 10:33 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> 
> > That attempts to set bit 12 of the host control register 2 (0x3e).
> > The LX2160A documentation states that bit 28 of 0x3c (they're 32-bit
> > wide registers there) is "reserved".
> >
> > So, you're asking for a documented reserved bit to be set...
> 
> Correct, v4 is not supported here indeed.
> 
> From the LX2160 doc:
> "Conforms to the SD Host Controller Standard Specification version 3.0"

The pressing question seems to be this:

Are the eSDHC on the LX2160A DMA coherent or are they not?

Any chances of finding out internally what the true answer to that,
rather than me poking about trying stuff experimentally?  Having a
definitive answer for a potentially data-corrupting change would
be really good...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
