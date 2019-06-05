Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326DA35AA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlLFmUBBVIrLilRfzg6iTqr9xdOe3HuEsLRL2PDqfz8=; b=sNMORPju/YCOQu
	H4lOK9sEgFuAGD16O5fa2ynM43e9n9n4okyOPq58YlnNg6uOfQbh/9M7DWfNBvvp8WXPOEMPGJGRA
	z4PK+mzwpRDJdawbcDPpe01c2hT2Z1e5I69PIOJ/YVGR+zmpBuAQPOtsL7626VTiog/QvYyKTaJfY
	IfTi/HzTlL4Fi9WZXSZtMktlikZR0kxNCSkBeCigZkGNSIEExeE9TDi9xKZdcEu/o7Zix5BczIgNv
	XOhK1ZNzNhQk46Cup8JawyncC2Ye7KsZtC1L//rI1pxBvZz8CW09iSQJViboRJFapXIKe6M+8m27i
	k0zcmYCVw2z5jF3eb4Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTUC-000838-RN; Wed, 05 Jun 2019 10:49:40 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTU5-00082g-O0; Wed, 05 Jun 2019 10:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559731760;
 bh=v/j4Z2eD2GD0zhfPgdWBU+2pAksyhmUHHesaJHOcPaE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ZHiWZLHHyxs88AT8AMdw01q3xTaXgiAve8Y2VyJolxMQ9Wab/woTcgutxaXQ9rydX
 R5atdDl5Q6WImQ8mjSTLSGwxSjXd/aLjkT/4EHQslHbc2ksCXeQD9/opLGZBRrNwj+
 XD6WOUExB2+WBhkZgM9AFzRx9/zdwVC7eJcc9m2w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MhhwJ-1hBhZU3L4V-00MtYC; Wed, 05
 Jun 2019 12:49:19 +0200
Subject: Re: [PATCH 1/4] clk: bcm2835: remove pllb
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <20190604173223.4229-2-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <b597c584-76a6-d681-512b-da46306f567c@gmx.net>
Date: Wed, 5 Jun 2019 12:49:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604173223.4229-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:q8hji9dsXrh1VvUv+Ij0VE8pGv10bixoURYgbVqiiyW6VNg1c3H
 uzsDyRSLniYuAR79+VWAGy3LAZ6TxbkjdbMIVBCR72yyzT4LmXgYetMVMzshusahVERQ/G/
 GNCzfEdHdKAqyT84AfMp49VTuGtWbw1x0mB0DQoPcPloIN0hzbqOqGDdd8XMcbkA5CVbCYy
 neVdpYuk6bP2BuD/kpG5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:q/sl8JaOVvU=:XZ0LNFl/HcVox4CcPVZBtn
 oncvuIZLNyw6OVvwgAaL7yKjeOOTz7+hOcFhhqfbIjCU8tVZhkNatbOZ6IoGgC3AZm4rEAJ8d
 bYD5v/lXmPk/RLQVdN+FeWIgjyhVupsWYoUdazFjYzygYpToKWUsGI6gGoZHTcqDNGfr4gwYi
 v+pvRR/FDN1HXD84TtKKlSCsm7T5fVBNPoe/VqwD8wVEEthM6fOi6CTAb/vJ6rltJ7L3jvztK
 Z7roAs4ZjsfzzqjMIw13xwuQgAzeDG36VuW6tAUpSevh7PCT9pQBM0cgYZjqR1vGOVwDxqB/u
 vvu0Wvg2sJHSk8l4n3eGpkbL1ZYY78A/+xid7ECTWfnAtyboluVJxB13R1EkRx2C0U8Rfkiii
 PA7By/H6LdQymoRJIBZMxlTKEN8cPKh4HviYHzPbPwBgsPjovnSQtDPWPsxfy682DcL+96/a2
 uOyjlPPU1NtDzvZsbJlthbDqjiAinxLOYZbqLLZJa3OdtSGE2hrT1nWzWgG9cQnwbIXZZ8GY2
 hydmKeAO9XfMGyzWRFkuMSicxKlj4SXV5lvkxbGsuck6wg9piexaEmhuUexm5kKzilhd6zkJb
 gOOSBahC5NcVPemuDSrX28iYaZ7ImBY385Jk3OkoAR+PomvZfrrTcmpNIcUFgU8H/LnypX+fy
 zYdSK0fIEkJ2wfUWDs4p+YFWq/lV22d+RBu4zskSSx79HaeQmdDp1HtAQ4cUIl/qBpRna7xuV
 EqbylGUNEJ2Nw+1medUtMH1L4zSI98qJphLTkwBNPOLPylOHekYfVVVDNfIndwL6xHx1l/MRg
 W0FyCtJF+U7hvMwN7GhBhai60PSpmWH8kG3GmGCoESQwNfbsJoMgXIzlV87MHMCxdo+YbcURp
 7F+SLdhWad0CcwOvcdi2ypAi8UM7WszHogSEJB1B++++DPGVV2QVOvze/gm7ppQ3TBg+C0S0M
 9+p6cmVLNpSKWeUbUZSDpzOmL5hwTIEka6PeOj9V5t8ShFr7mYD1XYKMMwzpjWh1cJYhiuIvx
 yw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_034934_070465_3BD5919A 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Am 04.06.19 um 19:32 schrieb Nicolas Saenz Julienne:
> Raspberry Pi's firmware controls this pll, we should use the firmware
> interface to access it.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/clk/bcm/clk-bcm2835.c | 25 -------------------------
>  1 file changed, 25 deletions(-)
>
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
> index 770bb01f523e..ccb0319fc2e9 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -1651,31 +1651,6 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.fixed_divider = 1,
>  		.flags = CLK_SET_RATE_PARENT),
>
> -	/* PLLB is used for the ARM's clock. */
How about leaving a short comment, that these clocks are now handled by
a different driver?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
