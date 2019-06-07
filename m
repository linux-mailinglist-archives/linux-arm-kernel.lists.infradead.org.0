Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834B139533
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leDcnSheWxAlfkpeUKssKITDJdcK3mtrdA10JJWSXmg=; b=to3eDnXKLSrGdU
	SNb3e+HLZeoJqTvdKbY2ewMo5cJ6/PQJOv2Vyt5MRCWHdvas7qM3rYYmfIxIH4d20FLzpH2ZKq09P
	CZNQ1lcMway7bIRHYW9gvDM+Mzg4Y7P8eOZvjTIg4i7pAX5iRptVozT17gjYO+c0wW7B2bw4fO8Ak
	dVEpR+HSFiL2dW3+gSCXoqnWRkxp/JsLGj641vqWGfOr33fa9AAMqy39u1UdAhJ/RShpUWyLJ882X
	9tXWQUaeIiNRNa3Y52uO2rABFPcdal0LjG84EO5xMNzEUtOpJPh/H/CbG6NlcJs2OVJYTmPCG4fKl
	J9aJVccfxa+xjrrt6vOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZK8c-0002KV-EC; Fri, 07 Jun 2019 19:02:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZK8U-0002Jo-6Z; Fri, 07 Jun 2019 19:02:47 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE94A20684;
 Fri,  7 Jun 2019 19:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559934165;
 bh=6ijabiDaN3rCu0hu1kgHMOs9Ptn6dV6k1ezaTuwgxzU=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=szhvC/O0F+NNx7xMJnyC4/QoN0Lo5c0iv/TSTZtYpQLc1iQKDRmBqA63VjWfm6um0
 Nhb4VXIlC2M+P7gMinLA6HMr0fxtH4Jho9mZLfniarc8DFVhwT65r9501gWnDxWP+m
 cDgv/SL+q4476Yw6r9XuQ7rME7Ap3L4g7o5eY9rs=
MIME-Version: 1.0
In-Reply-To: <b021ae9d-a38e-b300-d82e-d4f88fb0fe7a@i2se.com>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-5-nsaenzjulienne@suse.de>
 <20190606170949.4A46720652@mail.kernel.org>
 <eb72a26b55cf17c29df6a7fd3c5def08182e00af.camel@suse.de>
 <20190606173609.2C3952083D@mail.kernel.org>
 <153579ddd7e6bd1e5c860a7a01115e47c78a1442.camel@suse.de>
 <20190606182335.1D15F20872@mail.kernel.org>
 <20190607030901.qdnjj7udw7ky3sfx@vireshk-i7>
 <b021ae9d-a38e-b300-d82e-d4f88fb0fe7a@i2se.com>
To: Stefan Wahren <stefan.wahren@i2se.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 4/7] cpufreq: add driver for Raspbery Pi
User-Agent: alot/0.8.1
Date: Fri, 07 Jun 2019 12:02:45 -0700
Message-Id: <20190607190245.CE94A20684@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_120246_256037_DDB6ABF6 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 f.fainelli@gmail.com, linux-pm@vger.kernel.org, mturquette@baylibre.com,
 ptesarik@suse.com, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stefan Wahren (2019-06-07 02:13:54)
> Hi Viresh,
> 
> Am 07.06.19 um 05:09 schrieb Viresh Kumar:
> > On 06-06-19, 11:23, Stephen Boyd wrote:
> >> Yes, thanks. I see that largely follows the commit description so it
> >> looks OK to me.
> > Do you want to provide your Reviewed/Acked-by tag before I apply it ?
> 
> Nicolas wanted to send a V3 of this series and as a platform maintainer
> i need some time for testing this version.
> 

You can add my review tag.

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
