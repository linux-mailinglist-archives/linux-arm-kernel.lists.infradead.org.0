Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A2E430E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AI1sZr9LXG8EJczu8Xsgw002Ckd2FfVnVMIBfALREJc=; b=ediRSQY8eQ8snp
	+GfdQnblljJKEr6qzKbKAJ6/r2/OguvbG+dR2fbOeJGr/K+koIXi97UamxwXyGEuqPKRBnzejHQn5
	mNXrNGjfgz6mYg8xuvfU+bxkpjXoNenamKoApv1NA7TVNECSQMxQtnT65BCZTCxVdlZczdxF9gd/y
	YvhhueVmozTeRXVmMCzKtzWGH+FKYaYnl71nEbhkRqIAzLsRsxNkaRr6YkrMQH1xLhxJASMdLAlpu
	Qi2lBRSAg6U72KkVgMC/JxoDSaljQYy/J+Bcff79xZRF+L+PxzuR/KASAZ5oYbl9g0ty3SdoukGUx
	/BcUWvSx1v+B3zbVEkTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9gl-0008S2-4b; Wed, 12 Jun 2019 20:17:43 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9gZ-0008RZ-HM; Wed, 12 Jun 2019 20:17:33 +0000
Received: from [192.168.1.162] ([37.4.249.160]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N9d4t-1ig3WZ04n7-015Y6k; Wed, 12 Jun 2019 22:17:14 +0200
Subject: Re: [PATCH v4 0/7] cpufreq support for Raspberry Pi
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <e39a7bed-195b-579a-fd7c-18645d407645@i2se.com>
Date: Wed, 12 Jun 2019 22:17:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612182500.4097-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:mHnhFM8n40BdQnhNB4NEsxmJXlVxzEsKc7/qclnWMB0BSuXsmfQ
 +iUZKoqU3FU7L9wzy7TSoV7w/AirTUQaf6zFQ6fITy1C7X53F6YQo0wgEq1fPx2TNxXc0JW
 Va3CJermzQQQVWK2KaAITnxk1k/7ccHy/tGC6zSQM3EJ1mkXcrWOQ/Y60wJYiO429mwnVlH
 41XfGR966Ulcw1qe/3wgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mS9THgj+n0I=:9DX2CrJR3tFLetUM0t2Akl
 eMqUP0Jc/jRS2ElekmyS2fCDFol7zg8dkCira1kknwLgLcQZ3mw+uQ1vae6DKcmO/j6+793PG
 8H59cxVO2vHrslKZDjxWL44G+NVF+ZWqMx1Mr2XkHqyKnSY2rgUZuxPIal4nrQe58U4wyvumx
 2hZwVPfeZzSH98QRubw4l55GQ6N1AOL1B5Jkhgn6A8AGf7Vyqxuz3UvKGXKn6lsCboD/S9qck
 J4JvF161nGXdZVRNOOdL6H9jA2vSAq+ZKIN0/mvAjdFfMiGocNp71/ybhtFKIgaf0fUvceMQw
 TWSZQ/HXIYQoqyyAH4RPceFI9qPuaLzVzP9l3WgHTnizu56lM6ejkFGSrvLb+RGj2YrQbCPDP
 rXIjQ/wuJ5BSdXaiq3IpsZNpPIxAlpl4iohEfp9Ll3qtzPndKvvgXUpK3QG/r7W4PmtTbD1nD
 9f2FjR7WJdgfzUYQX8lfMgQW2skMdl3niFZZPdVEVgkJq5ZgPBfUF/hP1D0n2kbGq1zLBrc6v
 vSBWaJtf8kOZJp5RbhK+SelppNQMSMDmpK33pPblZHD3qqBh0m0KXdTXGJn3Fwzf+VJPI+PuV
 B9prTtq+4XP8D+UUYyXGq+NayMUpyRDdSw3I8tyGtWbm4eFSpM3crJ533Hxmw/iN7SlKxnJOs
 DREJ2bcdcFmWttO/CAUdEsS4UVbD6os8cW7uoimPz0DSPaW4OTZzqnS5P/WPtjcxXEKHHyTao
 JHENRw70Qo3s+eAx75RmDbwu/lrw95EBOtgPPs8zosbhjEsqdHXjz7QS4Gg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_131731_871846_72DD7905 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 12.06.19 um 20:24 schrieb Nicolas Saenz Julienne:
> Hi all,
> this aims at adding cpufreq support to the Raspberry Pi family of
> boards.
>
> The series first factors out 'pllb' from clk-bcm2385 and creates a new
> clk driver that operates it over RPi's firmware interface[1]. We are
> forced to do so as the firmware 'owns' the pll and we're not allowed to
> change through the register interface directly as we might race with the
> over-temperature and under-voltage protections provided by the firmware.
>
> Next it creates a minimal cpufreq driver that populates the CPU's opp
> table, and registers cpufreq-dt. Which is needed as the firmware
> controls the max and min frequencies available.
>
> This was tested on a RPi3b+ and RPI2b, both using multi_v7_defconfig and
> arm64's defconfig.
>
this whole series is:

Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
