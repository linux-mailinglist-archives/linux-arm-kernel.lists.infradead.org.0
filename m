Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED24707E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kGg5HVF1pa1P5PQtQXrYcM6BrFL+uBl4KXrRv/svAQ=; b=LGB/mLqOw8rXdX
	4o0pdBPLX4bG5YCDkLTg9iXO8neDCr/VUj3t428g5wnBZSxwKoygZdrCavLXbl6P/FzHPAAjTMvVj
	N3q4emVWrDs2zlPGEAw7OcIlWDwVWlyB0tsBtDDAYUCQT7WHf3qOVQFKKXiONqs1Y/ow+fUOFr+Zg
	9utc1HwHRDOHxREWA3ZIC7L4g0tgFYkmSI22WiOq7VFrjAwrEyPiMc+dKoEyScNsXdnlYp4feVuzw
	uWNzGKC14EfjFPF4josAjPeILPPGPnL3J1Q+KGmzq2BwBIb2JdhKYn0UhESC3MzPuxiVt5tcXBd+j
	SS9vwCSnFhSD2sLYk0Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcTQ-0005D1-0c; Mon, 22 Jul 2019 17:51:44 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcT7-0005Cc-Dl
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:51:26 +0000
Received: by mail-io1-f67.google.com with SMTP id j5so71696159ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:51:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q6ryf7dSWkF7D9AkCTyTyLscKOsW89C8muD/l6dLf3s=;
 b=FOZNk1OZ+yZ84sjM12hnw6M1rYL4Uk22n5ANHxj+GpSAqAZ5BS1TdR9FoblCxhfl2A
 m7ce2KNh9Z7kn6/SjHlm8HmRsabXg/cNoUohiVdvaE69foryMxgeqmZexJBGteNEn+C6
 YNay/oSKUx8ALca5Lj5Hpbn05GFF/b8FNCd6W/sqqe/EQAfWS1J7WzW6g7r8DMEptCTt
 TICiFULqqliYUSHjtOJPtV7/c26qthRshl1TIwl9I9C8poeNMjq40HkH0SZUojVnasji
 GYrBMHx/gDvGbb3fUGMNZrVkHJTO5nB/ir8q3wzybhkvKvFTzryh/sCyHE21c5uZpbN6
 VspA==
X-Gm-Message-State: APjAAAU2Vxqp3zX3xEh9KS4c9MPFh9GXDvf9tH7hUxUDsFOQgTs7DMC3
 ogSxQv5cudlQYW8TT6iLHQ==
X-Google-Smtp-Source: APXvYqykd+mKWjnRVCCig9KLNbCG/u0Q9M25HHjkq5xt2zkgutt8OJ6MBG6FqCLepfHtjMEpcgwv4g==
X-Received: by 2002:a02:4e05:: with SMTP id r5mr77720423jaa.27.1563817884669; 
 Mon, 22 Jul 2019 10:51:24 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id s2sm29186059ioj.8.2019.07.22.10.51.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 10:51:24 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:51:23 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 13/19] dt-bindings: phy: Add Marvell COMPHY clocks
Message-ID: <20190722175123.GA13655@bogus>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627122505.25774-1-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_105125_460523_BF208BAD 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Jun 2019 14:24:59 +0200, Miquel Raynal wrote:
> Marvell CP110 COMPHY block is fed by 3 clocks. Describe each of them in the
> bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/phy/phy-mvebu-comphy.txt       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
