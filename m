Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7022C09D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkUvFdCWCLfGOMINxd4ZU3xJbxJpB4YE+Sadtpknhmk=; b=Qkt2FG92WY0TuI
	llmMJR28U1YmjxrFu11RmizTPrSGPdnm9CTnqOpwU807rLwmPqtM9fQh1CW0A5FiQmVkkKbwQPRcM
	WFgNkxl6POqr4syazFJZrGY+QIu0lPgYkwDCioQRdluTumzbd8575LqlPbDJcBHMI0B3/wQb2EjdO
	3ffFIDIEXNjxUx9DisUtQUu6yX7F7TLWWfrxbIsnvP13ZCU3XpcHoZx22pMbyswm8n2FKJMp3erJv
	AUxjzuPeqzSLa7K8dF0ND7rud240xPrRyMHTyp10Nk2bGa97b8e6xrjFO4IZEBQs89YTSwHR/MHiL
	t6HuBjU+rDTkmPzXNHEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWua-0003sC-8n; Tue, 28 May 2019 07:52:44 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWuT-0003re-DW; Tue, 28 May 2019 07:52:39 +0000
Received: from [192.168.178.167] ([109.104.53.9]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M6UqP-1hY0wY3Quv-006sxW; Tue, 28 May 2019 09:52:23 +0200
Subject: Re: [PATCH v2] i2c: bcm2835: Model Divider in CCF
To: Annaliese McDermond <nh6z@nh6z.net>, eric@anholt.net,
 f.fainelli@gmail.com, wsa@the-dreams.de, swarren@wwwdotorg.org,
 linux-i2c@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20190508071227.18609-1-nh6z@nh6z.net>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <716a7b8a-c2f8-a3c4-0b3a-be3cb26a6c12@i2se.com>
Date: Tue, 28 May 2019 09:52:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508071227.18609-1-nh6z@nh6z.net>
Content-Language: en-US
X-Provags-ID: V03:K1:totGsbyLC+/SUR0p3/8spMkfZgC2VmnSiIt29PYv8LFlWnINYAR
 zf9OFqH9zfKhYkZ5EIHULKu4N4VCBn7qq62xtBkffWWruhbnFAt5CifTSM1NZqOhk7NpuGI
 Ea7TylpDOyYgv+CK+Lxro3qSUGZCEeT8nR9ExKCtPKdPgTdP6rAs2zrB+NxvenLeCEEB1Y+
 oyHNcX0msyiSm4jO2SJqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TiBHJsZG5Pk=:7w6EcfOfkCZvO9NDJBDfx/
 hxwSFPpJ/EMox3+JcejgwJaiTGjfMsYVFK8xbKf8mrYjlVt7apD9+yyE2HrPrKOMIIQbNBc/e
 Aaf3dpb4myUUOxqC3DYC8uqdIHH5sRbOuCevw48OVML65+3CwontCWjQ+/Y1LlubbB0dNCJuj
 hZDpXqVndZ1nm9ZZi2dWJXFSUuICFyFGQ7MsqAVa/CoghWJMG9O2VZbu6UQQHzyGxflBzBqNj
 ss3m3WiNYffA0xNdhvDT5R4wugbg1x2d6axkIFMrYF21AGFngDCEi9rZ7XYi8QXY2eHFn1krJ
 FOQu5ZFHEpl8env9U6wJ6zpY8kfFYY6IiP98H0hKtTc9WxB5fGqZLlw8UTh3DaJs2AnFxYLaN
 Gz7PVYD7jBQjnGxSAGpCCZ/xrW/gmgLiXEoHJYeBW4B0GzEjzgHM1DnocBZt3Mwav2CGxDsOq
 38LGxelGs4Wh3Zow041z4n0LgibfmHoOjc5d//4P0qppgD4j6h1ZqCT+YZeClGxQWuXgF9pVT
 fqbm7NgDP2zlX7bump75qWGSglUaK1RPZHE3pOADKYemONfEXnqcOjawI2rHItVArRfVVqyi4
 r5IXmVwtwNpsvvCTNfdnEJgKjiTfLKHFWBdR1XXsYm+29UDYDc487av6z7opvL1+IWqcj7F6k
 3eU127otzEZDEVmL1l3Z5D/YgdMq+fEfzdeDPwznGn8uIyv9OBcmydDItofQbE6bLQ1TXodzy
 BQz3+mm8GIt3n0jNctnBOQGA+P7Vx2k48Z/UXfnOCENxteGQBwN+ppXf2+o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_005237_760960_D3789BA4 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: team@nwdigitalradio.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Annaliese,

thank you for mention that we have multiple I2C interfaces.

On 08.05.19 09:12, Annaliese McDermond wrote:
> +
> +static struct clk *bcm2835_i2c_register_div(struct device *dev,
> +					const char *mclk_name,
> +					struct bcm2835_i2c_dev *i2c_dev)
> +{
> +	struct clk_init_data init;
> +	struct clk_bcm2835_i2c *priv;
> +	const char *devname = dev_name(dev);
> +
> +	init.ops = &clk_bcm2835_i2c_ops;
> +	init.name = "bcm2835-i2c";

Does this work intentionally in case i2c-0 and i2c-1 are used at the
same time?

Please also check the output of /sys/kernel/debug/clk/clk_summary

Regards
Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
