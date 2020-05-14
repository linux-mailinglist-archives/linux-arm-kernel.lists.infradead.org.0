Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62EC1D37AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLXoEpg7PWJ1ALzjrYAB7XJx9Z/Rw4ElS8L5kyEgpF8=; b=UDzKsxtkEXxjCv
	Nftefdz/C0nBPTBq1Z+IUjcqV/G+kyt6thF1Svw0xKIv9gjwT8fs2ZkssmRbjqGhDQTFnjj73f/31
	v2H9Q7LGK9dxtdlQFGqZDenYk/odUbldwWzA2CJ5Eh63B4rXFm5Jrg87Kg5v3WMTrL4p2oXoPAE/u
	ZtpML6V0ID1pwPCb5Qq0N8BHDlPLRZNEK/N1J9TTsb+zgFuUe6BtKB6SQfeWKnTPk+5ZFinLQsPjm
	Eh6rjWalKSCjtY+1SuQtsjIIc+FUlIS/0FRznidrj+2qqklGNXR0zKjRr30FshU39COiGfVcopksQ
	x7Mv8zsA56imIdkNRYWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHPL-0000lH-DX; Thu, 14 May 2020 17:12:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHPA-0000kh-PF
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 17:12:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id x10so1401365plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 10:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1B/PL8ha7A7nOJXu3NUP5rqgiexpDHSrNgDL+USmgYA=;
 b=PBokFZPAmHqRXlBhxgHzTpgwAuHcpDv/nJrs35kdxNnAyXZpWAOXAXIytN9FVpoC71
 GdaLlAsUiPe3PHsHuF2K0TIK28w8GvGMud7mHqnTClZ6a+Nx7z14KHXpy1htnrkOcWHg
 fR4PNsRyM1v5EFx4IcKBD34m/zjO+4ODfmknKDjlGRnURu8ub0FkAb8cWz+d8uLYMkJK
 oSrK/dG5B1GwLLcPnoFp0U+daIXUyk6FMTXMLamOW/aZ8Wp12wKv5LcxP/P/f+Gjuvv5
 POHQLcsQ4EFyn1K1czjyTxea7Ghh5og3mML5A4RJy8n3dgrcPjyKtklEmFh2KxyLd50V
 vGNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1B/PL8ha7A7nOJXu3NUP5rqgiexpDHSrNgDL+USmgYA=;
 b=c5/SrP28wcekKuZYEjlG+HSjxfQJ0Cd1p7b1NBf3ZJ90qpU9g0OJWS0qP37ONTYeNQ
 7q1JRjUukHAnW8HW58XYRx5IK/WNjNPGvdx3ANk3/7Gx2eBz4DdS5iYS6sAIWru/OYE/
 KDGouYDG6Kkn63LkNJPcJlvehfjMWzj4A5hgoaRUxf8c2QtJuqf1oCiJFVslfYkuxz3n
 yKH8+z5p6Ng9xhRPbe9q5N8Isghb8EMkPtbOysBCzbMBtLw7FtSarO8LWgVlf9HpQjXr
 oQ8cVNJg4zGQmz4D2Ddj8jyR5foi+qEUChN7lMvdK9tUvH80Wp8D1SIu/gxHuy/xNsME
 h7/A==
X-Gm-Message-State: AOAM532OTxLmYjLOBxgbAayMXMgEtWKWpplXWBelyhuKvRXal4toR5cB
 SORRQcW8QYDKzw+Hd8ZB6L7ttA==
X-Google-Smtp-Source: ABdhPJySiBTp68qIQK/XRPYbRMEd55hZPjzDHfAwE5RYqBqUDZ/ac5YPXLoFvHfIZoLPzyDU3qm38Q==
X-Received: by 2002:a17:902:9a43:: with SMTP id
 x3mr5040586plv.332.1589476339276; 
 Thu, 14 May 2020 10:12:19 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q7sm2427742pgs.13.2020.05.14.10.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 10:12:18 -0700 (PDT)
Date: Thu, 14 May 2020 11:12:16 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v3 0/2] Add CPU power management for CPU bound CTI devices.
Message-ID: <20200514171216.GA28479@xps15>
References: <20200511204836.27870-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511204836.27870-1-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101220_821149_D100A6FF 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 09:48:34PM +0100, Mike Leach wrote:
> Adds in power management for CPU bound CTI devices:
> i) CPU Hotplug - registers a new notifier for CPU start and stop events.
> ii) CPU idle PM event notifier to handle PM_ENTER, PM_ENTER_FAILED and
> PM_EXIT events.
> 
> Tested with DB410c on coresight/next tree (Linux 5.7-rc1)
> 
> Changes since v2:
> 1) removed helper functions filtering on CONFIG_CPU_PM to call cpu_pm
> fns directly.
> 2) add check for return value from cpuhp_remove_state_nocalls().
> 
> Changes since V1: (requested by Mathieu).
> 1) Split into separate patches for CPU pm and CPU hotplug handling.
> 2) Enable on hotplug has a specific function to enable the hardware,
> while leaving the enable reference counts unchanged.
> 
> Mike Leach (2):
>   coresight: cti: Add CPU Hotplug handling to CTI driver.
>   coresight: cti: Add CPU idle pm notifer to CTI devices.

I have applied this set.

Thanks,
Mathieu

> 
>  drivers/hwtracing/coresight/coresight-cti.c | 160 ++++++++++++++++++++
>  include/linux/cpuhotplug.h                  |   1 +
>  2 files changed, 161 insertions(+)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
