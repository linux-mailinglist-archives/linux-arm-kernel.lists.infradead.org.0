Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8C716BF41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 12:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3uhALeZ5QsEAG8tnaOa1DKh6hwLEYdaCgn6UmONHhA=; b=cVnZfZg/rNm/AG
	Mv/SlFO43A8fBJXE3mQ758o4Q6El6pUHr9Job8aqhKnBPqAFI89ycdzCHTL+a6qv20cTzjBtlCJD1
	H7qxiY1zEapAV1JDl8C9owfKROCwt7/ws9Ca3TiFEAQnaEJjWJ5cJHsc+RUsjO6Y4BwJA6JcWVq4K
	FaqReVfar/WErcQ2k9nFDTmwDjswyCNaH35H6MMP0bQcYQwEDRtQjxvU8pS/GdCJRSmGD8rWKvpBN
	Vp4/+VIK+MEahJ62ch/taCFJTsjY0sb9mob1t5zu4pBOuf5Wv4dqtLx9b81Yi4vc0WvLui5EKSsbs
	LJKzBlnVQ+cIy5d6VH2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Y0O-0006pc-Fe; Tue, 25 Feb 2020 11:04:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Y0F-0006pJ-FB
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 11:03:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E57B131B;
 Tue, 25 Feb 2020 03:03:49 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7BACA3F6CF;
 Tue, 25 Feb 2020 03:03:48 -0800 (PST)
Date: Tue, 25 Feb 2020 11:03:46 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Elliot Berman <eberman@codeaurora.org>
Subject: Re: [PATCH v2 2/3] firmware: psci: Add support for dt-supplied
 SYSTEM_RESET2 type
Message-ID: <20200225110346.GF32784@bogus>
References: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
 <1582577858-12410-3-git-send-email-eberman@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582577858-12410-3-git-send-email-eberman@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_030351_595550_4B0F5983 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Trilok Soni <tsoni@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 David Collins <collinsd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 12:57:37PM -0800, Elliot Berman wrote:
> Some implementors of PSCI may relax the requirements of the PSCI
> architectural warm reset. In order to comply with PSCI specification, a
> different reset_type value must be used. The alternate PSCI
> SYSTEM_RESET2 may be used in all warm/soft reboot scenarios, replacing
> the architectural warm reset.
>
> Signed-off-by: Elliot Berman <eberman@codeaurora.org>
> ---
>  drivers/firmware/psci/psci.c | 22 ++++++++++++++++++----
>  include/uapi/linux/psci.h    |  2 ++
>  2 files changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 2937d44..8f4609c 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -90,6 +90,8 @@ static u32 psci_function_id[PSCI_FN_MAX];
>
>  static u32 psci_cpu_suspend_feature;
>  static bool psci_system_reset2_supported;
> +static u32 psci_sys_reset2_reset_param =
> +	PSCI_1_1_SYSTEM_RESET2_SYSTEM_WARM_RESET;
>
>  static inline bool psci_has_ext_power_state(void)
>  {
> @@ -272,11 +274,10 @@ static void psci_sys_reset(enum reboot_mode reboot_mode, const char *cmd)
>  	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
>  	    psci_system_reset2_supported) {
>  		/*
> -		 * reset_type[31] = 0 (architectural)
> -		 * reset_type[30:0] = 0 (SYSTEM_WARM_RESET)

Sorry for missing this earlier, you can move this comment above if others
agree to not drop that info. I am fine with removing it too.

E
>  		 * cookie = 0 (ignored by the implementation)
>  		 */
> -		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2), 0, 0, 0);
> +		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2),
> +			       psci_sys_reset2_reset_param, 0, 0);
>  	} else {
>  		invoke_psci_fn(PSCI_0_2_FN_SYSTEM_RESET, 0, 0, 0);
>  	}
> @@ -493,6 +494,7 @@ typedef int (*psci_initcall_t)(const struct device_node *);
>  static int __init psci_0_2_init(struct device_node *np)
>  {
>  	int err;
> +	u32 param;
>
>  	err = get_set_conduit_method(np);
>  	if (err)
> @@ -505,7 +507,19 @@ static int __init psci_0_2_init(struct device_node *np)
>  	 * can be carried out according to the specific version reported
>  	 * by firmware
>  	 */
> -	return psci_probe();
> +	err = psci_probe();
> +	if (err)
> +		return err;
> +
> +	if (psci_system_reset2_supported &&
> +	    !of_property_read_u32(np, "arm,psci-sys-reset2-param", &param)) {
> +		if ((s32)param > 0)

What is the point on signed comparison here ? You are assuming all vendor
reset also as architecture by doing so which is wrong.

> +			pr_warn("%08x is an invalid architectural reset type.\n",
> +				param);

I thought the point was to have vendor reset here. Based on the 3/3 you
see to have vendor reset bit set, you ignore that by doing signed comparison
which is wrong and even the message is wrong. Specification defines only
one architectural reset(WARM RESET) and all others need to be vendor specific.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
