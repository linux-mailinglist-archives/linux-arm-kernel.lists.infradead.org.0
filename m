Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED2A232EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITFivM/bVkHH3HvwrGI2RThb/8s9xrurQz/x2RkazoM=; b=jWn+GAYf3UKk/8
	nhvb2kwPWnJyPNkSWeEsHPpaa/BwjBBRL1CTxy1I/iCqNczZo80lCbsAdR1d2bpVsjWQRNm06CnpM
	ZhmibykcJejStzvJgc2kDepFNIaNHjoPE0UXJpYMD688A22aC8YrbVaHe5/ShwYPfVlkEf/5OFXsT
	Jnj8cOdUjqQ1Ea1lsgKOcQdJjKKqdLAMoqkslMCKkVRE3Sw5zqCCdV21nqtA2/v7OG11PcYifdt1+
	9CFQgDp0QttvUZlHwXeMWTPymLrBJvFMhAlJ3nl9pczfc1lXWeYzoQoPxwkgPWimoh3G8orpmHZU3
	TEwXD9G60No2yT2j/bHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSghs-00070C-Ei; Mon, 20 May 2019 11:43:52 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSghk-0006zn-DX; Mon, 20 May 2019 11:43:45 +0000
Received: from [192.168.178.167] ([109.104.33.162]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MYvse-1h6m602i7U-00UuCV; Mon, 20 May 2019 13:43:32 +0200
Subject: Re: [RFC v2 2/5] clk: bcm2835: set pllb_arm divisor as readonly
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-3-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <83dff5b5-e02b-4e9c-7ac6-4274e9b75d92@i2se.com>
Date: Mon, 20 May 2019 13:43:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520104708.11980-3-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:b3aMKpG0czxEiB5cnBOw5GHKfiT31mDT0tMmgPMv9aHOWozAfZe
 w3orjCSXH7Vxz08eXThCBisERBmEVRTyVFS+HZxSvZ+K9BL+LOkWeDmZn2Zfrs/XYDeJmPx
 Yvcwa9n048RfjWpBckqkvlgc+M/lvExJ8XNkp25PpmNuh/3JRTPRxLf5llIPu9uAVeIT/kK
 JbsESJMHDGcKGLkMq0YGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Bhd4d+/twfY=:SefFMlw6XmltgfzFN+tJJp
 SrytOrejJlcaQ2HQWpCgL93NV8hM4sDhcbf3pd9e6goISvejw8J0tKgJfOm64QHZycq5SlkXu
 m+sE81NkFY14U91gauObbqFP0RfmQYwOpdBrYdn26+1ejN3sl2sHv86e60f0Zg4Sgh9ENuP27
 /Cf826VfCMaNKqcLfI1fSFurQU/2DhvUeFnqCrkKyZzIwXXVkl0LKS9cTpdfmivWd2BRq2NXQ
 PWvImTZO+YD2NPRQHv+Z0T0iBSiogMJS0N1T/UVSm13huaPDiAHoXv/y694z5Mv84/VCpf6z3
 dMgf5TetPdazToAQMSKIECno20iz0J1ZUPC8FD9zZnOddjwt5GQK5GDu2dXVhgcCVEG+WYm8r
 jDS1oFjBEA1h1DWlncjK1oTl3BOJqGBx/xMyQSHcXxAnG6l8IDujpat8LFw3ULyTMOQO9tb4/
 uWnQeztbMcJ0Vdn2DZaQ7ur0nuJdaA0kZOGjnlot/vYljCc9vvtny3mB/uq+buWZ+un297KRA
 2HIapl3pTEsaUS1hdmzHv76ksNJPoxTu/4u7yR+uBM7VG/WpKdVJiEHYD1LOpcnUU42q77m8H
 kxtJDAXkyExUjsWwhPrZu/sr7YuMXSe5yanzW530OaMLcHtUyF3BRsT5p+ZfeOzEoQb7pDhzT
 QRYuaRG/g5AvtOjwfJLgt+FD+vX+XA9dO6jWzzL3c6HaQc6deUq/UiBXuFsni2CXJ5hrTAKNT
 wA/tYpq0fomv70TP4BkyufZMDUVLP/zEM2fDiqZ3FO49+Iya3ayJfEF0/Ls=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_044344_752235_9D511E05 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: linux-pm@vger.kernel.org, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, ptesarik@suse.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, mbrugger@suse.de,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.05.19 12:47, Nicolas Saenz Julienne wrote:
> This divisor is controlled by the firmware, we don't want the clock
> subsystem to update it inadvertently.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
