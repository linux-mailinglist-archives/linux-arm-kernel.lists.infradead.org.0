Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C5812432C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 10:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bR0Cm6GdwQIGDd+JVLKfJ1gll1uZ8GNiFiFWMZFyUSk=; b=p2qHs40ScBF7vL
	c53Sxtq+55e05DVNQ/bl+PWB5baVQBhtC/oNF279kT8GeolyZ4BKvwarfhLImmgoRSL791PB59aYo
	ZnsH28LY8w5ds4HB7+K9LVRz2RFc0ETTPnhvT1XeVdeax96rQAcFP5xrzwo8Vmm5f2srTDpjVbDAz
	+CCWSoFxTm6dtYBjDH9W09s2wFPvJ3BPxW8sJ4myNeekajAQt55ydbvV6FyMQnNidmGhSV038UxVt
	7OYOqlN7q5huiyboDpYev6U8u9biu2BvgTv1Joshv1Nuu3CSaqJtj0kdDhPZP3UrP3gn1ZBMPSpE/
	UiqHWtVI7dHfi+bmYqmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihVeJ-0001NI-0i; Wed, 18 Dec 2019 09:29:43 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihVdr-00018L-9J
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 09:29:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBI9SFbt030551;
 Wed, 18 Dec 2019 03:28:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576661295;
 bh=iGk7YRT+kPnqstyHZEl2eYWpUaNqZx8s0Pjx38SCwGo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=M0503mgOmC+63+lhfjTAtturSJzFirhFDnzpQjn4VuFPV9r/pRlTAzS2AQKuysbEV
 WVUzj8nTNILNsZJmzW7LJf62u6tY3T9krMHZ3Yvak26fJ83EO0ajFVxVX1ua68asny
 47Zc1haxMdZHMJ7LD5Xf6xJyf90PZ9aXphTaOfSE=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBI9SFxW120738
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 18 Dec 2019 03:28:15 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 18
 Dec 2019 03:28:15 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 18 Dec 2019 03:28:15 -0600
Received: from [10.24.69.35] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBI9S8be074543;
 Wed, 18 Dec 2019 03:28:12 -0600
Subject: Re: [PATCH 1/3] clocksource: davinci: work around a clocksource
 problem on dm365 SoC
To: Bartosz Golaszewski <brgl@bgdev.pl>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, David
 Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>
References: <20191213162453.15691-1-brgl@bgdev.pl>
 <20191213162453.15691-2-brgl@bgdev.pl>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <51eb10e9-245e-7b3e-51ff-578e06e0759b@ti.com>
Date: Wed, 18 Dec 2019 14:58:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191213162453.15691-2-brgl@bgdev.pl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_012915_564371_5458F9CA 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bart,

On 13/12/19 9:54 PM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> The DM365 platform has a strange quirk (only present when using ancient
> u-boot - mainline u-boot v2013.01 and later works fine) where if we
> enable the second half of the timer in periodic mode before we do its
> initialization - the time won't start flowing and we can't boot.
> 
> When using more recent u-boot, we can enable the timer, then reinitialize
> it and all works fine.
> 
> I've been unable to figure out why that is, but a workaround for this
> is straightforward - just cache the enable bits for tim34.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Timer Global Control Register (TGCR) has bits to reset both halves of
timer. Does placing both halves in reset, waiting a bit (say 10ms) and
then taking them out of reset help solve the this problem?

Also, there are LPSCs controlling the timers. As an experiment, can you
see if using LPSC_STATE_SWRSTDISABLE instead of LPSC_STATE_DISABLE in
davinci_lpsc_clk_disable() and then doing a clk_disable() + clk_enable()
on timer can get the timer out of this bad state.

We need some way for Linux to start on a clean state after bootloader is
done. And trying to reset the timer before use seems to be a better way
to accomplish it.

I assume the original code was just lucky in not hitting this case?

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
