Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C604133F2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+WQmRDUDDPAgb/KMlwpwc1fSe96ea4v0tHGO8GODkII=; b=tib3lKXUbs5Lr1
	hFHV1kQ05cPD5dz0krze3+5ybYF0lybVM8/hJr5LZxI1QukvPLmDKpfLhO9IB4ZovIIl4g36xtAfN
	3RWM3PsJFDmq1GSGF4HF3KWi7m7c0VoXY8t5SZ5AnMOQR8I62E4PxMg6otyLlpjTGI49q+/mLLOYY
	OB19GR4o/b6jmhSGbSpp5IEvuU1XnV3ZtohplI57ZbYeemMM0FVQsQn0JPOvMbEbx2BCF9XumLo5Y
	0TeK0gofBD5bn2xFru1dRPBBGh13/4PVhSHZDDeRbkp/HgfJW2yApslbspgu2kYfA/u7PeTY1c8j3
	ZSNp3I0zQu0Tol3GmT/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3F1-0007yr-DG; Tue, 04 Jun 2019 06:48:15 +0000
Received: from mx01.recaro-as.com ([80.154.95.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3Eu-0007yZ-SV
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=recaro-as.com; i=@recaro-as.com; q=dns/txt;
 s=recaro-as; t=1559630888; x=1591166888;
 h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=35f3eLN34+xpHtEBi1v4Dj/VDw/4IOnR03v2qPOLOGs=;
 b=DpCKi63KOi4VZVAnS5SBkPca9X++JdGwm7b+waiA2fPCEtg+cYwRJkSH
 zSfG4CC+1SBaaf91dKnNfvcpRAvmVeOSlBe13v/odQrYgsXZ7hmr17gno
 cdwn7q/xZV2OLiL5PFlaL2OgCw1r6E8gmPqKQrTvXsIRRm6XaOihpM3NX
 LYEN3Chz9j8CWiVpztbdIwDoIzDwEWdYuUYtzqY0rKOEVS2VZCfAilv77
 3MkvdJKXpsvAnHpPoL+k4aK4t7/b+7U1OGOnPjyv7ntaSbeqfGvm5gD/R
 N22BJRiJr+Sk0s4FByUrnhNqdFJ68ic/Fjwqu2I+ie70J6zQlftalmtVM Q==;
Received: from unknown (HELO shwex004.recaroas.local) ([10.7.1.201])
 by mx01.recaro-as.com with ESMTP/TLS/AES256-SHA; 04 Jun 2019 08:48:06 +0200
Received: from shwex004.recaroas.local (10.7.1.201) by shwex005.recaroas.local
 (10.7.1.202) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 4 Jun 2019 08:48:07 +0200
Received: from shwex004.recaroas.local ([fe80::d9f2:f172:96c9:b2d7]) by
 shwex004.recaroas.local ([fe80::d9f2:f172:96c9:b2d7%14]) with mapi id
 15.00.1473.003; Tue, 4 Jun 2019 08:48:06 +0200
From: "Klassen, Andreas" <Andreas.Klassen@recaro-as.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: AW: Linux ARM Patch Ethernet PHY driver
Thread-Topic: Linux ARM Patch Ethernet PHY driver
Thread-Index: AdUanq898FdzgS5cSxyH+o7hxbXV4wAAoGiA
Date: Tue, 4 Jun 2019 06:48:06 +0000
Message-ID: <c39c9ec06da84fa8b9170bb046192d66@shwex004.recaroas.local>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.50.229]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_234809_228545_2304BE39 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.154.95.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello community,

I found you via platform Linux4SAM and recognized you are developer for Linux ARM Kernel. I want to have access to the Ethernet PHY DP83TC811 from Texas Instruments, but this device is not available in kernel yet. Kernel 5.1 has implemented this driver, but I can't use it, because my processor is an ATMEL SAMA5D27, so this Kernel is not supported here. I started to bind this driver in Kernel 4.14, but there are too many depencies, primary in header files. Could you please write a patch for this device? On manufacturer site is published the device driver description:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/phy/dp83tc811.c
Any help will be appreciated.


Kind regards,

Andreas Klassen


Follow RECARO at   www.stream.recaro.com<http://www.stream.recaro.com/>   |   www.facebook.com/recaro<http://www.facebook.com/recaro>   |   www.twitter.com/recaro_de<http://www.twitter.com/recaro_de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
