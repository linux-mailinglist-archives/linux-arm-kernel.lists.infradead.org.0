Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DD8858A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 05:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjBZAopA3cFC37fudWmdmJ5OVba2oW/IBBGO7taLzGk=; b=TnQeyhS1UpSy7V
	EuYgiyfur76aK/aZjy27HGs7m+p4LcLXdcEi9mWX8NDliS0StAMRsS6ZBSb5OCCkeOQOroEpf+2SR
	Z3ocEUDLfDIv1LDLy+NvaBnarjnJM2At/tXt45RkHvznmmdfCB8g/2T/XjS9qSHDtNnyFSLRuM66n
	uez4ps5R0DiKJ2CBlMAME2sXxJzLYKzQSKgHT6gSEBisQ6dx0/N+2A3uG3TxbGW0VWbfLWmnFU/f5
	QL67fgTBsJO/O7oAU7bKIa4DHXJElKwl5Q0xlqhTu216A7EUSSlUz84RjgW2jgJC/bkDSNgk6rZ1m
	8/6DsY/mu9kK71mMaWAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZKQ-0000qR-V8; Thu, 08 Aug 2019 03:43:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZJc-0000Rs-2b; Thu, 08 Aug 2019 03:42:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so43270636pgi.6;
 Wed, 07 Aug 2019 20:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FHolsiwWSPK3z68u5+4IFkU4FrvTDNnneyKNgnxhlM8=;
 b=KJryp3crxEZ8mYmMhpkpOFKH+C23pqVC+7N4zvT7LaArh/Oo7dioHWTPAnBMk8JtBI
 7VleyuKLlDK4/k4l8RYeG0V7qpqXSt3gwL7/h4xn+psIq/V5yhA6BRHENO5KnYMpVIJi
 z9LvvXj6S1mfESoTZ+Wjas7xK2xcCXd8+eSDIHukyBq7UPwmd6J4iG+6MLo5ICLeJMBf
 cYyCU7yALIbTvDlI0KfYLQG/RV3EdZhmQoinQLNkRIe0/S3bhCEIWCC9ni7bDhY+hEop
 rwerFa5mTAwv64cWG4R9YhA4Uqsk0fwJMua0HgVkbAABq2OZELVjmlQnl/REU0asq4C9
 CMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=FHolsiwWSPK3z68u5+4IFkU4FrvTDNnneyKNgnxhlM8=;
 b=MxwOMCH6SQw6985Q9W4edMm5vhZirKV+oZMtQe3BotNE2Gp61R/B1nURcTtgKmEFnb
 ur3TAbw+ng+Zi/1l8b7LegAUqfDitQbt427+icXlE5WSjLDy8GS+caQ0lyR1TCf7RjEP
 zQad2J1vlKBHT8vnpTtsCYR2OzA0XVCCm9hFByASARu6fW/Brio7/W96kIqn+2r9ORoD
 nKJZYb+2bYrJrPAi3i3gK+Qt1THaH6nlAiYmEvcQwv4DBdssxsjr2ZctW0Ra6Dapmn+6
 uZ4hjIEK9Bej72juOQevHk3pVumQg1uXP5Y0Xuldt3BaT3SD88Ggf/VQV6HP75R/vooZ
 sE2A==
X-Gm-Message-State: APjAAAUAKfDGq5CxgxDKgd28jwsIo91PE5FCzSz2QuTTXEbR0WRcaKou
 U/QlvWJYRGGaY77lUcTPZBE=
X-Google-Smtp-Source: APXvYqynMgacljQ9i7/6uwSu9u8psBdbvgQsL/ftx7dSTSI/a3MoN1x6pTxxy7xDlwQNn/mND4IMLw==
X-Received: by 2002:a62:8643:: with SMTP id x64mr13370677pfd.7.1565235731183; 
 Wed, 07 Aug 2019 20:42:11 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id f64sm99667598pfa.115.2019.08.07.20.42.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 20:42:10 -0700 (PDT)
Date: Wed, 7 Aug 2019 20:42:08 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v6 19/24] drm/bridge: dumb-vga-dac: Provide ddc symlink
 in connector sysfs directory
Message-ID: <20190808034208.GA31284@roeck-us.net>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <ebb75e71b8b7c8d65d54a947a03fd21b8969fb3a.1564161140.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebb75e71b8b7c8d65d54a947a03fd21b8969fb3a.1564161140.git.andrzej.p@collabora.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_204212_240182_31137099 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jyri Sarha <jsarha@ti.com>, Mamta Shukla <mamtashukla555@gmail.com>,
 linux-mediatek@lists.infradead.org, Maxime Ripard <mripard@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Enrico Weigelt <info@metux.net>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 07:23:13PM +0200, Andrzej Pietrasiewicz wrote:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

This patch results in a crash when running qemu:versatilepb.

