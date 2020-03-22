Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1202C18E902
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 13:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ULMd3WxeaetRXwJRR1buAwKsTG8yLv5tRIEnFZeiZCE=; b=XZ2avsat9NCZH8Qn/1jQThrY4
	7RxYLqoIPmO+5Se+6Dr/bijVfU6OxU9QKJCPGd8hlJ/qNzoM9stnlQMBpFyCIosIxlvBPW1L9g+kT
	G03GXchclJztZVLOROYy/9itN4SUK9Fnxz4vz5neYjXZYbwDVaI+qkvcyhltmJX75278Nzw9P5EYi
	YsCZnjdsjLVeIDjoIKdf3PAey2BtXopgry7Fb6XarldkYFyC/evXjhTE0pFIu5pMi9GbpsHwtRHbI
	SJ/rYxaY5afDGBezk4ACP2I92TLMahTSvrXJ6ZfU5TgifVLcNzOaBy75OXz1RdiKeKEeSiwSL/1+5
	QyUftRxHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG08G-00056E-MS; Sun, 22 Mar 2020 12:55:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG080-00055d-3T
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 12:54:57 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CA6C2072E;
 Sun, 22 Mar 2020 12:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584881691;
 bh=ihnqjjFBQHTjqmZQrYET48sBcNIirEsBefwMBQ//JyM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aB7nJ4DWaAJFUsQzsoZBASx9grOxujp+SdYHdk+VNC179htMuyphkkg8sNnNKjx5O
 ZyVsj4BihNja0EghmQDJ5prAfv8rfYLsNcOufLwZLCzgfKvO6tFdV2b7v0H6qisMq4
 /fxMuQqhnUW+WZU9LMDnHe+EysSfH2KLrCDv462Q=
Date: Sun, 22 Mar 2020 08:54:50 -0400
From: Sasha Levin <sashal@kernel.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.5 05/41] ARM: dts: imx6dl-colibri-eval-v3: fix
 sram compatible properties
Message-ID: <20200322125450.GN4189@sasha-vm>
References: <20200316023319.749-1-sashal@kernel.org>
 <20200316023319.749-5-sashal@kernel.org>
 <20200316072143.GT14211@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316072143.GT14211@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_055456_166486_13C37004 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Sanchayan Maity <maitysanchayan@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 08:21:43AM +0100, Johan Hovold wrote:
>On Sun, Mar 15, 2020 at 10:32:43PM -0400, Sasha Levin wrote:
>> From: Johan Hovold <johan@kernel.org>
>>
>> [ Upstream commit bcbf53a0dab50980867476994f6079c1ec5bb3a3 ]
>>
>> The sram-node compatible properties have mistakingly combined the
>> model-specific string with the generic "mtd-ram" string.
>>
>> Note that neither "cy7c1019dv33-10zsxi, mtd-ram" or
>> "cy7c1019dv33-10zsxi" are used by any in-kernel driver and they are
>> not present in any binding.
>>
>> The physmap driver will however bind to platform devices that specify
>> "mtd-ram".
>>
>> Fixes: fc48e76489fd ("ARM: dts: imx6: Add support for Toradex Colibri iMX6 module")
>> Cc: Sanchayan Maity <maitysanchayan@gmail.com>
>> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Signed-off-by: Johan Hovold <johan@kernel.org>
>> Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
>> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>Greg has already dropped this one from the stable queues once on my
>request, so please do not add it back.

I'll drop it, thanks!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
