Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECEE10800B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 19:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9uRdxGF64Sy4hbwpnqXxQSsAEajouN/Uh3BOeHjuVM=; b=X/UC4q/8Deucyz
	QAHlCR1utMk9aK/kJbN0C9DVYHnLlsqvzaeoI0vHVdG5kJy/c3FKaxiAM3viBkFX1mOA0ZsFyz9u8
	rZ2tOHec4z56ZqK1xqR2NVkjHXECnQKpTrPado2cc1L4l5elfiBOJHvDNBl3cX6j3FErMXu+4BxEz
	RIfxWBkcq8jU/3eP5d0raOtUqZZtrpOfzDVh9a27811uG04Yah/DT68t0Ni8BAr9RjbWmRPdgyVk3
	urbnmu58MkbemZud9sqZRemuyOZJ9FMJQzrH8Eix72vjQwwDL8nZU/7xEUFASQh+MDDgAnDYtktBG
	vYC5eQHmxGYDE+dwc11A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYaJ8-0000sO-Ty; Sat, 23 Nov 2019 18:38:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYaIx-0000r6-IN
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 18:38:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id e17so5045200pgd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 Nov 2019 10:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=nDRorgsBSVXUioZFMrZk0EkNmQVKU+AZrP50cmXnyC4=;
 b=uEsVTv/IY5hG62Wu9vwmfYFRVZtJMQEmvbpSxd8EASyANasSlZHDLbnv19sgBybHPZ
 sLaFJZ4ptRzpx2pp8bzaDde5oUsHabEPhJbnYrt8i/cBsmVfH40RjfsGk4MNOWiUF9e0
 p8b0FNKNG2LJhSAXzZGlcy2QGKRkFwep6PbcXeYJxDW2ICh5V5aFtBne8QHoXwSBmeTb
 VOWx7vsReEMXwyuVr4A7IBBksaZ2w0+u512zQ3uiZgWpiuk+uwyT4RU+vS1D9XA58mGM
 j527Jxpoegjg53FzKsvTEvOfUlUWr1ykfKHB1GNaYEGCPObTDePqloRawIEjCkgB6ibX
 NWcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=nDRorgsBSVXUioZFMrZk0EkNmQVKU+AZrP50cmXnyC4=;
 b=tnxDGpQwibgXmyp57ef8iOi4fTE9IiiLRfzKjuMjnKVIQXJxAZ9rDI8l7QLTvU1i5d
 0sqJV63Uh+9MrIefXKsNMfl8nbyCjL6m3vu8F1i/ahw3HLLsVtHn55/rWRRNuVpQfixT
 pkqrznJFKiuq+bpcpLGEjHN2HyvHBmLm4lnIg1udQwfljPU/n5KfLmXwGGYvos8sg1Z0
 EUYsm1piRIelBDc6v8mEQ7GckJafnY2Z3yYcc/WAGAGrPmw5PabsOUGfXh+3EwK52Wln
 65ehCdvCnqdNQhjFIXHvEVfVRPfE8jz/j0Q7faVHEE+HmZVqIUr8HctOaah6p4A9f0dJ
 aMXw==
X-Gm-Message-State: APjAAAUhc2FwkVtB0RZUG0FHgCZpfy01f9J8HbDUhKv+5N1V0o5a/Ri3
 /h6qX+hp/eEIlSo44xr+QFMj2w==
X-Google-Smtp-Source: APXvYqz1czMH9OjFLmttmObRqksQ19SQZuwNAxgR+QJ3jRnmZqw4PC8qOzxHsQAhx9c2AwtLrQZJyw==
X-Received: by 2002:a62:6404:: with SMTP id y4mr24169935pfb.170.1574534326304; 
 Sat, 23 Nov 2019 10:38:46 -0800 (PST)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id v3sm2350025pfn.129.2019.11.23.10.38.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 10:38:45 -0800 (PST)
Date: Sat, 23 Nov 2019 10:38:40 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Florian Fainelli
 <f.fainelli@gmail.com>
Subject: Re: [CFT PATCH net-next v2] net: phylink: rename mac_link_state()
 op to mac_pcs_get_state()
Message-ID: <20191123103840.76c5d63f@cakuba.netronome.com>
In-Reply-To: <20191122092136.GJ25745@shell.armlinux.org.uk>
References: <E1iXaSM-0004t1-9L@rmk-PC.armlinux.org.uk>
 <20191121.191417.1339124115325210078.davem@davemloft.net>
 <0a9e016b-4ee3-1f1c-0222-74180f130e6c@gmail.com>
 <20191122092136.GJ25745@shell.armlinux.org.uk>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_103847_610718_D4EC2D1F 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, nbd@openwrt.org, sean.wang@mediatek.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, peppe.cavallaro@st.com,
 radhey.shyam.pandey@xilinx.com, michal.simek@xilinx.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 thomas.petazzoni@bootlin.com, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, hkallweit1@gmail.com,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Mark-MC.Lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 09:21:37 +0000, Russell King - ARM Linux admin
wrote:
> On Thu, Nov 21, 2019 at 07:36:44PM -0800, Florian Fainelli wrote:
> > Russell, which of this patch or: http://patchwork.ozlabs.org/patch/1197425/
> > 
> > would you consider worthy of merging?  
> 
> Let's go with v2 for now - it gets the rename done with less risk that
> there'll be a problem.  I can always do the remainder in a separate
> patch after the merge window as a separate patch.

Florian, I assume you asked because you wanted to do some testing?
Please let me know if you need more time, otherwise I'll apply this
later today.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
