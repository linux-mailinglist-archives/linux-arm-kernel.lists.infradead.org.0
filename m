Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEA0BFF33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 08:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqiWMcZkQe5l2rP8EOR7BC3cbFpmWxtm7D1/aJgAQ90=; b=K49IR7j1HI3LQ6
	FIZrI8XKE6RnvWb9wcChJ/ET7i5Beo6TsIwKJwzI+4bJd8FvtUut0/48HZIIokoPJDpwN/ot9GgWe
	2ijOln8vgSA55pH6QERWil2SkkrD73PiTBQWnfeCYlZVLJNxKEHk5ccVzjLfCdqo3tCxENtTBq7vP
	acBZFiOsZaNTT64eBBkPQ0d+hhfHKiDZUwaEY0mth4c8wir3B26mIIU35ndAU2cF925n8PTY3PBOY
	m6luXHOC7U7JXPF+5XyjzJE47u9frg7t6Z57bst7OL7yqfaC3mVGvuqvi1K+fhV/ZQSOuX7LomHzU
	YnsEuX218wKtagEQHoQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDjsp-0000fF-UE; Fri, 27 Sep 2019 06:37:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjsY-0000eD-5F
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 06:37:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id i18so1301687wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 23:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=nWDL5fqaR8obQqMwXte7vHWbAUknsL1rJWwNBs58thQ=;
 b=c2PP/mwXQM7IoE231d/I5ADBcKd53eoRjDnbXU7V4/HXy/CNas3t3vYsjaKljFq/Wl
 e4OuGCckvgLBR8BdPVxEoht8KufRKx3EFc6yJnZdiQQ95kTjkOK4AnoSgEoalnvnqU1E
 NajrZ//jYh1yavwWyOH8wES3H9zHYVQduzJLst0Mhhl4Jw1VM4F5NgS9i6n/3OdXlNcm
 YFT+6NhXr4PUaZmtydLsJP8H5JPEtVetJgMnGmg5JoBVkwVjwwI+r6C1eRfm8jJM0qDH
 GVVxMxzbK6MrIQ+/d8sarwzRpKkJTJ1p7xVZwuO6NFE88D60A4qwUXSok9/PsrhpWw9Z
 u3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=nWDL5fqaR8obQqMwXte7vHWbAUknsL1rJWwNBs58thQ=;
 b=NFSGT54K8PhNJZe57fGQCP6JSgCHPFgqb4r15gsbiSt3sBE1mok0p/2oISbbQyiiX8
 KM0083QK61S8iNMkAiSntrBYzRG65nX3SGO3t4UcBEB9M3h4Kc/+2SEoYRpv/AXwZ3JK
 oKM5qNNy+DYWVm66vYAhUKmSiYtzD9v8aGX54USAvhSOknhYDRgIYYpJtvR7e0s4qIwj
 kUYT01hYPuQ4YUfy/RPsWz6EI7flCrwwojT4DY2L878wqEh7FVUb2xUOvjwOUbS/eVSH
 zhR/OX1lhH5o+6khV6BETuL7ZFK85lvMYnUIYT17QA/CC0NkWvP3fK3bxU4Z6mCXwGAd
 mt2Q==
X-Gm-Message-State: APjAAAXe+obUVqz3Z2wt8Qv4DNJzwq4VgPnF7QChDcwfekeIPd4P7ZZw
 nN3y2k0Guv9t9+6SoQw0aOwl5A==
X-Google-Smtp-Source: APXvYqwAzt8FtaeB+KFZzlFTM6WHW+HqcYDFQCMO8rOIyoRVqXniocNzeL8p860gre9ivXi+zZG0KA==
X-Received: by 2002:adf:ebd0:: with SMTP id v16mr1521702wrn.352.1569566240519; 
 Thu, 26 Sep 2019 23:37:20 -0700 (PDT)
Received: from [192.168.1.62] (176-150-251-154.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id
 i8sm1959210wrw.36.2019.09.26.23.37.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 23:37:19 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] soc: amlogic: ee-pwrc: ensure driver state maches
 HW state
To: Kevin Hilman <khilman@baylibre.com>, Kevin Hilman <khilman@kernel.org>,
 linux-amlogic@lists.infradead.org
