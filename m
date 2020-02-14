Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E737615FA38
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 00:11:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFhbmkRQet2w3AwT61wHky956ra8J/C225BiLWtFSo4=; b=PYjowtEekj+sD2
	QUcXWw41JPNACvSFxoYc2IamR3fApfWE1VfziHdBxxLW2/sWqAflkM8dfbQV3lOp/DneWn7RCjgpu
	WVsvXEuZ7QCbScWGO3eF0VAGBXk9ArSl3XULoni6GzMLpOLyGlE9vF2wvsvl+Ost2s95PQU6BjF2+
	7TSbKo9rJxDvjdFJCWYeFzkUHPWnhzXhAcN22cA8G7rCk0ZpNoVl0yKolUD9eArCsRgGPoCB/MYjz
	RrIvz0Q3BhBY785c79cOkSGOs9+lthlfYjAZZyPTidFRZShLCbVMB7djOEkMzgaUiT0svpcyPrJn8
	R9MWacu65cjre62zeerw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2k70-0003vq-9p; Fri, 14 Feb 2020 23:11:06 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2k6p-0003vP-RB
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 23:10:57 +0000
Received: by mail-yb1-xb43.google.com with SMTP id b141so5597247ybg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 15:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R4zEiG9M2nzyirDMOJKoPf8/4dfn9S+XuRnFrH9sQ6c=;
 b=XyWet7eHMyp6S6IWx6Cartw8k9pGGGCDapQO47WtToplCNfHPfc3ZwAgSHrnFMXi5e
 L7o+OWpOn72Wzqhpzj+lltqH14MsQTaxXwcbcw1aCwTr8f/TUtdoeLRn9eA+k0q4+n3g
 sZZC1GYjQBpsgCPTahVK2AnM+ZJ3L+ut/9OeoTcEfVU+OBYS6nQqFQKu6ovlhB88o/GW
 Ah3jHPfAYPU7iD+0FBvS1VDel7UpDIaQhRbC8zVCb9cP/9ID/bKN2Pw1wWsAzISRJym5
 QV/tmfZj0pShUXZHkLYi6/vKPxlkBBBoBE1VDHT6L0PcyB5l+TN2PAk3KLz0kGxl3E9I
 Ph/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R4zEiG9M2nzyirDMOJKoPf8/4dfn9S+XuRnFrH9sQ6c=;
 b=Pjuz4IX7w9JpfXTiIlZtr6repMbqWPVCfxgZPBXy/Jt4FxdjeB/yapZUB8OO9GiQTM
 l2M5P+NKGGKiqzX8QhjsNX0gBHCIn2TyHeQ6Utsx3QxWsL7lr3E5/Kii/PNF6pUlml4g
 snt/Bxw+uirNNuJ5Xjq9+XFTQV0nT5MBspR3svDz4yb2BfY/2JnKEHgJtR+i/J+Qdxgo
 Kb+8WTlMp9QwMAHVP4QLjp5hU8Pl8CsjPfp4jHZE0rmUKjCRklBpMQvCQ1vVYO5JB9P5
 /2QUQmFnIGQEH05dY3PtZRSmz3l94tRWKgDAyCYHR4Z3n/k4sXl/tC9Iy62yBNMBp0VU
 eFZw==
X-Gm-Message-State: APjAAAU/l9NP+sl8njI7m0GUnTG+dxPKOWi8qbxmWh54MzpxUeYhWhi0
 1LKvjl7Ut6GwcOlygHvHxPSzCg==
X-Google-Smtp-Source: APXvYqyk1bdsJxDMEe/Qm6Vx/7uHGpcCH3yPcLvJFkaX91k7VyiUR506kCrmphDX3fiy8oOvN47Syg==
X-Received: by 2002:a25:ad27:: with SMTP id y39mr4844354ybi.517.1581721854000; 
 Fri, 14 Feb 2020 15:10:54 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m203sm2908828ywc.10.2020.02.14.15.10.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 15:10:53 -0800 (PST)
Date: Fri, 14 Feb 2020 16:10:51 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 6/6] coresight: docs: Add information about the
 topology representations.
