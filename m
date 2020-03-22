Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A71918EBF5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 20:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LCBy7C7CSCNLWRdauJ+OvWX/1n1Pej1luMYiF1h5pVI=; b=AiTdhGNUHziyyOT15uwIZ76+2
	Ef8wCeTI+npT8XFUg+iLEJI8SGF3hRfn9wYowPX8olL2oNWFiOfie7lqjCFzudgrw343kXQExg7i4
	3ezGa7DTttS4kzmGAYRbhlRvldUYBTsCYCO+zS6Rc+OVyQ3pCI02qQ2RPAqHNEl4GOQ8EEFGiDLQX
	juklK2G3oq/yybYekOA+2P+xh4wJe7WJLIraM//YBpTSSbR4zbc2w3oTrp456yU2I54f0NbBwKdVg
	YUoM/YCwebvhNDboWkYtqznOa/PyhYKed7jVEJiU5CCk4kjcW34bBhR1yQ1JBK/WLv0Xe2bafS19K
	xYfhLA2Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG6Ra-0008Dd-RJ; Sun, 22 Mar 2020 19:39:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG6RP-0008CW-0h; Sun, 22 Mar 2020 19:39:24 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E2772070A;
 Sun, 22 Mar 2020 19:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584905962;
 bh=aGGx1nH/psZA7otCHWR4bp5UFDdxLz4Yls1e8FeqbP8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RpzIB6/NcuUVL2rRNhtd463rKUSmMi1zOKWJ7aOy89Esuu+Q+/QRp6HstMSs9FGn9
 inmSJqWLSN0wR51pFwU8rnc8CDiAcu6Tf9IE78z9qzzL87ikGPu3sKiEsitLF1ibY+
 UWYLCHX1KEqkG4cc5p3hFaSV1vRn/OTd7bOX/sVA=
Date: Sun, 22 Mar 2020 15:39:21 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH AUTOSEL 5.4 08/35] ASoC: meson: g12a: add tohdmitx reset
Message-ID: <20200322193921.GP4189@sasha-vm>
References: <20200316023411.1263-1-sashal@kernel.org>
 <20200316023411.1263-8-sashal@kernel.org>
 <1ja74gg0v8.fsf@starbuckisacylon.baylibre.com>
 <1jsgi0ckcc.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1jsgi0ckcc.fsf@starbuckisacylon.baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_123923_079037_C9180169 
X-CRM114-Status: UNSURE (   8.98  )
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
Cc: alsa-devel@alsa-project.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 07:31:31PM +0100, Jerome Brunet wrote:
>
>On Mon 16 Mar 2020 at 09:28, Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>> On Mon 16 Mar 2020 at 03:33, Sasha Levin <sashal@kernel.org> wrote:
>>
>>> From: Jerome Brunet <jbrunet@baylibre.com>
>>>
>>> [ Upstream commit 22946f37557e27697aabc8e4f62642bfe4a17fd8 ]
>>>
>>> Reset the g12a hdmi codec glue on probe. This ensure a sane startup state.
>>>
>>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>>> Link: https://lore.kernel.org/r/20200221121146.1498427-1-jbrunet@baylibre.com
>>> Signed-off-by: Mark Brown <broonie@kernel.org>
>>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>>
>> Hi Sasha,
>>
>> The tohdmitx reset property is not in the amlogic g12a DT in v5.4.
>> Backporting this patch on v5.4 would break the hdmi sound, and probably
>> the related sound card since the reset is not optional.
>>
>> Could you please drop this from v5.4 stable ?
>
>Hi Sasha,
>
>I just received a notification that this patch has been applied to 5.4
>stable.
>
>As explained above, it will cause a regression.
>Could you please drop it from v5.4 stable ?

Hi Jerome,

Sorry - I've missed your previous mail. Now dropped from all trees.

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