References: <20190925213528.21515-1-khilman@kernel.org>
 <20190925213528.21515-3-khilman@kernel.org>
 <8936e777-8996-5c7b-ea9d-8e17c8d6c4b1@baylibre.com>
 <7hwodulvu6.fsf@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 mQENBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAG0KE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT6JATsEEwEKACUC
 GyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJXDO2CAhkBAAoJEBaat7Gkz/iubGIH/iyk
 RqvgB62oKOFlgOTYCMkYpm2aAOZZLf6VKHKc7DoVwuUkjHfIRXdslbrxi4pk5VKU6ZP9AKsN
 NtMZntB8WrBTtkAZfZbTF7850uwd3eU5cN/7N1Q6g0JQihE7w4GlIkEpQ8vwSg5W7hkx3yQ6
 2YzrUZh/b7QThXbNZ7xOeSEms014QXazx8+txR7jrGF3dYxBsCkotO/8DNtZ1R+aUvRfpKg5
 ZgABTC0LmAQnuUUf2PHcKFAHZo5KrdO+tyfL+LgTUXIXkK+tenkLsAJ0cagz1EZ5gntuheLD
 YJuzS4zN+1Asmb9kVKxhjSQOcIh6g2tw7vaYJgL/OzJtZi6JlIW5AQ0ETVkGzwEIALyKDN/O
 GURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYpQTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXM
 coJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hi
 SvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY4yG6xI99NIPEVE9lNBXBKIlewIyVlkOa
 YvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoMMtsyw18YoX9BqMFInxqYQQ3j/HpVgTSv
 mo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUXoUk33HEAEQEAAYkBHwQYAQIACQUCTVkG
 zwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfnM7IbRuiSZS1unlySUVYu3SD6YBYnNi3G
 5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa33eDIHu/zr1HMKErm+2SD6PO9umRef8V8
 2o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCSKmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+
 RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJ
 C3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTTQbM0WUIBIcGmq38+OgUsMYu4NzLu7uZF
 Acmp6h8guQINBFYnf6QBEADQ+wBYa+X2n/xIQz/RUoGHf84Jm+yTqRT43t7sO48/cBW9vAn9
 GNwnJ3HRJWKATW0ZXrCr40ES/JqM1fUTfiFDB3VMdWpEfwOAT1zXS+0rX8yljgsWR1UvqyEP
 3xN0M/40Zk+rdmZKaZS8VQaXbveaiWMEmY7sBV3QvgOzB7UF2It1HwoCon5Y+PvyE3CguhBd
 9iq5iEampkMIkbA3FFCpQFI5Ai3BywkLzbA3ZtnMXR8Qt9gFZtyXvFQrB+/6hDzEPnBGZOOx
 zkd/iIX59SxBuS38LMlhPPycbFNmtauOC0DNpXCv9ACgC9tFw3exER/xQgSpDVc4vrL2Cacr
 wmQp1k9E0W+9pk/l8S1jcHx03hgCxPtQLOIyEu9iIJb27TjcXNjiInd7Uea195NldIrndD+x
 58/yU3X70qVY+eWbqzpdlwF1KRm6uV0ZOQhEhbi0FfKKgsYFgBIBchGqSOBsCbL35f9hK/JC
 6LnGDtSHeJs+jd9/qJj4WqF3x8i0sncQ/gszSajdhnWrxraG3b7/9ldMLpKo/OoihfLaCxtv
 xYmtw8TGhlMaiOxjDrohmY1z7f3rf6njskoIXUO0nabun1nPAiV1dpjleg60s3OmVQeEpr3a
 K7gR1ljkemJzM9NUoRROPaT7nMlNYQL+IwuthJd6XQqwzp1jRTGG26J97wARAQABiQM+BBgB
 AgAJBQJWJ3+kAhsCAikJEBaat7Gkz/iuwV0gBBkBAgAGBQJWJ3+kAAoJEHfc29rIyEnRk6MQ
 AJDo0nxsadLpYB26FALZsWlN74rnFXth5dQVQ7SkipmyFWZhFL8fQ9OiIoxWhM6rSg9+C1w+
 n45eByMg2b8H3mmQmyWztdI95OxSREKwbaXVapCcZnv52JRjlc3DoiiHqTZML5x1Z7lQ1T3F
 8o9sKrbFO1WQw1+Nc91+MU0MGN0jtfZ0Tvn/ouEZrSXCE4K3oDGtj3AdC764yZVq6CPigCgs
 6Ex80k6QlzCdVP3RKsnPO2xQXXPgyJPJlpD8bHHHW7OLfoR9DaBNympfcbQJeekQrTvyoASw
 EOTPKE6CVWrcQIztUp0WFTdRGgMK0cZB3Xfe6sOp24PQTHAKGtjTHNP/THomkH24Fum9K3iM
 /4Wh4V2eqGEgpdeSp5K+LdaNyNgaqzMOtt4HYk86LYLSHfFXywdlbGrY9+TqiJ+ZVW4trmui
 NIJCOku8SYansq34QzYM0x3UFRwff+45zNBEVzctSnremg1mVgrzOfXU8rt+4N1b2MxorPF8
 619aCwVP7U16qNSBaqiAJr4e5SNEnoAq18+1Gp8QsFG0ARY8xp+qaKBByWES7lRi3QbqAKZf
 yOHS6gmYo9gBmuAhc65/VtHMJtxwjpUeN4Bcs9HUpDMDVHdfeRa73wM+wY5potfQ5zkSp0Jp
 bxnv/cRBH6+c43stTffprd//4Hgz+nJcCgZKtCYIAPkUxABC85ID2CidzbraErVACmRoizhT
 KR2OiqSLW2x4xdmSiFNcIWkWJB6Qdri0Fzs2dHe8etD1HYaht1ZhZ810s7QOL7JwypO8dscN
 KTEkyoTGn6cWj0CX+PeP4xp8AR8ot4d0BhtUY34UPzjE1/xyrQFAdnLd0PP4wXxdIUuRs0+n
 WLY9Aou/vC1LAdlaGsoTVzJ2gX4fkKQIWhX0WVk41BSFeDKQ3RQ2pnuzwedLO94Bf6X0G48O
 VsbXrP9BZ6snXyHfebPnno/te5XRqZTL9aJOytB/1iUna+1MAwBxGFPvqeEUUyT+gx1l3Acl
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <21eafa69-fe26-2df1-d187-cddfe5b37951@baylibre.com>
Date: Fri, 27 Sep 2019 08:37:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7hwodulvu6.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_233722_340088_ABAC7FE4 
X-CRM114-Status: GOOD (  42.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/09/2019 21:08, Kevin Hilman wrote:
> Neil Armstrong <narmstrong@baylibre.com> writes:
> 
>> On 25/09/2019 23:35, Kevin Hilman wrote:
>>> From: Kevin Hilman <khilman@baylibre.com>
>>>
>>> During init, ensure that the driver on/off state as well as clock and
>>> reset state matches the hardware state.  Do this by always calling the
>>> drivers 'on' function, and then callling the 'off' function if the
>>> HW state was initially detected as off.
> 
> [...]
> 
>> I don't see what you are trying to solve except simplifying the code.
> 
> Simplifying the code is a worthwhile goal on its own, but that's not the
> only thing I'm tring to accomplish.

I still find it ugly to power_on a domain to power it off right afterwards.
The issue is with the CCF enable handling which is not in sync with the
HW, if you boot with an already enabled clock, it won't be marked enabled
in CCF, and it's clearly bad when you want to have a fine-tuned gate state
handling.

> 
> Part of the goal is make the init less VPU specific and thus make it
> more understandable/maintainable.  But the more important part is to
> ensure that the driver state and HW state is consistent for all the
> domains (not just VPU.)  I've had to debug lots of power-domain issues,
> and inconsistiences between HW state and driver state tend to be the
> primary cause of problems.
> 
> Also I'm generally not a fan of the "don't mess with bootloader state"
> approach as that leads to subtle dependencies on specific bootloader
> versions that are also difficult to debug.
> 
> Antother equally important goal is to actually be able to power-down the
> VPU when it's not used.  Right now, we'll never power off the VPU if the
> bootloader enabled it, and that seems a bit extreme so I'm looking to
> improve that and be able to power off the VPU when not used.
> 
>> And the case is more that "matching the clock state" here, the
>> pm_domain_always_on_gov was is a real case when booting from the Amlogic
>> U-boot.
> 
> I'm not understanding what you mean about vendor uboot.  I've done
> testing with vendor uboot too:
> 
> I tried on g12a-u200, g12a-x96-max, and sm1-khadas-vim3l all of which
> have vendor uboot, and I tried before and after $SUBJECT patch.
> 
> In all cases, I see the vendor uboot splash screen, and I see the
> framebuffer console from linux after kernel boot.  I see the same
> behavior before and after my patch.
> 
> I also tried on g12b-odroid-n2 (vendor uboot), and there is _no_ uboot
> spash screen, but I see the linux framebuffer console come up both
> before and after my patch.

Thanks for testing all these cases

> 
> What's the specific case you're worried about with vendor uboot?

It's an issue I got when bringing up mainline uboot and the vpu power controller
driver, I had regressions on GXBB and GXL boards.
But it seems it's no more the case on G12A/G12B, we'll see this when
GX support will be added in this driver.

> 
> Also...  note something interesting I noticed on sm1-khadas-vim3l:
> before my patch, the framebuffer console appears, but the background is
> a bluish/green color.  After my patch, the background is black (as
> expected.)  

Yes it's an issue I have on my infinite todo list, it's a different
init done by the latest vendor uboot. I have a fix but it seems it
breaks display when booting other boards.

> 
>> The display power domain is complex and as been half solved by using
>> "simple-framebuffer" on gx and is missing on g12a/g12b/sm1.
>>
>> For example, Debian installer runs without the modules, but will use
>> the EFIfb set by U-Boot, but in this precise case :
>> - the DRM driver isn't loaded
>> - we can't hook this power domain with EFIfb
> 
> OK, so I agree that this case where we want the display to continue to
> work but linux DRM drivers never loaded is a special case.
> 
> Is there a way to check if efifb is enabled?  Is the the linux driver
> (drivers/video/fbdev/efifb.c) or something else only done by uboot?
> 
> If we can detect efifb from the kernel (not just whether the domain is
> already on), then a simple addition to my patch like this:
> 
>  	if (is_off)
>  		meson_ee_pwrc_off(&dom->base);
> +	else if (efifb_is_enabled)
> +		dom->base.flags |= GENPD_FLAG_ALWAYS_ON;
> 
> would force the domain always-on in the case of efifb.  
> 
> In fact, now that I think of it, simply adding:
> 
>  	if (is_off)
>  		meson_ee_pwrc_off(&dom->base);
> +	else
> +		dom->base.flags |= GENPD_FLAG_ALWAYS_ON;
> 
> to my current patch would get back to the same behavior of the existing
> driver.  But I still don't like the idea that we can *never* power off
> the VPU if the bootloader enables it. :( I'd rather see patches
> conditionally adding that flag with detailed explanations as to why it's
> needed.
> 
>> When *not* in EFIfb, we use simple-framebuffer on GX, using this
>> power domain, but it hasn't been copied to G12A.
> 
> I don't quite understand what problem simple-framebuffer is
> solving. Could you explain that in more detail.

simple-framebuffer has the power domain hooked in it's node, so
when u-boot will boot linux with HDMI enabled it will enable
this node and until the DRM driver loads the simple-framebuffer
will live and keep the power domain enabled.

> 
> Assuming it is solving something, why can't it be used on g12[ab]/sm1 ?

It will, but I need to push the patches.

> 
>> Personally I'll leave this code until we really tested and checked all
>> uses cases, 
> 
> Right, I don't want to break anything on purpose, but I think the
> current state of this driver is fragile and difficult to
> understand/maintain, so I would be grateful for any help in
> understanding the corner cases better, as well as testing them (or
> explaining to me how to reproduce them.)
> 
> Generally, with long-term maintenance in mind, if I'm forced to choose
> between understandable/maintainable code and "covers 100% of corner
> cases" I will most often chose the former.
> 
>> not only on the sei510/sei610 using mainline u-boot.
> 
> See above about all the other boards with vendor uboots also tested.

Let's leave apart the vendor uboot issue for g12.

Since display support for G12A will land soon in mainline U-boot, let me
push the DT patches for simple-framebuffer to we have a fallback in
case the DRM driver isn't loaded/built.

We can consider that in case of EFIfb, the simple-framebuffer node would have
been enabled and the power domain hooked and enabled.

Neil

> 
> Kevin
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
