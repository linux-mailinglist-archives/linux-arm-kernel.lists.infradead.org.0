Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE321A6B40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DT/erPKQGAfWT8O0eCkjBrmMfhJSi8GyUJOnG+x4qBY=; b=QbGWtE0qKMeyaHNHGAwEzkMdK
	d53gqZ9GJ4Bj4TslI55fZH8bBbwV7EpVwINzbEWSfajI1lzAdcsTIlrzkIUNsG5IcsR/L10o9R6aU
	j3Fr8ilJ9vJPXU+LJQ/VHPGBNtnDnZ3MArDGL/11u9/OybKoEPonYoazqj02s7aI6aTzkKzRPwQ9N
	UI+i4Lyb6UuO6xa7bRIQzwr1jUqXvr0PnbSrNUb0/PLTc1OEplNZe7ngpxVED7YYF0nyN/oFhIXKn
	JJq4ThnukDvlg0SKwpshSFkv6PW/PjboYANBzEfPNkSWTnZ8xyuJqusit8vIJVTZV3pliKIutN4GO
	4iuOTPNOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2jw-0004If-KD; Mon, 13 Apr 2020 17:19:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2jn-0004HU-SH; Mon, 13 Apr 2020 17:19:13 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7FC22072D;
 Mon, 13 Apr 2020 17:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586798351;
 bh=cOHgDLG2OEFMbA+A0xqNSmIjg/9Q/4+VZgYjP32HOK4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YvkMhGDzbkQJ5IvqSsLJMy9CWA6UNG4IxfMvS+UoFAsU+UEO9UNkS9b4YcZRdQ6Bk
 vhcfTLFDkgguW6HkI5Ex8GY07MxcpUl3o6V6yBIgeg8hpaLIzcNX5Mkk3yhuWrLuK+
 uZul8kU6tCSbErGxg5cODhWOZynWgcEIdPYFLRWg=
Date: Mon, 13 Apr 2020 13:19:09 -0400
From: Sasha Levin <sashal@kernel.org>
To: Sean Young <sean@mess.org>
Subject: Re: [PATCH AUTOSEL 5.6 11/68] media: arm64: dts: amlogic: add
 rc-videostrong-kii-pro keymap
Message-ID: <20200413171909.GP27528@sasha-vm>
References: <20200410034634.7731-1-sashal@kernel.org>
 <20200410034634.7731-11-sashal@kernel.org>
 <20200410060712.GA13759@gofer.mess.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410060712.GA13759@gofer.mess.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101911_933466_C7C511F7 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Mohammad Rasim <mohammad.rasim96@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 07:07:12AM +0100, Sean Young wrote:
>On Thu, Apr 09, 2020 at 11:45:36PM -0400, Sasha Levin wrote:
>> From: Mohammad Rasim <mohammad.rasim96@gmail.com>
>>
>> [ Upstream commit 806d06161af045dba29f3c7747550c93b2ea3ca9 ]
>>
>> videostrong kii pro comes with a nec rc, add the keymap to the dts
>>
>> Signed-off-by: Mohammad Rasim <mohammad.rasim96@gmail.com>
>> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
>> Signed-off-by: Sean Young <sean@mess.org>
>> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>> ---
>>  arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
>> index 2f1f829450a29..6c9cc45fb417e 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
>> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
>> @@ -76,3 +76,7 @@
>>  		};
>>  	};
>>  };
>> +
>> +&ir {
>> +	linux,rc-map-name = "rc-videostrong-kii-pro";
>> +};
>
>The will need the keymap itself as well. It was added in commit
>30defecb98400575349a7d32f0526e1dc42ea83e.

I'll grab it too, thanks!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
