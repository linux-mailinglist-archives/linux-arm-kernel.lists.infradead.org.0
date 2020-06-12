Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FA51F76EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55YT+MhttLjA9pHESb/bDwz8MrG53Yr8TlHZMtj6Dmo=; b=rOIFu8pJMcw6mz
	eGC6r03Ol3kBQd2knTHF1VzNt0H30VKDlGRCdS2ZTkX4NJdtejj5PwiPV2k8Wvg6O6RSk/rJlU+PG
	gjCfWb5baNRX5H1eCqwT2niF3E/QCX3RxE005gDCQzK7hohdqIcWEAEDWaAFMxE0H6QplPKqSpz+H
	r9Y/k2fx69fbPeVV4xTSJM/U2BSDVeamf0gLgSQ6xriMzIcIu/FdHTFwUolirCpwqilPOmCBSfE8K
	Vj9uJgXvCh7cXiAh3yi+uytC/h6FgfFuQ5ii3IqFOAEFT6dTDD16TAL9xqiuTtQdJ004KbodQOQWR
	PYOuqMYjbh453Lv1vDdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhHE-0000B2-5j; Fri, 12 Jun 2020 10:51:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjhH6-0000Aa-76
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:51:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1jjhH1-0001TH-TH; Fri, 12 Jun 2020 12:50:59 +0200
Received: from [IPv6:2a03:f580:87bc:d400:b44d:6713:e0e9:e23c] (unknown
 [IPv6:2a03:f580:87bc:d400:b44d:6713:e0e9:e23c])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits)
 client-signature RSA-PSS (4096 bits))
 (Client CN "mkl@blackshift.org",
 Issuer "StartCom Class 1 Client CA" (not verified))
 (Authenticated sender: mkl@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id EBE8C5150C1;
 Fri, 12 Jun 2020 10:50:57 +0000 (UTC)
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato> <20200612102113.GA26056@pi3>
 <20200612103149.2onoflu5qgwaooli@pengutronix.de>
 <2bc70a44-8b98-0da5-9408-15d6fa0c20fe@pengutronix.de>
 <20200612104413.GC26056@pi3>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Autocrypt: addr=mkl@pengutronix.de; prefer-encrypt=mutual; keydata=
 mQINBFFVq30BEACtnSvtXHoeHJxG6nRULcvlkW6RuNwHKmrqoksispp43X8+nwqIFYgb8UaX
 zu8T6kZP2wEIpM9RjEL3jdBjZNCsjSS6x1qzpc2+2ivjdiJsqeaagIgvy2JWy7vUa4/PyGfx
 QyUeXOxdj59DvLwAx8I6hOgeHx2X/ntKAMUxwawYfPZpP3gwTNKc27dJWSomOLgp+gbmOmgc
 6U5KwhAxPTEb3CsT5RicsC+uQQFumdl5I6XS+pbeXZndXwnj5t84M+HEj7RN6bUfV2WZO/AB
 Xt5+qFkC/AVUcj/dcHvZwQJlGeZxoi4veCoOT2MYqfR0ax1MmN+LVRvKm29oSyD4Ts/97cbs
 XsZDRxnEG3z/7Winiv0ZanclA7v7CQwrzsbpCv+oj+zokGuKasofzKdpywkjAfSE1zTyF+8K
 nxBAmzwEqeQ3iKqBc3AcCseqSPX53mPqmwvNVS2GqBpnOfY7Mxr1AEmxdEcRYbhG6Xdn+ACq
 Dq0Db3A++3PhMSaOu125uIAIwMXRJIzCXYSqXo8NIeo9tobk0C/9w3fUfMTrBDtSviLHqlp8
 eQEP8+TDSmRP/CwmFHv36jd+XGmBHzW5I7qw0OORRwNFYBeEuiOIgxAfjjbLGHh9SRwEqXAL
 kw+WVTwh0MN1k7I9/CDVlGvc3yIKS0sA+wudYiselXzgLuP5cQARAQABtCZNYXJjIEtsZWlu
 ZS1CdWRkZSA8bWtsQHBlbmd1dHJvbml4LmRlPokCVAQTAQoAPgIbAwIeAQIXgAULCQgHAwUV
 CgkICwUWAgMBABYhBMFAC6CzmJ5vvH1bXCte4hHFiupUBQJcUsSbBQkM366zAAoJECte4hHF
 iupUgkAP/2RdxKPZ3GMqag33jKwKAbn/fRqAFWqUH9TCsRH3h6+/uEPnZdzhkL4a9p/6OeJn
 Z6NXqgsyRAOTZsSFcwlfxLNHVxBWm8pMwrBecdt4lzrjSt/3ws2GqxPsmza1Gs61lEdYvLST
 Ix2vPbB4FAfE0kizKAjRZzlwOyuHOr2ilujDsKTpFtd8lV1nBNNn6HBIBR5ShvJnwyUdzuby
 tOsSt7qJEvF1x3y49bHCy3uy+MmYuoEyG6zo9udUzhVsKe3hHYC2kfB16ZOBjFC3lH2U5An+
 yQYIIPZrSWXUeKjeMaKGvbg6W9Oi4XEtrwpzUGhbewxCZZCIrzAH2hz0dUhacxB201Y/faY6
 BdTS75SPs+zjTYo8yE9Y9eG7x/lB60nQjJiZVNvZ88QDfVuLl/heuIq+fyNajBbqbtBT5CWf
 mOP4Dh4xjm3Vwlz8imWW/drEVJZJrPYqv0HdPbY8jVMpqoe5jDloyVn3prfLdXSbKPexlJaW
 5tnPd4lj8rqOFShRnLFCibpeHWIumqrIqIkiRA9kFW3XMgtU6JkIrQzhJb6Tc6mZg2wuYW0d
 Wo2qvdziMgPkMFiWJpsxM9xPk9BBVwR+uojNq5LzdCsXQ2seG0dhaOTaaIDWVS8U/V8Nqjrl
 6bGG2quo5YzJuXKjtKjZ4R6k762pHJ3tnzI/jnlc1sXz
Message-ID: <651c9a33-71e6-c042-58e2-6ad501e984cd@pengutronix.de>
Date: Fri, 12 Jun 2020 12:50:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200612104413.GC26056@pi3>
Content-Language: en-GB
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_035104_257850_349EDC01 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>, Wolfram Sang <wsa@kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/20 12:44 PM, Krzysztof Kozlowski wrote:
> On Fri, Jun 12, 2020 at 12:34:47PM +0200, Marc Kleine-Budde wrote:
>> On 6/12/20 12:31 PM, Oleksij Rempel wrote:
>>> On Fri, Jun 12, 2020 at 12:21:13PM +0200, Krzysztof Kozlowski wrote:
>>>> On Fri, Jun 12, 2020 at 11:56:04AM +0200, Wolfram Sang wrote:
>>>>> On Fri, Jun 12, 2020 at 11:29:41AM +0200, Krzysztof Kozlowski wrote:
>>>>>> On Fri, Jun 12, 2020 at 11:05:17AM +0200, Wolfram Sang wrote:
>>>>>>> On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
>>>>>>>> If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
>>>>>>>
>>>>>>> That code is disabled since 2011 (6d83f94db95c ("genirq: Disable the
>>>>>>> SHIRQ_DEBUG call in request_threaded_irq for now"))? So, you had this
>>>>>>> without fake injection, I assume?
>>>>>>
>>>>>> No, I observed it only after enabling DEBUG_SHIRQ (to a kernel with
>>>>>> some debugging options already).
>>>>>
>>>>> Interesting. Maybe probe was deferred and you got the extra irq when
>>>>> deregistering?
>>>>
>>>> Yes, good catch. The abort happens right after deferred probe exit.  It
>>>> could be then different reason than I thought - the interrupt is freed
>>>> through devm infrastructure quite late.  At this time, the clock might
>>>> be indeed disabled (error path of probe()).
>>
>> From my point of view, the clocks are disabled as Oleksij pointed out, due to
>> RUNTIME_PM at the end of probe():
>>
>>> 	pm_runtime_mark_last_busy(&pdev->dev);
>>> 	pm_runtime_put_autosuspend(&pdev->dev);
> 
> These lines come from regular successful probe path, not deferred error path.
> 
> The clock is indeed disabled but not because of runtime PM, but:
> clk_disable:
> 	clk_disable_unprepare(i2c_imx->clk);

ACK.

I think your analysis is correct: devm for shared IRQs does not work for IP
cores that need enabled clocks for register access.

And from Oleksij's comment we can conclude that runtime_pm and shared IRQ
handlers are also tricky for these IP cores :(

Marc

-- 
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
