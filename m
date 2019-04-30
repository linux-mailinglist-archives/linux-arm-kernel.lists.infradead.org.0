Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6C1FB18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 16:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Mime-Version:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iXdOzE00VYSPjxB7mi3Mx9kY30d8QuWsfr0pHgXQThE=; b=WUxVEXpOg8hOec
	DBWvvShyBagUY4PYUMRh4HhqTxb3IHr1vAoW1k/EoNE+Uu3vvix/LEz8VdldY1J7kROiGEOdtQ0xc
	ymwVE0ibeLB4gS6/v95scy1xrFm8Vvcn4VgGYZ5xkedrbMhmtsGFPNbann5+xaFVGrjRWUjEgDgto
	T6bfO52NRSeytYVyUiwwN2RL7eDKrF6hbSOXrQxROr2X7SkAya1JwHg3L7HzDw2a9X2MHWkI2EIjR
	sjwkbYogDyaX9d1h/18NDfRGHME75m/afzPYmmrJlfXP3Tk3Pj/KxNP/2W1l5E26kN+SidtKXwrco
	clQlLTmheaRxPsDN37Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTSp-00024X-Fn; Tue, 30 Apr 2019 14:10:31 +0000
Received: from securetransport.cubewerk.de ([188.68.39.254])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTSi-00024B-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 14:10:25 +0000
Received: from DHPLMX01.DH-ELECTRONICS.ORG (unknown [188.193.158.174])
 (using TLSv1.2 with cipher DHE-RSA-CAMELLIA128-SHA256 (128/128 bits))
 (No client certificate requested)
 by securetransport.cubewerk.de (Postfix) with ESMTPSA id 1AF6B5E974;
 Tue, 30 Apr 2019 15:45:20 +0200 (CEST)
Received: from DHPLMX01 (localhost [127.0.0.1])
 by DHPLMX01.DH-ELECTRONICS.ORG (Postfix) with ESMTP id CF4E22103FAB;
 Tue, 30 Apr 2019 15:45:19 +0200 (CEST)
Received: by DHPLMX01 (kopano-spooler) with MAPI; Tue, 30 Apr 2019 15:45:19
 +0200
Subject: cpu power up timing changes causes UART rx character loss on imx6ull
X-secureTransport-forwarded: yes
From: =?utf-8?Q?Christoph_Niedermaier?= <cniedermaier@dh-electronics.com>
To: =?utf-8?Q?linux-arm-kernel=40lists=2Einfradead=2Eorg?=
 <linux-arm-kernel@lists.infradead.org>, =?utf-8?Q?linux-imx=40nxp=2Eco?=
 =?utf-8?Q?m?= <linux-imx@nxp.com>, =?utf-8?Q?linux-serial=40vger=2Ekernel?=
 =?utf-8?Q?=2Eorg?= <linux-serial@vger.kernel.org>
Date: Tue, 30 Apr 2019 13:45:19 +0000
Mime-Version: 1.0
X-Priority: 3 (Normal)
X-Mailer: Kopano 8.6.8
Message-Id: <kcis.E7DDD7DFA27C49D7987A7EAB797CB891@DHPLMX01>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_071024_650588_5A4642E5 
X-CRM114-Status: UNSURE (   4.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
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
Cc: =?utf-8?Q?Sascha_Hauer?= <s.hauer@pengutronix.de>,
 =?utf-8?Q?Anson_Huang?= <anson.huang@nxp.com>,
 =?utf-8?Q?kernel=40pengutronix=2Ede?= <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I have found out that the commit 1e434b703248 ("ARM: imx: update the cpu power up timing setting on i.mx6sx") causes UART rx character loss on imx6ull.
The commit is designed for imx6sx, but it also changes the cpu power up timing of the imx6ull, because function imx6sx_cpuidle_init() is also used for imx6ull.

After receiving of 32 characters correctly, the following characters 33-36 gets lost if there is no delay in the transmission.
I connect the imx6ull with a native PC COM port.

If I revert the commit I will receive all characters correctly.

Has anyone discovered this behavior as well?

Thank you,
Christoph


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
