Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDE2158D20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Awk6zJHoG56eMzkl4eD7nwXX4g2iZ1nUj8qDq1WQ3O4=; b=Hq0+YrqEe8J2R84yHiyKjJeB4K
	/+GYs7WfkfBByUVVM7567t2fDLhRmlMLEq2Bz5gF019QuOMVdfQrER3fS4A4vVvWrJQXOXzGUrDoL
	/6kmj/Rd6lXsRtzs1gnPTEcS4F+yMrOQHjSvgQIUjnYoNI5nG4L0yT4ce0JN9F4fUP1/09KfBuSCO
	MLcy6CvfnAETngw3rXD4a2gSdeGZhJQisDhJClnC1Yyv1JPD8GNnYyN+K+XgkyoaV2B79NBS7J9Xh
	zisxbCd3rEYTUv5ciEkEF19lVwT5eXfWZfDl1042gr+XA1pt/MFGg4VZmD8fZ83PC/OD+gTQ8UHqF
	TdYCAX8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TGa-0002fo-OY; Tue, 11 Feb 2020 10:59:44 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TFI-0001M3-7d
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:58:26 +0000
Received: by mail-wr1-x42d.google.com with SMTP id y11so11745625wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 02:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=M6xq/OxJSWfSTPvEoweukyF8MINoDGNxuW+L6ZQztPM=;
 b=o9REiGwvSPNR/g1Cq5hByCtYy8T9Rnf88hnGfwRNoSJKpw+DmpGOLV1vWzpSsPuWED
 GaHauWwmfpvL7QKBT2AG/NxVhxpzIQ6H5rtfp/RZScgYYJfV9lq0BtRQgJzMEgjiCkHO
 z61N6wQZ6jN9ewWiMyIkvg6kCv/2rOJnqL7DdBr7v5CXQBtTGEJ+FjkR1WpZ4pdLaJ6C
 Ou2ILlM0zKRPLuaJxuMnyM7lg0EtBZgnxVQAF24tUOsAFJE85a/GB/ceVjjEVU50fmTJ
 AH5vYkHvGyQSBrtzyz/mkYAG2aQuToPcsj0QBOZTVxHr1Urvqwmwt8BxYRff9kbd+QNR
 oBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=M6xq/OxJSWfSTPvEoweukyF8MINoDGNxuW+L6ZQztPM=;
 b=tM5z4xJpF7Hb2wtitUm8IjXBgikHV0gEFKi+DhZgV8DR4UKIwUAKlC812q+Y9/A6Jp
 6D4C8X0qyqmlfmCuXPKXPTpAViqMCTYVjAOYNICY0tXZQn0bSvKa+GjGBli8tUUtlO0F
 +rp8F7Yn7A5KyC1467W7b5e1XpJYJYel7ssLzOUAjdvcFOb2NS2QHKQkfYPfLvRFuaY1
 m7waf1e/TOLvbo/GnzhG7gJibZEwn77m9cI9NPHFUORwW5dSiq53c+ga9E2fDxKwYow5
 oWut9S9pwmSdd9SNzJcPF6DzvJPfFO3CC/iAh5SyGZDjWo5L39m9I4SUYPpxcAt/PG3g
 x7yw==
X-Gm-Message-State: APjAAAXzFsZcrwITMYnliS74YPpbeHcjINpvShyuBEXcCbjqBK1x1xjc
 7tmCKr8HfDYEWbEnWckbcUr5CzDVQXs=
X-Google-Smtp-Source: APXvYqxZhJedOIVtgpr6JvsCzPcDmeNJnY75P/JUMOwUUZ2QqThZYaJLjAdCNuPyV0wLn2/l3jy/Eg==
X-Received: by 2002:a5d:4446:: with SMTP id x6mr7838462wrr.312.1581418702081; 
 Tue, 11 Feb 2020 02:58:22 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id g21sm3171291wmh.17.2020.02.11.02.58.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 02:58:21 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v4 6/6] coresight: docs: Add information about the topology
 representations.
Date: Tue, 11 Feb 2020 10:58:08 +0000
Message-Id: <20200211105808.27884-7-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211105808.27884-1-mike.leach@linaro.org>
References: <20200211105808.27884-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_025824_283208_0A9995F6 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mike Leach <mike.leach@linaro.org>, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the CoreSight documents to describe the new connections directory
and the links between CoreSight devices in this directory.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../trace/coresight/coresight-ect.rst         |  5 +-
 Documentation/trace/coresight/coresight.rst   | 85 +++++++++++++++++++
 2 files changed, 89 insertions(+), 1 deletion(-)

diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
index 067cee91c857..3539af895832 100644
--- a/Documentation/trace/coresight/coresight-ect.rst
+++ b/Documentation/trace/coresight/coresight-ect.rst
@@ -71,7 +71,7 @@ capable of generating or using trigger signals.::
 
   >$ ls /sys/bus/coresight/devices/etm0/cti_cpu0
   channels  ctmid  enable  nr_trigger_cons mgmt  power  regs  subsystem
