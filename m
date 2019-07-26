Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5427641D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXoYatNgnt2aTPeZWHYQG9PWhmOyYekuWBvp37LbQJ4=; b=MHY/zFisa6EmFV
	HsX1dG1IOsZSUZ5b/ocOf56G8QQGV5aZFXFhIZHH4LLqg3iO9zDh4XsTpcGenoVwG9Igh6K6b8zGM
	D0uNDlY8evzBGjiMJ45Yz+P1rG4Xn2wLRP6krqLw9uSmhL7GKOaJi7oBKAa1Wtu7ASr+EgeJhQdCu
	G3WQYVCMDc+ZU181T/Txk1CQGRSNYusosSX0kA4vSb1s4Om8lPS8Rg5KGBrF/s4XSN9Gh0A5PKDON
	lVM0A4gHZmW/fy3VNH1kN/PStpBNmzwAbqxb1iq5Y/Kre1UabTVEN7rb2yZGwyWN7D5KOaChdet9x
	tBUnQVW27cSBqXXVQ5rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqy4V-0002Ma-Sn; Fri, 26 Jul 2019 11:07:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqy4L-0002M6-CH
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:07:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06317152D;
 Fri, 26 Jul 2019 04:07:25 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 02D1E3F694;
 Fri, 26 Jul 2019 04:07:23 -0700 (PDT)
Date: Fri, 26 Jul 2019 12:07:18 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V3] perf: imx8_ddr_perf: add AXI ID filter support
Message-ID: <20190726110452.GA24763@lakrids.cambridge.arm.com>
References: <20190726082553.1083-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726082553.1083-1-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_040725_510623_DD0EB389 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "robin.murphy@arm.com" <robin.murphy@arm.com>, Frank Li <frank.li@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 08:28:13AM +0000, Joakim Zhang wrote:
> AXI filtering is used by CSV modes 0x41 and 0x42 to count reads or
> writes with an ARID or AXID matching filter setting. Granularity is at
> subsystem level. Implementation does not allow filtring between masters
> within a subsystem. Filter is defined with 2 configuration registers.
> 
> --AXI_ID defines AxID matching value
> --AXI_MASKING defines which bits of AxID are meaningful for the matching
> 
> When non-masked bits are matching corresponding AXI_ID bits then counter
> is incremented. This filter allows counting read or write access from a
> subsystem or multiple subsystems.
> 
> Perf counter is incremented if AxID && AXI_MASKING == AXI_ID && AXI_MASKING
> 
> AXI_ID and AXI_MASKING are mapped on DPCR1 register in performance counter.
> 
> Read and write AXI ID filter should write same value to DPCR1 if want to
> specify at the same time as this filter is shared between counters.
> 
> e.g.
> perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/,imx8_ddr0/
> axi-id-write,axi_id=0xMMMMDDDD/cmd
> MMMM: AXI_MASKING
> DDDD: AXI_ID
> 
> ChangeLog:
> V1 -> V2:
> 	* add error log if user specifies read/write AXI ID filter at
> 	the same time.
> 	* of_device_get_match_data() instead of of_match_device(), and
> 	remove the check of return value.
> V2 -> V3:
> 	* move the AXI ID check to event_add().
> 	* add support for same value of axi_id.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/perf/fsl_imx8_ddr_perf.c | 50 ++++++++++++++++++++++++++++++--
>  1 file changed, 48 insertions(+), 2 deletions(-)

> @@ -288,6 +307,24 @@ static int ddr_perf_event_add(struct perf_event *event, int flags)
>  	int counter;
>  	int cfg = event->attr.config;
>  
> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
> +		if (event->attr.config == 0x41)
> +			pmu->axi_id_read = event->attr.config1;
> +
> +		if (event->attr.config == 0x42)
> +			pmu->axi_id_write = event->attr.config1;
> +
> +		if (pmu->axi_id_read && pmu->axi_id_write &&
> +		    (pmu->axi_id_read != pmu->axi_id_write)) {
> +			dev_err(pmu->dev, "axi-id-read/write event must have the same value of axi_id\n");
> +			return -EINVAL;
> +		} else if (pmu->axi_id_read) {
> +			writel(pmu->axi_id_read, pmu->base + COUNTER_DPCR1);
> +		} else if (pmu->axi_id_write) {
> +			writel(pmu->axi_id_write, pmu->base + COUNTER_DPCR1);
> +		}
> +	}

It is not appropriate to print an error here after allowing the user to
configure the PMU in this way.

If you must support this filtering, then:

* In pmu::event_init, verify that all of the events in the group have
  requested the same filtering, and reject the group if not.

* In event_add, only accept an event which matches the filtering
  requirements of any events which are currently installed. Do not print
  an error message.

... that way the perf core will periodically rotate conflicting events,
as it would for any other PMU. It will keep track of how long each event
is installed, and the userspace tools can report this.

You should document this under Documentation/admin-guide/perf/, but the
driver shouldn't print anything to dmesg for this case.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
