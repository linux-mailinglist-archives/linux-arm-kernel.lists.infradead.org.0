Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752EA11A4E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3IYcq8H1HhOArOvSOBF9PBLwTB3c6OintMNfDQmThL0=; b=nNnG4OnNQxGauoPfnafzHqoyt
	DRj7zI/TZpvaAfzRWVTE91PtuMqOWsfXpExm2rTgNHW+I3I2zhx5hfQod2G0OIUNzPH+Fz74qhYET
	SP1eu1KivjlyPKgXWcto7QihoROnlScVXxehqAd+4NRQ7xNdYnGvwKk8IClFofxQT/lqJYyCqf8cz
	1rjl66Ci4xeDBL/XYuXnyvHtJdwLuHbG6/6amvspe3Z63+nXrBcXsosX8k0XeVmxnvtAZl0Odqfr5
	wQgdHNUgw1tSD1kOJg+Ltrniyq7B5h3rpE+oBrxO0IPzSZSvwELyf629AW2y34uYtHMEf/7H+WOr9
	5vhfngt4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iew8W-0002c7-C7; Wed, 11 Dec 2019 07:10:16 +0000
Received: from a27-186.smtp-out.us-west-2.amazonses.com ([54.240.27.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iew8J-0001r7-UO
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:10:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1576048200;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID;
 bh=mHGxYoR3gp9GoBg7R0dzI6EbViXJjFdJH4ruGbJEZe4=;
 b=pGhrDxKXxQLGO7LywQ2wIAcf7z/n2gYwJMnA5HGzI5nPL3JfSHZszrxK+vDSLZ7K
 lWbpV05hKQIIlCB0KIfqnZQQ/8fyojbUYA5MwY+WAZi4frQzMghR5mkGuw8KnT0n9rk
 SiyswE7LkKT1xHcrQhofNdS0THuppWHcrW3ahVWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1576048200;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID:Feedback-ID;
 bh=mHGxYoR3gp9GoBg7R0dzI6EbViXJjFdJH4ruGbJEZe4=;
 b=Jz9Mw33wr2DpUoItKk3PCZT2FJMgiNiVoUWAToZz05bPXYz2lP9Xc3wOSdMazokN
 L3aFkSHj7419zB+WWiP04W41ylCERV0r5dO3eclhGQP3NEQr4rzwiTK7VEKIQ2zLe2S
 lW6ims1E6daEGlQnCO6AB7gRCjrz2E+oOoh/FIdA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Wed, 11 Dec 2019 07:10:00 +0000
From: saiprakash.ranjan@codeaurora.org
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 0/3] Add DT nodes for watchdog and llcc for SC7180 and
 SM8150 SoCs
In-Reply-To: <20191211070216.GF3143381@builder>
References: <0101016ef3391259-59ec5f0a-2ae7-45a8-881e-edc2d0bf7b26-000000@us-west-2.amazonses.com>
 <20191211070216.GF3143381@builder>
Message-ID: <0101016ef3cb0b8c-e0a0c552-b148-473a-b247-e633912fcf09-000000@us-west-2.amazonses.com>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.12.11-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_231004_022638_9FF48FF3 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.186 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-11 12:32, Bjorn Andersson wrote:
> On Tue 10 Dec 20:30 PST 2019, Sai Prakash Ranjan wrote:
> 
>> This series adds device tree node for watchdog on SC7180 and SM8150.
>> It also adds a node for LLCC (Last level cache controller) on SC7180.
>> 
>> Patch 3 depends on the dt binding change to LLCC node name:
>>  - https://patchwork.kernel.org/patch/11246055/
>> 
> 
> Series applied
> 

Thanks Bjorn !!

--
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
