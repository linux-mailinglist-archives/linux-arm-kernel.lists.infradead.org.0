Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD8C1FF0C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2kSHdsYy4j+MQXfZhhvedmCgXcpZVQ73VnS/JiPY/ys=; b=hi6t6bVspQyafRRtvt3p/zD8Zz
	JJ6Mbif2tXDbykB83bUCghWy27G9573V5/OIApG+VNYtu9rzWMo+kFTbgIMMV4FnSWsHOkTC3rkcV
	7/2m+lucRWsLZ5MoDEqZB9LW7EJ/ydXT91OkbCLHryJSZYj16cDDU8VeAEIOhh8KaeyeqDQCjJ3wI
	IeYYzXx4Mh4ipkTq66OojyFMGNEBYEwwqXbNT/AO9ymf2k9k+bEkNYl33Q80yVxelfOIhO2vCnHGG
	A/zalkDKhm+rtzW8CbvXHWKnIXdT4GdQhXFrVFIfWxTn1nvOcVTDDf0sDneNMpN70OGcpTrtkwlZp
	q4qtiHNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsre-0003ZQ-F6; Thu, 18 Jun 2020 11:37:50 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsrV-0003Yr-8a
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 11:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592480260; x=1624016260;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=ZJq5jod7o37KgX0rG4DZcl10Hx/gKEOzJOIZ43OXlcg=;
 b=o3fL+jKY7BJOCPTDJNlbarnVhpKH1ApKB1+3SxMJP8guzNLKuRlmTZb3
 t1F3cFFnoJTUQAtl6/objpat8Y7L/Cejaf9GnsCuZ8Tt/mCndzlkKlyKM
 YYoEZ5sd6n8Jbzc4uksy9RRjiOAaNB/mwaO41gC7WdyGKSY0oOEVgCovQ
 Y/zjT/QUxxSjIeh4s2LINM2AMA18r88cNFogMO+lV4W0E6jekYmNaUppx
 4dmYdlSw4CobB7ef0LGHApX5SD8SAMTefp61INN9JTn8RXUMMBsv9anEi
 MB1YJBLaB/DuMqRG1bpmTEuCxaTwbv91I+UQ4yOp33RSD7aHGazwuj/qA A==;
IronPort-SDR: tPdpgi3n4Ck3dXTCN+pqPqWOXoFIW95EElUe/F0GR3xUJ/p+hHug0sAHbFY1oR4ItG41OczY2q
 +uQjDYozTcj9ZrELMZQQCs5dxn85VdeJ97z8cm7QxiFKmiX+Ju+1fL6HOKhLoLlc746Gc3hyyc
 6iUsO0JgFpkY+xQLpjDbvaT13YoyZGYhrALptLsRypbOdU5IGniZhdPsEABDRRqv/TiJ1IvlKA
 70+u6QxoYWM45qqEApRx43pWqace/YAStYVVecKRMqbCNF7ezyIZH8ZphvGf+7/eKUXZHMdZNq
 +Ug=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="84121961"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 04:37:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 04:37:33 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 18 Jun 2020 04:37:37 -0700
References: <20200616082556.27877-1-lars.povlsen@microchip.com>
 <20200616082556.27877-4-lars.povlsen@microchip.com>
 <b44120d8-67fe-4ba3-bc76-80a5a0970dad@roeck-us.net>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
In-Reply-To: <b44120d8-67fe-4ba3-bc76-80a5a0970dad@roeck-us.net>
Date: Thu, 18 Jun 2020 13:37:36 +0200
Message-ID: <87eeqcwqnz.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_043741_304798_63606AF2 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Guenter Roeck writes:

> On 6/16/20 1:25 AM, Lars Povlsen wrote:
>> This patch adds a temperature sensor driver to the Sparx5 SoC.
>>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  drivers/hwmon/Kconfig       |  10 +++
>>  drivers/hwmon/Makefile      |   1 +
>>  drivers/hwmon/sparx5-temp.c | 136 ++++++++++++++++++++++++++++++++++++
>
> This will also require documentation in
>         Documentation/hwmon/sparx5-temp.rst
>

Sorry, forgot to ack this. I will add the necessary information.

---Lars

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
