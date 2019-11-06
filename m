Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C605F21AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 23:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkyTGQzBrZbyiMU+p23ueMZSD7WGFGGRCRrXUv9T4xE=; b=PiJwxGLzXKKwGB
	rhETls9qIYjcddnb0zAqbZMevwGZh4rwmOD9SIlzOtiuwQ+wzLmx500CQatXqZzz2XTpzS3nTJK/6
	C7IYe9F81A+nuah4WfzR04iWS4ujnzqYkv8xKE6e5MuT+qpdKVLQvi+sDx7c8jFvj4dFFv12U0FdU
	tlwJaufCbO2X+dZ1oDfrUjmOzzi60A5hqwKOM2pzysi5PYj+I4no8Vdupy08U0CERcSosZXk22Bs+
	4dy5FwgT6+RxV+FCqCIl28O/mFl7/Lujn7pme1hctS/kSJyHW4nm0Q9tws2Mc+JgtRDNfBatU8SCV
	oU5aei5gG7rYU8ckOh3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTlh-0005Mu-BE; Wed, 06 Nov 2019 22:27:13 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTlZ-0005LB-Jd
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 22:27:07 +0000
Received: from [IPv6:2a00:5f00:102:0:5c62:8eff:fefa:67] (unknown
 [IPv6:2a00:5f00:102:0:5c62:8eff:fefa:67])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9EB7E28FF3E;
 Wed,  6 Nov 2019 22:26:50 +0000 (GMT)
Subject: Re: next/master boot bisection: next-20191106 on r8a7795-salvator-x
To: Linus Walleij <linus.walleij@linaro.org>, tomeu.vizoso@collabora.com,
 mgalka@collabora.com, broonie@kernel.org, matthew.hart@linaro.org,
 Scott Branden <scott.branden@broadcom.com>, khilman@baylibre.com,
 enric.balletbo@collabora.com,
 Chris Packham <chris.packham@alliedtelesis.co.nz>
References: <5dc3460a.1c69fb81.bfae4.adf1@mx.google.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <e2ba3c23-4b85-f83b-0ba4-dc0db1b8dd0f@collabora.com>
Date: Wed, 6 Nov 2019 22:26:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5dc3460a.1c69fb81.bfae4.adf1@mx.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_142705_771379_9F2734CC 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Scott Branden <sbranden@broadcom.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/11/2019 22:15, kernelci.org bot wrote:
> +static const struct of_device_id bcm_iproc_gpio_of_match[] __initconst = {
> +	{ .compatible = "brcm,iproc-gpio-cca" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, bcm_iproc_gpio_of_match);
> +
> +static struct platform_driver bcm_iproc_gpio_driver = {
> +	.driver = {
> +		.name = "iproc-xgs-gpio",
> +		.owner = THIS_MODULE,
> +		.of_match_table = bcm_iproc_gpio_of_match,
> +	},
> +	.probe = iproc_gpio_probe,
> +	.remove = iproc_gpio_remove,
> +};

There's a fix for this which Mark sent yesterday[1] and should
have now been applied, by removing __initconst for the
of_device_id table.  So this regression should not be present in
the next linux-next tag.

Guillaume

[1] https://www.spinics.net/lists/arm-kernel/msg766621.html


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
