Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AEE144986
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 02:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=peL9Kkk3fyv8i5QFTFFENhtVcz2T0rtn+xEvzCEtiHs=; b=jObMjrc6x1ZKQT4g2W6hMUQgO
	6ln4d/zvqosXika0gbsZProHBSWg/koj6FkUT/XxL1MnX6tnfPiomIVOt1uJaS5nECLiQ9lyNz4bx
	zCayIA+1/95aHj4PtHP9lCLjbxLbwbQRK5VH0c6vXUQId/ZL5NYbx6QLIayVLeLikyXfieX/I8Dyb
	iSqjJAiPZHIFdxqXwyrKh4kYk8kSIfFnFdch0BvnAP+8QKxvrUdwm9+2SMxNncRptlgFYcUGd8Omj
	D/qdWfCCMP1rIPckOZdWq0D/Q2Lhh7YGKEHQjrKuOx/MHNOXs+wO0YWtTk66vOPxlZpx3neQLLnNv
	XqRyLI0cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu54W-0002XG-Pg; Wed, 22 Jan 2020 01:44:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu54L-0002Wk-VT
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 01:44:35 +0000
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC5E024676;
 Wed, 22 Jan 2020 01:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579657473;
 bh=In8/rc3BW+oOPpSmXQWQIOiZ6Glo53qCqKnUMJrC+04=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pVwCjsz32Hf9VlPxq9M6KLUxSbFwDoncOkdneA71CzJhASpLos+/L7gAohQN9Thtg
 LCp4zSUqZR9nXbMD8JkFlDmQoPB/wo/LsaQEOyq0OONntnTGrtqyswsK+qHrAmNhKU
 zssg9x0GRRKwQNdWtxKqZDhP5gm2fDpSqi+TX8eM=
Subject: Re: [PATCH v2 net-next] net: convert suitable drivers to use
 phy_do_ioctl_running
To: Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, David Miller <davem@davemloft.net>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Doug Berger <opendmb@gmail.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Steve Glendinning <steve.glendinning@shawell.net>,
 Michal Simek <michal.simek@xilinx.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
References: <2db5d899-a550-456d-a725-f7cf009f53a3@gmail.com>
From: Timur Tabi <timur@kernel.org>
Message-ID: <fc53f36b-9365-c8c6-0be5-cffbf403356a@kernel.org>
Date: Tue, 21 Jan 2020 19:44:27 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <2db5d899-a550-456d-a725-f7cf009f53a3@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_174434_029753_F0C70986 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-renesas-soc@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/21/20 3:09 PM, Heiner Kallweit wrote:
>   drivers/net/ethernet/qualcomm/emac/emac.c      | 14 +-------------

Acked-by: Timur Tabi <timur@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
