Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3521BE9E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNezUUYtwdh4RmiQj0GR1UHA170S3LFGOS0gaOTIN/E=; b=PxLY0OZFlSL8Uv
	CMt9wmfY6BPR+/fLRC+tmEc29NTv3za0+4+DnUphvzWpLNu1mT6E2qp6mi/IafhJ2/ZZqqDbV2zmV
	ccotSXKNCdvuIjrZwTF4ZPHl63KmVyAGOHWx+U5FKM2owDxitTnqM0abtX4C/SOhGaG5Ngmzna9WM
	QuaI5GVUGxWIzA4+dAhDXZHyZ9JKwH4tGGLDNH11wvrfKfOEpi6wHFeeFA7czP5q3EX/mPgDzcv+O
	g4kjccDS+9g6izkuz5Whv8ImYz2CkL19Tl3icEYIuWUrho2bouzNLroYK5MVfklt9Mmli3Neg7R8S
	AGimZ5OoNYsJmBIpM/fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuHF-0007nz-9T; Wed, 29 Apr 2020 21:29:57 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuH2-0007lX-Vx; Wed, 29 Apr 2020 21:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ehAF5VJKlo6UElUpdCPqKU/hhwZxb3s8IJbl7lMP8jU=; b=gXPH7oCruVVWWeaOWFGwA4pm/n
 QF4m36glwEcwVh2Bb98/eY9snKBd52heUHGFf8+aXqtVT3WG82JcyjGkWkh77WdwqoUpMgUd0/My9
 e+cpUxQc/kkL5FJhrsZsuafeuFua40IXiztBYAzYe8OvgYyTbPnfFnu7U+qSNEt7Q9C0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jTuGr-000KLe-7W; Wed, 29 Apr 2020 23:29:33 +0200
Date: Wed, 29 Apr 2020 23:29:33 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFC v2 00/11] dwmac-meson8b Ethernet RX delay configuration
Message-ID: <20200429212933.GA76972@lunn.ch>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_142945_028875_45ECA3B4 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, jianxin.pan@amlogic.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> - Khadas VIM2 seems to have the RX delay built into the PCB trace
>   length. When I enable the RX delay on the PHY or MAC I can't get any
>   data through. I expect that we will have the same situation on all
>   GXBB, GXM, AXG, G12A, G12B and SM1 boards

Hi Martin

Can you actually see this on the PCB? The other possibility is that
the bootloader is configuring something, which is not getting
overridden when linux starts up.

	   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
