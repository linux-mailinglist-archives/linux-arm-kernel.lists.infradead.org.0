Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18802780F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikcXLd6RxIa7LruqKxwHd+E1y52vdgFB2YFTsfhLcNk=; b=XUMX9oghD1oSkr
	4m6qS8g7LijyfSoUqi+WnLFUUlbkvcYAyjo7zIe7u9627UWaCqUchyDEpD0h1mfA9VvQNuAK9BGDp
	oU+PvsZDucmvnrxQG18KWOmx6di60LrWc2NbJBayCjEmAiKlN0Wex165/h7LaDx3mc6TRxVMK/f54
	ET4cCIWgmy9vq9mZdyiVINV0nAR4N9aiL5sZ4IuYpHLyGzIAV1YeXyr0gkt/yDHFRrHyazTCujqxW
	q/JeaTUBFlfS8m55d/p9hfwonuPIDYhnTib2xSFXphhg6zDft423kOrj3zuW3G2/owdn8gdQJsF13
	Lk2TrSOn0qLjIs7d10dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjCg-00053j-6x; Thu, 23 May 2019 08:35:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjCY-00053K-Ln
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:35:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id q15so4840249wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 01:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9DzzNcEdZvY/dgRt+QooOHcGS+wcrH7TNtSJ6fjMgjw=;
 b=bckDOC8aW1UZtLrmV1FChqgsvDze8PMagrhctMfI2+WlrfV8XQwchra6X2n9xx+WtE
 2EvZsnw1GafCiGr6SvL3f1MM6h8DwuCrM5cBrnkSZ+hOF3gHWU7wEJqcTgDJWACGs+sk
 tfFLlGJGBtWxejUgUczqClvodZgRtzHX2ii/WbIO89sKT1cwx27Z+2QHHHS6/5C6kRNX
 H8Ckw18twsa1ViBUOJkDpu4BQbyk8Uq+eWNhZwNLZaSB1c18YdeMpHnaFyMHM0xkK1Rn
 RNA4dZCL7w2lfmiZMEwUpXEfMxcW+QpBNd+QSOsc/zzAgfJB2GrpQ3kry2Ig5KyrckgU
 tCrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9DzzNcEdZvY/dgRt+QooOHcGS+wcrH7TNtSJ6fjMgjw=;
 b=GB3MGd86yuRqQuDzF2s19Pm/okRXrZrULKirXOyVyKnIBJxXhTFdMGqbsQCbNoyku6
 +BAfxM7J+mq2uD0HbE7HhC9T6sN04viKmR82W9RINaUx6sKzZlZvXC0r5dKOF91TVUnI
 Um5uowS/M2Ogbit4avzTxiNTkO3sB3iONwJoqaec0WuE7tMSyFksA8lvYssNHITbDqom
 6Y5wbUTW7dCzWUY0IgVLJ30uxTuMqhR+XZfDEaRIm92gLKh6evAO7D+7clzwz0MkSz1c
 PUrHA1d8+5sD7KAs7RC2HpiKPqbLINyB1YKb/8ExwYCoQtVqB4WjvoRV7zFkKxXUfCar
 sLTw==
X-Gm-Message-State: APjAAAVPn56HPTvaBeme47aisJkApnAO5HnBwXyW1HKH6KB1iofRGc+w
 nz0c4pq9ooNhZ3aZnj/W/C2+3g==
X-Google-Smtp-Source: APXvYqy7KwRgWRQNe0kjzqirJRYMkAVBhGTypgALW8EdIb3iHPFjwUQZxo0yacdjCl5PEBpsDf8I9Q==
X-Received: by 2002:a1c:5f02:: with SMTP id t2mr11322534wmb.19.1558600548580; 
 Thu, 23 May 2019 01:35:48 -0700 (PDT)
Received: from [192.168.1.116] (146.red-95-121-91.dynamicip.rima-tde.net.
 [95.121.91.146])
 by smtp.gmail.com with ESMTPSA id x5sm31206729wrt.72.2019.05.23.01.35.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 01:35:47 -0700 (PDT)
Subject: Re: [PATCH 2/3] drivers: regulator: qcom: add PMS405 SPMI regulator
To: Mark Brown <broonie@kernel.org>
References: <a3c281d5-d30e-294f-71ab-957decde2ba0@linaro.org>
 <20190502023316.GS14916@sirena.org.uk>
 <dd15d784-f2a1-78c6-3543-69bbcc1143c4@linaro.org>
 <20190503062626.GE14916@sirena.org.uk>
 <229823c4-f5d4-4821-ded1-cc046dd0bd20@linaro.org>
 <20190506043809.GL14916@sirena.org.uk>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <a89763cb-5d50-0927-7912-6ccf38ae1d66@linaro.org>
Date: Thu, 23 May 2019 10:35:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190506043809.GL14916@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_013550_739451_2AC92134 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vinod.koul@linaro.org,
 linux-kernel@vger.kernel.org, khasim.mohammed@linaro.org, lgirdwood@gmail.com,
 bjorn.andersson@linaro.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 niklas.cassel@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/6/19 06:38, Mark Brown wrote:
> On Fri, May 03, 2019 at 10:29:42AM +0200, Jorge Ramirez wrote:
>> On 5/3/19 08:26, Mark Brown wrote:
>>> On Thu, May 02, 2019 at 01:30:48PM +0200, Jorge Ramirez wrote:
> 
>>> It seems a bit of a jump to add a new driver - it's just another
>>> descriptor and ops structure isn't it?  Though as ever with the Qualcomm
>>> stuff this driver is pretty baroque which doesn't entirely help though I
>>> think it's just another regulator type which there's already some
>>> handling for.
> 
>> So how do we move this forward?
> 
>> To sum up his regulator needs to be able to bypass accesses to
>> SPMI_COMMON_REG_VOLTAGE_RANGE and provide the range in some other way
>> hence the change below
> 
>> I can't find a simpler solution than this since the function does now
>> what is supposed to do for all the regulator types supported in the driver
> 
> The assumption that you need to have this regulator use functions that
> use and provide ranges is the very thing I'm trying to get you to
> change.  It looks like these regulators just need their own
> set_voltage_sel() and get_voltage_sel() then they can use the standard
> linear range mapping functions (and pobably the set_voltage_time_sel()
> needs fixing anyway for all the other regulators).

Right, and I understand what you are asking, is just that I completely
disagree with you. But moving on.

Would you accept if I wrote a separate driver specific to pms405 or do
you want me to integrate in qcom-spmi_regulator.c?

I am asking because none of the ops will use the common functions (I
wont be reusing much code from this qcom-spmi_regulator.c file)

> 
> There's already some conditional code in the probe function for handling
> different operations for the over current protection and SAW stuff, this
> looks like it should fit in reasonably well.  Usually this would be even
> easier as probe functions are just data driven but for some reason more
> than usual of this driver's data initializaiton is done dynamically.
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
