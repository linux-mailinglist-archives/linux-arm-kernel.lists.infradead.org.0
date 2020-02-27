Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EA01717F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:58:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53XFw3wtgQ4RaSmC26BiZs2u+7SJ/oV5nR/u1pF1hJo=; b=sHvdouJde+aN8N
	0D0KeCggHYrCC7vWkx2gAZ7vahAe5uZMn+O0IOA6S6h4trQo24c2l4T8FhBH9gSzWUO5AvX71hrtc
	VCARdy+KIbj7hb02BLQIt3ClZS/3e0N7OjSCM2OgghTkQpqvyylZjkJZvE+fdgT8nUgYdiOxhKSYH
	j9l5hiYd2JtSCAhzHKV2+LdicQUtbg3kNrSpW0PEVe0Cu1HLG19S3C6VWMHh+NbVIycQKHKJjSWAl
	C4J3AWjVYBW67SyXD9VieE/XSWm5WSmsugnEWU/3T0x/mEDyjyZP1hVq+lTp/jN8qfe6n9nY6VPcs
	FfOHkyGQoaa5wWAU4THw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ijl-0006bQ-Hc; Thu, 27 Feb 2020 12:57:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ija-0006aX-P7
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:57:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id o15so3287372ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 04:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qPHGYMWXhRCjMw8nub6othNeVZMlmf1o3qpvhzZTWP4=;
 b=IGoCE1Pu3APJ3EgCMizw96kVnO8vfe8DEBfP/o7uYSZiBmffgujZ9ZjJYlgpXDZ/vK
 lphT5Z4Z6/56y+52goiTUoaD51hTNd12sexKA8onoOx6rpppiiTj2Gx+w8ISVJDvKISc
 WpMUIUP5l+3f9R34NBhl+5gjsQT/6swCYRZL/iGwAqxM+3dpsk/rWY/4MjznnGvvIywt
 SA8YCS/hduuxbD4a5CqD+byHGm9F1fAJgSQePGzQ9qWjIZNXWA99HS3T0cX7jA+2pr+B
 PW91AmgfwpmU0NfqYHm6VDFLpup95oUgYHz34D47IfQvv4AEkYdmImzsQgou63Dr0k0v
 73LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qPHGYMWXhRCjMw8nub6othNeVZMlmf1o3qpvhzZTWP4=;
 b=ijkW4XBgwQ1RKjJrZ8Ny0AVG54yjvYgJhCguIQFNWi9w90JFLVWdnNHAcGZ9n5AZsO
 Sf+74CW8kXI2llQ+4oNdJfms/VCx7f8D1HpVM0PiDDa/04GN8ntL93WK7IW3GBhYKY5F
 7a5MzEsBsqDC3xRzo350fVxQYiCZRXyeM6QBeZHxMJAL4oOlGg2pRCevnRChrZ6m4o8E
 AKcTkwqUPuGQ14PADTdIn0pHEFyvDWEGBXryfzyrtzF+l4cwxVsVLH1s7TUAFgsUHF5S
 GZJioUytPeKFJ8RyFxzDREgiyAaJHCB6S4Y1+LedqKNx4BCq5Iy2pe0cyHVE+bzRmfx1
 GaeA==
X-Gm-Message-State: ANhLgQ3RTLGAQK1uI/jw5klrOaV+idQX6D0MpvHaLNNsYPPetsZuozb1
 Sv0N6r10stKKt1Iumfd6l9t/c6+ymsP8y7iSst8=
X-Google-Smtp-Source: ADFU+vtH81bmx540dWe9YXVHht1EBT4kZQqIAFzMb39QR1G4ruYs6oEq8tXvhWekr9qSWRvMH4g/SmsT4T62564KGOo=
X-Received: by 2002:a2e:7818:: with SMTP id t24mr2717287ljc.195.1582808263182; 
 Thu, 27 Feb 2020 04:57:43 -0800 (PST)
MIME-Version: 1.0
References: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 27 Feb 2020 09:57:40 -0300
Message-ID: <CAOMZO5A6os4myE41ZLBvW639bjRudg8Tax4yBa5JOyY5+oJW+g@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som-ti: indicate powering off wifi
 is safe
To: Russell King <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_045746_853419_E22F50EF 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Thu, Feb 27, 2020 at 9:19 AM Russell King <rmk+kernel@armlinux.org.uk> wrote:
>
> We need to indicate that powering off the TI WiFi is safe, to avoid:
>
> wl18xx_driver wl18xx.2.auto: Unbalanced pm_runtime_enable!
> wl1271_sdio mmc0:0001:2: wl12xx_sdio_power_on: failed to get_sync(-13)
>
> which prevents the WiFi being functional.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Shouldn't this have a Fixes tag so that it can be backported to stable kernels?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