Message-ID: <20200214231051.GC20024@xps15>
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-7-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211105808.27884-7-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_151055_890529_D8743F3C 
X-CRM114-Status: GOOD (  21.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 10:58:08AM +0000, Mike Leach wrote:
> Update the CoreSight documents to describe the new connections directory
> and the links between CoreSight devices in this directory.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../trace/coresight/coresight-ect.rst         |  5 +-
>  Documentation/trace/coresight/coresight.rst   | 85 +++++++++++++++++++
>  2 files changed, 89 insertions(+), 1 deletion(-)
> 

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
> index 067cee91c857..3539af895832 100644
> --- a/Documentation/trace/coresight/coresight-ect.rst
> +++ b/Documentation/trace/coresight/coresight-ect.rst
> @@ -71,7 +71,7 @@ capable of generating or using trigger signals.::
>  
>    >$ ls /sys/bus/coresight/devices/etm0/cti_cpu0
>    channels  ctmid  enable  nr_trigger_cons mgmt  power  regs  subsystem
> -  triggers0 triggers1  uevent
> +  connections triggers0 triggers1  uevent
>  
>  *Key file items are:-*
>     * ``enable``: enables/disables the CTI.
> @@ -84,6 +84,9 @@ capable of generating or using trigger signals.::
>     * ``channels``: Contains the channel API - CTI main programming interface.
>     * ``regs``: Gives access to the raw programmable CTI regs.
>     * ``mgmt``: the standard CoreSight management registers.
> +   * ``connections``: Links to connected *CoreSight* devices. The number of
> +     links can be 0 to ``nr_trigger_cons``. Actual number given by ``nr_links``
> +     in this directory.
>  
>  
>  triggers<N> directories
> diff --git a/Documentation/trace/coresight/coresight.rst b/Documentation/trace/coresight/coresight.rst
> index 108600ee1e12..0b73acb44efa 100644
> --- a/Documentation/trace/coresight/coresight.rst
> +++ b/Documentation/trace/coresight/coresight.rst
> @@ -241,6 +241,91 @@ to the newer scheme, to give a confirmation that what you see on your
>  system is not unexpected. One must use the "names" as they appear on
>  the system under specified locations.
>  
> +Topology Representation
> +-----------------------
> +
> +Each CoreSight component has a ``connections`` directory which will contain
> +links to other CoreSight components. This allows the user to explore the trace
> +topology and for larger systems, determine the most appropriate sink for a
> +given source. The connection information can also be used to establish
> +which CTI devices are connected to a given component. This directory contains a
> +``nr_links`` attribute detailing the number of links in the directory.
> +
> +For an ETM source, in this case ``etm0`` on a Juno platform, a typical
> +arrangement will be::
> +
> +  linaro-developer:~# ls - l /sys/bus/coresight/devices/etm0/connections
> +  <file details>  cti_cpu0 -> ../../../23020000.cti/cti_cpu0
> +  <file details>  nr_links
> +  <file details>  out:0 -> ../../../230c0000.funnel/funnel2
> +
> +Following the out port to ``funnel2``::
> +
> +  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel2/connections
> +  <file details> in:0 -> ../../../23040000.etm/etm0
> +  <file details> in:1 -> ../../../23140000.etm/etm3
> +  <file details> in:2 -> ../../../23240000.etm/etm4
> +  <file details> in:3 -> ../../../23340000.etm/etm5
> +  <file details> nr_links
> +  <file details> out:0 -> ../../../20040000.funnel/funnel0
> +
> +And again to ``funnel0``::
> +
> +  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel0/connections
> +  <file details> in:0 -> ../../../220c0000.funnel/funnel1
> +  <file details> in:1 -> ../../../230c0000.funnel/funnel2
> +  <file details> nr_links
> +  <file details> out:0 -> ../../../20010000.etf/tmc_etf0
> +
> +Finding the first sink ``tmc_etf0``. This can be used to collect data
> +as a sink, or as a link to propagate further along the chain::
> +
> +  linaro-developer:~# ls -l /sys/bus/coresight/devices/tmc_etf0/connections
> +  <file details> cti_sys0 -> ../../../20020000.cti/cti_sys0
> +  <file details> in:0 -> ../../../20040000.funnel/funnel0
> +  <file details> nr_links
> +  <file details> out:0 -> ../../../20150000.funnel/funnel4
> +
> +via ``funnel4``::
> +
> +  linaro-developer:~# ls -l /sys/bus/coresight/devices/funnel4/connections
> +  <file details> in:0 -> ../../../20010000.etf/tmc_etf0
> +  <file details> in:1 -> ../../../20140000.etf/tmc_etf1
> +  <file details> nr_links
> +  <file details> out:0 -> ../../../20120000.replicator/replicator0
> +
> +and a ``replicator0``::
> +
> +  linaro-developer:~# ls -l /sys/bus/coresight/devices/replicator0/connections
> +  <file details> in:0 -> ../../../20150000.funnel/funnel4
> +  <file details> nr_links
> +  <file details> out:0 -> ../../../20030000.tpiu/tpiu0
> +  <file details> out:1 -> ../../../20070000.etr/tmc_etr0
> +
> +Arriving at the final sink in the chain, ``tmc_etr0``::
> +
> +  linaro-developer:~# ls -l /sys/bus/coresight/devices/tmc_etr0/connections
> +  <file details> cti_sys0 -> ../../../20020000.cti/cti_sys0
> +  <file details> in:0 -> ../../../20120000.replicator/replicator0
> +  <file details> nr_links
> +
> +As described below, when using sysfs it is sufficient to enable a sink and
> +a source for successful trace. The framework will correctly enable all
> +intermediate links as required.
> +
> +Note: ``cti_sys0`` appears in two of the connections lists above.
> +CTIs can connect to multiple devices and are arranged in a star topology
> +via the CTM. See (:doc:`coresight-ect`) [#fourth]_ for further details.
> +Looking at this device we see 4 connections::
> +
> +  linaro-developer:~# ls -l /sys/bus/coresight/devices/cti_sys0/connections
> +  <file details> nr_links
> +  <file details> stm0 -> ../../../20100000.stm/stm0
> +  <file details> tmc_etf0 -> ../../../20010000.etf/tmc_etf0
> +  <file details> tmc_etr0 -> ../../../20070000.etr/tmc_etr0
> +  <file details> tpiu0 -> ../../../20030000.tpiu/tpiu0
> +
> +
>  How to use the tracer modules
>  -----------------------------
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
