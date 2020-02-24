Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB7716B1DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 22:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cW4D038Yv0g5rczh8w0KhOEjiiFpT4/cgANf7rfoUA=; b=K/BsKo7ZRvW2uX
	h/rHAaXayi8QxAKQdpx+BP+G1uHDN1PCogZDu4sKsDs+EKtYajBEmRbDPO1jENqxdqzV2EHYZGlRy
	Rj1zKTRJVeh/45AegipCTXT0aab1sugV1egs6E16umnMggm2yLSP211N9xuCyGMCtv9lVbwSHUiv6
	xIVkO/1Hk3zy/s5lLqcWI+AuoK1AOm0zEe94gOJZbMbxCvqN30nFWt1Db9zgWj2Z/5SBNY9oq7tkg
	XdojknIhD1juOT1l5+2+ZF/S7FpketpGgVXNxVAlYWoua1lALC1pk5eJkhYoZYP90zlPFKKnql+px
	XBZ/9TSh0pTSBV6NrkTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6L1s-0002ol-K9; Mon, 24 Feb 2020 21:12:40 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6L1f-0002nE-RK; Mon, 24 Feb 2020 21:12:29 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01OLCGe0072295;
 Mon, 24 Feb 2020 15:12:16 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582578736;
 bh=7fKOJ3M2UjkXuGhNEojycNJyumHodeR9QVJFJrr3Hhw=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=mW/HohppwCft3VZJXOWyOaQKpqKSoin2c5Bdp4N4i7k4URIS/NwQ047QwNt1+Lxrz
 yJSlNdpP6BrFR2ekj+0kmLt9URmj/Hg6wSN25YwrPvQbtIfiUTojajLuAkBn8/Vfqc
 51Y84n/oe49QWrgYRa3CX4p6I8jp0TlymqAbfXd4=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01OLCGki037258
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Feb 2020 15:12:16 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 24
 Feb 2020 15:12:15 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 24 Feb 2020 15:12:15 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01OLCG63022267;
 Mon, 24 Feb 2020 15:12:16 -0600
Date: Mon, 24 Feb 2020 15:12:15 -0600
From: Bin Liu <b-liu@ti.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] usb: musb: remove redundant assignment to variable ret
Message-ID: <20200224211215.GA28269@iaqt7>
Mail-Followup-To: Bin Liu <b-liu@ti.com>,
 Colin King <colin.king@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200222135420.135692-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222135420.135692-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_131227_977213_AAEEF5D0 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, Feb 22, 2020 at 01:54:20PM +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Variable ret is being initialized with a value that is never read,
> it is assigned a new value later on. The assignment is redundant
> and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Queued for v5.7-rc1. Thanks.

-Bin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
