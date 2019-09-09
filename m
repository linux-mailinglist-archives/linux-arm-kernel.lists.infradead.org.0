Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE6BAD3F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 09:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+O0tEFgRqp6CPAXpVnU7LxH8I2tJTw7nBUB1Ca8sj0=; b=F8xk7xbiyvY0Er
	ScHYRhF7AqyDMmVr7M9Sve2Ao+hfW1KubKYixkbtYJfJKXOo1bl0mei2TqKO/eJhMoDNLyTcxCDya
	g9gMOKt2xqpahXoERLStmSGnXzMhc+K/EOtl47lcMF5NDKRzXVOGAjWCdYnLkFQNft3BoMPCV1wy+
	wf5spGxy5FQNl3PPcyr7/ZXrACFliXJLI0ILRcHV+X7AzkGSLx5UxRgiGeE4TQKplv5F2p2N8xoVl
	aL67+mFcJA785cwH31Ahh9tTiqWyXu2a4+8rJL/G6kDw4Z9elXq0ZRUeM5A7GhrLShClzZXwWBsDd
	1lyYGRgal11bI7rQ3ZIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7EEu-0000Cw-1i; Mon, 09 Sep 2019 07:37:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7EEh-0000CH-22
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 07:37:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id g207so12528280wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 00:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=C61hu19UgGucmrYuoBwTjUFso09YsVAftS75zhud7R8=;
 b=BN1zfYL1DoYhf+cqmjAWCUt5p4HtFLlARZJumMC5228FCeSACdmC70AqcQXfjF4/yk
 /FDUTTpkV3Eh5pqWjfKgpGL0a2qYBd1O0IqS2X7Wt2JkJJhmANZJ85dlKjpflEUNeTcb
 k7hxNUPVmtEr0j3v8bIXM0t3T8mGjVPa+kRVJoXKwrCGP2he61Lia01MxBxKG1v+4Ovo
 TRH12pgqsfQN9l0TKgz3ZdCWpcUkhEfBqTyz7oYyYc1w7gfDwlImfsde6vMBDPmCK3Sj
 RcN6AmewL+HJuYT3bErWL/l0r+/Cz+5jlurPNTGru3Cv+VjF809CuyKjoAHC5MZiuQC6
 I23Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=C61hu19UgGucmrYuoBwTjUFso09YsVAftS75zhud7R8=;
 b=NYXIv+VPiNfaSBSdMp3LjA83VV+ZpLWoFpAv/rzoekoalLAPg1VZ8ytsbsVD3P9htS
 eek2cRvRqiwLzDEhIVW3n64JT+8No3tNWR+zS2hqqw05Y8IKm6zZSBQnNsWaUincPR9x
 CaaIl1rc43uA6ngstF6UnkB4JZAG+XB3h2HxRH3/EoFy+f3JQVoIiQrRawZsHIKoGLxf
 apnw6f2yX2OxEgWxpNjvUmVrkGjVL9YNgFfmI690PlxwHDnasu2jimua83g/FQ4KE/UV
 JoxF695y2XUu63q5UFngAiBG49FiuZI2TnvjmoCujijJTqqs2bMbznh41R26oGNvYk35
 PUmg==
X-Gm-Message-State: APjAAAXm1eOGmVXaBWSnzDkB5VIVWpQPXDLLoavu3w5H02evJJ8nrPAg
 Xj4iRdyQQMKXxPExivfOyJU8BA==
X-Google-Smtp-Source: APXvYqwqem4JaRVt1Ka0A3Upy4Do0PDGMEq6Q2jgQuinbXUS3O/forbymGJTUNAvqbpYOJbmwusGUQ==
X-Received: by 2002:a1c:4082:: with SMTP id
 n124mr18414442wma.154.1568014637273; 
 Mon, 09 Sep 2019 00:37:17 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f23sm15551165wmf.1.2019.09.09.00.37.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 00:37:16 -0700 (PDT)
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Cheng-yi Chiang <cychiang@chromium.org>, Tzung-Bi Shih <tzungbi@google.com>
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
Date: Mon, 9 Sep 2019 09:37:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_003719_168482_54028FD1 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Jonas Karlman <jonas@kwiboo.se>,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 08/09/2019 15:51, Cheng-yi Chiang wrote:
> On Fri, Aug 30, 2019 at 10:55 AM Cheng-yi Chiang <cychiang@chromium.org> wrote:
>>
>> On Wed, Jul 17, 2019 at 6:28 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>>>
>>> On Wed, Jul 17, 2019 at 4:33 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>>>>
>>>> This patch series supports HDMI jack reporting on RK3288, which uses
>>>> DRM dw-hdmi driver and hdmi-codec codec driver.
>>>>
>>>> The previous discussion about reporting jack status using hdmi-notifier
>>>> and drm_audio_component is at
>>>>
>>>> https://lore.kernel.org/patchwork/patch/1083027/
>>>>
>>>> The new approach is to use a callback mechanism that is
>>>> specific to hdmi-codec.
>>>>
>>>> Changes from v4 to v5:
>>>> - synopsys/Kconfig: Remove the incorrect dependency change in v4.
>>>> - rockchip/Kconfig: Add dependency of hdmi-codec when it is really need
>>>>   for jack support.
>>>>
>>>> Cheng-Yi Chiang (5):
>>>>   ASoC: hdmi-codec: Add an op to set callback function for plug event
>>>>   drm: bridge: dw-hdmi: Report connector status using callback
>>>>   drm: dw-hdmi-i2s: Use fixed id for codec device
>>>>   ASoC: rockchip_max98090: Add dai_link for HDMI
>>>>   ASoC: rockchip_max98090: Add HDMI jack support
>>>>
>>> LGTM.
>>>
>>> Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
>>
>> Hi Daniel,
>> Do you have further concern on this patch series related to hdmi-codec
>> and drm part ?
>> We would like to merge this patch series if possible.
>> They will be needed in many future chrome projects for HDMI audio jack
>> detection.
>> Thanks a lot!
> 
> Hi Neil,
> I am not sure if this patch series is under your radar.
> Would you mind taking a look ?
> This patch series has been following great suggestions from various
> reviewers, so I hope it is fine now.

I'd like some review from ASoC people and other drm bridge reviewers,
Jernej, Jonas & Andrzej.

Jonas could have some comments on the overall patchset.

> 
> Audio jack reporting for HDMI might not be needed for other OS, but it
> is a must on ChromeOS.
> We have many previous projects using different local patch sets to
> achieve HDMI jack reporting.
> I hope that we can achieve a proper way and really get the patches
> merged to mainline.
> Thanks a lot!
> 

Sure,
Don't forget to put Jernej, Jonas, and Jerome Brunet <jbrunet@baylibre.com> who is
working on integrating audio on the Amlogic SoCs.

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
