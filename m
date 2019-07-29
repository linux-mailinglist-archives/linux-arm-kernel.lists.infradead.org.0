Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97520789A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xn7Zz1o2/FbiWeTOn2OJRvo82l7jxOZu5W0LVYusRdM=; b=A0ljHx/LBOiR7j
	odKIOweZQF3K7trCjmYoeOg8KKZe5bCCKwc//pTMMhcRUXao8pWbs9VPFwhb3jRfUU4Wxap6j8qAl
	y7jSzXn0xQ506XoGVGqz4B1aonKwlA1ZxR0P4GtvuobsNp7xBtwCf+zsZJhNac8CJ6xnlKMs5zAS/
	+/4m8pVIZ5s21sFSgI6erPnqv5cjdy9yyIrEtz9KYGr8tpw2WiM5WFUFXuuo3lKEj/p4jLVUsXRTa
	2LJaPQqc+8NgyFUAUsKa6+NIBksuX8lYPZoSiFIrGTPWH3H3Ukg/VQOWEvFcK0IAV+o5DYi+imfwx
	Hq4R3J1o3aGcOwakiTXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2zF-0001Gr-IO; Mon, 29 Jul 2019 10:34:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2z9-0001G5-2I
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:34:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25567344;
 Mon, 29 Jul 2019 03:34:28 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D8923F694;
 Mon, 29 Jul 2019 03:34:26 -0700 (PDT)
Date: Mon, 29 Jul 2019 11:34:24 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 5/5] reset: Add support for resets provided by SCMI
Message-ID: <20190729103424.GB831@e107155-lin>
References: <20190726135954.11078-1-sudeep.holla@arm.com>
 <20190726135954.11078-6-sudeep.holla@arm.com>
 <1564394355.7633.5.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564394355.7633.5.camel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_033431_199876_35FE1514 
X-CRM114-Status: GOOD (  19.26  )
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, wesleys@xilinx.com,
 aidapala@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Bo Zhang <bozhang.zhang@broadcom.com>, Felix Burton <fburton@xilinx.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, pajay@qti.qualcomm.com,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 11:59:15AM +0200, Philipp Zabel wrote:
> Hi Sudeep,
>
> On Fri, 2019-07-26 at 14:59 +0100, Sudeep Holla wrote:
> > On some ARM based systems, a separate Cortex-M based System Control
> > Processor(SCP) provides the overall power, clock, reset and system
> > control. System Control and Management Interface(SCMI) Message Protocol
> > is defined for the communication between the Application Cores(AP)
> > and the SCP.
> >
> > Adds support for the resets provided using SCMI protocol for performing
> > reset management of various devices present on the SoC. Various reset
> > functionalities are achieved by the means of different ARM SCMI device
> > operations provided by the ARM SCMI framework.
> >
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>
> thank you for the patch. I have a few suggestions below.
>

Thanks for reviewing so quickly, all points taken and fixed locally.
Will wait for some more time before posting v2.

[...]

> > +static int
> > +scmi_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
> > +{
> > +	struct scmi_reset_data *data = to_scmi_reset_data(rcdev);
> > +	const struct scmi_handle *handle = data->handle;
>
> This could be shortened to to_scmi_handle(rcdev), since none of the
> other fields in scmi_reset_data are used by the reset_control_ops
> callbacks.
>

Makes sense, missed to see that.

[...]

> > +
> > +static int scmi_reset_probe(struct scmi_device *sdev)
> > +{
> > +	struct scmi_reset_data *data;
> > +	struct device *dev = &sdev->dev;
> > +	struct device_node *np = dev->of_node;
> > +	const struct scmi_handle *handle = sdev->handle;
> > +
> > +	if (!handle || !handle->reset_ops)
> > +		return -ENODEV;
> > +
> > +	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> > +	if (!data)
> > +		return -ENOMEM;
> > +
> > +	data->rcdev.ops = &scmi_reset_ops;
> > +	data->rcdev.owner = THIS_MODULE;
> > +	data->rcdev.of_node = np;
>
> This is missing rcdev.nr_resets. When nr_resets is kept at zero, the
> check in of_reset_simple_xlate will fail for any id.
>

I clearly missed to do git add for the above :(. I did find these
after testing.

> > +	data->dev = dev;
> > +
> > +	return devm_reset_controller_register(dev, &data->rcdev);
> > +}
> > +
> > +static const struct scmi_device_id scmi_id_table[] = {
> > +	{ SCMI_PROTOCOL_RESET },
> > +	{ },
> > +};
> > +MODULE_DEVICE_TABLE(scmi, scmi_id_table);
> > +
> > +static struct scmi_driver scmi_reset_driver = {
> > +	.name = "scmi-reset",
> > +	.probe = scmi_reset_probe,
> > +	.id_table = scmi_id_table,
> > +};
> > +module_scmi_driver(scmi_reset_driver);
> > +
> > +MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
> > +MODULE_DESCRIPTION("ARM SCMI clock driver");
>
> s/clock/reset controller/
>

Stupid copy-paste :(

Thanks again.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
