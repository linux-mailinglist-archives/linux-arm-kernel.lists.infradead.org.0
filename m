Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D4E1E8621
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 20:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8/ZIwqfN0/qmw78FV7D3DIXQ5mguty7pajMArWAL6k=; b=VL72tXCd7uKdZd
	GLAkbhrKWfYLqaosMeSSzcH+GokOKr0ERNoXM/OwwqW4gMSzCm3hpPsyw+UHzZGWwJh9C6Phwob2r
	G7zdX1Pi/FHf6c9wggK5KfzLTjUUUk3iMH2bB/4PayQbL+GunR/2sIZGk6gleWjngFfPXAWIbaB0V
	K0/NWnwjZ0bqA0HqSY35rGgEkM+EFbIJ+GLAyMhRJris119u+OuvUzwLt2ZiADn5DTeBdcm1SbG10
	n3PgMcZwpNUK3mu4Ejhwkwrhom41TkGb06sdE1q+laqhky+Vd9cEGqDb1263RXZfaGXUYEfSfvtgz
	zJcTdQOw9K0lZJdhutOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejK3-0006eY-8X; Fri, 29 May 2020 18:01:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejJu-0006dX-98
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 18:01:27 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8826F8030;
 Fri, 29 May 2020 18:02:16 +0000 (UTC)
Date: Fri, 29 May 2020 11:01:23 -0700
From: Tony Lindgren <tony@atomide.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 8/8] ARM: OMAP2: Use custom soc attribute group instead
 of device_create_file
Message-ID: <20200529180123.GV37466@atomide.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200523170859.50003-9-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523170859.50003-9-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_110126_357373_34260AA8 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Sudeep Holla <sudeep.holla@arm.com> [200523 17:10]:
> Commit c31e73121f4c ("base: soc: Handle custom soc information sysfs
> entries") introduced custom soc attribute group in soc_device_attribute
> structure but there are no users treewide. While trying to understand
> the motivation and tried to use it, it was found lot of existing custom
> attributes can moved to use it instead of device_create_file.
> 
> Though most of these never remove/cleanup the custom attribute as they
> never call soc_device_unregister, using these custom attribute group
> eliminate the need for any cleanup as the driver infrastructure will
> take care of that.
> 
> Let us remove device_create_file and start using the custom attribute
> group in soc_device_attribute.

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
