Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC03B9277C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1Oc8yWN2BYugeUD/W2Kg45ghl7scWpnvGbVLNu4nF0=; b=OdMK3Ko0fABY5Y
	/ULQZI9z04h4lGkjsfdZrEQI3QBlN1oJFst7pO0wia8LWKPmQ09hcxWrbfcT/b31kAgot2NZNypZB
	AyWiLqsOoj3IaANRf4JFkjddn8i+4h4z1kfczPA34TXMxQhL5ERg0RQr8Dwr0YqzWK5NKuG1fsPdK
	bVY3PoNnnLSWrPx3HKHIg4hOlFvd4LCm1sJJNGF8utjuuZPwTIYxfxJDja5QTLWbhnI1gkhgT7S1O
	5oX76AOvMOQA2Kv2E+bf2XUJcC8jLoDLd4sHAoN1FrDr7xkVqrjm1T/U38bYmhSkiHbtPWi+EQZ2V
	0zuv2+2KJAnErJ//wJtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziy0-0001Q1-0W; Mon, 19 Aug 2019 14:49:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzixq-0001Ol-RM
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:48:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id u16so9028678wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 07:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=vagkGtT2jMz7T0k0vgD6q1Sjj5TnzDJFn2lBxriOeDI=;
 b=C4E7k4DAwRoWYCiWRqvSJ9eQVmlpNJt1wUf3a99tER9nUbwv3zq6CndZlXTzCaCmLW
 Jbb3SaCWJKKjbaBMiQLB22J42IlMRyrkBYgrFPFtR3ZWvJCdBiX+/ZUTFWj0PZPS8ue9
 zCtC6hsy2FJmr2cVAaR04/FAE3FRuq6X2ffAOeXHdWcu1mLEfPaDLYlA79KD76Rl+pzl
 ssa0XjxF4VqQ/HKKvujSI//KhN/fALMFZyfF6DUC/qbauXvLh9BWJIIk1Ebr8zlOrsmX
 KW5KIy7BKYwkpgjZLsPKHp2BkN8+M8Nhv1DGHKmJ82MqAJ9eyuxV+D/Sep1Poua5SL1I
 MitA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=vagkGtT2jMz7T0k0vgD6q1Sjj5TnzDJFn2lBxriOeDI=;
 b=aQmc+qC+SsMT1w5RtHgef5Us00VXJUXzDxkbiBk8Lhpn1zbx9ei4yCks5IaWw4J8BG
 8mnbGYMRttvYeVgmvICdZ4Xko5v6D6RtJ699awCEJCgv4xyCyAF98z3bpXFnVzUMZSwp
 vydZCCC9Vol8ohB6KFqA+dAUUOOu2haF25ZKin6CFnvZcOm3u5eNCFQIjwsEZAoSei3t
 Db65FNfhpE/Op7wrwG6tdE3r+ag3w80mYv6GUJVforpKVkir/xNkeqLWyTSuZeH5OLX7
 59KJpT2x2lfJzQO2/EUmtUD0mrdiUtqcs4AqQlA1O/+4JI6TCDotCzdx88aOnUytrbec
 /2JA==
X-Gm-Message-State: APjAAAVc9v2mfp0rzUMTzwzA3MRtcF/c22lrjcBEPoXMQnoEVYlNPti1
 EXXXtxHk8lu1p0zNK5Gp39gzUA==
X-Google-Smtp-Source: APXvYqw+6IQ7xkFNeV1Us45hRaomN8yAJoeL/1p2i2CnYEMmnC47xkGPP9DN8Eg+hUKKxGWxrM4JNg==
X-Received: by 2002:adf:bc84:: with SMTP id g4mr28127062wrh.135.1566226133002; 
 Mon, 19 Aug 2019 07:48:53 -0700 (PDT)
Received: from [10.1.3.173] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 91sm46319107wrp.3.2019.08.19.07.48.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 07:48:52 -0700 (PDT)
Subject: Re: [PATCH v7 0/9] drm: cec: convert DRM drivers to the new notifier
 API
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dariusz Marcinkiewicz <darekm@google.com>, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20190814104520.6001-1-darekm@google.com>
 <42c7ef3c-b7e5-8c63-c7c2-bfc6c56100c6@xs4all.nl>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <ad2a4af0-aeff-a81e-7885-7e9fc3c5cf90@baylibre.com>
