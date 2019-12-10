Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90627118A0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:40:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SP8f6mrVd5vip5wTcbzC2VVnTZAahoBhTjd4YWPgp3o=; b=utXYrVXo5meOCu
	9D71n+qB3SbFoUFdb++2x4sRZrXXGqCb22UyadyF7cEy3OSMSgNK7r/VmnK1AB9nbPd1VqwVjbq+L
	MxdXdfGGORWBLiwEIdIV6U2jPS7x6C5er258ZKqkZN0z2np4perKxZ2HmiRlrBVzFNXjU7cbxJCqq
	SldWhkyFaZy1goD4uRPhiw1UbcdajgBR3KFmgmU68Ef3868ux2E+PkWaOgsYVux1c7vDIgunS+WaY
	jBqOW42lsAyNSj25LDMYey4ATKBpLyKjIf2BqRbxJX1A9WXc/6lc9oVUihRVzCH5LUq2gM/SjApyK
	MiG+1pHc/jX6JWN+iB0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefkn-0005hH-MZ; Tue, 10 Dec 2019 13:40:41 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefkb-0005du-Pq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cdt+rshBa+gYGyev4r3AS6AdZGRuBHYBl3ryYCASj5E=; b=0OePoGwQoE012Rjba6siRo/NN9
 TEB2c+uGa1nhdH4ZZQ7kgNh8uoypWw2EHJLRDqSuJ/4nx8HJcnRacv1gxtc6OQY5VRHJ9bDZIhoXK
 OgG+c7f7W0QTkBEEIRZignVEgpl6xKVSonFViBP5UH9cO7SSBQHbEDw/jAwIIyNc841g=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iefkX-0004Lt-0e; Tue, 10 Dec 2019 14:40:25 +0100
Date: Tue, 10 Dec 2019 14:40:25 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH v2] ARM: dts: mvebu: add support for SolidRun Clearfog GTR
Message-ID: <20191210134025.GB16369@lunn.ch>
References: <6b2fb10939be4d3920840fb568ba146b9c25428a.1575964907.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b2fb10939be4d3920840fb568ba146b9c25428a.1575964907.git.baruch@tkos.co.il>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_054029_841629_87621B93 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 10:01:47AM +0200, Baruch Siach wrote:
> SolidRun Clearfog GTR L8 and S4 SBCs are based on Armada 385. They
> features 8 (L8) or 4 (S4) switched Ethernet ports, 1 1Gb Ethernet port,
> 1 directly connected SFP port, 1 SFP port behind the switch (not
> currently described in DT), 3 mini-PCIe slots, eMMC, SPI flash, USB3
> port.
> 
>   https://developer.solid-run.com/products/clearfog-gtr-a385/
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