Unable to handle kernel NULL pointer dereference at virtual address 000000c5
pgd = (ptrval)
[000000c5] *pgd=00000000
Internal error: Oops: 5 [#1] ARM
Modules linked in:
CPU: 0 PID: 1 Comm: swapper Not tainted 5.3.0-rc1+ #1
Hardware name: ARM-Versatile (Device Tree Support)
PC is at sysfs_do_create_link_sd+0x38/0xd8
LR is at sysfs_do_create_link_sd+0x38/0xd8
pc : [<c01ac94c>]    lr : [<c01ac94c>]    psr: a0000153
sp : c783bd18  ip : 00000000  fp : c783bde8
r10: c7ef5ea8  r9 : 00000001  r8 : c0955dc0
r7 : c73cb5b0  r6 : c73cd800  r5 : 000000ad  r4 : 00000000
r3 : c7838ae0  r2 : 00000000  r1 : 00000008  r0 : c0aa2898
Flags: NzCv  IRQs on  FIQs off  Mode SVC_32  ISA ARM  Segment none
Control: 00093177  Table: 00004000  DAC: 00000053
Process swapper (pid: 1, stack limit = 0x(ptrval))
Stack: (0xc783bd18 to 0xc783c000)
bd00:                                                       c73ccc48 c73ccc74
bd20: c73cd800 c0ac7c88 00000000 c729cc80 c7ef5ea8 c04c7fc0 c73ccc48 c0a73068
bd40: c73cd800 c0ac7c88 00000000 c04c87e0 00000001 00000000 c04cefcc c04dc3f8
bd60: c73a9030 c73cd800 c73ccc48 7fc2ce37 00000000 c73cd800 00000000 c04cefcc
bd80: c73cd800 00000000 00000000 c04b4ebc c0a73068 c7ef5ea8 c783bde8 c049ffcc
bda0: c73a9020 c73cd800 c78e6000 c73a9020 00000000 c73a9020 c0a73068 c04df2f8
bdc0: c783bde8 c095a76c c73a9020 c0065744 c73ccc20 c73a9020 00000000 00000001
bde0: c7838ae0 00000000 c73ccc20 7fc2ce37 00000000 c78e6000 00000000 c0ac7c34
be00: c07dc1f8 00000000 00000000 c0a6b384 c0a59858 c045e8d8 c78e6000 c1173a78
be20: 00000000 c0ac7c34 00000000 c04e77c4 c78e6000 c0ac7c34 c0ac7c34 c0a73068
be40: 00000000 ffffe000 c0a6b384 c04e7a34 c0ac7c34 c0ac7c34 c0a73068 c78e6000
be60: 00000000 c0ac7c34 c0a73068 00000000 ffffe000 c0a6b384 c0a59858 c04e7cf0
be80: 00000000 c0ac7c34 c78e6000 c04e7d7c 00000000 c0ac7c34 c04e7cf8 c04e5928
bea0: c73b2800 c78d88a0 c78dd110 7fc2ce37 ffffe000 c0ac7c34 c73b2800 c0ac16e0
bec0: 00000000 c04e6b28 c095a73c c0af0a60 c0a73068 c0ac7c34 c0af0a60 c0a73068
bee0: c0a401c4 c04e8968 ffffe000 c0af0a60 c0a73068 c000b3bc 00000115 00000000
bf00: c7ffce6c c7ffce00 c09e15b0 00000115 00000115 c0048844 c09e000c c097cfd4
bf20: 00000000 00000006 00000006 00000000 00000000 c7ffce6c ffffe000 c006954c
bf40: ffffe000 7fc2ce37 c0afb000 c0af0a60 00000115 c0afb000 00000007 c0a59850
bf60: ffffe000 c0a111e8 00000006 00000006 00000000 c0a10678 00000000 7fc2ce37
bf80: 00000000 00000000 c07824cc 00000000 00000000 00000000 00000000 00000000
bfa0: 00000000 c07824d4 00000000 c00090b0 00000000 00000000 00000000 00000000
bfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
bfe0: 00000000 00000000 00000000 00000000 00000013 00000000 00000000 00000000
[<c01ac94c>] (sysfs_do_create_link_sd) from [<c04c7fc0>] (drm_connector_register.part.1+0x40/0xa0)
[<c04c7fc0>] (drm_connector_register.part.1) from [<c04c87e0>] (drm_connector_register_all+0x90/0xb8)
[<c04c87e0>] (drm_connector_register_all) from [<c04cefcc>] (drm_modeset_register_all+0x44/0x6c)
[<c04cefcc>] (drm_modeset_register_all) from [<c04b4ebc>] (drm_dev_register+0x15c/0x1c0)
[<c04b4ebc>] (drm_dev_register) from [<c04df2f8>] (pl111_amba_probe+0x2e0/0x4ac)
[<c04df2f8>] (pl111_amba_probe) from [<c045e8d8>] (amba_probe+0x9c/0x118)
[<c045e8d8>] (amba_probe) from [<c04e77c4>] (really_probe+0x1c0/0x2bc)
[<c04e77c4>] (really_probe) from [<c04e7a34>] (driver_probe_device+0x5c/0x170)
[<c04e7a34>] (driver_probe_device) from [<c04e7cf0>] (device_driver_attach+0x58/0x60)
[<c04e7cf0>] (device_driver_attach) from [<c04e7d7c>] (__driver_attach+0x84/0xc0)
[<c04e7d7c>] (__driver_attach) from [<c04e5928>] (bus_for_each_dev+0x70/0xb4)
[<c04e5928>] (bus_for_each_dev) from [<c04e6b28>] (bus_add_driver+0x154/0x1e0)
[<c04e6b28>] (bus_add_driver) from [<c04e8968>] (driver_register+0x74/0x108)
[<c04e8968>] (driver_register) from [<c000b3bc>] (do_one_initcall+0x84/0x2e4)
[<c000b3bc>] (do_one_initcall) from [<c0a111e8>] (kernel_init_freeable+0x2bc/0x394)
[<c0a111e8>] (kernel_init_freeable) from [<c07824d4>] (kernel_init+0x8/0xf0)
[<c07824d4>] (kernel_init) from [<c00090b0>] (ret_from_fork+0x14/0x24)
Exception stack(0xc783bfb0 to 0xc783bff8)
bfa0:                                     00000000 00000000 00000000 00000000
bfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
bfe0: 00000000 00000000 00000000 00000000 00000013 00000000
Code: e59f00a0 e1a09003 e1a08002 eb176e54 (e5955018) 
---[ end trace f503b374936886c5 ]---

Bisect log attached.

Guenter

---
# bad: [3880be629e26f6c407593602398c6651860d5fae] Add linux-next specific files for 20190807
# good: [e21a712a9685488f5ce80495b37b9fdbe96c230d] Linux 5.3-rc3
git bisect start 'HEAD' 'v5.3-rc3'
# good: [83d74da9e6d2ca78b32e9e794c6bcbd433d5efaa] Merge remote-tracking branch 'crypto/master'
git bisect good 83d74da9e6d2ca78b32e9e794c6bcbd433d5efaa
# bad: [3add021bff629f1792a5e4268afe13b3047b5523] Merge remote-tracking branch 'sound/for-next'
git bisect bad 3add021bff629f1792a5e4268afe13b3047b5523
# good: [4ef58ee18a654b1992d00281501d6eff051a0c5e] Merge remote-tracking branch 'amdgpu/drm-next'
git bisect good 4ef58ee18a654b1992d00281501d6eff051a0c5e
# good: [f729d8d9628d4093675abfd62d8d3a06d3d11732] drm/tinydrm: Move tinydrm_machine_little_endian()
git bisect good f729d8d9628d4093675abfd62d8d3a06d3d11732
# bad: [178e5f3a5bc1d67d1248a74c0abab41040abe7c4] drm/crc-debugfs: Add notes about CRC<->commit interactions
git bisect bad 178e5f3a5bc1d67d1248a74c0abab41040abe7c4
# good: [0486ad20e73d03c82208b802ac41e80b942b23f6] drm/rockchip: Make analogix_dp_atomic_check static
git bisect good 0486ad20e73d03c82208b802ac41e80b942b23f6
# bad: [92cb3e5980638a37c56091e605aa837d0af05a9d] dma-buf: fix stack corruption in dma_fence_chain_release
git bisect bad 92cb3e5980638a37c56091e605aa837d0af05a9d
# good: [350fd554ee44325661d0d3c3831f428f4fbb0f2d] drm/ast: Provide ddc symlink in connector sysfs directory
git bisect good 350fd554ee44325661d0d3c3831f428f4fbb0f2d
# bad: [28ba1b1da49a20ba8fb767d6ddd7c521ec79a119] drm: mali-dp: Mark expected switch fall-through
git bisect bad 28ba1b1da49a20ba8fb767d6ddd7c521ec79a119
# bad: [5b50fa2b35a4ddad11cb3d06231bf71759b49566] drm/amdgpu: Provide ddc symlink in connector sysfs directory
git bisect bad 5b50fa2b35a4ddad11cb3d06231bf71759b49566
# bad: [9ebc4d2140adcdea2399b42d3f0d2f7e141ac1a8] drm/bridge: dw-hdmi: Provide ddc symlink in connector sysfs directory
git bisect bad 9ebc4d2140adcdea2399b42d3f0d2f7e141ac1a8
# bad: [a4f9087e85de141e4e6d21ac2c583ae096cc9aba] drm/bridge: dumb-vga-dac: Provide ddc symlink in connector sysfs directory
git bisect bad a4f9087e85de141e4e6d21ac2c583ae096cc9aba
# first bad commit: [a4f9087e85de141e4e6d21ac2c583ae096cc9aba] drm/bridge: dumb-vga-dac: Provide ddc symlink in connector sysfs directory

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
