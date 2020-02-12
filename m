Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC45015ACA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6pH+UJT0DYz18OZVF+FNFs6JgMllB/VDhCsAYjYqAM=; b=eUwYrYXIS+gd0B
	yJDUx087hV6oMatcDSnCCn3y2ZRd/ZugFh4gsI5sGIFukdCIHvNsJHglwUH5N8F9mJtqPwN4nGlyS
	PkxrM5yRRK9c/kRr4tecVfdGa3OULr03ObPRpWVWQKS4M0ZVELN2g9TGBtfgrn5j9YeS2K/YhBG05
	qxGNijriwYuhyfdjqq1YULj9J39CZSWYCHa9Lphy2GxxSH7qTqJW6FQg1PydK771HPZ/h6q8jroKZ
	Ii61ycALbdGTC+mXjxcLkGqxAr5mJTO6Pw0j0I9gWr+FikbAelonCd6rNR5nNZozaMbPzmZ7Dp/Ev
	mE9MqUStbAia/9uyIcGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uUC-00064c-1W; Wed, 12 Feb 2020 16:03:36 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uU0-00063j-VE
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:03:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581523400;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HnKDCKwyuda4gW5Ivrg+jIsW4pfOis6x+0ZhUg+C7PU=;
 b=SpwPPKocXy3IaMyQ9w2Zgy24qOnJ4z8LnalslVUF9ZCyHtvsSLCrItX3kDjSEg+J9OEpYt
 zStAFZxvoGZ8uOnV3T+gzXPPAya7FUJ6Chs7IFXKkSOOpxmwn+mscgm/owfYJKKmuM21u/
 N2mU78u4QZHqWMfuR/JEgIZfvRhktgs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-c5nkZBysMaus_cy780aHZQ-1; Wed, 12 Feb 2020 11:01:20 -0500
X-MC-Unique: c5nkZBysMaus_cy780aHZQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F23CDBA3;
 Wed, 12 Feb 2020 16:01:19 +0000 (UTC)
Received: from redhat.com (dhcp-10-20-1-15.bss.redhat.com [10.20.1.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C8E195C1B0;
 Wed, 12 Feb 2020 16:01:17 +0000 (UTC)
Date: Wed, 12 Feb 2020 11:01:16 -0500
From: Peter Jones <pjones@redhat.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] efi/libstub: take noinitrd cmdline argument into
 account for devpath initrd
Message-ID: <20200212160116.3xypcgmtafj7fm47@redhat.com>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-3-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206140352.6300-3-ardb@kernel.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_080325_520407_A2740AC6 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi@vger.kernel.org, xypron.glpk@gmx.de, daniel.kiper@oracle.com,
 ilias.apalodimas@linaro.org, mjg59@google.com, agraf@csgraf.de,
 leif@nuviainc.com, lersek@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 02:03:52PM +0000, Ard Biesheuvel wrote:
> One of the advantages of using what basically amounts to a callback
> interface into the bootloader for loading the initrd is that it provides
> a natural place for the bootloader or firmware to measure the initrd
> contents while they are being passed to the kernel.
> 
> Unfortunately, this is not a guarantee that the initrd will in fact be
> loaded and its /init invoked by the kernel, since the command line may
> contain the 'noinitrd' option, in which case the initrd is ignored, but
> this will not be reflected in the PCR that covers the initrd measurement.
> 
> This could be addressed by measuring the command line as well, and
> including that PCR in the attestation policy, but this locks down the
> command line completely, which may be too restrictive.

In practice I think we need to be measuring the command line anyway.  In
current existing deployments, we measure kernel and initramfs into PCR9,
and measure the kernel command line into PCR8 (both are reserved in the
TIS for OS use).  This allows users farther down the stack to choose
whether which things they seal against, based on their requirements.

> So let's take the noinitrd argument into account in the stub, too. This
> forces the PCR that covers the initrd to assume a different value when
> noinitrd is passed, allowing an attestation policy to disregard the
> command line if there is no need to take its measurement into account
> for other reasons.

I think we also need to log a capping EV_SEPARATOR event with an log entry
that says it's for noinitrd into PCR9, in order to prevent any
scenarios where an attacker prevents the normal initramfs from loading,
and then replays the events from a prior log in order to unseal secrets.

-- 
  Peter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
