Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE96460D56
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 23:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Jat7LM0LsXtUcpGBbtyfB0t6hbyjCbWXfV+im29+g0=; b=tSTchjYoSNvuGG
	dr54TY+hc2F/S4qet0G0aTFa+//AR/DkaDxgZvOBKtj8XLTxLUWeyWYXkMZqS/Qv8UaQHK4JPG2M+
	1MKvigbUrIqfMWFaBFnYMh/Iz24WBSJ0Db93+civ1NShXptqcQWvgtl/0WQ9xB37SH/t/N4C1HQ7u
	KeWPg9szE5GO0oSo8uTIGAZypu8g/kF3/PPr+Mtmjpcwy+sFfCAzbT8d4J02xKXyMeJCuwFA3z5/w
	I+J4J8JKSwdymJP/8S+NXufASjqia8eX5lEofT5dnsgdPlfs9pK3Edsyz4gH2fI3+1C8sEUvzLLs9
	zuZOwcN3vXcCPWgExU0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjW5u-0005p4-MH; Fri, 05 Jul 2019 21:50:14 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjW5d-0005nx-GH
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 21:49:58 +0000
Received: by mail-qt1-x842.google.com with SMTP id 44so8685264qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 14:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=h/A4tEl2mtBha7cHiuEYdkY3q6oP12EZ6C0/Om+AD10=;
 b=WSx2lsXJMKNctZUo8/bf87Uvk5Fi7zcXw+qV0e6Q8AQjzRrwOAT528YRawwec7hge7
 mVfSRjx3YMBkeTx24cG51ppvVAONcixhZgueA7zPAJYNLo1l8mtOvZT00ESxovvB9rfU
 a5I50JSemGPaPw5hbCg61YbXa83GNjX8pWkpr8S6bySjaysb++e8WyOfrbAn/43XZwvg
 DRUgbYcSEXRlJWM7/cQiIh6d4/a2IQdwhOMBSi//5JKIPKQpuuTKf8ZAcXr/nvftPYPj
 OdKpHerRNb5SMMggJfG2ZVdyU8MUDdeZws0SbOF7JdZSnBEkJrLTMkbym1Y1uRtsSSgX
 nQ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=h/A4tEl2mtBha7cHiuEYdkY3q6oP12EZ6C0/Om+AD10=;
 b=f/W0koZlSt22iNE7ThYznbRKTy6upRQ+db9tdmVixn433ooNS+dAArUmyFNUGbEX+A
 YKmJvt5heXk3pzcruPM2iTPjT9HVrDh1WjAF7PCpVZVlj1f2ThlNr6twFl6UVvXdbHzL
 bKyNK8Bv5QRW6S8I8Orn78pHBIUMkSVearL21lmaHnM6TcN/0x3e0I6kTTuIwAv1+qB1
 kQoH/kc2IuRpoZjXAyeel80ruIVu6SVcv66yT3/QfMjMPkIW5shgkDBgiGMTAJrX4NkB
 A0zer9P5/8dNG6foaeXvN7ipbACJkOGtwghhK28lG2bwCdLxuEe/evwPkx1JTrLqPwIO
 BEmg==
X-Gm-Message-State: APjAAAUS3WRWzsEaWqnJbsNzIekcXlXLZTfo0MSnFoAREBsyJy0NJxaD
 vQ/lxvm9Jzi9KdlMDg0yEK9qRnvGJYo=
X-Google-Smtp-Source: APXvYqwBlDfCbZo7ZTpdIz2bIqflSAvvdtH0vqRV0LSfiC8SoRw/HCmTSvtjef6ryWsNF3JJv6vNYw==
X-Received: by 2002:ac8:24b8:: with SMTP id s53mr4592196qts.276.1562363394280; 
 Fri, 05 Jul 2019 14:49:54 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id t29sm4699697qtt.42.2019.07.05.14.49.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 14:49:54 -0700 (PDT)
Date: Fri, 5 Jul 2019 14:49:49 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH net-next 0/2] net: mvpp2: Add classification based on
 the ETHER flow
Message-ID: <20190705144949.1799b20a@cakuba.netronome.com>
In-Reply-To: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
References: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_144957_684425_E764A700 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  5 Jul 2019 14:09:11 +0200, Maxime Chevallier wrote:
> Hello everyone,
> 
> This series adds support for classification of the ETHER flow in the
> mvpp2 driver.
> 
> The first patch allows detecting when a user specifies a flow_type that
> isn't supported by the driver, while the second adds support for this
> flow_type by adding the mapping between the ETHER_FLOW enum value and
> the relevant classifier flow entries.

LGTM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
