Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D0510B648
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 20:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWSTw4CEouo6Nh9+twZMKl0jzeiS27fASIeB0cnmmxA=; b=W5AG3znODKrv6K
	7URJ8r2Q317bo5WWnMRcbbqp0Uhhm2PNZi0sEaYr4gZ0QSNkjS1W0gk2wS4JatHVv/sLbXvEditHz
	/raak4lIjtNwCnP1w/r2dM/7ftOOTQOcdWooJuT9fY52iFqLvsklWAbttrVfWquFI99+JQ+6y9vxQ
	MbuKkUYXsDhuOZzhTPWypH9kJB8/CVKGvNYKjFRYzaeSSsEDbzpD6MIlKFMoLuSsDpJPLC+Oqo8rS
	4zDoOI0jlWFjhh9MIVX2UUN1Qrn4TcAPNCmwiMyJGqRVJ+A0XATqUId+8d0n32H9P6Gl8lv8oMi0k
	fLeKMDKbKVBtbuy+AXFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2YH-0000Qv-VZ; Wed, 27 Nov 2019 19:00:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2Y6-0000QC-LG
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 19:00:28 +0000
Received: by mail-pl1-x643.google.com with SMTP id h13so10209515plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 11:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W24vfSybe0Yt1bcIivsgitTM/1jmUBBFwk4xD6OiIw4=;
 b=PtILFn7XbOC8m7Px3/baePGxct5k3lUe8lzuGMcHoNCOzBCFFMpjz9xIP+00+2/T42
 hrHcwvI5ERyz+/Of+9GrEGkGi3ioDfEKeghdi28gk7WpLrFyo28tjb2idxPSFDbuv02t
 O7HCJzFDLQS9f7Upt/Nv0rCq75PfaOk10oGkf6tzTSOFB6gskDzemIqon6GW0J1PJYXM
 6PKqZqfdMCJxnb+Utr1atkPpVJUyYzSiHBt5dYWOYCzHgBKJftJJbLADME2Hqv7wmYV/
 gX+BzeF1bI67m3paaUc2Qu8lx/8s49j4gtEpoA2vmW4dVTarFDZ0d1her10CWPdN9i2V
 dHiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W24vfSybe0Yt1bcIivsgitTM/1jmUBBFwk4xD6OiIw4=;
 b=OMIKXfU4ObtxUqq0jm2KVXas4Lg9nQVjvfkIVXGX31yCshf4Q5LpnP09Ilz87oEeva
 UpUTjU4nED9ipbojkL7D/XscR+hqimzQHFNfcWHBVFivDBdysU87J2wl9ToJJX8gMJ5f
 jKajufVrC7PcVyyRnGV/TrDG4+ti+g70HHbwPJBC8HkZrTAKQ4mlqu6j+4OG+7SLeeSm
 FQQEN6CkUpb9ptfoDezV4dL5ibi/LzqAbAVZkFe5aeITCcE1XsfSTQTWXRzZWm8zKmNN
 ivOT3jz3e3G08MzTo6hsV7XxsBxAFN27GbUdBmWXmpLOZvqB8rZBNDjeXFP6/3Bk5biz
 7/nw==
X-Gm-Message-State: APjAAAXVIpe0BgeUyHqa2UQO+ltJgHWtCvwqF0VS/NeorbE4TEKMaQJg
 WtFyV8pJPIrL0Ll1ZGy8F66c1s/3zHs=
X-Google-Smtp-Source: APXvYqzVEOuwcwOUCX+fOeLYVy8O/wagYCbPlNJdNeF27gDkCpAhMi/62bYAsuw9jOh7DSmYFAHepg==
X-Received: by 2002:a17:90a:2223:: with SMTP id
 c32mr8220031pje.15.1574881225371; 
 Wed, 27 Nov 2019 11:00:25 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm17434061pgl.69.2019.11.27.11.00.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 11:00:24 -0800 (PST)
Date: Wed, 27 Nov 2019 12:00:22 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v5 13/14] docs: coresight: Update documentation for
 CoreSight to cover CTI.
