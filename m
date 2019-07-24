Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A4573741
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1EZXsgKK21ZEqtd/mKz0t14J0M27Rm8n7mI7cV5hTY=; b=rdxW27/HQaGF1x
	rrt9gp07vhBVFOBS2dS7NitDpSZ0rNKMNaUmgGIJPrFf1A5xDZmy6A2VAL08IVFBK+X158AhjLlOy
	fyQck2PPgvclcbOCJPpFDu5JRiWfTpGOPHlWKCT85Phkv3tlH2dcty3f7wTYM2fZRJnEIlZ3568xM
	QymUm3KSu/BUTyETsPzOEpPQ5LTyoosGn9TJumDvIJZv4aMArdKDPOnKhtZKACFlTEiTKnonFUbo2
	MJt87mQ45MipI/jmG09DIzx8Kxoldkq51A3SyVz0QomWgWyjmPNX3TgNKx+lmgsqQcE4ddtw+RDVV
	GFOylXby0oRJuBSQFIhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMZ5-0002Vl-6W; Wed, 24 Jul 2019 19:04:39 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMYr-0002VC-VI; Wed, 24 Jul 2019 19:04:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563995042;
 bh=/+BJFLMw1gy0bJytpKpP4qcMSdfYHGU7T1BXoGK0m3M=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Lo8fyopGVmSLadmsOHcOGmlDOXH96oWHpxm5SuURdmePi8rq16ApYqo6F9La6Vn6I
 Sb9ItIYDwUsfe22xk+RmloS5tRy5K6cwbIKoofOvtsTlJI1WcQ2oQxhKMuIB6BiPaB
 ADPDHtDcWFPcx0GfMMpezt9YR1GRCQnO+VYKmhZY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.139]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MDhba-1hcadw2qIY-00H82L; Wed, 24
 Jul 2019 21:04:02 +0200
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
To: Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
 <20190723191326.3afdff83@why> <34b2b928-c078-8898-842b-908a90593932@arm.com>
 <27de7618-57a7-5069-1c22-b45e93999b8c@arm.com>
 <b5d5e7e5-34dd-e1df-ace0-269bbc12ec05@arm.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <f92475c2-76d5-08ce-49dc-c833587934fd@gmx.net>
Date: Wed, 24 Jul 2019 21:04:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b5d5e7e5-34dd-e1df-ace0-269bbc12ec05@arm.com>
Content-Language: en-US
X-Provags-ID: V03:K1:3DGuCghn8gsmiEQGDxnYeBArcOz3BprqMVsdCtBsNxe8jqTpdkW
 KRQ8F8e+61qGaRrV3wvrfVuJyanXGxIg+tbOU+cmn5HAKoQTwL3xZkr8lktFnQyi9EMp+mj
 vKeGeuCdg44+4C5703SQzXIdE4mfqaDWTxefoL1SA1o+q5XdLPsHj3rh8X8w1arM2XxpdC3
 JvhoRXhroiP/pFUMp0v9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EHaKMdd+6zs=:m9p3YA+BB3MxdO88rkb3VL
 /hvHoEdHYQneVkS2Smc1sCZ/Y4RZAmERSFaY/wgSCtz7S3M/3zKNpJrmdWFMvjt7fe92OUb5o
 NxSFH1PBOUcxVM7+pfDh3Ifx9GJjBLeudZoq6S3mTXxTNwXqQXkQl88cOz9RplPw8z/UhWBpm
 JL2OVmuSXbN4OmSl0TGbQoOgjWlyKiYkL5FifnOhxzsOOQpKv/s62qsaT4BT1FemRj6pbfImR
 VdbT1WpBSwLPxuyhMhpsbOHDF40WuigoyWicmxDK5l2ef7M4HMiwRDOKCnan6mNaNgr7XkgEG
 E5WhINmUxEZZCNd1IFZaHevE6mYrzwo8GO6GyyjHNCfpxQlLhu47tAjF8DLnlW7o0zEtg+I4H
 D9rklOtY2MtGbzOvRLZ6rnFNUd4nQW6WbILgFiO6FgbinWl8HsCAk1fnb1xdsgkzeDEI0Y1vo
 7hDbaG9YJPOh4J+VNtEOex8hy7P05Ixyu9PLwUAd94jAlX07N5b0/vR5KAs9ktXlzajzzaP0q
 GXSEabtw6aWfH8I4KdiYwkljYiUYM3xLpI01gd60u8yqTSAq5oh16wfRVPtbytZU9DYaTcr+s
 nNpGiY8rJXi2SPkFJEw2WDR9/VEgd9vwwuUJlDxuXk45NWX4UmGVfuqK6IDm+ZfsXIPutJMx1
 wkfAaGdRmWMcSeBzM+n78SX1BxG5NoZ/oFWihngdWhDzhq0Hxb11a1Mm91gC9ah7l2mFqwqYo
 Iz8y4joP+EZTCXKYniB7oa++6I/pQTZwctF7fQiEvxo8nNBrt9rr2bn1KFBUYduGM4bR/8A/d
 7DjcH6nFqV2zHgHONxN/hLJKNdYtSC61gjshUIeApgUsR6otwnQUSy2LO3rISF+hK8kI9KtmM
 hlYH9bHOeMTaWb5r7fGQv1l+9EONyiYTFz7KOfwanm42xuJVXS2RAAHfT3EhEndNKC4z13BMw
 O0DguLTLWr2IcU1LhvEDI3JWVKd4e3EwwOlIUYZ8C598kHtelW7/3UUF4lEuqzUaRSB02bchU
 Dmp7QNAr2hDarcPMxN3wAmt7bmNJfrakhY0bEV9yy9tbpuZgmMpdcFmOLXEuUvDVjzEB65oHr
 74sj0cfjuKOUno=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_120426_299787_6DD74462 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Mark Brown <broonie@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir,

Am 24.07.19 um 14:36 schrieb Vladimir Murzin:
> Hi Marc,
>
> On 7/24/19 11:41 AM, Marc Zyngier wrote:
>> Hi Vladimir,
>>
>> On 24/07/2019 10:51, Vladimir Murzin wrote:
>>> On 7/23/19 7:13 PM, Marc Zyngier wrote:
>>>>> +	arm-pmu {
>>>>> +		/*
>>>>> +		 * N.B. the A72 PMU support only exists in arch/arm64, hence
>>>>> +		 * the fallback to the A53 version.
>>>>> +		 */
>>>>> +		compatible = "arm,cortex-a72-pmu", "arm,cortex-a53-pmu";
>>>> You're thus guaranteed to count the wrong events... And you could at
>>>> least have "arm,armv8-pmuv3".
>>>>
>>> Isn't "arm,armv8-pmuv3" still "only exists in arch/arm64" (along with "arm,cortex-a53-pmu")?
>> Absolutely. And yet this is describing the HW, not the shortcomings of
>> the kernel. I want to be able to take the same DT and run it on the
>> 64bit kernel.
>>
> Agreed. I was confused by comment block which describes software side of things rather than hardware.
>
> @Stefan, can you, please, update compatible per Marc suggestion, i.e
>
> compatible = "arm,cortex-a72-pmu", "arm,armv8-pmuv3";
>
> and remove that comment block?

yes, i will do in the next version of the series. I also got some
feedback about the rest of Marc's comments.

Btw you are commenting on a older version of this series, but the
mentioned parts are not affected.

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
