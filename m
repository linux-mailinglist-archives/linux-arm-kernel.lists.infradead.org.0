Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC27BB8DF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 11:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkKoH8338Y1OT/0V9Wunqr7ijnOg6A4e4pV6rhY13cc=; b=MggtPUWupt0Fmk
	mwun4MNgeiIIUNhfFQvDQQbdxuqho+pV/fK3ETMeOa/Vu6Qc4AD8htXYhYiobSUzJzpk5cZWR8fpk
	sx5t3Sh8TXLtoOwzP9fmo6v+aG2ty0us09t4lSZckEJvPWDSETV9HGQFZml/GrJh+t41V6thxoa9I
	bID3jOIB+oPAmHsjlT/TCQkacL+1pp/v1S2OI4Ia+F0RmzTQ0q5HVOS2CAOpx3XhLP1O2nt44QUO2
	Ep/EtW01fO+oQyXSvd+xAPhW84UmlwJcXh5vyKUuRMs2e/g0uKxlDlTHjH2r434cnmLF77nrMV3J4
	ZY7G/Qjf9mERew3/FaiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFPD-0006St-NT; Fri, 20 Sep 2019 09:40:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFP2-0006SQ-7U
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 09:40:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C430337;
 Fri, 20 Sep 2019 02:40:34 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 938673F575;
 Fri, 20 Sep 2019 02:40:33 -0700 (PDT)
Date: Fri, 20 Sep 2019 10:40:26 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Itaru Kitayama <itaru.kitayama@riken.jp>
Subject: Re: SPE capable Arm CPUs in the fields
Message-ID: <20190920094009.GA13906@bogus>
References: <864D2B3A-E49A-4F9E-9277-E8B64B36E02B@riken.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <864D2B3A-E49A-4F9E-9277-E8B64B36E02B@riken.jp>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_024036_313277_2BAD767F 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 05:23:38AM +0900, Itaru Kitayama wrote:
> Will,
> Though SPE is just an optional feature of the Armv8.2-A extension, I am
> wondering whether CPUs are already out in the fields or some vendors are
> planning to make one of two in the near future.
>

SPE is available on Neoverse-N1 cores.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