Message-ID: <20191127190022.GD26544@xps15>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-14-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119231912.12768-14-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_110026_712219_B19D5BE1 
X-CRM114-Status: GOOD (  33.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 11:19:11PM +0000, Mike Leach wrote:
> Add new document covering CTI / CTM usage in CoreSight.
> 
> Add section in coresight.rst introducing CTI and CTM modules with link
> to new document.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../trace/coresight/coresight-ect.rst         | 200 ++++++++++++++++++
>  Documentation/trace/coresight/coresight.rst   |  13 ++
>  2 files changed, 213 insertions(+)
>  create mode 100644 Documentation/trace/coresight/coresight-ect.rst
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
> +Hardware Description
> +--------------------
> +
> +The CoreSight Cross Trigger Interface (CTI) is a hardware device that takes
> +individual input and output hardware signals known as triggers to and from
> +devices and interconnects them via the Cross Trigger Matrix (CTM) to other
> +devices via numbered channels, in order to propagate events between devices.
> +
> +e.g.::
> +
> + 0000000  in_trigs  :::::::
> + 0 C   0----------->:     :             +======>(other CTI channel IO)
> + 0  P  0<-----------:     :             v
> + 0   U 0  out_trigs :     : Channels  *****      :::::::
> + 0000000            : CTI :<=========>*CTM*<====>: CTI :---+
> + #######  in_trigs  :     : (id 0-3)  *****      :::::::   v
> + # ETM #----------->:     :                         ^   #######
> + #     #<-----------:     :                         +---# ETR #
> + ####### out_trigs  :::::::                             #######
> +
> +The CTI driver enables the programming of the CTI to attach triggers to
> +channels. When an input trigger becomes active, the attached channel will
> +become active. Any output trigger attached to that channel will also
> +become active. The active channel is propagated to other CTIs via the CTM,
> +activiating connected output triggers there, unless filtered by the CTI

s/activiating/activating

> +channel gate.
> +
> +It is also possible to activate a channel using system software directly
> +programming registers in the CTI.
> +
> +The CTIs are registered by the system to be associated with CPUs and/or other
> +CoreSight devices on the trace data path. When these devices are enabled the
> +attached CTIs will also be enabled. By default/on power up the CTIs have
> +no programmed trigger/channel attachments, so will not affect the system
> +until explicitly programmed.
> +
> +The hardware trigger connections between CTIs and devices is implementation
> +defined, unless the CPU/ETM combination is a v8 architecture, in which case
> +the connections have an architecturally defined standard layout.
> +
> +The hardware trigger signals can also be connected to non-CoreSight devices
> +(e.g. UART), or be propagated off chip as hardware IO lines.
> +
> +All the CTI devices are associated with a CTM. On many systems there will be a
> +single effective CTM (one CTM, or multiple CTMs all interconnected), but it is
> +possible that systems can have nets of CTIs+CTM that are not interconnected by
> +a CTM to each other. On these systems a CTM index is declared to associate
> +CTI devices that are interconnected via a given CTM.
> +
> +Sysfs files and directories
> +---------------------------
> +
> +The CTI devices appear on the existing CoreSight bus alongside the other
> +CoreSight devices::
> +
> +    >$ ls /sys/bus/coresight/devices
> +     cti_cpu0  cti_cpu2  cti_sys0  etm0  etm2  funnel0  replicator0  tmc_etr0
> +     cti_cpu1  cti_cpu3  cti_sys1  etm1  etm3  funnel1  tmc_etf0     tpiu0
> +
> +The ``cti_cpu<N>`` named CTIs are associated with a CPU, and any ETM used by
> +that core. the ``cti_sys<N>`` CTIs are general system infrastructure CTIs that
> +can be associated with other CoreSight devices, or other system hardware
> +capable of generating or using trigger signals.::
> +
> +  >$ ls /sys/bus/coresight/devices/etm0/cti_cpu0
> +  channels  ctmid  enable  nr_trigger_cons mgmt  power  regs  subsystem
> +  triggers0 triggers1  uevent
> +
> +*Key file items are:-*
> +   * ``enable``: enables/disables the CTI.
> +   * ``ctmid`` : associated CTM - only relevant if system has multiple CTI+CTM
> +     clusters that are not interconnected.
> +   * ``nr_trigger_cons`` : total connections - triggers<N> directories.
> +
> +*Sub-directories:-*
> +   * ``triggers<N>``: contains list of triggers for an individual connection.
> +   * ``channels``: Contains the channel API - CTI main programming interface.
> +   * ``regs``: Gives access to the raw programmable CTI regs.
> +   * ``mgmt``: the standard CoreSight management registers.
> +
> +
> +triggers<N> directories
> +~~~~~~~~~~~~~~~~~~~~~~~
> +
> +Individual trigger connection information. This describes trigger signals for
> +CoreSight and non-CoreSight connections.
> +
> +Each triggers directory has a set of parameters describing the triggers for
> +the connection.
> +
> +   * ``name`` : name of connection
> +   * ``in_signals`` : input trigger signal indexes used in this connection.
> +   * ``in_types`` : functional types for in signals.
> +   * ``out_signals`` : output trigger signals for this connection.
> +   * ``out_types`` : functional types for out signals.
> +
> +e.g::
> +
> +    >$ ls ./cti_cpu0/triggers0/
> +    in_signals  in_types  name  out_signals  out_types
> +    >$ cat ./cti_cpu0/triggers0/name
> +    cpu0
> +    >$ cat ./cti_cpu0/triggers0/out_signals
> +    0-2
> +    >$ cat ./cti_cpu0/triggers0/out_types
> +    pe_edbgreq pe_dbgrestart pe_ctiirq
> +    >$ cat ./cti_cpu0/triggers0/in_signals
> +    0-1
> +    >$ cat ./cti_cpu0/triggers0/in_types
> +    pe_dbgtrigger pe_pmuirq
> +
> +If a connection has zero signals in either the 'in' or 'out' triggers then
> +those parameters will be omitted.
> +
> +Channels API Directory
> +~~~~~~~~~~~~~~~~~~~~~~
> +
> +This provides an easy way to attach triggers to channels, without needing
> +the multiple register operations that are required if manipluating the

s/manipluating/manipulating

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

s/propogated/propagated

This patch will be handled by Jonathan Corbet and as such he needs to be CC'ed
in your next submission. 

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
> diff --git a/Documentation/trace/coresight/coresight.rst b/Documentation/trace/coresight/coresight.rst
> index a566719f8e7e..108600ee1e12 100644
> --- a/Documentation/trace/coresight/coresight.rst
> +++ b/Documentation/trace/coresight/coresight.rst
> @@ -491,8 +491,21 @@ interface provided for that purpose by the generic STM API::
>  
>  Details on how to use the generic STM API can be found here:- :doc:`../stm` [#second]_.
>  
> +The CTI & CTM Modules
> +---------------------
> +
> +The CTI (Cross Trigger Interface) provides a set of trigger signals between
> +individual CTIs and components, and can propagate these between all CTIs via
> +channels on the CTM (Cross Trigger Matrix).
> +
> +A separate documentation file is provided to explain the use of these devices.
> +(:doc:`coresight-ect`) [#fourth]_.
> +
> +
>  .. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
>  
>  .. [#second] Documentation/trace/stm.rst
>  
>  .. [#third] https://github.com/Linaro/perf-opencsd
> +
> +.. [#fourth] Documentation/trace/coresight/coresight-ect.rst
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
