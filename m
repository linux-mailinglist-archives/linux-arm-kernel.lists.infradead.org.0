Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61444136947
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 09:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEllDTM3UvToY0EwnrbwtunF0AU0Xg/Psb4PDUru4A0=; b=FRczW9jweTXmxi
	BxV3NdN9RTTmDF4PD/5q3BbEchFpOPaT5HZjOIlaJQQYOCsoSnbB3ARYBxxtkn6VRP/wEeTHA3bEc
	okhZjvBwlF3q4ZSpIVFNgC/1aU/nP1v+q1TOux+VsLV00bZh13+YW4gw6fKLv6hyBFnsJ5igk/fZL
	KcOMl6MkS+zDJA3ErD/DlACJDDBUSplZOlgAAzaNIDvdiHPoj8+PaSU2SVN+m0e9V/2YPBFzT5oEn
	W4KcWZjUJ2mXvwzcD638d07nFM3N5iaqFU6lfSilocHQJt8TkOSi7ozPMR9Yzx9Gp96XWqnmnRxcw
	sfT4ASJYTrcHJISuJpnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipq63-0007rX-GB; Fri, 10 Jan 2020 08:56:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipq5t-0007qV-33
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 08:56:38 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay11so612569plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 00:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mtkMEc02hXcR+20gh5yanXRHRh9eVEHsJBoW93ABkXo=;
 b=YMENjTwxc2x1aZh9cvqZtVp9X+gzmXBfgyOFu25Rw9m4fkkrrKiShS8BtfH3gAqIA/
 foxdYZNNM7cFnVVnTQQnSqXg1J00PFqe4YPY8Aq6IgVBYin7QPVPD3WrOpT2zIHderyl
 V3RpHlCIpMrJvklAXVEELBgPliPXrGWqi5IXNcMgdvBd+PtFHZwFZRDiVzGAlzKPWekb
 aQdQLm941KrBHI8pXhX6fNx7nNQ8YP9aajNFwmRDva9AkSTjiLdZj8iU3+LtIb8K4sCj
 jNvL8EfIPdukdDJLXXzmelH5H4BH4VALKv6n2SwioemXe+ah4XmmXCWyaA1qZ80aufVj
 daNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mtkMEc02hXcR+20gh5yanXRHRh9eVEHsJBoW93ABkXo=;
 b=LVzcxareM5yVjJro5ktBwvXieFVfYQcctu2vRWK8To9bEMEFMzV+Ryxvi8y8sOYHQb
 MWP9ZC2M0bk1wvtJ5PxynNUQwdxL6dYGUINHyDPgUNMPead/PzIj2fcwlPZF1uw7/8gH
 USFWPHLfb1qWcBMn2I6UVdSHyDNihsPJA0OUNmkhdQpxZcoampYcXG4HqK2Gq/Xs9vtB
 PnzUNj/o/ivUK0QHD69zvRd4b0cZJLU5am1lJxXjNAb8dSzk8KHT6rpe7OuGxg0XAzGV
 KSS18JjG9A0cxtBzxko57WCQBQ7dlhNH6CEH0nnxSpXgNX0LVL/5mw4jgGIF6BBHY8lA
 Bk2Q==
X-Gm-Message-State: APjAAAX9QAPiYV/BZLFh7vD5e6qrywtMwMzIljgVKUImE/Tp9D56czM8
 mStX7cZMmDclhy8ITQqHKdPyBw==
X-Google-Smtp-Source: APXvYqwvvqWWDtlZMEyHeR3o0UJrf+fM/69T5OTeEzspifsxckyDh5dV2k+bJZqhudcsAanWCaCgmQ==
X-Received: by 2002:a17:90b:2286:: with SMTP id
 kx6mr3333120pjb.95.1578646596036; 
 Fri, 10 Jan 2020 00:56:36 -0800 (PST)
Received: from T480 (98.142.130.235.16clouds.com. [98.142.130.235])
 by smtp.gmail.com with ESMTPSA id d14sm2079709pfq.117.2020.01.10.00.56.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Jan 2020 00:56:35 -0800 (PST)
Date: Fri, 10 Jan 2020 16:56:28 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH] PCI: dwc: Separate CFG0 and CFG1 into different ATU
 regions
Message-ID: <20200110085626.GA17787@T480>
References: <20200109060657.1953-1-shawn.guo@linaro.org>
 <beda8923-a3b7-47eb-7cf1-19a3bacf1e34@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <beda8923-a3b7-47eb-7cf1-19a3bacf1e34@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_005637_349087_A140D295 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>, linux-pci@vger.kernel.org,
 Pratyush Anand <pratyush.anand@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Zaihai Yu <yuzaihai@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vidya,

On Thu, Jan 09, 2020 at 11:04:01PM +0530, Vidya Sagar wrote:
> 
> 
> On 1/9/2020 11:36 AM, Shawn Guo wrote:
> > External email: Use caution opening links or attachments
> > 
> > 
> > Some platform has 4 (or more) viewports.  In that case, CFG0 and CFG1
> > can be separated into different ATU regions.
> Is there any specific benefit with this scheme?

Thanks much for the question which leads me to go back to vendor for
checking design details of 4 (or more) viewports.

It turns out the patch is not complete.  We need more code change to
get the benefit of using separate ATU region for CFG0 and CFG1, that
is the dw_pcie_prog_outbound_atu() call in dw_pcie_access_other_conf()
function can  be saved.  But in the meanwhile, we need to pass
'va_cfg_base | busdev' as the first argument to dw_pcie_write/read()
in there.

@Lorenzo, @Bjorn,

Please ignore this patch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
