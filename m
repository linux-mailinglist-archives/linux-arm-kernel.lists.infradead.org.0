Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C204F18F87
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 19:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqlwJsLBsQZyDpv/NbET+wMam7BHAp1XFf4ZUIkUgHs=; b=dmZbvkTgqxd69j
	E8G6trUVxWyYrPduq6iMsMND16auyhQ3WJtBUR6JstjBr07oQ3FxPO039E6lMgTqQL2BJWAmUWjdx
	0SBmdnJnjBsLjNyT9k0yzBWYfdIXPTdP4vfw6SieKLoB2gUMLVdPu20c26q3+3jtfQ5AC0V3OZNUi
	Ek5R1x4U3kfUx1um5GHHygbthjbXdpLQ2n0cjCHG6rlwp5duCUaiYMVjkjdPRUH8+/Mnf7gw/q4j7
	sZC2IDcHCj8YsxCLkXxYL+QFBj4lQIS93ptUfQUHjrhQLVycsaT5+WgmPxWhEIPAMuFXUyoHGzcVw
	30f0bVwv/vI0aPS//QaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOn5m-00077O-4S; Thu, 09 May 2019 17:44:26 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOn5f-00076Q-E1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 17:44:20 +0000
Received: by mail-qt1-x842.google.com with SMTP id f24so3458879qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 10:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=KjRnhmT+ofw1ihG6SycN5lJ13JxUfKm8g8u5Be8I8Jo=;
 b=uomjopXeSyPp4+goRblIzyFYhPJ4zmqIOy56TpYceJvIpwT+rnmxd9HvpB/krKNKfs
 Sv7vRlWipz1gRLd4JQSrQFlGcHUymmpXxVsvz8AQOolH3GZZWnO3JYdrKy67o49WarrQ
 j4PlArhgDzW2JME7TDKzTzj8yQgigREEUYs8uQgrylFHubqZEHi308YKXKyY4vlwMCO9
 eaUAcAiekxEjD1foayuBNpnqmn/N/xLyJ/P6bBXntqUh5Qw7XmgGERmrA1DojqAvclNR
 GQ7ZtGL2bAgKWPMfYfGqIGGiE0vM3hia6lZzus1/oSZQzlX2Y+u9lrSolLW9HTrNbL31
 ObVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=KjRnhmT+ofw1ihG6SycN5lJ13JxUfKm8g8u5Be8I8Jo=;
 b=ORm+VjGS4xkxiWSX82r5JiiD8BBhAueETu8iwlGaMp0SwflRDg5aXrs4+c0mb3kvpX
 W0FYdPDIMUg3Gjhqx5HtvW7UgfmW6rlUedQO+dM02DCmG5D177bnqmYpSNou4S39RCC5
 uWm72ndzlgASnASSe+qsh4xmcRmPlcpHj+iRQCl6AfxDHynY0dAPeDunC5G2vvFw77ze
 lOih7RAjmZ3sRRd233c7jkwOGq9LIdwJvhkCXVvF35EwLEtU3X/VlGuUVHu2qyy6rlud
 5VCG9S/E+5Pw1pkO3U7RWXk7Rwx5VDcM5jFgebkUwskpEXC8xaOAYGVVvGo016WEZXvv
 blIg==
X-Gm-Message-State: APjAAAX/Qv11sBYTVOz3mqXfHFUv9TRiZbW2TNSBZtJR3HuH/b1tW1yk
 YSbj/eE6IllvKNi0zpxjdFTIgQ==
X-Google-Smtp-Source: APXvYqy8pkXWNSmKg05Fcgu3sFtOScfyZSiZFqRa0Emtapg8Z3/pjH8icrBXOqxj9qzj8Kyny9y/AQ==
X-Received: by 2002:ac8:2aa4:: with SMTP id b33mr5014097qta.127.1557423856714; 
 Thu, 09 May 2019 10:44:16 -0700 (PDT)
Received: from cakuba.hsd1.ca.comcast.net ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id k65sm1545538qkc.79.2019.05.09.10.44.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 09 May 2019 10:44:16 -0700 (PDT)
Date: Thu, 9 May 2019 10:44:03 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH net] net: mvpp2: cls: Add missing NETIF_F_NTUPLE flag
Message-ID: <20190509104403.64c9c45b@cakuba.hsd1.ca.comcast.net>
In-Reply-To: <20190509071408.23eae42a@bootlin.com>
References: <20190507123635.17782-1-maxime.chevallier@bootlin.com>
 <20190507102803.09fcb56c@cakuba.hsd1.ca.comcast.net>
 <20190509071408.23eae42a@bootlin.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_104419_474464_2E6F5F71 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 9 May 2019 07:14:08 +0200, Maxime Chevallier wrote:
> Hello Jakub, David,
> 
> On Tue, 7 May 2019 10:28:03 -0700
> Jakub Kicinski <jakub.kicinski@netronome.com> wrote:
> 
> >> -	if (mvpp22_rss_is_supported())
> >> +	if (mvpp22_rss_is_supported()) {
> >>  		dev->hw_features |= NETIF_F_RXHASH;
> >> +		dev->features |= NETIF_F_NTUPLE;    
> >
> >Hm, why not in hw_features?  
> 
> Because as of today, there's nothing implemented to disable
> classification offload in the driver, so the feature can't be toggled.
> 
> Is this an issue ? Sorry if I'm doing this wrong, but I didn't see any
> indication that this feature has to be host-writeable.

No I don't think it's an issue, I was expecting you'd flush all the
filters when feature is disabled (remove them entirely), I didn't
expect that to be too hard.

> I can make so that it's toggle-able, but it's not as straightforward as
> we would think, since the classifier is also used for RSS (so, we can't
> just disable the classifier as a whole, we would have to invalidate
> each registered flow).

Ack, I don't think disabling the hardware components is required.
Just remove the existing filters, and don't allow new ones.  
But no strong feelings here, feel free to repost with:

Acked-by: Jakub Kicinski <jakub.kicinski@netronome.com>

if flushing the filters is too much hassle.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
