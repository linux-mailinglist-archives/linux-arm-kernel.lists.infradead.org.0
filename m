Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBF613142F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pd21d4Vn7FsOMyAvhTZDJPyCsx3PHycyYdnZGdo6d9Q=; b=tV0fLxSV+xZr536hU8vj1Piep9
	bHMlWQ9bC8BkOYFfRuIogZwpX5U9uVx42yagKeb2a2d65Dn/YQV3OFy7OthjJ83GR5OWJDOSes0O5
	hyx+f4o4/kL2pCX8V9ZsNcS2TZCl/bSAhTcXfUhAfmG3ndBRvrZjJXqHkmh+0HM1IgfXEroHfCwl8
	y7mECPttbXmrlE2jHVyi8pOpHW2Gmwc63Rx9c/dh6qXlXczdCRklE4+jiCameI1MIC+ETT1e1fsz7
	vVSY9i4ManBsgzgjZu/E0SdQ8e0SHYyKoE7Q5y3tkMy9gSMYqbxNi8mf+svAntHPEE36I4Kavr4Fg
	S5UWX3AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioToA-0005Di-Kc; Mon, 06 Jan 2020 14:56:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTo1-0005CD-9n
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:56:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so15251141wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 06:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:autocrypt:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/ipX5LKq9hyY23iIPVEUdWqCt2PENe7Cevsl5imsIzY=;
 b=vtD2Ch9bvbOqCu0/8tj4Li+Br9KjSbSnPfzHjkI/PVHPJU2IwNs1zPgERh1GlMP462
 28VXkAZo4UW+naReEgqwkCYvnZf9vYmhECUD5o2QrWUaWcT2eZl2QlHlBzZvFGDQuZtx
 Sp6E2MxGQU00hxeA7hLApQgr2nViKSXBnF65yvNTqS4HRRYQvhQ0L7IJA36dF3evHhmx
 eeIZyzm9Z5G9lOiynvZKhEZAIZtfA03tzXjUFKzxWKD6M2pgfmP1yXp7EE3Q27sIGXKJ
 lrv2dkpyE9Sjej6M9IAoAngQrVEDvRppJm9m5M55moKIPawHAKa8+dxg5KgA5xGQk8mq
 UbUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=/ipX5LKq9hyY23iIPVEUdWqCt2PENe7Cevsl5imsIzY=;
 b=uL57+gIj2f3Evp3PDqsEzWTC2adwQew7/gPI/AI+8linX2lHVIkGOnLUUV+mmmVgMC
 YP04cFoVKNzdYjqN2F4dYwoLp+9vbq1jmuzQpDvJiNDMjzSuH3KVBOv46+9/Yk9GDX5d
 ZtqtiU64aejz8f3J0FLwfDMqC66BrkihHiA1PgiRkzuKW/faQokrzxF6gOB5Vvrg3hM4
 BMWpuIkxjY+soUR5paqac5TQgp8loQsyyzA2we12g41YG1rxjmaeVoT5bIdmbLaYb8i9
 fHydCqseMvAcMM2QGsK5SaHD7RGBwo3OC1PD/6soZJXERFV5EDTTAaZseOCL//CFWrE/
 V8Wg==
X-Gm-Message-State: APjAAAXKlqBl+VMxnFsnlUexnb+k2308VCq4Ancme0IzSKfxARfE3j9l
 OYIkCLe8Ew2+OwyRuU7XDJaPe2vkbZRfpw==
X-Google-Smtp-Source: APXvYqxHhXICRcq4Kg8ww9Dx6GDlzjdoIEc7u9w23jzDha7CUOvXOu40wW7zI3nsWtBoE5y9tYuU3g==
X-Received: by 2002:a1c:9c87:: with SMTP id f129mr33929322wme.26.1578322591595; 
 Mon, 06 Jan 2020 06:56:31 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id p17sm73636851wrx.20.2020.01.06.06.56.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 06:56:31 -0800 (PST)
Subject: Re: [PATCH] drm: meson: Remove unneeded semicolon
To: zhengbin <zhengbin13@huawei.com>, airlied@linux.ie, daniel@ffwll.ch,
 khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
