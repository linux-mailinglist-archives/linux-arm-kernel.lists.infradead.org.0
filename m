Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A45810074E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 15:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=lz+gQLuRxJQXDGHqLUbOQDaHMFx93+87FzfrS70yRXA=; b=cETe4UPsSeuDt8
	ZMURAAR0KL1gDNctnNe3O0M2wv/ETLeZuqdYwH90d9lWT4D5XAhtqIp+UnKk1uWn5fpLUWakXXRwc
	BHKPKpgr84tQDpv1vmjKWinAwEI2MWCoay500cRPbELOKJJIaLPVGKMxj6G651Hoa5YubxkW++Jxv
	FzvGj+FXJT3nDjsu2Kp07jpUqd+ASJKEBSLG/laxgRzhdsVOzJaC4o7QKXphZy/XxxOoAXKb/x7be
	dIpS64ry7AZXG4biINheecGnpH8+gI5vDjxDZhecz2yCchacjXdJozSegvq7ADN3hv62lrm3k07b0
	Igb2QRcwNOP20w4zpPZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWhxH-0002Qz-5x; Mon, 18 Nov 2019 14:24:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWhx9-0002Q4-VZ; Mon, 18 Nov 2019 14:24:33 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 243BD20692;
 Mon, 18 Nov 2019 14:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574087070;
 bh=MmJPqaX8nGIZrh4Dibpts0t0Dtr9+u4xiU8n8NZNzFk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=0DBwzJUVz38PqTslrSrR99DBp0hhvJbtqNfpwBRRVJbr7NcsFqytNsE/o0HBgS1kJ
 m3e/oSIVp8rb5/IncQZO8v5/NjAcHywY71Ipbs2juUEgDOTwnwOZ5+drB+CyqiaBqw
 vN5Ch3XYMbzCfTXFa8f7oxKXQ5BFt8J/2GNyvQOo=
Date: Mon, 18 Nov 2019 08:24:28 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Message-ID: <20191118142428.GA27459@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118115930.GC9761@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_062432_037521_DF1C5BE3 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lorenzo.pieralisi@arm.com, heiko@sntech.de, linux-pci@vger.kernel.org,
 shawn.lin@rock-chips.com, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, andrew.murray@arm.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 11:59:30AM +0000, Mark Brown wrote:
> On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
> > Null checks are both cheaper and more readable than having !IS_ERR()
> > splattered everywhere.
> 
> > -	if (IS_ERR(rockchip->vpcie3v3))
> > +	if (!rockchip->vpcie3v3)
> >  		return;
> >  
> >  	/*
> > @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
> >  		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> >  			return PTR_ERR(rockchip->vpcie12v);
> >  		dev_info(dev, "no vpcie12v regulator found\n");
> > +		rockchip->vpcie12v = NULL;
> 
> According to the API NULL is a valid regulator.  We don't currently
> actually do this but it's storing up surprises if you treat it as
> invalid.

I don't know anything about the regulator API, but the fact that NULL
can be a valid regulator is itself a little surprising :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
