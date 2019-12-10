Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1D41188A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJbM2t/T3t+bCRCm6JBs2Zcsiy2ZO93qrOjWLrx3aG0=; b=JeVKwEygfUhK7E
	UowVvP6cEJeD0O8R7FRn4SJ0y5LTY7uJWWwoPc1dyeqJNtm+5T27WXy5or3YzEpVfC9SHfbL4M+rA
	vRNqm6WdEyGI/ljDeybkaZ0OOeYNUD3vOhbc139gGW3e7Q3heSKnRl89k43Dd9vO4aFfAxVcyzswR
	9qWoBMYSBlIxNbtO2sohpMBXIEyBrLp3baql+rPNQKveJcCXwcwuvMTc6IC5uGSAEbJySjIeWwUMu
	MEQjFUInai3IWp4kjEgt8YHeztJL9RHePbHazV3Mkn99+nCcNz48YKFLPUsR/Y65eULFc6ybz87kb
	6nPHtpgwIttDOhQmvptA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieeqf-00021F-Um; Tue, 10 Dec 2019 12:42:41 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieeqV-00020K-Az; Tue, 10 Dec 2019 12:42:32 +0000
Received: by mail-io1-xd44.google.com with SMTP id v3so1580084ioj.5;
 Tue, 10 Dec 2019 04:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j/7EAXBbAI9svJUE6Ry0Bg/seucFpEnJxo4ekf7aJOI=;
 b=oK8ybPB7IYFS3Y3T981GNgQnegvjgi6OuXwcNFvcpzUEZ6PK8kKdlYZRrc2HqtRk4F
 hbtFgXXKawlstDH3S+o99QU/LTIg9XPTPn+9gAfg4zl7CdRV/UhdCgIkDJn3IWLHqX9/
 4ttPtAOsOu+cate051ojE7eukka6BIqFfTTTdjXp9NbQI73Yro0uM66YOHlfEPCpcBN9
 QhbXZbRmbx4do2sHD/W6loGQizm3bfvzBB6Lgt03nVQeyE0AVB1qSwgX5SKdn7KpvNyG
 vmd7Zn57RPiFWmMHEkzDRUsmmEXaIkGM2WNIg8ipePWbJ8yytCd4R3IJ3Qk6pruUVaa8
 t39g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j/7EAXBbAI9svJUE6Ry0Bg/seucFpEnJxo4ekf7aJOI=;
 b=SdBVLZsD3fvPHGrCO3wF9VDHQPB9bAa4Fvb0jxeuGPV4R+MAgyVfjDX5DCkD1JfAuA
 A3OxZVSQT5OARoZA4gmk/lRTz0xDbLkDthPWC5Bb7mAf5CP1i8aFhsVRCJ5+w034xjEN
 EL2EDGEhw9P2185jTyT2ysAJfKoYNaMf99dsUhXap1MA2e5m6h1z03pYiYlUCi/Y/uM5
 Eq+MxZS9lO/vxCOY0Rx97RRXrnuy0qGM27bYUAs7Uc3WK+gRXpSqcJ7m2ZXwDt9l27Fo
 6m2tIptDNK/RhQyN+mUtU/I2SUDxrzYWaETT9MBv/3qEa9YvG41xzSZDFqs5fccb9nJD
 EEAA==
X-Gm-Message-State: APjAAAUEWxFCq/PHjkzeK/B/1MzxUmU58zmBRagqT28KSKk+Tl4a/CiQ
 BF5gJQxvpN2kDdGINU3i1va6k8rj/28zgeamYV8=
X-Google-Smtp-Source: APXvYqz+qMFJ87NylUe5wIjXuGUxrXXeja9olnlnqivXwq7Y7INQY12Pm708Ay2NrACQD5W3YKFCPTM3PJ3+dslJLEg=
X-Received: by 2002:a5e:9314:: with SMTP id k20mr20961740iom.6.1575981749724; 
 Tue, 10 Dec 2019 04:42:29 -0800 (PST)
MIME-Version: 1.0
References: <20191209115746.12953-1-smoch@web.de>
In-Reply-To: <20191209115746.12953-1-smoch@web.de>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 10 Dec 2019 18:12:18 +0530
Message-ID: <CANAwSgS9ixhyOE2QYQ3CetA=BUVebMan2=9xBKF=U3YXAwCHNQ@mail.gmail.com>
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
To: Soeren Moch <smoch@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_044231_408650_445AC37F 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Soeren,