References: <1576468701-69717-1-git-send-email-zhengbin13@huawei.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT7CwHsEEwEKACUC
 GyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJXDO2CAhkBAAoJEBaat7Gkz/iubGIH/iyk
 RqvgB62oKOFlgOTYCMkYpm2aAOZZLf6VKHKc7DoVwuUkjHfIRXdslbrxi4pk5VKU6ZP9AKsN
 NtMZntB8WrBTtkAZfZbTF7850uwd3eU5cN/7N1Q6g0JQihE7w4GlIkEpQ8vwSg5W7hkx3yQ6
 2YzrUZh/b7QThXbNZ7xOeSEms014QXazx8+txR7jrGF3dYxBsCkotO/8DNtZ1R+aUvRfpKg5
 ZgABTC0LmAQnuUUf2PHcKFAHZo5KrdO+tyfL+LgTUXIXkK+tenkLsAJ0cagz1EZ5gntuheLD
 YJuzS4zN+1Asmb9kVKxhjSQOcIh6g2tw7vaYJgL/OzJtZi6JlIXOwU0EVid/pAEQAND7AFhr
 5faf/EhDP9FSgYd/zgmb7JOpFPje3uw7jz9wFb28Cf0Y3CcncdElYoBNbRlesKvjQRL8mozV
 9RN+IUMHdUx1akR/A4BPXNdL7StfzKWOCxZHVS+rIQ/fE3Qz/jRmT6t2ZkpplLxVBpdu95qJ
 YwSZjuwFXdC+A7MHtQXYi3UfCgKiflj4+/ITcKC6EF32KrmIRqamQwiRsDcUUKlAUjkCLcHL
 CQvNsDdm2cxdHxC32AVm3Je8VCsH7/qEPMQ+cEZk47HOR3+Ihfn1LEG5LfwsyWE8/JxsU2a1
 q44LQM2lcK/0AKAL20XDd7ERH/FCBKkNVzi+svYJpyvCZCnWT0TRb72mT+XxLWNwfHTeGALE
 +1As4jIS72IglvbtONxc2OIid3tR5rX3k2V0iud0P7Hnz/JTdfvSpVj55ZurOl2XAXUpGbq5
 XRk5CESFuLQV8oqCxgWAEgFyEapI4GwJsvfl/2Er8kLoucYO1Id4mz6N33+omPhaoXfHyLSy
 dxD+CzNJqN2GdavGtobdvv/2V0wukqj86iKF8toLG2/Fia3DxMaGUxqI7GMOuiGZjXPt/et/
 qeOySghdQ7Sdpu6fWc8CJXV2mOV6DrSzc6ZVB4SmvdoruBHWWOR6YnMz01ShFE49pPucyU1h
 Av4jC62El3pdCrDOnWNFMYbbon3vABEBAAHCwn4EGAECAAkFAlYnf6QCGwICKQkQFpq3saTP
 +K7BXSAEGQECAAYFAlYnf6QACgkQd9zb2sjISdGToxAAkOjSfGxp0ulgHboUAtmxaU3viucV
 e2Hl1BVDtKSKmbIVZmEUvx9D06IijFaEzqtKD34LXD6fjl4HIyDZvwfeaZCbJbO10j3k7FJE
 QrBtpdVqkJxme/nYlGOVzcOiKIepNkwvnHVnuVDVPcXyj2wqtsU7VZDDX41z3X4xTQwY3SO1
 9nRO+f+i4RmtJcITgregMa2PcB0LvrjJlWroI+KAKCzoTHzSTpCXMJ1U/dEqyc87bFBdc+DI
 k8mWkPxsccdbs4t+hH0NoE3Kal9xtAl56RCtO/KgBLAQ5M8oToJVatxAjO1SnRYVN1EaAwrR
 xkHdd97qw6nbg9BMcAoa2NMc0/9MeiaQfbgW6b0reIz/haHhXZ6oYSCl15Knkr4t1o3I2Bqr
 Mw623gdiTzotgtId8VfLB2Vsatj35OqIn5lVbi2ua6I0gkI6S7xJhqeyrfhDNgzTHdQVHB9/
 7jnM0ERXNy1Ket6aDWZWCvM59dTyu37g3VvYzGis8XzrX1oLBU/tTXqo1IFqqIAmvh7lI0Se
 gCrXz7UanxCwUbQBFjzGn6pooEHJYRLuVGLdBuoApl/I4dLqCZij2AGa4CFzrn9W0cwm3HCO
 lR43gFyz0dSkMwNUd195FrvfAz7Bjmmi19DnORKnQmlvGe/9xEEfr5zjey1N9+mt3//geDP6
 clwKBkq0JggA+RTEAELzkgPYKJ3NutoStUAKZGiLOFMpHY6KpItbbHjF2ZKIU1whaRYkHpB2
 uLQXOzZ0d7x60PUdhqG3VmFnzXSztA4vsnDKk7x2xw0pMSTKhMafpxaPQJf494/jGnwBHyi3
 h3QGG1RjfhQ/OMTX/HKtAUB2ct3Q8/jBfF0hS5GzT6dYtj0Ci7+8LUsB2VoayhNXMnaBfh+Q
 pAhaFfRZWTjUFIV4MpDdFDame7PB50s73gF/pfQbjw5Wxtes/0FnqydfId95s+eej+17ldGp
 lMv1ok7K0H/WJSdr7UwDAHEYU++p4RRTJP6DHWXcByVlpNQ4SSAiivmWiwOt490+Ac7ATQRN
 WQbPAQgAvIoM384ZRFocFXPCOBir5m2J+96R2tI2XxMgMfyDXGJwFilBNs+fpttJlt2995A8
 0JwPj8SFdm6FBcxygmxBBCc7i/BVQuY8aC0Z/w9Vzt3Eo561r6pSHr5JGHe8hwBQUcNPd/9l
 2ynP57YTSE9XaGJK8gIuTXWo7pzIkTXfN40Wh5jeCCspj4jNsWiYhljjIbrEj300g8RUT2U0
 FcEoiV7AjJWWQ5pi8lZJX6nmB0lc69Jw03V6mblgeZ/1oTZmOepkagwy2zLDXxihf0GowUif
 GphBDeP8elWBNK+ajl5rmpAMNRoKxpN/xR4NzBg62AjyIvigdywa1RehSTfccQARAQABwsBf
 BBgBAgAJBQJNWQbPAhsMAAoJEBaat7Gkz/iuteIH+wZuRDqK0ysAh+czshtG6JJlLW6eXJJR
 Vi7dIPpgFic2LcbkSlvB8E25Pcfz/+tW+04Urg4PxxFiTFdFCZO+prfd4Mge7/OvUcwoSub7
 ZIPo8726ZF5/xXzajahoIu9/hZ4iywWPAHRvprXaim5E/vKjcTeBMJIqZtS4u/UK3EpAX59R
 XVxVpM8zJPbk535ELUr6I5HQXnihQm8l6rt9TNuf8p2WEDxc8bPAZHLjNyw9a/CdeB97m2Tr
 zR8QplXA5kogS4kLe/7/JmlDMO8Zgm9vKLHSUeesLOrjdZ59EcjldNNBszRZQgEhwaarfz46
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <cbc6f0b7-7245-1010-f9d5-5e539c4c0b99@baylibre.com>
Date: Mon, 6 Jan 2020 15:56:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1576468701-69717-1-git-send-email-zhengbin13@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_065633_341363_FE532931 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/12/2019 04:58, zhengbin wrote:
> Fixes coccicheck warning:
> 
> drivers/gpu/drm/meson/meson_crtc.c:360:3-4: Unneeded semicolon
> drivers/gpu/drm/meson/meson_plane.c:181:2-3: Unneeded semicolon
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>  drivers/gpu/drm/meson/meson_crtc.c  | 2 +-
>  drivers/gpu/drm/meson/meson_plane.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
> index 57ae1c1..eefefc4 100644
> --- a/drivers/gpu/drm/meson/meson_crtc.c
> +++ b/drivers/gpu/drm/meson/meson_crtc.c
> @@ -357,7 +357,7 @@ void meson_crtc_irq(struct meson_drm *priv)
>  					    MESON_CANVAS_WRAP_NONE,
>  					    MESON_CANVAS_BLKMODE_LINEAR,
>  					    MESON_CANVAS_ENDIAN_SWAP64);
> -		};
> +		}
> 
>  		writel_relaxed(priv->viu.vd1_if0_gen_reg,
>  				priv->io_base + meson_crtc->viu_offset +
> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
> index ed54322..b96fa43 100644
> --- a/drivers/gpu/drm/meson/meson_plane.c
> +++ b/drivers/gpu/drm/meson/meson_plane.c
> @@ -178,7 +178,7 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
>  		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_16 |
>  					      OSD_COLOR_MATRIX_16_RGB565;
>  		break;
> -	};
> +	}
> 
>  	/* Default scaler parameters */
>  	vsc_bot_rcv_num = 0;
> --
> 2.7.4
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

and applied to drm-misc-next

Thanks,
Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
