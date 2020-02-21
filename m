Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82952167590
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 09:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6U3euJQr0xkqIWKSprB1lQShCKZwwuSfwhXJgIaOuk=; b=ovh7avwP+lg7tz
	aToEXWOJlXayCIbTvurKDRCmx604L8NY4R1KD7YUuHKV+DvC+JMi7YLEgsRxD0s8pMqm3Q4tiLfNR
	PU7ho0ZgL+UmNIn2wbIHNRBt8ubgJ1oM8TiYM8+7D6bItXpVYk0DG7wJn21B7cVt1Vu8Du2+aKNbv
	DzK7iwM4VnyF6Urrl3xU+6LPyIF5kWSeHlSfxaujF2Uj3ZVBraXBL3vZXoza6z8675YX2R84hmx9F
	6Imdjnf7EzPo3IkA1iINPKE6jgRjNV1X7qg8fQZTeF6FdfVy4hdIzh+G1nh2TXfRudX9ASu3H55vF
	vsnIp38pwHel02rsXxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j53iY-0008SR-Tn; Fri, 21 Feb 2020 08:31:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j53iP-0008Ro-7Y
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 08:31:18 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1j53iK-0006kK-Ge; Fri, 21 Feb 2020 09:31:12 +0100
Received: from [IPv6:2a03:f580:87bc:d400:6ccf:3365:1a9c:55ad] (unknown
 [IPv6:2a03:f580:87bc:d400:6ccf:3365:1a9c:55ad])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits)
 client-signature RSA-PSS (4096 bits))
 (Client CN "mkl@blackshift.org",
 Issuer "StartCom Class 1 Client CA" (not verified))
 (Authenticated sender: mkl@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id B31CD4BCCD0;
 Fri, 21 Feb 2020 08:31:09 +0000 (UTC)
Subject: Re: [PATCH v2 1/3] dt-bindings: m_can: Add Documentation for
 transceiver regulator
To: Faiz Abbas <faiz_abbas@ti.com>, Rob Herring <robh@kernel.org>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-2-faiz_abbas@ti.com> <20200219203529.GA21085@bogus>
 <a987bcd7-ca1c-dfda-72f3-cd2004a87ea5@ti.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Openpgp: preference=signencrypt
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
Message-ID: <20b86553-9b98-1a9d-3757-54174aa67c62@pengutronix.de>
Date: Fri, 21 Feb 2020 09:31:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a987bcd7-ca1c-dfda-72f3-cd2004a87ea5@ti.com>
Content-Language: de-DE
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_003117_272970_046342AC 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lgirdwood@gmail.com,
 netdev@vger.kernel.org, sriram.dash@samsung.com, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, broonie@kernel.org, wg@grandegger.com,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/21/20 9:31 AM, Faiz Abbas wrote:
> Hi Rob,
> 
> On 20/02/20 2:05 am, Rob Herring wrote:
>> On Mon, Feb 17, 2020 at 07:58:34PM +0530, Faiz Abbas wrote:
>>> Some CAN transceivers have a standby line that needs to be asserted
>>> before they can be used. Model this GPIO lines as an optional
>>> fixed-regulator node. Document bindings for the same.
>>>
>>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>>> ---
>>>  Documentation/devicetree/bindings/net/can/m_can.txt | 3 +++
>>>  1 file changed, 3 insertions(+)
>>
>> This has moved to DT schema in my tree, so please adjust it and resend.
> 
> Ok.
>>
>>> diff --git a/Documentation/devicetree/bindings/net/can/m_can.txt b/Documentation/devicetree/bindings/net/can/m_can.txt
>>> index ed614383af9c..f17e2a5207dc 100644
>>> --- a/Documentation/devicetree/bindings/net/can/m_can.txt
>>> +++ b/Documentation/devicetree/bindings/net/can/m_can.txt
>>> @@ -48,6 +48,9 @@ Optional Subnode:
>>>  			  that can be used for CAN/CAN-FD modes. See
>>>  			  Documentation/devicetree/bindings/net/can/can-transceiver.txt
>>>  			  for details.
>>> +
>>> +- xceiver-supply: Regulator that powers the CAN transceiver.
>>
>> The supply for a transceiver should go in the transceiver node.
>>
> 
> Marc, while I have you here, do you agree with this?

I'll look into the details later today.

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
