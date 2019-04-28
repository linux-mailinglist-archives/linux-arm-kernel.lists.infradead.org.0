Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00373B5DC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 12:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zlq5nAccU821ratsXJiATjlSTHnGMeWx1Ilp+xVJ5G0=; b=P7e+50J8pciuDu
	qiB2lyvQoQWvDIC955UfNjkTnE+RtNxeUTfsOAyUAPS96tOoJyxPPQAskDt4PRVll5ifTadUTKr7B
	lJfNzeWUCQBQ4YjHPoPO5teI97oOeHWSFpiRpYpoqcouWom4lOxl8a9cMkP3AH2WP2IpdoRzugCRW
	SXT8kFGQTteBoLTvHz6kIZeAYsddPEeavLvouel+zR9OINDruQ4hP8p/DiVmxJ/O0jJ4J57XQyI3g
	nhQwFzVDeqoJBVJs9fcia8AqOkF2tlbZ5IRB53dbmVajs90jjWpouDx891iyFqliCvDq0RpM/KING
	aZ51BxUC3w4eVIc7Rczw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKhR2-0007cV-3L; Sun, 28 Apr 2019 10:53:28 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKhQt-0007aW-Uj; Sun, 28 Apr 2019 10:53:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1556448782;
 bh=VcRprvV/dMaL6b3Dr3KhYBwaWsXl6uDkktmM6g6TuB4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=jQq+MOd81HcRXs+gmolkLC/OvIBRjPVbJbBfEwoT126ddUbyjmPm9KI+9euQri1MI
 gWXojOppQy+Qr5Qyf2daQqUNN5hRgRjtq+RH+xW3B03MtTdc0XoFxeRj+ySXEhOdPf
 +V6XUQ6790iLY8MhVss2ctqdWDTvr0ETc5ZH0f10=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([2.244.181.137]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LdVdS-1gukLU24RO-00igvN; Sun, 28
 Apr 2019 12:53:02 +0200
Subject: Re: [v3] ARM: rockchip: Fix a leaked reference by adding
 of_node_put() in two functions
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
 <cee2ab03-d0b7-c9c6-acc3-d5aa28979e2b@web.de> <2816348.laE8LpYbrI@phil>
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <43884c4b-8146-9a35-ae5d-40ab17a4a04c@web.de>
Date: Sun, 28 Apr 2019 12:52:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2816348.laE8LpYbrI@phil>
Content-Language: en-US
X-Provags-ID: V03:K1:LiqUMfQkL4vkJ8ENQFBp13v/swVnwrCsfL/XdpaQ8TcSkcQ7+7V
 +ujNr3XlY4zoSMZwiA9se5Iu2X/3k/R5dCezy3tLp2XHh0T7fqs1srgysBHJq/RyTaUiR4c
 njXpACenskA91l5ss809rPg7Ziktp4djkYcSnn8wWeUvt4rlE++w++EH8U+2v9V0jLGdg3Y
 DKV333tXTAaJc+T6TlanA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UChUgs5536M=:OZEf0AtUNh4rntYP76Yehg
 uOX+ttZw0ccFOm8jDBj6Fo+w6azMAIOxb+dzYMKsq4gBsMue/4hVg2BlGTkNdkRxszulZsXsp
 iajZdn2CYuIeKTCAxtGleZ0p6KrWuE4VUEvjP6AoZGG1Mrdr2gVEEL55AEpML4ufTo0NJ5yRx
 ZwZQ21ytdXiW6iRuzF9DDa8MCVPN/WE2oBRubR7izEkIHPt1V/WIsd3yv+zTfW0q/FcOGD7SE
 YfViFjLL1PHZhGNEJ4M0Q0iFs5UuJWtigVlJdcVSeuMrA4D5oUauuuom/Fhph3YQPu0Jl02qi
 g4rsfZbI1eTci7CvKSkoY4HfEAjiGZM9nHCGIIE9pcSss8HYA7uVj+sY3zQSQvO102r7JFCaz
 Ov6744aUfEd5zJ9LDdbNDBBi2gqQjoK2aUsYbCgdWgR3anbY4lrWoqEKYcT4YlKLHy2EKEXzp
 /x4FxjqwjwJXseCbVFBj0g4N+oTRPNgTRGpxWv8X9O1WXMVdfDMfbV00DnFbFjJwVdsArbqdL
 NcdlEvI7LR8Fr7fy+uJXcbEpQ1ujPsRZgIc10cRqcZwFVUFTFHDQzzhg9rgmrcitECM2H32xj
 iM5GIqxUKMYMi3bjFw5lIZe4oP2SRKtrf/fg5g5gRRP1Ct6WwOlH60U6X0gPMj4K3lZ09nMvS
 Q8BmR7bkHrP50EPcSWRbpZrCeaKKyjYHq6Id2lAbqkeMJudyZ+xCw0xeQqREknv21XZb7AQdi
 Q0iOS8RO7R8L+F8mW0NULkuE1I4WOkjBJtpHBU/s7uFQmS+joDe83XiIPwtmfjEKwXcIAFToI
 ryDpq7Ix6IqyAQfANMtLhzSV0DFVOMuw8GxRrTgo34Yu37x2gkD5VneV0dThKtKzlQdpVnUAj
 J6JJlM47A0OW+zyit956ozTgP34SwLP10fRKjkN7PgAAUP9t4KAWSXvdiLpje574DCqpttQOH
 QgE5Z4jQ+YA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_035320_324708_F7D2720D 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.4 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Yi Wang <wang.yi59@zte.com.cn>, Russell King <linux@armlinux.org.uk>,
 Florian Fainelli <f.fainelli@gmail.com>, Wen Yang <wen.yang99@zte.com.cn>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>>   How do you think about to adjust the exception handling in these function
>>   implementations a bit more according to the Linux coding style
>>   (so that the addition of duplicate function calls would be avoided)?
>
> I actually requested not doing wild gotos for of_node_put calls,
> as it makes the code harder to read, especially when the "node"
> gets reused for a different node-source.

Does this feedback mean that you insist on another deviation
from the Linux coding style?

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
