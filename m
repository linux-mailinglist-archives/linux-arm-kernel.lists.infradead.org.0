Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0405251B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iw93jblSo6N95gv2NpvUd3Vf9FUMEkYo/IdIpk9Bkw=; b=aI+myZTfrJlhYQ
	4n2UntiT92/Yz6JioygU3AJvdYtRL3iLscU6/9Nh44+n03rEOfklb2DLn11uyo3y1VeyLh6xSrAs/
	oPRYiYmBEvbAMCePrPMLAqbtk3h8E6GcC2PNZLlNDzgat6mKnTiTlkBpwWhVGD+nXXfPMiSxCDb23
	p56fnjEeyHqpclsfAzXPvhHZVDHZTHcBbn23k/+p8xNL8AVBjKc0oqS7XhMMS27xJug/Q9PfBsFOP
	ahkgj+kKOgi0r2hingrvofwaBC8u1nQ0JFFIfZAWIiCPtBcarCOL2206/KcGXjss63/uBxlDoGmoE
	Nt9VcSCjFkMzqFgFjioQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgA0-00046g-WC; Tue, 25 Jun 2019 07:46:37 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfg9l-00043W-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:46:22 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 284B0C0104;
 Tue, 25 Jun 2019 07:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561448779; bh=pJFkI3fWSyI3YXwgN4D5zBXc+tVZ7/KLL0HehF7gVxc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=fMlug4ukuwi4ANUCTXA4WnCNEE7u2mi346Awn2P4hghOoknLGTN913DmcEhqNCd8A
 wRqVfrjiy4vqQZT5tEQbu6W0tWKfhOH6A+NhU7td1RurqQKep9Y0VDz6M1WMGj4A6w
 UEZiokOlfHgLhAjNV7m7cP5ELhUmRVHD36vrsyCBy8b6RXxOG1iS/EbPLLCJfxG1O0
 yu5uHJx8jzrwa7sVF622+INOiDxU/wKbipdHEIhgMX11d80evELAP4NWxSI3sAt0jJ
 3317bTj/VFqBZ2SJwFFNtgsL4xO4L42KF9xX74dnPKC6yg3mqBf1NsqKXJFYei8noO
 9+j8uVeIdeRSQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 02F9DA0067;
 Tue, 25 Jun 2019 07:46:15 +0000 (UTC)
Received: from DE02WEHTCA.internal.synopsys.com (10.225.19.92) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 25 Jun 2019 00:46:14 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCA.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Tue, 25 Jun 2019 09:46:12 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Subject: RE: stmmac regression on ASUS TinkerBoard
Thread-Topic: stmmac regression on ASUS TinkerBoard
Thread-Index: AQHVKc4Y+jzSG3DFNE6d1bJbedPjHqar/2Mg
Date: Tue, 25 Jun 2019 07:46:12 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B9D7065@DE02WEMBXB.internal.synopsys.com>
References: <8fa9ce79-6aa2-d44d-e24d-09cc1b2b70a3@katsuster.net>
In-Reply-To: <8fa9ce79-6aa2-d44d-e24d-09cc1b2b70a3@katsuster.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.16]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_004621_548462_7796AF7B 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Katsuhiro Suzuki <katsuhiro@katsuster.net>

> I checked drivers/net/ethernet/stmicro/stmmac/stmmac_main.c and found
> stmmac_init_phy() is going to fail if ethernet device node does not
> have following property:
>    - phy-handle
>    - phy
>    - phy-device
> 
> This commit broke the device-trees such as TinkerBoard. The mdio
> subnode creating a mdio bus is changed to required or still optional?

Yeah, with PHYLINK the PHY binding is always required ...

How do you want to proceed ? I think DT bindings can never break between 
releases so I will probably need to cook a patch for stmmac.

Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
