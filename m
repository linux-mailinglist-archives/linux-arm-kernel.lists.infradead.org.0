Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA8C10B66F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 20:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XC2ZFmjP24ZkjR3PtRI6CnQvspIPSxy6wRLy5gbWAgw=; b=RmHE+vheKmB3Nr
	aMkCJ2dVZJOw698kv9FbAPJeame9Qj0AvarMhPj9FpL2sGompip6HIj8b+NirYzZIjRudbBmTWPaS
	DUbWBNrulnUoEFEpLr+I9AdcdaS1fYvgt/2GXL/y90+6t8XCekgbB/X7kCy/4hwd+P8q217r0JF5i
	RsCuwjm8zgHBq32jWPqc0lbagzp0WwdilONu2HBZS5kgTGhcZwhMgNWcIa9gD/9DK5OxlLKSdD0IV
	8RRALudFwnmM6cA9mI0iQw1jTWsGDSgUxn7ahhM1Vq3xuXYOCOgPnbCbqUWMrEin+big29xdD3amZ
	kJh4f1BRZS5/YglE49lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2gQ-0002w2-QB; Wed, 27 Nov 2019 19:09:02 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2gF-0002vh-5d
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 19:08:52 +0000
Received: by mail-pj1-x1041.google.com with SMTP id w8so10440901pjh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 11:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=96H218eeF6JZfYrMNDF+h5hMtKA/hT5z66cJp43pWyI=;
 b=cBhYSQtqqblpGZTuLvw9Zy2AtHGTNb11Cv0PS7hYetaBbkMe7ErGWIdFm0vlEnXdel
 TcvGeq/1mQIv1xmfFebhSgBtqWrl6++3mEZlE6JislZn0hs31oLgE6qGTGaso9bLxwV+
 IZ7ATIt32IYOmsObFvuCMRZ/ssF80gtkdicmECoVcnU+rtYwLHOFJKwrdAlZB7Hog9QF
 +yetSrMXtQG0ew2J2aQdW3zNRSh6ZV/JgzaCRL91dAlJ/O03WzBLJ3aAW4WFBthNEet8
 cnfoFp/f6wwGgqLQZENpR+M/DJ1fpfi//9tMCyuhZT2MjS8oiGOvxkb0b+ND7GVmGWmi
 zJpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=96H218eeF6JZfYrMNDF+h5hMtKA/hT5z66cJp43pWyI=;
 b=KoaDbCo0WwmmdKqEHFt9iW9Owog6i4PcVL0uEiBvCWDaCPnHF8yOewcTPQ47g6lg+k
 bRxNVYmKQMaJnbAMRegT/ZAnV7Vz8GaS3T5vMh1cbgerSArM/WPN/aAgd/0x3DcKwlww
 fj+S1IjDVoXD0WacJGqit5FgycEqif5/yl5gjTG1ZWrmW75qYcVD8rqgFKW6K2vwJVYe
 3elVfEsVXxovtRXFeegUV5YWgyL/x8hqVrNMrhjQMHVIdECwcPs5FKD74u10R+m9d4Yi
 j50lonjDUD+lkSQx1JXQLTzkuCIyiNkUYizHNW37CrhhOHAlz/P2PaCY6n9uoMyhUp4C
 smGg==
X-Gm-Message-State: APjAAAV8yIISQ3jN33DmuEbwN+5S40AV88CEoYudqRZMdMtfGWvTXRsG
 WezMF4xW/DgyrbmR4hfpP0J6aw==
X-Google-Smtp-Source: APXvYqx+Un/0YdMBxWG9C8VV0SxFi2jCnPHkzXbhC8ezEmt5lN/1Liha59YFuItEO5sEs4Vpn4hO9g==
X-Received: by 2002:a17:902:b68c:: with SMTP id
 c12mr5680161pls.126.1574881730173; 
 Wed, 27 Nov 2019 11:08:50 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j18sm957568pfn.112.2019.11.27.11.08.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 11:08:49 -0800 (PST)
Date: Wed, 27 Nov 2019 12:08:47 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v5 14/14] docs: sysfs: coresight: Add sysfs ABI
 documentation for CTI
Message-ID: <20191127190847.GE26544@xps15>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-15-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119231912.12768-15-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_110851_225849_E82138CC 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Tue, Nov 19, 2019 at 11:19:12PM +0000, Mike Leach wrote:
> Add API usage document for sysfs API in CTI driver.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../testing/sysfs-bus-coresight-devices-cti   | 221 ++++++++++++++++++
>  1 file changed, 221 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> new file mode 100644
> index 000000000000..d867800f567f
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> @@ -0,0 +1,221 @@
> +What:		/sys/bus/coresight/devices/<cti-name>/enable
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Enable/Disable the CTI hardware.

This will (likely) go in kernel 5.6 that should be released in January 2020.

In your next revision please add yourself as an official reviewer to the
coresight subsystem.  This should be done at the end of the set, in a patch on
its own.

Thanks,
Mathieu

> +
> +What:		/sys/bus/coresight/devices/<cti-name>/ctmid
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) Display the associated CTM ID
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/nr_trigger_cons
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) Number of devices connected to triggers on this CTI
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/name
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) Name of connected device <N>
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/in_signals
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) Input trigger signals from connected device <N>
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/in_types
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) Functional types for the input trigger signals
> +		from connected device <N>
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/out_signals
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) Output trigger signals to connected device <N>
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/out_types
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) Functional types for the output trigger signals
> +		to connected device <N>
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/inout_sel
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Select the index for inen and outen registers.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/inen
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Read or write the CTIINEN register selected by inout_sel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/outen
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Read or write the CTIOUTEN register selected by inout_sel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/gate
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Read or write CTIGATE register.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/asicctl
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Read or write ASICCTL register.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/intack
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Write the INTACK register.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/appset
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Set CTIAPPSET register to activate channel. Read back to
> +		determine current value of register.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/appclear
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Write APPCLEAR register to deactivate channel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/apppulse
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Write APPPULSE to pulse a channel active for one clock
> +		cycle.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/chinstatus
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) Read current status of channel inputs.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/choutstatus
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) read current status of channel outputs.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/triginstatus
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) read current status of input trigger signals
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/regs/trigoutstatus
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) read current status of output trigger signals.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/trigin_attach
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Attach a CTI input trigger to a CTM channel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/trigin_detach
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Detach a CTI input trigger from a CTM channel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/trigout_attach
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Attach a CTI output trigger to a CTM channel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/trigout_detach
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Detach a CTI output trigger from a CTM channel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_gate_enable
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Enable CTIGATE for single channel (W) or list enabled
> +		channels through the gate (R).
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_gate_disable
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Disable CTIGATE for single channel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_set
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Activate a single channel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_clear
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Deactivate a single channel.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_pulse
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Pulse a single channel - activate for a single clock cycle.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/trigout_filtered
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) List of output triggers filtered across all connections.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/trig_filter_enable
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Enable or disable trigger output signal filtering.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_inuse
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) show channels with at least one attached trigger signal.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_free
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(R) show channels with no attached trigger signals.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_xtrigs_view
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(RW) Write channel number to select a channel to view, read to
> +		see triggers attached to selected channel on this CTI.
> +
> +What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_xtrigs_reset
> +Date:		Jul 2019
> +KernelVersion	5.4
> +Contact:	Mike Leach or Mathieu Poirier
> +Description:	(W) Clear all channel / trigger programming.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
