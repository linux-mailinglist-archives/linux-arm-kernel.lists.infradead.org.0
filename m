Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765EA10EBE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	References:Subject:In-reply-to:To:From:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxSFvjbAQhR+YjqGECPp8BbyEDJ/wkXWnsD7EWRnGh8=; b=a03ZT/bKuyWAd2
	GqJHOKCZX10k873aVs7H+aBGAznRe5Xn6a0AwtIVPGFmtMlyFYV277R2GbOtPIeV3fYH/HjMepKD2
	n4TsZgTgkDSfLdgLykbEqS4l8vMsloyC3SsEBiNr7LHLhpDVzOdKRDpYOFtl10sHns9+vq+2yqjgX
	uY7i0DnUMW6MBIgreB/WqVQL2/6ecFzvYrLNSrUcg1ZFy44MbFFo/55RLcdOnH609x4P6R7jKJ3fh
	SGpCrtbj306Y7+J/jXYjd0MauAbCOY38aIgD5IO6hC/K4J8u0u8ccA+0Sk6AYkKIigXHxUIhB7KSm
	qamh0fn5nkfQqWINYLtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibn6a-00020o-8O; Mon, 02 Dec 2019 14:55:16 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibn6I-0001zj-7V; Mon, 02 Dec 2019 14:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575298480;
 bh=pO4twjMhFwzlu5BSTIRckttzQ5eUzZw5pVofzAEoACQ=;
 h=X-UI-Sender-Class:From:To:In-reply-to:Subject:Reply-to:References:
 Date;
 b=UVU4JIQhpUVoYU6bGgXMVkPFAMDEq9g/YGU6WhUIZKkps3seqN4QT47SyTOQT4pki
 GDlQYZgybPMD8nQvc80Ps0nRB1rG47y+QIDUzimH8EZY78e+sTRkrG2V8EexkO4x3a
 LzMnJcS621O/980ACLGBXgwO00ZMuzpO/Um3PuNo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from corona.crabdance.com ([173.228.106.103]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MjjCF-1hwNfH0rO7-00lAIR; Mon, 02 Dec 2019 15:54:40 +0100
Received: by corona.crabdance.com (Postfix, from userid 1001)
 id 78AA06E85603; Mon,  2 Dec 2019 06:52:56 -0800 (PST)
From: Stefan Schaeckeler <schaecsn@gmx.net>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, heiko@sntech.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-reply-to: <20191118052413.D729B6E85603@corona.crabdance.com> (message from
 schaecsn on Sun, 17 Nov 2019 21:24:13 -0800 (PST))
Subject: Re: [PATCH] thermal: rockchip: enable hwmon
References: <20191118052413.D729B6E85603@corona.crabdance.com>
Message-Id: <20191202145256.78AA06E85603@corona.crabdance.com>
Date: Mon,  2 Dec 2019 06:52:56 -0800 (PST)
X-Provags-ID: V03:K1:DO9/n43e80iU6R7ZGRDJIullECdHSYKNtZWbFAGZOFzyMKqOXcB
 3bjfR4s2Fw/q9vOXCGVeIxffDi+d1jykW1BvMe3ZwtBMhxDGTpxg4T3AbaxriaeWAuaE3Eh
 63V/ipJy9muNtsXzTqjFxvQ75CwXjqyoFUxtsMjd7H3eTlEng5BZSbbZKuCxUIViF/jBsBC
 kCjXydUflFH54BZx9JyQA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3psRJ6OuQo4=:j5kT/FDHk+toEgfFRieJZO
 wMpJsAqg5CvsIPwcTskinP355X66zmnGFeiILP+cya1QEF3TPTjK5wniZ14t9b2d3CR4E/G4W
 QoVaKKLcHZ2pmCJ2Y4M1zm3NEYZD7L1EWtn1HbS7lhi94HwtQcC8Dj8PDkSHb0lmGZl/XIPtX
 cb4Z1nGEdyk2UESc2e8Tx8P9HQArwTm4NR52go+ohfw6KKpoiYMClMxGSbvcyNjn21QILzP2p
 Z04F5m9o0+uwuDtUcpkU9/0cDsvkMjif8zf4B5HsgOVIMg7rHXre0In2zEOqJ1kQyy9IkfUKa
 QeGEWAQ1OwZEqs6qLoSFNSjOI1EDU8eCYMY7mPgikA2fUk+YyAu7jtAt1nrif5Xrs5p6cyaoL
 pzPeWU7vHwczFQUnKYBDSSaSsEAzRhqDHTMgbCAZHaxIuOa2x8PnKkut8Izo1jiWARUnC15+i
 wKIh72bgSglmHQHVHCJIBUu+fIkAZsnYZrV9xVU+F7+NBDtlFx8+2JZ41XVdhGwtavNWFpK6p
 jPyN+jSoZ2O8dadiE2ls2tsOuFC7DcdJMLcvTRkTUK08b/tktA4IeLgEphYrxHPw45Xol8zgC
 Pbhcg1G5wqoyHckHWyVGTIodZoy73ttwIW0NUTbw5R7D5K6SfiwstOYQxBardySP+weH88GlJ
 kaM7Ci9shzoCUL2Q5oT4+QDlOIe+mc1MGukCSsJRQSXn3cIZ+dtGcYZdcE3gRcpO1S10Hs4Lr
 INgh5L+PJIpi7kDb+c3CFgeyMR3yoPXX2hYWPf89lSz2UHOUyx+JAT69E403myEDMcGMFfxG/
 KDfdCzRcAbclv8d35+GwfRlRRAZ4h1YTQmuZxubXpIb0pSvYbSZd3ua9z54kYO3RTuTuDcDao
 TAy9ErRGZAbSXpdeQ/VilM/9bUi59q0eosCSwaUPBVkPxMrylVmFO9Sb9bbgVIheuZGGWFxD6
 bGJUJ/biKPp5KuC/kGDMOBiD5MtSHJ7uCjR4pvZzDhb2C7vwtE2IIh/7GDzINgnwaW0Ciez5S
 uiAu7UuMYeWoGa6x8eoZvqjEoAU9YX/0wHeHPN3YsPGUfPl2SlvG4uZ8JEhjJaqISld0kmRVx
 WT5f9WYWpTgcIZv8Jf/s3EbJVmvUc4EOZ7T41/VI9y5ybOnIg2kAj+OGoNEfiszwiZwvLIU6K
 0bzpZuDfRyNNue5nhxfLOcAgjNjFnQCYL0B63msjICE5zlHN+teRqur53GU/wWO9+JV7i5Dky
 +XMASyu43OkLS2Y6SSqrp2H0v9Yu8bxijHwE9dQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_065458_598499_337E8245 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (schaecsn[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: schaecsn@gmx.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello linux power management mailing list and others,

New month, new try. Could someone review this patch, please. I would really
like to see the Rockchip RK3399 temperature sensors hooked up to the hwmon API.

~ Stefan

> Enable hwmon for the soc and gpu temperature sensors.
>
> Signed-off-by: Stefan Schaeckeler <schaecsn@gmx.net>
>
> ---
>  drivers/thermal/rockchip_thermal.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> index 343c2f5c5a25..e47c60010259 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -19,6 +19,8 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/pinctrl/consumer.h>
>
> +#include "thermal_hwmon.h"
> +
>  /**
>   * If the temperature over a period of time High,
>   * the resulting TSHUT gave CRU module,let it reset the entire chip,
> @@ -1321,8 +1323,15 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
>
>  	thermal->chip->control(thermal->regs, true);
>
> -	for (i = 0; i < thermal->chip->chn_num; i++)
> +	for (i = 0; i < thermal->chip->chn_num; i++) {
>  		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
> +		thermal->sensors[i].tzd->tzp->no_hwmon = false;
> +		error = thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
> +		if (error)
> +			dev_warn(&pdev->dev,
> +				 "failed to register sensor %d with hwmon: %d\n",
> +				 i, error);
> +	}
>
>  	platform_set_drvdata(pdev, thermal);
>
> @@ -1344,6 +1353,7 @@ static int rockchip_thermal_remove(struct platform_device *pdev)
>  	for (i = 0; i < thermal->chip->chn_num; i++) {
>  		struct rockchip_thermal_sensor *sensor = &thermal->sensors[i];
>
> +		thermal_remove_hwmon_sysfs(sensor->tzd);
>  		rockchip_thermal_toggle_sensor(sensor, false);
>  	}
>
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