On Mon, 9 Dec 2019 at 17:28, Soeren Moch <smoch@web.de> wrote:
>
> With the device tree property "rockchip,system-power-controller" we
> explicitly request to use this PMIC to power off the system. So always
> register our poweroff function, even if some other handler (probably
> PSCI poweroff) was registered before.
>
> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/mfd/rk808.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index a69a6742ecdc..616e44e7ef98 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -550,7 +550,7 @@ static int rk808_probe(struct i2c_client *client,
>         const struct mfd_cell *cells;
>         int nr_pre_init_regs;
>         int nr_cells;
> -       int pm_off = 0, msb, lsb;
> +       int msb, lsb;
>         unsigned char pmic_id_msb, pmic_id_lsb;
>         int ret;
>         int i;
> @@ -674,16 +674,9 @@ static int rk808_probe(struct i2c_client *client,
>                 goto err_irq;
>         }
>
> -       pm_off = of_property_read_bool(np,
> -                               "rockchip,system-power-controller");
> -       if (pm_off && !pm_power_off) {
> +       if (of_property_read_bool(np, "rockchip,system-power-controller")) {
>                 rk808_i2c_client = client;
>                 pm_power_off = rk808->pm_pwroff_fn;
> -       }
> -
> -       if (pm_off && !pm_power_off_prepare) {
> -               if (!rk808_i2c_client)
> -                       rk808_i2c_client = client;
>                 pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
>         }
>

I gave this a try on my Rock960 and Odroid N1
both got kernel panic below.

[   58.305868] xhci-hcd xhci-hcd.0.auto: USB bus 5 deregistered
[   58.306747] reboot: Power down
[   58.307106] ------------[ cut here ]------------
[   58.307510] No atomic I2C transfer handler for 'i2c-0'
[   58.308007] WARNING: CPU: 0 PID: 1 at drivers/i2c/i2c-core.h:41
i2c_transfer+0xe4/0xf8
[   58.308696] Modules linked in: snd_soc_hdmi_codec dw_hdmi_i2s_audio
rockchipdrm analogix_dp brcmfmac nvme dw_mipi_dsi nvme_core dw_hdmi
panfrost cec brcmutil drm_kms_helper gpu_sched cfg80211 hci_uart drm
btbcm crct10dif_ce snd_soc_simple_card bluetooth snd_soc_rockchip_i2s
snd_soc_simple_card_utils snd_soc_rockchip_pcm phy_rockchip_pcie
ecdh_generic rtc_rk808 ecc pcie_rockchip_host rfkill rockchip_thermal
ip_tables x_tables ipv6 nf_defrag_ipv6
[   58.312150] CPU: 0 PID: 1 Comm: shutdown Not tainted 5.5.0-rc1-dirty #1
[   58.312725] Hardware name: 96boards Rock960 (DT)
[   58.313131] pstate: 60000085 (nZCv daIf -PAN -UAO)
[   58.313551] pc : i2c_transfer+0xe4/0xf8
[   58.313889] lr : i2c_transfer+0xe4/0xf8
[   58.314225] sp : ffff80001004bb00
[   58.314516] x29: ffff80001004bb00 x28: ffff00007d208000
[   58.314981] x27: 0000000000000000 x26: 0000000000000000
[   58.315446] x25: 0000000000000000 x24: 0000000000000008
[   58.315910] x23: 0000000000000000 x22: ffff80001004bc74
[   58.316375] x21: 0000000000000002 x20: ffff80001004bb58
[   58.316841] x19: ffff0000784f0880 x18: 0000000000000010
[   58.317305] x17: 0000000000000001 x16: 0000000000000019
[   58.317770] x15: ffffffffffffffff x14: ffff8000118398c8
[   58.318236] x13: ffff80009004b867 x12: ffff80001004b86f
[   58.318701] x11: ffff800011851000 x10: ffff80001004b7f0
[   58.319166] x9 : 00000000ffffffd0 x8 : ffff800010699ad8
[   58.319631] x7 : 0000000000000265 x6 : ffff800011a20be9
[   58.320096] x5 : 0000000000000000 x4 : 0000000000000000
[   58.320561] x3 : 00000000ffffffff x2 : ffff800011851ab8
[   58.321026] x1 : d375c0d4f4751f00 x0 : 0000000000000000
[   58.321491] Call trace:
[   58.321710]  i2c_transfer+0xe4/0xf8
[   58.322020]  regmap_i2c_read+0x5c/0x98
[   58.322350]  _regmap_raw_read+0xcc/0x138
[   58.322694]  _regmap_bus_read+0x3c/0x70
[   58.323034]  _regmap_read+0x60/0xe0
[   58.323341]  _regmap_update_bits+0xc8/0x108
[   58.323707]  regmap_update_bits_base+0x60/0x90
[   58.324099]  rk808_device_shutdown+0x38/0x50
[   58.324476]  machine_power_off+0x24/0x30
[   58.324823]  kernel_power_off+0x64/0x70
[   58.325159]  __do_sys_reboot+0x15c/0x240
[   58.325504]  __arm64_sys_reboot+0x20/0x28
[   58.325858]  el0_svc_common.constprop.2+0x88/0x150
[   58.326279]  el0_svc_handler+0x20/0x80
[   58.326607]  el0_sync_handler+0x118/0x188
[   58.326960]  el0_sync+0x140/0x180
[   58.327251] ---[ end trace b1de39d03d724d01 ]---

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
