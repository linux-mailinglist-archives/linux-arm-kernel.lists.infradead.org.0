Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B388DAED5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7EBdDfG2/Iz8g1x1xfT4iDYb3xokRejRDOAw8fSC/Y=; b=ZzFRYf6XGk0zZ6
	XyW3w+4QPRmrnTcd4o5Fd14yoqHR4AtgPddzwbBpqwyLHBB7vADBJC5K1e2EWypkO8Ss/90RXEYIo
	aGHIY/lGkbv7aTX2rg3c5C8ra1XwyrqV0LLojcK5WKQ0b/3pL3B7Tf40vwZd0Vt+MUtgzIl9pbDP2
	Cg3FW4WZDuOtV9WGJYJXmMMEYQqMoI0BsE2NoIcfFxC5iRnpDUw7qTBruQMUi24UT7EfMZwU4j9FY
	7e32QyUJWRwaJiI8ZeZwaKlcrmI5oY2G7PTTUr2QzcYB3x9w78W945fNJ0SzuIkM3RIcsV+L+YWSZ
	0cfSWJUs4Weh87x7Hbqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6Fs-0007vs-Hp; Thu, 17 Oct 2019 13:55:52 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6Fj-0007vH-FZ
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:55:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HDtgnN110592;
 Thu, 17 Oct 2019 08:55:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571320542;
 bh=C776Kapi3cWTibCH4Brb0rSRcF7BNdlCJgOlAUvhd1c=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=PaZ8FAXMxknrb0WnqgtIp0VotCtpUgrn5aMnO9tjNJRqkvKAr1fPTi5W3t9hBInS9
 Zph/OOhGCWGZhGMG5YlK0uuKP5L1pjCUgtH7Y/MC1Or2SGv3fcAjWMIxEdisnxfigi
 o3G0X3uBS6cbat6EwBvErswPKNJpVFIfSCbFBBRI=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HDtgVF023638
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 08:55:42 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 08:55:34 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 08:55:34 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HDtdDG103976;
 Thu, 17 Oct 2019 08:55:41 -0500
Subject: Re: [PATCH] ARM: davinci: dm644x-evm: Add Fixed regulators needed for
 tlv320aic33
From: Sekhar Nori <nsekhar@ti.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <bgolaszewski@baylibre.com>
References: <20190830102308.22586-1-peter.ujfalusi@ti.com>
 <e6a03603-a901-56a8-c8ad-d528f2d51595@ti.com>
Message-ID: <4160082f-2f52-aa96-b280-abb5c53cc12e@ti.com>
Date: Thu, 17 Oct 2019 19:25:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e6a03603-a901-56a8-c8ad-d528f2d51595@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_065543_600503_D94D6B62 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/10/19 4:37 PM, Sekhar Nori wrote:
> On 30/08/19 3:53 PM, Peter Ujfalusi wrote:
>> The codec driver needs correct regulators in order to probe.
>> Both VCC_3.3V and VCC_1.8V is always on fixed regulators on the board.
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> Applied for v5.4

This too causes DM644x boot to break. I can enable DEBUG_LL and post
logs, but I suspect they will look very similar to the DM365 case.

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
