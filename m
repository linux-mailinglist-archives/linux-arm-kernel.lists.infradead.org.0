Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D40F264F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0TQXIWYbWEGGD2pDl4T5Wta3IS6Fhv2bIkyKPhVWQ80=; b=Wsb4kO1tejWyYAworFW4RWohP
	a8+/zR+CaNCyaz/0OhqZdfylTm3DSBHmk0JPVyoef2dK9d3QZA1MPavYGq8jXNWlHYva/68ccuVWP
	APCcrpk6VaWjgpiWXtlnM9Fd7Jl8eaKah1QAFddVJ2zI/4cfP7yv3WYLpNndynLPMOKKnU8elEj6J
	ZkRidZyHQP+cSR/8OMhLQX/n42eCGam5Zk7kj6QZFPQ0JhCR7MciDelNeWnYHaRMo1A3wWhKdGigr
	uRymIaNLBiaeuKJr5wKjWKNy7gdlbr9YbQtzY3zh876Gl8quFR7riKsLvGzFj5xkIffJDrvdWPwBK
	GalaaajNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRZL-0006lW-Bj; Wed, 22 May 2019 13:46:11 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRZE-0006kb-4G
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:46:05 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id CACA44E204B; Wed, 22 May 2019 13:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558532762; bh=7yenqbpr2XCwDV8Mlbh8CEblalOVAjTP8mc9IslVsTA=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=inhZwtg40oBX+LxLUEoqRhVavTXOdAGgGF5Ms3/JiFTkWA95fC7hziW90SWMK0bkS
 n4sW72/bPG1wUcDbgdfaGgraHdDR9dMOvh2AQaTdIKm7ML0ogPMdk9bybluoeNre76
 7dngbxxlTEPlegbTtEs/g4CsK4ysIKIS2DRB1MNY=
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v12 1/4] MAINTAINERS: add an entry for for arm64 imx
 devicetrees
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Wed, 22 May 2019 06:46:02 -0700
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <20190522083051.GB9261@dragon>
References: <20190514132822.27023-1-angus@akkea.ca>
 <20190514132822.27023-2-angus@akkea.ca> <20190522083051.GB9261@dragon>
Message-ID: <cd02331f028e70c0ddacc6e6dcff502e@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_064604_210979_B6B97C40 
X-CRM114-Status: GOOD (  11.29  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn

On 2019-05-22 01:30, Shawn Guo wrote:
> On Tue, May 14, 2019 at 06:28:19AM -0700, Angus Ainslie (Purism) wrote:
>> Add an explicit reference to imx* devicetrees
>> 
>> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
>> Reviewed-by: Fabio Estevam <festevam@gmail.com>
>> ---
>>  MAINTAINERS | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 7707c28628b9..9fc30f82ab81 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -1624,6 +1624,7 @@ R:	NXP Linux Team <linux-imx@nxp.com>
>>  L:	linux-arm-kernel@lists.infradead.org (moderated for 
>> non-subscribers)
>>  S:	Maintained
>>  T:	git 
>> git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
>> +F:	arch/arm64/boot/dts/freescale/imx*
> 
> This is partially reverting commit da8b7f0fb02b ("MAINTAINERS: add all
> files matching "imx" and "mxs" to the IMX entry").  I'm not sure that 
> we
> want it.
> 

Ok, I can drop it from my patchset and it will get sorted out somewhere 
else ?

Thanks
Angus

> Shawn
> 
>>  N:	imx
>>  N:	mxs
>>  X:	drivers/media/i2c/
>> --
>> 2.17.1
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
