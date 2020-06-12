Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571D31F7790
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mo6EpFw8SiC2QNu9ujJOgLyx+ymwdK/b+obdawdluBA=; b=u8WG4P2+jtfyY1
	x3QcS76vgWUYKExnskBjkRqltc4D4lZB1BAtev4MQsDtfoyx+lf+xdFqoU2gvnrURmJO54eO8qu7C
	KHM1/7LAhg2ISCcLRALSbG+2IHzZuPR0fi5wMil6u0bz/KVJVQ5I0ebrrEenhnWA/VDCgzM1SLQGZ
	rCTUY3gUQtztWwcDVHsbe7cozYJi27SE0MvAHQwct9kNCTDoDmN3oqdwO+EHAx7hj4wakK5xetVJ1
	i2fvduEzccxal6Y55RpFhb3x2T/nMN7tHtvOVAaFvMvC0Em3hPqIuax97t75Opn9jJfjlKH+jRp6t
	SYpP23Lhqc3GWjS9qYwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiIf-0006pv-BE; Fri, 12 Jun 2020 11:56:45 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiIY-0006pa-1Y
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 11:56:39 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0D6DC240004;
 Fri, 12 Jun 2020 11:56:34 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 4/6] ARM: mm: Aligned pte allocation to one page
In-Reply-To: <CAK8P3a2-g9ZmFiWJ_i4-0C6=WwzC1UjHGzY07w4y=0O1pHSX5Q@mail.gmail.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-5-gregory.clement@bootlin.com>
 <CAK8P3a2-g9ZmFiWJ_i4-0C6=WwzC1UjHGzY07w4y=0O1pHSX5Q@mail.gmail.com>
Date: Fri, 12 Jun 2020 13:56:34 +0200
Message-ID: <877dwc8pl9.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_045638_219736_60D3A992 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
> <gregory.clement@bootlin.com> wrote:
>>
>> In pte_offset_kernel() the pte_index macro is used. This macro makes
>> the assumption that the address is aligned to a page size.
>>
>> In arm_pte_allocation, the size allocated is the size needed for 512
>> entries. Actually this size was calculated to fit in a 4K page. When
>> using larger page, the size of the table allocated is no more
>> aligned which end to give a wrong physical address.
>>
>> The solution is to round up the allocation to a page size instead of
>> the exact size of the tables (which is 4KB). It allows to comply with
>> the assumption of pte_index() but the drawback is a waste of memory
>> for the early allocation if page size is bigger than 4KB.
>
> Have you considered increasing PTRS_PER_PTE instead to fill up
> a logical page instead? If that doesn't work, can you explain here
> why not?

Actually for this situation I didn't try to do better but it is only
used very early during the boot. Then I'm expecting that the allocation
is done though slab so with object at the exact size we need.

However you also pointed modifying PTRS_PER_PTE for the overall memory
consumption in the cover letter and in this case, it could worth
modifying it.

Gregory

>
>        Arnd

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