Date: Mon, 19 Aug 2019 16:48:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <42c7ef3c-b7e5-8c63-c7c2-bfc6c56100c6@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_074854_883395_56CDF62A 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 David Francis <David.Francis@amd.com>, amd-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>,
 "Jerry \(Fangzhi\) Zuo" <Jerry.Zuo@amd.com>,
 linux-arm-kernel@lists.infradead.org, nouveau@lists.freedesktop.org,
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>,
 intel-gfx@lists.freedesktop.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Sean Paul <seanpaul@chromium.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Thomas Lim <Thomas.Lim@amd.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
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

Hi Dariusz, Hans,

I can apply the dw-hdmi patches if necessary.

Neil

On 19/08/2019 11:38, Hans Verkuil wrote:
> Hi all,
> 
> The patches in this series can be applied independently from each other.
> 
> If you maintain one of these drivers and you want to merge it for v5.4
> yourself, then please do so and let me know. If you prefer I commit it
> to drm-misc, then please review and (hopefully) Ack the patch.
> 
> I would really like to get this in for v5.4 so I can get the userspace
> bits in for v5.4 as well through the media subsystem.
> 
> Dariusz, can you post a v7.1 for patch 5/9 fixing the typo?
> 
> Thanks!
> 
> 	Hans
> 
> On 8/14/19 12:44 PM, Dariusz Marcinkiewicz wrote:
>> This series updates DRM drivers to use new CEC notifier API.
>>
>> Changes since v6:
>> 	Made CEC notifiers' registration and de-registration symmetric
>> 	in tda998x and dw-hdmi drivers. Also, accidentally dropped one
>> 	patch in v6 (change to drm_dp_cec), brought it back now.
>> Changes since v5:
>>         Fixed a warning about a missing comment for a new member of
>> 	drm_dp_aux_cec struct. Sending to a wider audience,
>> 	including maintainers of respective drivers.
>> Changes since v4:
>> 	Addressing review comments.
>> Changes since v3:
>>         Updated adapter flags in dw-hdmi-cec.
>> Changes since v2:
>> 	Include all DRM patches from "cec: improve notifier support,
>> 	add connector info connector info" series.
>> Changes since v1:
>> 	Those patches delay creation of notifiers until respective
>> 	connectors are constructed. It seems that those patches, for a
>> 	couple of drivers, by adding the delay, introduce a race between
>> 	notifiers' creation and the IRQs handling threads - at least I
>> 	don't see anything obvious in there that would explicitly forbid
>> 	such races to occur. v2 adds a write barrier to make sure IRQ
>> 	threads see the notifier once it is created (replacing the
>> 	WRITE_ONCE I put in v1). The best thing to do here, I believe,
>> 	would be not to have any synchronization and make sure that an IRQ
>> 	only gets enabled after the notifier is created.
>> Dariusz Marcinkiewicz (9):
>>   drm_dp_cec: add connector info support.
>>   drm/i915/intel_hdmi: use cec_notifier_conn_(un)register
>>   dw-hdmi-cec: use cec_notifier_cec_adap_(un)register
>>   tda9950: use cec_notifier_cec_adap_(un)register
>>   drm: tda998x: use cec_notifier_conn_(un)register
>>   drm: sti: use cec_notifier_conn_(un)register
>>   drm: tegra: use cec_notifier_conn_(un)register
>>   drm: dw-hdmi: use cec_notifier_conn_(un)register
>>   drm: exynos: exynos_hdmi: use cec_notifier_conn_(un)register
>>
>>  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  2 +-
>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.c | 13 +++---
>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 46 +++++++++++++------
>>  drivers/gpu/drm/drm_dp_cec.c                  | 25 ++++++----
>>  drivers/gpu/drm/exynos/exynos_hdmi.c          | 31 +++++++------
>>  drivers/gpu/drm/i2c/tda9950.c                 | 12 ++---
>>  drivers/gpu/drm/i2c/tda998x_drv.c             | 36 ++++++++++-----
>>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 13 ++++--
>>  drivers/gpu/drm/nouveau/nouveau_connector.c   |  3 +-
>>  drivers/gpu/drm/sti/sti_hdmi.c                | 19 +++++---
>>  drivers/gpu/drm/tegra/output.c                | 28 ++++++++---
>>  include/drm/drm_dp_helper.h                   | 17 ++++---
>>  13 files changed, 155 insertions(+), 94 deletions(-)
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
