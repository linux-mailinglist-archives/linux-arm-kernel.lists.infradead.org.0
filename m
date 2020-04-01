Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB2519A6E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40ZLqxa5U2yh3HnZj3C/jEBbpG0H4czsj2Cv8SDeD+Y=; b=iM5NguNrYX5yB7
	6nQFQTEQUyZal5ik/ZnzOg+855EyB1xVbD6RprVip/aYIBRQoK76x4SSg1j1ItQWL60QndtInh194
	G1dj5st/yigtoHkD4eMcaBuTBE0I8O+xzQyFcuGCWa1o1vwmjNLk6SBBP/PTxCN0k25/P/q7kAOea
	zzKwJptQxr31ZmGt19C7lIaJYJ2yOF5fbhi4Z51+7qCnzWj10l0ae3Ihpsdwy+/yvmyKT3XZjnfZH
	rzbyAd6YOK44jIOhTDic0k5+eGNGpDHxEkutqrDHt9h/+HDA/DzhPsDxR8inTRN1BKrmDNzD2C6NN
	PtjFGREhEelmdb72WRvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYSv-0005Tm-0C; Wed, 01 Apr 2020 08:11:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYSo-0005Sf-O0
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:11:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C241D20772;
 Wed,  1 Apr 2020 08:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585728665;
 bh=echul4ZpeLSO1wDA6PEQDmeER38mQ9xHhNHK3mPtYmE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tpgJstkdcTa8o/dqhGiIxpztnW65cbVsfDgyC5aqvIbXgG2TrT6Oqhwwv+2jidGgA
 wB7KTVZogjFaEjw66WjEAToGax12hMpVXwhHtZiFH8xdTOJZt39yYg4hOHFLuKzuqy
 ygZs30jkuw1kStuH5zDFlrNa7DsHerRORGpJbH18=
Date: Wed, 1 Apr 2020 09:11:01 +0100
From: Will Deacon <will@kernel.org>
To: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Message-ID: <20200401081100.GC15950@willie-the-truck>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200319151646.GC4876@lakrids.cambridge.arm.com>
 <23AD5E45-15E3-4487-9B0D-0D9554DD9DE8@amperemail.onmicrosoft.com>
 <20200320105315.GA35932@C02TD0UTHF1T.local>
 <A50AA800-3F65-4761-9BCF-F86A028E107D@amperemail.onmicrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A50AA800-3F65-4761-9BCF-F86A028E107D@amperemail.onmicrosoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_011106_799825_80249683 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Tuan Phan <tuanphan@os.amperecomputing.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 03:14:59PM -0700, Tuan Phan wrote:
>    Hi Mark,
> 
>      On Mar 20, 2020, at 4:25 AM, Mark Rutland <[1]mark.rutland@arm.com>
>      wrote:
>      On Thu, Mar 19, 2020 at 12:03:43PM -0700, Tuan Phan wrote:
> 
>        Hi Mark,
>        Please find my comments below.
> 
>      Hi Tuan,
> 
>      As Will said, *please* set up a more usual mail clinet configuration if
>      you can. The reply style (with lines starting with '=>') is unusual and
>      very painful to spot.

Seriously, this is unreadable now. *Please* fix your mail client.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
