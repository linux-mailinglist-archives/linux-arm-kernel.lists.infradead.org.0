Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C45AD831
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZLcb0G+GMedwQ9fX9JlVSaKv/376XQqBNAf9WfPQwfM=; b=ppgKchMTf693as9bpoOES99P4
	xWidLsrPrdUsTpQbT7C1Xzky4Fj9rYNfLjRSkbK1Xr5nYebCq5lpnmUOplhgtYZ7iAGrIgEuYN8Tg
	+QvKipCWoVFQDhDzjiRGST2M7d5SA3ub2svyLJs/JQZ//8PE7ZCd15Fltm0rD+qLat9wQMDl8Qt0I
	eyLC1LW9ICp69teLfvJD7rpv/xrw1Jj6ILg/tQUMKGsJd0wuGG0cBno4rXJTQOqk2rpqopQ8KeFbI
	VedZG/1kZFhGDkYThVrMkisY+qwLrc8BxzVaFPg82JVibIfl7YVZPZSNBz7GygFNJW/+60B8DwtzQ
	hfJZ2QY4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7I8H-0003fQ-6k; Mon, 09 Sep 2019 11:46:57 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7I8B-0003en-C2
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:46:52 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x89BkgW1100884;
 Mon, 9 Sep 2019 06:46:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568029602;
 bh=/jq7cijuT/yDbpHrSFnEokOE16TAsFzPk4/mkz+03ls=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TQVx9b+vbNf7GOrnZJ6mDALVH/JtzscMXZD/nhzHIkt+7C4u/3HvSNAhBxvNjuVqj
 b35zJA++dtztR1odxrms4/wHESHcUNSDB/NO4gsUWIBK8oGiWi9lYttusrmKHCxd5q
 Vie9lZS06lwE6m5DOXNXwJVLTy16oD6++4PItUEY=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x89Bkghq027347;
 Mon, 9 Sep 2019 06:46:42 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 9 Sep
 2019 06:46:42 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 9 Sep 2019 06:46:42 -0500
Received: from [10.250.98.129] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x89BkeNh062197;
 Mon, 9 Sep 2019 06:46:40 -0500
Subject: Re: Status of led-backlight driver
To: Daniel Thompson <daniel.thompson@linaro.org>, Pavel Machek <pavel@ucw.cz>
References: <20190907100726.GA12763@amd>
 <20190909111410.dwqvg6b4lgxymn2o@holly.lan>
From: Jean-Jacques Hiblot <jjhiblot@ti.com>
Message-ID: <e40fcd10-85ef-9e04-0960-210736075f1f@ti.com>
Date: Mon, 9 Sep 2019 13:46:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909111410.dwqvg6b4lgxymn2o@holly.lan>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_044651_456743_E55069F7 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mpartap@gmx.net, tony@atomide.com, merlijn@wizzup.org,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, tomi.valkeinen@ti.com, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 09/09/2019 13:14, Daniel Thompson wrote:
> On Sat, Sep 07, 2019 at 12:07:27PM +0200, Pavel Machek wrote:
>> Hi!
>>
>> I don't see the LED-backlight driver in -next. Could it be pushed? It
>> is one of last pieces to get working backlight on Motorola Droid 4...
> Sorry, I dropped the ball on this and was therefore rather late
> reviewing this patchset.
>
> Assuming I have read the code correctly I think there are some
> problems with the max_brightness handling in the backlight code.

Can you comment this? I'll be happy to fix the problem.

Reading the v4 again, I noticed that that I still had not removed the 
brightness scaling. Is that the problem ?

JJ

>
> Daniel.
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