-  triggers0 triggers1  uevent
+  connections triggers0 triggers1  uevent
 
 *Key file items are:-*
    * ``enable``: enables/disables the CTI.
@@ -84,6 +84,9 @@ capable of generating or using trigger signals.::
    * ``channels``: Contains the channel API - CTI main programming interface.
    * ``regs``: Gives access to the raw programmable CTI regs.
    * ``mgmt``: the standard CoreSight management registers.
+   * ``connections``: Links to connected *CoreSight* devices. The number of
+     links can be 0 to ``nr_trigger_cons``. Actual number given by ``nr_links``
+     in this directory.
 
 
 triggers<N> directories
diff --git a/Documentation/trace/coresight/coresight.rst b/Documentation/trace/coresight/coresight.rst
index 108600ee1e12..0b73acb44efa 100644
--- a/Documentation/trace/coresight/coresight.rst
+++ b/Documentation/trace/coresight/coresight.rst
@@ -241,6 +241,91 @@ to the newer scheme, to give a confirmation that what you see on your
 system is not unexpected. One must use the "names" as they appear on
 the system under specified locations.
 
+Topology Representation
+-----------------------
+
+Each CoreSight component has a ``connections`` directory which will contain
+links to other CoreSight components. This allows the user to explore the trace
+topology and for larger systems, determine the most appropriate sink for a
+given source. The connection information can also be used to establish
+which CTI devices are connected to a given component. This directory contains a
+``nr_links`` attribute detailing the number of links in the directory.
+
+For an ETM source, in this case ``etm0`` on a Juno platform, a typical
+arrangement will be::
+
+  linaro-developer:~# ls - l /sys/bus/coresight/devices/etm0/connections
+  <file details>  cti_cpu0 -> ../../../23020000.cti/cti_cpu0
+  <file details>  nr_links
+  <file details>  out:0 -> ../../../230c0000.funnel/funnel2
+
+Following the out port to ``funnel2``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel2/connections
+  <file details> in:0 -> ../../../23040000.etm/etm0
+  <file details> in:1 -> ../../../23140000.etm/etm3
+  <file details> in:2 -> ../../../23240000.etm/etm4
+  <file details> in:3 -> ../../../23340000.etm/etm5
+  <file details> nr_links
+  <file details> out:0 -> ../../../20040000.funnel/funnel0
+
+And again to ``funnel0``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel0/connections
+  <file details> in:0 -> ../../../220c0000.funnel/funnel1
+  <file details> in:1 -> ../../../230c0000.funnel/funnel2
+  <file details> nr_links
+  <file details> out:0 -> ../../../20010000.etf/tmc_etf0
+
+Finding the first sink ``tmc_etf0``. This can be used to collect data
+as a sink, or as a link to propagate further along the chain::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/tmc_etf0/connections
+  <file details> cti_sys0 -> ../../../20020000.cti/cti_sys0
+  <file details> in:0 -> ../../../20040000.funnel/funnel0
+  <file details> nr_links
+  <file details> out:0 -> ../../../20150000.funnel/funnel4
+
+via ``funnel4``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel4/connections
+  <file details> in:0 -> ../../../20010000.etf/tmc_etf0
+  <file details> in:1 -> ../../../20140000.etf/tmc_etf1
+  <file details> nr_links
+  <file details> out:0 -> ../../../20120000.replicator/replicator0
+
+and a ``replicator0``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/replicator0/connections
+  <file details> in:0 -> ../../../20150000.funnel/funnel4
+  <file details> nr_links
+  <file details> out:0 -> ../../../20030000.tpiu/tpiu0
+  <file details> out:1 -> ../../../20070000.etr/tmc_etr0
+
+Arriving at the final sink in the chain, ``tmc_etr0``::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/tmc_etr0/connections
+  <file details> cti_sys0 -> ../../../20020000.cti/cti_sys0
+  <file details> in:0 -> ../../../20120000.replicator/replicator0
+  <file details> nr_links
+
+As described below, when using sysfs it is sufficient to enable a sink and
+a source for successful trace. The framework will correctly enable all
+intermediate links as required.
+
+Note: ``cti_sys0`` appears in two of the connections lists above.
+CTIs can connect to multiple devices and are arranged in a star topology
+via the CTM. See (:doc:`coresight-ect`) [#fourth]_ for further details.
+Looking at this device we see 4 connections::
+
+  linaro-developer:~# ls -l /sys/bus/coresight/devices/cti_sys0/connections
+  <file details> nr_links
+  <file details> stm0 -> ../../../20100000.stm/stm0
+  <file details> tmc_etf0 -> ../../../20010000.etf/tmc_etf0
+  <file details> tmc_etr0 -> ../../../20070000.etr/tmc_etr0
+  <file details> tpiu0 -> ../../../20030000.tpiu/tpiu0
+
+
 How to use the tracer modules
 -----------------------------
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
