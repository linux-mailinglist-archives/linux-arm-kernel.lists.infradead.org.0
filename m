Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F0018D51C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQxZzAlgpGJrULAPJEZnZBcTFMjKfwz9RG6R/R6Yn08=; b=cNH/ataXljowL/
	gOCyoO1StnE70akkGyRNWgvZUeertHud9NQKDxh1/IpuBECO4Vg1vMNtUfp2wW3auDllYDXLs2lXu
	SuLP3Dziso8zaugIVzKslr6x9swwGxOjd1SIB6WwHCZYKY7L5Bk1tB3lp7bZvflDSHign0JPHXWi1
	tmNVBt0/GBSQVzQAEw8JQmtn+csAB/XkxaE8i31i7XzJRnmoYYAtXAQVv+ZHTSw4nIfrfXHj8bxE7
	OyrHpyUxV9E7+fpW0/ukzazi3ZfN0wcI2omEA+fCV03lduoItAj2rg8Jy7+bOBrwgnyFFqR2XBtvJ
	pdmZOEZGvp6LEYDlQwLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKxN-0007TR-CR; Fri, 20 Mar 2020 16:57:13 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKtb-0003CP-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:53:22 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ca13so2728222pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8C5zF5efYYsMOrxwG696qzZ9hZHWQO5hRWUAVyuQn/A=;
 b=jEgzjPtWyscKRs2WuTkrzJfGnJfstU4MA3VmdQ7HzVuEugLYMadBa4nxmjQE2QVvt7
 tz09q3WdiKf20szPrhYihH9y2Jfwk9WQOik70R/8cxSV1Rm+rxFiW/BrbPXFjNktP+TH
 MJtcvmWIdApF6Gy+X6kUDu6dQWmLksMYHJ1+Fhlh1bibSASEwX3rGTxbHNVS/xl/hXld
 jjZO2WlA2NGD5B85l0KnXmvt1zxxlsxeb9WNOB2g2mTfEmrRSLtpu1U5l0pBhQOmHIlq
 Bczm08clWYU/ih4O/gikpuLyAvJtzRuN8EzGS6QuKgxd1LlZfH7kAmE1TySdt1pVcaW0
 Dxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8C5zF5efYYsMOrxwG696qzZ9hZHWQO5hRWUAVyuQn/A=;
 b=uCZLw5oCWkCSdZoH0aAOwMH6jFmGSbusIKEDsOR5uGqi8V8tKBMMPheKu6iyE9rMss
 ux7c1u/FX4oQpDw8L+oSrRsxravilGMX7KnljO55D69lvJsik9p3MBlD3Im12lz5sOBO
 wMeWqMhwwSAOqh8KlKXMc1bOfaPOOKLeoKOld+vovG9pcIGSVozxl4YdCy5sBlJMYujQ
 /7Be4K8gMhqM7rHKh8kfCbn8PKUHglnQVlVj26e7iVhsm8GIgV1hcko0Pwm1by1VTyon
 HYQMDgmT/eU8PI41UHb8RZ4EA+lKLeJ3AGd16Sli1QBBeEzuaiuGRLhTW0mDWwo0KPOf
 r7ng==
X-Gm-Message-State: ANhLgQ0u90i2ipJ36jDqkfCINGK46vje/lezPggz51I6iMwpao/28XwY
 ynQ03pBidDMhceIdGJHLHGi12Q==
X-Google-Smtp-Source: ADFU+vtRe919J/SSKPVEiKE6V6vNE9b6JsqF2kgUqNKrTg23ho0+VFqm9dm4DWsnZLdlZfmA5iGL6w==
X-Received: by 2002:a17:90a:1acd:: with SMTP id
 p71mr11010660pjp.112.1584723197974; 
 Fri, 20 Mar 2020 09:53:17 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x17sm6064216pfn.16.2020.03.20.09.53.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 09:53:17 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v11 11/12] docs: sysfs: coresight: Add sysfs ABI documentation
 for CTI
Date: Fri, 20 Mar 2020 10:53:02 -0600
Message-Id: <20200320165303.13681-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320165303.13681-1-mathieu.poirier@linaro.org>
References: <20200320165303.13681-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_095319_898524_68B2D600 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Add API usage document for sysfs API in CTI driver.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../testing/sysfs-bus-coresight-devices-cti   | 241 ++++++++++++++++++
 1 file changed, 241 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-cti

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
new file mode 100644
index 000000000000..9d11502b4390
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
@@ -0,0 +1,241 @@
+What:		/sys/bus/coresight/devices/<cti-name>/enable
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Enable/Disable the CTI hardware.
+
+What:		/sys/bus/coresight/devices/<cti-name>/powered
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Indicate if the CTI hardware is powered.
+
+What:		/sys/bus/coresight/devices/<cti-name>/ctmid
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Display the associated CTM ID
+
+What:		/sys/bus/coresight/devices/<cti-name>/nr_trigger_cons
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Number of devices connected to triggers on this CTI
+
+What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/name
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Name of connected device <N>
+
+What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/in_signals
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Input trigger signals from connected device <N>
+
+What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/in_types
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Functional types for the input trigger signals
+		from connected device <N>
+
+What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/out_signals
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Output trigger signals to connected device <N>
+
+What:		/sys/bus/coresight/devices/<cti-name>/triggers<N>/out_types
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Functional types for the output trigger signals
+		to connected device <N>
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/inout_sel
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Select the index for inen and outen registers.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/inen
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Read or write the CTIINEN register selected by inout_sel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/outen
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Read or write the CTIOUTEN register selected by inout_sel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/gate
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Read or write CTIGATE register.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/asicctl
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Read or write ASICCTL register.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/intack
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Write the INTACK register.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/appset
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Set CTIAPPSET register to activate channel. Read back to
+		determine current value of register.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/appclear
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Write APPCLEAR register to deactivate channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/apppulse
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Write APPPULSE to pulse a channel active for one clock
+		cycle.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/chinstatus
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Read current status of channel inputs.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/choutstatus
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) read current status of channel outputs.
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/triginstatus
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) read current status of input trigger signals
+
+What:		/sys/bus/coresight/devices/<cti-name>/regs/trigoutstatus
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) read current status of output trigger signals.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/trigin_attach
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Attach a CTI input trigger to a CTM channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/trigin_detach
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Detach a CTI input trigger from a CTM channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/trigout_attach
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Attach a CTI output trigger to a CTM channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/trigout_detach
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Detach a CTI output trigger from a CTM channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_gate_enable
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Enable CTIGATE for single channel (W) or list enabled
+		channels through the gate (R).
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_gate_disable
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Disable CTIGATE for single channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_set
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Activate a single channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_clear
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Deactivate a single channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_pulse
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Pulse a single channel - activate for a single clock cycle.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/trigout_filtered
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) List of output triggers filtered across all connections.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/trig_filter_enable
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Enable or disable trigger output signal filtering.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_inuse
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) show channels with at least one attached trigger signal.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_free
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) show channels with no attached trigger signals.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_xtrigs_sel
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Write channel number to select a channel to view, read to
+		see selected channel number.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_xtrigs_in
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Read to see input triggers connected to selected view
+		channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_xtrigs_out
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(R) Read to see output triggers connected to selected view
+		channel.
+
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_xtrigs_reset
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(W) Clear all channel / trigger programming.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
