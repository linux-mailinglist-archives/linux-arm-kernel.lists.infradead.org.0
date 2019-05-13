Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02821BD64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 20:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cEK8weSeNrLgV0Ts4xP6F37s6wU8MZoYEe9r6cRbjn4=; b=qp2BS+gnKQm4+ZYF4VTfTRzlw
	5G2VGAAiq2uO3zz4esvxGd7YfvJrVVdgVcEm2yyMsHworWbmJQGBCaERvpzt9ooagzXHluceATN6p
	e16TYDXK2I/WcQK4zhjpQztlJkGQGnUPkMJLwuNLPQK32+hgBH5xyeYXvwJtsMlKhm6TZ4LLNcMet
	uW0QA373JKB8KAiBTYH8pXFqATPQzxOtaB/C26p8/VPd7HcCroniMTZ+TLrUUrgS0dIEZx+jzkEQb
	WCMrhhnnL5lvdOIgTj5Ald3Dd1MhpNWH+PONMuRnfmg3YmOnMO8LuivAjnVY4Hu4MSVpY178+Lnot
	64bo83S0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQG03-0005Pr-5s; Mon, 13 May 2019 18:48:35 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFzw-0005P4-PQ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 18:48:30 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id E7EEC4E204B; Mon, 13 May 2019 18:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557773306; bh=hCoM+MZKQxVEbks3ixHBaQdKIT5dEO7R/ECZ/P/HzIg=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=L1lZhrZGW3NlDnLKOxQtBMkkoB5wtFI1G3A5ejzzKIYpo4O8+B6Ez6gzNQ31dYsl/
 3uTR/97QjiIYnMDdspJYpUbOlHujCTcXJEO944m7AU5X1RvvUBDLCy5v89zt6C9hbg
 3VAbg4vCtiaz8EyvQJ60dL0umk3fnaUbon18aiQw=
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v10 1/4] MAINTAINERS: add an entry for for arm64 imx
 devicetrees
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Mon, 13 May 2019 11:48:26 -0700
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <CAOMZO5BaQnrDOYogzgpmCExjB+uhYQ8SsxBiMWrSB-1KRtgeVQ@mail.gmail.com>
References: <20190513174057.4410-1-angus@akkea.ca>
 <20190513174057.4410-2-angus@akkea.ca>
 <CAOMZO5BaQnrDOYogzgpmCExjB+uhYQ8SsxBiMWrSB-1KRtgeVQ@mail.gmail.com>
Message-ID: <e61562bfc80e25bf233ae7fd7b032f83@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_114828_874855_51B160E2 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-13 11:01, Fabio Estevam wrote:
> On Mon, May 13, 2019 at 2:41 PM Angus Ainslie (Purism) <angus@akkea.ca> 
> wrote:
>> 
>> Add an explicit reference to imx* devicetrees
>> 
>> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
>> ---
>>  MAINTAINERS | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 7707c28628b9..0871a21a5bbb 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -1648,6 +1648,7 @@ T:        git 
>> git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
>>  F:     arch/arm/boot/dts/ls1021a*
>>  F:     arch/arm64/boot/dts/freescale/fsl-*
>>  F:     arch/arm64/boot/dts/freescale/qoriq-*
>> +F:     arch/arm64/boot/dts/freescale/imx*
> 
> No, please put this entry under ARM/FREESCALE IMX / MXC ARM 
> ARCHITECTURE
> 

I believe order is important. Would you like it before or after the "N:" 
entries ? Or just as the last entry.

> Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
