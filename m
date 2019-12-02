Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1597510E91D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:44:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=071+anSGFSQx4/EspSYKW5Jenb3/tc4O8ZrXC4ygf0U=; b=HlwKS4mQZGS0LaxnF0En/8+lK
	YAFVG51FvHQc9YTSu480geAe57P/PXSktiS7xzO+jvtfCtzw9jWpdfkRrLJhhaCBWVSCKfYzodv2Y
	NmjkEcWqqc7N5d8mqh98tO49VIiPxSSuUzaANKt6SgDwGEQTkD8GBJkN6N5jk2oaapeg3EsS/0GQQ
	1elG/jyKyMmD3MCfdRJE8T84EkgacCmJIYX/v1G1BP+412Xy7jdDJww1FIiWAYKynoN1PiT/1l0zx
	t7rET6QPXCmA4dGOihUj0RMHPStaX4oiWW0DjOEmuTJzQdQoPzWmSzI0hJ4CK4XnDHR5MdKttad2p
	2g18H42Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibjBS-0005p1-NV; Mon, 02 Dec 2019 10:44:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibjBM-0005oW-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 10:43:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5389431B;
 Mon,  2 Dec 2019 02:43:55 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85E023F68E;
 Mon,  2 Dec 2019 02:43:54 -0800 (PST)
Subject: Re: [PATCH v5 13/14] docs: coresight: Update documentation for
 CoreSight to cover CTI.
To: Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-14-mike.leach@linaro.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <1076b0e3-6b50-7be9-0a25-cb003bd77674@arm.com>
Date: Mon, 2 Dec 2019 10:43:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119231912.12768-14-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_024356_228744_49E093D8 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mathieu.poirier@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/11/2019 23:19, Mike Leach wrote:
> Add new document covering CTI / CTM usage in CoreSight.
> 
> Add section in coresight.rst introducing CTI and CTM modules with link
> to new document.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>   .../trace/coresight/coresight-ect.rst         | 200 ++++++++++++++++++
>   Documentation/trace/coresight/coresight.rst   |  13 ++
>   2 files changed, 213 insertions(+)
>   create mode 100644 Documentation/trace/coresight/coresight-ect.rst
> 
> diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
> new file mode 100644
> index 000000000000..6448cf910f20
> --- /dev/null
> +++ b/Documentation/trace/coresight/coresight-ect.rst
> @@ -0,0 +1,200 @@
> +=============================================
> +CoreSight Embedded Cross Trigger (CTI & CTM).
> +=============================================
> +
> +    :Author:   Mike Leach <mike.leach@linaro.org>
> +    :Date:     November 2019
> +

...


> +
> +Channels API Directory
> +~~~~~~~~~~~~~~~~~~~~~~
> +
> +This provides an easy way to attach triggers to channels, without needing
> +the multiple register operations that are required if manipluating the
> +'regs' sub-dir elements directly.
> +
> +A number of files provide this API::
> +
> +   >$ ls ./cti_sys0/channels/
> +   chan_clear         chan_inuse         chan_xtrigs_view      trigin_detach
> +   chan_free          chan_pulse         chan_xtrigs_view_sel  trigout_attach
> +   chan_gate_disable  chan_set           trig_filter_enable    trigout_detach
> +   chan_gate_enable   chan_xtrigs_reset  trigin_attach         trigout_filtered
> +
> +Most access to these elements take the form::
> +
> +  echo <chan> [<trigger>] > /<device_path>/<operation>
> +
> +where the optional <trigger> is only needed for trigXX_attach | detach
> +operations.
> +
> +e.g.::
> +
> +   >$ echo 0 1 > ./cti_sys0/channels/trigout_attach
> +   >$ echo 0 > ./cti_sys0/channels/chan_set
> +
> +Attaches trigout(1) to channel(0), then activates channel(0) generating a
> +set state on cti_sys0.trigout(1)
> +
> +
> +*API operations*
> +
> +   * ``trigin_attach, trigout_attach``: Attach a channel to a trigger signal.
> +   * ``trigin_detach, trigout_detach``: Detach a channel from a trigger signal.
> +   * ``chan_set``: Set the channel - the set state will be propogated around
> +     the CTM to other connected devices.
> +   * ``chan_clear``: Clear the channel.
> +   * ``chan_pulse``: Set the channel for a single CoreSight clock cycle.
> +   * ``chan_gate_enable``: Write operation sets the CTI gate to propagate
> +     (enable) the channel to other devices. This operation takes a channel
> +     number. CTI gate is enabled for all channels by default at power up. Read
> +     to list the currently enabled channels on the gate.
> +   * ``chan_gate_disable``: Write channel number to disable gate for that
> +     channel.
> +   * ``chan_inuse``: Show the current channels attached to any signal
> +   * ``chan_free``: Show channels with no attached signals.
> +   * ``chan_xtrig_view``: write a channel number to select a channel to view,
> +     read to show the cross triggers programmed for the selected channel.
> +   * ``trig_filter_enable``: Defaults to enabled, disable to allow potentially
> +     dangerous output signals to be set.
> +   * ``trigout_filtered``: Trigger out signals that are prevented from being
> +     set if filtering ``trig_filter_enable`` is enabled. One use is to prevent
> +     accidental ``EDBGREQ`` signals stopping a core.
> +   * ``chan_xtrigs_reset``: Write 1 to clear all channel / trigger programming.
> +     Resets device hardware to default state.
> +
> +e.g.::
> +
> +   .../cti_sys0/channels# echo 2 1 > trigin_attach
> +   .../cti_sys0/channels# echo 2 6 > trigout_attach

minor nit: It may be a good idea to add a comment to describe what you
are doing with the above operations, to avoid looking up and mapping it
for someone looking it up. I am not too keen, but it is definitely
helpful.

> +   .../cti_sys0/channels# cat chan_free
> +   0-1,3
> +   .../cti_sys0/channels# cat chan_inuse
> +   2
> +   .../cti_sys0/channels# echo 2 > chan_xtrigs_view
> +   .../cti_sys0/channels# cat chan_xtrigs_view
> +   [2] IN: 1 OUT: 6
> +   .../cti_sys0/# echo 1 > enable
> +   .../cti_sys0/channels# echo 2 > chan_set
> +   .../cti_sys0/channels# cat ../regs/choutstatus
> +   0x4
> +   .../cti_sys0/channels# cat ../regs/trigoutstatus
> +   0x40
> +   .../cti_sys0/channels# echo 2 > chan_clear

> +   .../cti_sys0/channels# cat ../regs/trigoutstatus
> +   0x0
> +   .../cti_sys0/channels# cat ../regs/trigoutstatus
> +   0x0

nit: duplicate lines ?

Otherwise:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
