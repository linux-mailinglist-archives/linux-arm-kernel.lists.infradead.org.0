Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74529D0B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHikkO4HomQCUJKjv5F1jaUec3OITbNYOhbOAQXqC4g=; b=Zchh/bvKVt0x5H
	9pXir+JMPb57cupE79pmY1AtsEvs3dpx/0piEZ0vgp7bMZZ1WUkiitb6/td4y+gVWlUxlflqlR8AW
	BN8YU/CPB6AWj7bCVbzzc0rsj3HSxxFDMxGMl+Ni/uUaWhlE7sbiHVbnpspJBOb5JW6OY5ClKmtI2
	Vxkdd65oxWxuKin07TPf9BZP6uhDeIupTeyOTCd/wskoD8Q6+BXzaiMJ/wmUFdy8q5wZP0j64fvNu
	O4Uqp6xPAP4kGKRUTa3PcF368aku0hcM3t0cL0F6ByWejffHEqtUUjybbEblDX+fGj+HOYzQk3Y/e
	Wh3gZR47RTbUMH8ha4vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2F8y-0003yO-0F; Mon, 26 Aug 2019 13:34:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2F8k-0003y3-Tx
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 13:34:36 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7QDYRNM079246;
 Mon, 26 Aug 2019 08:34:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566826467;
 bh=tFtUvrneNrSqbCFtE8usIztfzaxK1LraQM5WctMkqTA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=qViWhYJz73w0k2FAsMDL8ujwbOcYASgp3m1GuBVMPh1uZiEzi0UJJnhvIVlHCm8Ee
 jCNW+M3etAIjU1plruUGUd852YtG6WVqOcFJh8Jn/DpZ8jAGKpwDaMQWLZZFAFCg+Q
 fW+mnfGNcXN/IzBWLAdeBivW/vcVwbJRTGDR18zU=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7QDYRIn107581
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Aug 2019 08:34:27 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 08:34:27 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 08:34:27 -0500
Received: from [172.24.145.97] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7QDYOCH066831;
 Mon, 26 Aug 2019 08:34:25 -0500
Subject: Re: [PATCH] ARM: davinci: dm646x: Fix a typo in the comment
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 <bgolaszewski@baylibre.com>, <linux@armlinux.org.uk>
References: <20190722213657.27175-1-christophe.jaillet@wanadoo.fr>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <7f2fb9c1-cc6f-0244-1945-13a2b05080b8@ti.com>
Date: Mon, 26 Aug 2019 19:04:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722213657.27175-1-christophe.jaillet@wanadoo.fr>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_063435_044316_ADA94B50 
X-CRM114-Status: GOOD (  10.42  )
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/19 3:06 AM, Christophe JAILLET wrote:
> The driver is dedicated to DM646x. So update the description in the top
> most comment accordingly.
> 
> It must have been derived from dm644x.c, but looks DM646 speecific now.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Applied to my v5.4/soc branch.

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
