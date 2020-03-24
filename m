Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177AD190A00
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 10:53:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHu///EEH4A7mZg0WQItZlH+uQ6aYGVmbEBYdGY7zwg=; b=kBQ6Ac811Egv5+
	I61Wlg4PNQCOAV/T5pMCKtsIeTNWuaGVHzgh4cGzVGFTkKSPSXlJY770I3cdKqHW4lfG8ZDjQrlEB
	4/zsCDDlP9yucPt0oO/m5GaqXCmQecdh0ko9ATT4RB49jyMFGEFCikWX85TFhEx0f7ZkqxjsGd1cj
	X5YDMP/GJOfn7OvxpxqIt6ezZl4JI7hZGSsAP80vKrTcmOMYwKm+aABo9aRJCGE45r45Dwp/SyTCQ
	QWlwmTPmFOctTZgNsYskCHmSVUeqX7ylXmygNAJV/iBqGZyR0/90m+v06VraITtjCj+1zpop1pzJU
	XjsIiD+vWXpLKgV7+64A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgFI-0007me-HY; Tue, 24 Mar 2020 09:53:16 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgFA-0007mI-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 09:53:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585043586;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Gq/lKW8WyRYl5edQacpGKYdDQGdtrGN/tjzEhNXWjEE=;
 b=FHqbtNY1/pklQKmHPNz/eXxEtZnsYlFvzNGwcC3iFLwaikwQOU8m2FYlo/m0m8Hhw0p5ql
 xhXWKTUI38Y5JmSgmr8XGk/yzyslgSv6P7bFXdpWLqYdvM0FCxxSDJUeDPnSLeQzwxAumy
 GfYSKU9kifJgnkRGTm3BvjUz2kUCkP8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-62-KZrYVp3gNL-ikeQcra1K_w-1; Tue, 24 Mar 2020 05:53:04 -0400
X-MC-Unique: KZrYVp3gNL-ikeQcra1K_w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED4268017CC;
 Tue, 24 Mar 2020 09:53:02 +0000 (UTC)
Received: from asgard.redhat.com (unknown [10.36.110.53])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9ECE91001B3F;
 Tue, 24 Mar 2020 09:52:59 +0000 (UTC)
Date: Tue, 24 Mar 2020 10:53:04 +0100
From: Eugene Syromiatnikov <esyr@redhat.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] coresight: do not use the BIT() macro in the UAPI header
Message-ID: <20200324095304.GA2444@asgard.redhat.com>
References: <20200324042213.GA10452@asgard.redhat.com>
 <20200324062853.GD1977781@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324062853.GD1977781@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_025308_700000_710AF92C 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Michael Williams <michael.williams@arm.com>, linux-kernel@vger.kernel.org,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Dmitry V. Levin" <ldv@altlinux.org>, Pratik Patel <pratikp@codeaurora.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 07:28:53AM +0100, Greg Kroah-Hartman wrote:
> On Tue, Mar 24, 2020 at 05:22:13AM +0100, Eugene Syromiatnikov wrote:
> > The BIT() macro definition is not available for the UAPI headers
> > (moreover, it can be defined differently in the user space); replace
> > its usage with the _BITUL() macro that is defined in <linux/const.h>.
> 
> Why is somehow _BITUL() ok to use here instead?

It is provided in an UAPI header (include/uapi/linux/const.h)
and is appropriately prefixed with an underscore to avoid conflicts.

> Just open-code it, I didn't think we could use any BIT()-like macros in
> uapi .h files.
> 
> thanks,
> 
> greg k-h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
