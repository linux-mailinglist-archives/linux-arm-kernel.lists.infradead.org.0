Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3E0C4729
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 07:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doorMg3z/BFLmyZHF92qrcaDLSJuY5v3DmWgJNT6VPU=; b=qMy+j+FICq8vQV
	w0nolEW+Ews4qSBrQlquOFguYeDW/7piYF1rLcX00XbMg5AFw/NLPPHbOVYfKn5pUkxjut+/RvEq6
	WIO6XJ/EkMMZqjpMiz8i9fVx46L+7tEYeEBDlhIFjhth4+6SDBcWCMpeFM7pI7hi6eE4XINIgiguh
	OJHW0/S0zA1n0Cqm1GMDewJtBs5C3EiVI6kC7qY1/uB8yytOr3bT+m/02h8ZFg1mCGRXCwmWQaqe7
	t64hI/hdz6unI8RpvAdDqij8khiHWHRY9esYP7AqSOFAf7tLAdSq9oIS+RpuHaOFiENwi7Npa4F/m
	fhSDKsCF1Yn9oeczy/FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXUD-0006km-QG; Wed, 02 Oct 2019 05:47:41 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXTw-0006aj-Ro
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 05:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1569995229;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=m4MmnejFIePSpi3WGLlVz9LTEEmUQI0FZsmc67nbE3A=;
 b=KtjeHjaM1DrucsOp6Cyeyea9t7cYmjpuH6COGh2yYA4fvJymMbGhnIbOFvM5c9bzdf
 ykVQsWZUMusG6YuP2vOIGhd9Q8WG0IWEg0gmZFJB2YcMm1gXZBYOEawAKkP9rLSPVFuc
 5bb2bdYsS7Yypb9lJ/XITKDkkf0/nUOO0TAjv2DVFlyMulpXMd7hLH7M8pdI82yIf9xs
 FWaha3Jkxi5mHI8Sm23bTt423m5Vjaru/hruSGRmEYLBSqksF7HR+rFDFAt9KFXML8wz
 ImPE1ngORbE6cNs3wRnYK8bx43eU7kyddpCgfJJjLDgWi77nxrlOq8V15A8b5eGIrNpI
 bGig==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj4Qpw9iZeHmMgw47pPLg="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.28.0 DYNA|AUTH)
 with ESMTPSA id v00409v925l7Zg4
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Wed, 2 Oct 2019 07:47:07 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v3 0/8] OMAP3: convert opp-v1 to opp-v2 and read speed
 binned / 720MHz grade bits
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <DAF6ACB4-AD7E-4528-9F4B-C54104B5E260@goldelico.com>
Date: Wed, 2 Oct 2019 07:47:07 +0200
Message-Id: <8C3DD775-07DF-45E0-8E04-2B050CEB5800@goldelico.com>
References: <cover.1568224032.git.hns@goldelico.com>
 <20190916162816.GF52127@atomide.com>
 <DAF6ACB4-AD7E-4528-9F4B-C54104B5E260@goldelico.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_224725_488575_AF0AF615 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:11 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 letux-kernel@openphoenux.org, linux-pm@vger.kernel.org,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

> Am 17.09.2019 um 16:35 schrieb H. Nikolaus Schaller <hns@goldelico.com>:
> 
> Hi Tony,
> 
>> Am 16.09.2019 um 18:28 schrieb Tony Lindgren <tony@atomide.com>:
>> 
>> * H. Nikolaus Schaller <hns@goldelico.com> [190911 17:48]:
>>> CHANGES V3:
>>> * make omap36xx control the abb-ldo and properly switch mode
>>> (suggested by Adam Ford <aford173@gmail.com>)
>>> * add a note about enabling the turbo-mode OPPs
>> 
>> Looks good to me, when applying, please provide a
>> minimal immutable branch maybe against v5.3 or v5.4-rc1,
>> that I can also merge in if needed for the dts changes.
> 
> Should I resend a v4 with your Acked-By added?
> 
> BR and thanks,
> Nikolaus
> 

what is the procedure to get this and Adam's thermal setup into linux-next?
BR and thanks,
Nikolaus




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
