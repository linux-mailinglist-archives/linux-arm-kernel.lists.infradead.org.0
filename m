Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12949D0B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJFkPL6lu0WS/Rpf6AJIHd1FlFenlBUhlGOJEKvu1zY=; b=OFwU8hbZFhqoe2
	SSKqTapz0DBepLEOB+ADwuqSIuIn4M8SyOS9P9XQIhBxHixo0wRAka5u7evzc+QEHmMdcSUtE3QiF
	SIGA1UvJZT35rtvl0dak7fg6qWtb8RKoeOhwUHn8xncMoikXD+WkuHf63j7ue6sjdJ6/52Poj1Xs3
	M5dds9N+fcRnul2pU/6am4F88zrToHVB0CSyyotl4ipxMXWl0R8FbmkR3X4GbHdcunOFx6ueVbP5X
	g6mAXCwqQTiz+dVde2okNWd7sPtZe+WNvrt1Zl0/0XzezNieP6qd3+6zF180K6rPYBeuvHd8Aj6Dr
	ECN0YEwB3VJ+jWExCSkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2F82-0003f4-7F; Mon, 26 Aug 2019 13:33:50 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2F7i-0003bZ-Td
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 13:33:32 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7QDXPgb077692;
 Mon, 26 Aug 2019 08:33:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566826405;
 bh=x/l7WTUYQLyGQJpHktcZftFgeoQOSOMXYep1kT3lYfw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=R+SZaD59BlyW747nt5XrFCAdEOIDxeE8lQ1kTQSmRTsr7Mr//f+APNIRMwepeG2EB
 zTeM8hMKPFvEUyS2EVw7PP0bOj4ydRAQWJ/B58WxoYjvwyyelIb09mqEbCBCO8MQIW
 cAI8yJD+/gEXJdzHEFR23FMSFOM5VzE0wQC4blYE=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7QDXPJZ106311
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Aug 2019 08:33:25 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 08:33:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 08:33:25 -0500
Received: from [172.24.145.97] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7QDXMNr025859;
 Mon, 26 Aug 2019 08:33:23 -0500
Subject: Re: [PATCH] ARM: dts: da850-evm: Use generic jedec, spi-nor for flash
To: Adam Ford <aford173@gmail.com>, <linux-arm-kernel@lists.infradead.org>
References: <20190723121042.28634-1-aford173@gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <24eb9276-87e2-575a-2c4f-967b65e61b1c@ti.com>
Date: Mon, 26 Aug 2019 19:03:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723121042.28634-1-aford173@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_063331_279931_B6E15629 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, adam.ford@logicpd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/19 5:40 PM, Adam Ford wrote:
> Logic PD re-spun the L138 and AM1808 SOM's with larger flash.
> The m25p80 driver has a generic 'jedec,spi-nor' compatible option
> which is requests to use whenever possible since it will read the
> JEDEC READ ID opcode.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied to v5.4/dt

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
