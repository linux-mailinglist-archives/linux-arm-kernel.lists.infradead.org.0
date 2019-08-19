Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF202922F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSYtCkdetSWVF2I0H6OOG5cnQRBHvP0li2aj33/o9os=; b=XHwtsNiZmF6yDy
	wOaJmiNVPCG4Ks9+yex1OolId2YCsCCu0t+ZA1cop3fIajMchCM4vaQJNbWRs96Q1PqnwkFmjXMfj
	ScL8w66Pac8/d/PhwznCUveQIGZMGvdOSF4HEQ0JIOoWzaKilAdT6P++C42i2llWeR1/lF8fMDh0K
	0V15gd6GCgFExTb47Z6RmTnXMcRMIJZPyb9jOEbn/rg1dxP78qd4857JzaOB4hHfwsdclgixzw0BZ
	vu9L46RtspmHTTJ+nzeaMFA8dBJxsoh2I4i8exiVzk/gEf1RbMIK/1Qnf3WDvv8rDzhvzPIxNH+xs
	/NcWNdj8oIvOZGz6Zypw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgLi-0007hq-0N; Mon, 19 Aug 2019 12:01:22 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgLa-0007h2-IX
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:01:16 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id zgLGhBcThThuuzgLKhW3k2; Mon, 19 Aug 2019 14:01:09 +0200
Subject: Re: [PATCH v7 0/9] drm: cec: convert DRM drivers to the new notifier
 API
To: Dariusz Marcinkiewicz <darekm@google.com>
References: <20190814104520.6001-1-darekm@google.com>
 <42c7ef3c-b7e5-8c63-c7c2-bfc6c56100c6@xs4all.nl>
 <CALFZZQHu1C_8idxkwjBdxpW=y9gKmDnLOeTHZ9iAkNo7YubZHg@mail.gmail.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <04c7dcb9-d5b1-804f-959e-d953dec9f937@xs4all.nl>
Date: Mon, 19 Aug 2019 14:00:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CALFZZQHu1C_8idxkwjBdxpW=y9gKmDnLOeTHZ9iAkNo7YubZHg@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFV3jVCXFwOEmTkQx82eRsQbIhJkR81Nq+PQ7+JIxD7SfeDf16QIlfyskYXOROnMUb1Xtz63nmAd+iRuAvv3lI+kSlWyeIEhZqUxAxunUBgSNPsIh0RS
 mjy/qEor/1jPIWCs++cE11cKIMSmJG6MIRet1GEXPjDRkJmQp+a35H+MmUUZQwTTR1+nKE21+e8g8uyyOC+brrm8l7IGJzM2xkjZnb2phy+jJaFPjeDphiq2
 wJGwcAxVj3hzR83+NKHB9G1k+vXw4aQ/MzI9QM2Rfexrr6SfKwhQNC+fwINRnkI5GRv/KsnG7Cp4puXP7DO5yBdGoVSWgH5CmENYnS/eKuSiU5EKfP9JydOZ
 0TeBKSmPe/yG2uEbKvOEhTbYTbxGExNNS3gikvrlFuX507yqvyqZgFfwXyscLCN6ETQlF3KcmsvXjIEPG2ihAzWWYLVIBTio1TyMSJGFEmpBY+moeHhgCKd5
 QCLNKE3tEPzrfY+D5ZHPBjzAXkNtyO8+jlsRa+grS9TcaYqHwmBRDX2sgu0n8SZpiRaKUQ8CUNelmd1dDTk5FXZ7tHD5MJDPHi0zvxN/SpPt23kTbWgKE5gU
 aHY/WwWjcm4lJ0BmDIdybu6YMud1jvX5At1xRAcdF5JQLSwQhzz5AnH7cbrjV+1SzM7/DENC5sFV2ym2htRgqEjwdJM7u7CUJiwVR94R62DkJg6QWcOJHjBj
 uj7LoLdwv94P1jm8zrEIn7g9nvYCZ4fPudE4xn05aUnlExieWaDmbS/aVLlYRiO3bkOp2FM2h+aMgsglzWIlUPh8/AZedUNJMF/tXdaiya9WyxwwUd0C/0s4
 RXKALAxZpKpCHYKLuvsjLjpNepoDePmgax++EIwE0VSgQkiULQDut+CklRWpNuVjs7K3YW7QhaV5TJs7hbD+zcHGBx9U78V8DDOrC94VW5aZ28ZEfOZ0uzgP
 8OQfTYKMg0Nl1M+kmnceE4SHiS/votNR2zN+llnit1yPqD/1wvVTcJn27TGpY7LISvFLMAUQAscfevNJq/YrgAg/YmxNJ5d4U5TH2TEQp2j6XqjB3e9Qv7oJ
 0UATqeHOZxCLGn6HGA3HDZ2pf1HIPj7fEDp02kgtojum+Qn3UuBmxKGnRQMJwwdYeIW0SvKuLMbKexAZHG2NCcawo8nAu7IqARHW7s0L/zTRIfNsao7ZFqyj
 i0dvT/P6zEDeItI9/vwF0nf9pPt0uzcREtdYflMFe+g1eRvv3+mCICN6r+bpv9SpijR9E13MwmlLVWnwDZNrTnqAOTC59SJBNJbLXkod0WXHvsxMxlJsiNS/
 NfACYT3H/B23rUIEn6UEcxP8Ddn00V3hDKUI1JC79+04/vTSsf4xZJKfVa3/jcHwzPkXnn8XxBuHr+xznAKCVi/mo5fXLuU8O8Z3XpZ1daQ0o3df/YsgVwHH
 lOIZa4FuohIX5ifk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_050114_771880_F18B1C78 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 David Francis <David.Francis@amd.com>, amd-gfx@lists.freedesktop.org,
 Leo Li <sunpeng.li@amd.com>, "Jerry \(Fangzhi\) Zuo" <Jerry.Zuo@amd.com>,
 Allison Randal <allison@lohutok.net>, nouveau@lists.freedesktop.org,
 linux-media@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Russell King <rmk+kernel@armlinux.org.uk>, Sean Paul <seanpaul@chromium.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Thomas Lim <Thomas.Lim@amd.com>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Douglas Anderson <dianders@chromium.org>,
 Manasi Navare <manasi.d.navare@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Colin Ian King <colin.king@canonical.com>, Enrico Weigelt <info@metux.net>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/19/19 1:28 PM, Dariusz Marcinkiewicz wrote:
> On Mon, Aug 19, 2019 at 11:38 AM Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>>
>> Hi all,
>>
> Hi Hans.
>> The patches in this series can be applied independently from each other.
>>
>> If you maintain one of these drivers and you want to merge it for v5.4
>> yourself, then please do so and let me know. If you prefer I commit it
>> to drm-misc, then please review and (hopefully) Ack the patch.
>>
>> I would really like to get this in for v5.4 so I can get the userspace
>> bits in for v5.4 as well through the media subsystem.
>>
>> Dariusz, can you post a v7.1 for patch 5/9 fixing the typo?
>>
> Done.
> 
> I think it would be good to test v7 changes to dw-hdmi and tda998x on
> a real hardware. Hans, do you think you would be able to test those?
> 
> Thank you.
> 

I'll try to do this for dw-hdmi today, but the tda998x testing will have to wait
until next week.

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
