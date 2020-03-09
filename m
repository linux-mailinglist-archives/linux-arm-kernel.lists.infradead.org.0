Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4684817E4B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8mp2yVXtqfRgZxPBU2jRwQ3dXhDwZF+DGll1MuJlPM=; b=Io9pzySvbYVh46
	Qk7tpqeFXxaCovJ7zT1duYWYWN91uKP88wnqhvh3PCqN9Q+57tpGDxDdJMio+suOXCtWxMWUdEcOT
	YWldtmvhqrWGLum4kLmwCMTQaHE4aCjX3Sss+d+90lPeclT1zw+S13je/nMTyyKTrxoy/IgeJ9cMi
	c4nKuJqKZI/+JxJq7dMX9efTLcNoJr75ZNPM2cUd7PNtf0PfUkjDh18lgFtd1QcHgVW2zL4JwFNw/
	J0v05MQJWmIBgwEp6v7AXj+aHkpl61DLq7I6pW5nDRtCdTTKCcrh7sCPJu6qKmYdKQRTI7WPDMjDN
	6ust8hZaabEb47XE46tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLAw-0004gG-Q9; Mon, 09 Mar 2020 16:22:42 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL6Q-0000AQ-4U
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:18:05 +0000
Received: by mail-pj1-x1043.google.com with SMTP id u10so55446pjy.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+wlgIsv56XP9ChgVPt1iQ62zzRWTySx1bmIClqGGtzg=;
 b=Rcw937Id5n9l5hHoEmhlRjQ9VKSAy09yjJNGa8kFr1XOJcXRhEPzZCUlakVkpuATe6
 B+r4WQSoLQtQ3dY2LUFAIN5LsY8YZXBAqBiwZxKgVj/O9RoflG344TaX+zB2B6YN6dCl
 KLOmxiO5olG7a77eps7NnkOMx/9Ss31S7x/KA+acm8T1Ap+AZq/IpUqkY+PmQtCJwU4q
 E5F8+4gPHPY2BrQcfmTpBsyMpEZUBRa4YJBhnzRAmbjrQCJQEkHVFcWiAmPlL0bxjfsS
 1iLrc5Lrd8kreMfBrdQj0dsqJuQCvxrixO7EJJtHTTD2vKLokTEh5aJx5oELDhTwZf5c
 nDrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+wlgIsv56XP9ChgVPt1iQ62zzRWTySx1bmIClqGGtzg=;
 b=IyARvrY08ef7hLl3aJKbw53NnWh9FWyg6uJICd67EwwcoELvmzI5Mttd2nidxj0OAd
 nMDP0Gcoqn7cJQfi/i88ZiXl/wW5ulbaipB0iZWNIxn/Fp3ji/lOZEwLVso6NWvoMT3t
 VnzbbzhR8WDD6WGaeHS/WThWF7hmIDeBHRy9BoKa3nJ72BCfb0iO30v3G9pnwmfWBSBQ
 lG1HOVq5eXyn0IA0N3LzohwrH6N0CLgJNqmV4SUAqkuDLqSsbi+cf/sZPuINRuAzZhyV
 /jANboJFqjSoIK3g3/EqeSWy+KrrEEYY5y9V8/bdXEoeWdAoYIrXUd4dSdEQyCiByJo9
 jH3Q==
X-Gm-Message-State: ANhLgQ1uEhfKZip8Lwu9aN3PFlvFr04l9tS3DXvuFdK2BJnxFNhiZloj
 +5xymu3fq7t0A0GNq8MSjf2KyQ==
X-Google-Smtp-Source: ADFU+vsiNj0ZuhNs3YX2oUxnYCWFzEJOMBtDjTajVxQmSd+eBa1k6DZxd8C08K+HIn29AUlROgo7UQ==
X-Received: by 2002:a17:902:b089:: with SMTP id
 p9mr16404839plr.85.1583770681163; 
 Mon, 09 Mar 2020 09:18:01 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m11sm38403pjl.18.2020.03.09.09.18.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:18:00 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/13] docs: sysfs: coresight: Add sysfs ABI documentation for
 CTI
Date: Mon,  9 Mar 2020 10:17:46 -0600
Message-Id: <20200309161748.31975-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309161748.31975-1-mathieu.poirier@linaro.org>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091802_365548_EB32AFFB 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Add API usage document for sysfs API in CTI driver.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
[Fixed kernel release month and version]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../testing/sysfs-bus-coresight-devices-cti   | 221 ++++++++++++++++++
 1 file changed, 221 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-cti

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
new file mode 100644
index 000000000000..8443feb92ee9
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
@@ -0,0 +1,221 @@
+What:		/sys/bus/coresight/devices/<cti-name>/enable
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Enable/Disable the CTI hardware.
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
+What:		/sys/bus/coresight/devices/<cti-name>/channels/chan_xtrigs_view
+Date:		March 2020
+KernelVersion	5.7
+Contact:	Mike Leach or Mathieu Poirier
+Description:	(RW) Write channel number to select a channel to view, read to
+		see triggers attached to selected channel on this CTI.
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
