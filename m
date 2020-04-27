Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A3A1B989C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuqjBb0qNG+/4OzDckI0UyXSoJBTGMy0ZbwiIS76bfY=; b=IQ++Is4nxDhx+N
	FLvIVpUCMSmM9vr0RtAxqnuCMjzoD9InpoFIqI6qq1eFh0R+P0k4ftWEzA+u+PW3MmNpSBZEsNBwx
	TNCAXyww4XzGguHf5K+YH5xLekbdxz1kOVQqxngb3mgszvO+P7PRQgK1AT5nyaLCHQyelyFR7j3+v
	lh7gvV7K+k8viPyxDF94PXHstRuS0XNL4UnnnN4bAmMho4ISSSX33Kh8DAh0MBVguHrrcJi1WvD3M
	z4BEhjuk3wG+r3j8w/wpkvgTYNW74I8pbthzCrrEx/iexh40dm2KFEhZ8Iqvyv2PoXTvzGvKyI09C
	/fqUqIsJMzrdQsBCGrLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyET-0007hE-7W; Mon, 27 Apr 2020 07:31:13 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyEK-0007gb-8P
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 07:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587972662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fhbDo34NJp8lf0z2mD+gxz78VWyhT6vzLSI7DIn5U0k=;
 b=eGMXOl6gb52CO7gQeGRzvmmSbGtexcD36Uo2K4ODGh91VVRWiZ/NL43Xhq/7EFfGBop5s8
 amZHEpgVr3D8HMkbaDYayOFNUbX9OyiXCO47rRbM2TDvEulprk5yCgl9vYC88kP+9kibhx
 9ccpfnxzXkgv5MqQplWj+pzSJXDI9vY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-xE9ys-BJNemCctbaqWDaxQ-1; Mon, 27 Apr 2020 03:28:33 -0400
X-MC-Unique: xE9ys-BJNemCctbaqWDaxQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73EC11895A28;
 Mon, 27 Apr 2020 07:28:31 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.40.192.184])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D76A95C1D4;
 Mon, 27 Apr 2020 07:28:28 +0000 (UTC)
Date: Mon, 27 Apr 2020 09:28:25 +0200
From: Andrew Jones <drjones@redhat.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Save/restore sp_el0 as part of __guest_enter
Message-ID: <20200427072825.ekcekll6f23bt2um@kamzik.brq.redhat.com>
References: <20200425094321.162752-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425094321.162752-1-maz@kernel.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_003104_514779_5B0C22B8 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 25, 2020 at 10:43:21AM +0100, Marc Zyngier wrote:
> We currently save/restore sp_el0 in C code. This is a bit unsafe,
> as a lot of the C code expects 'current' to be accessible from
> there (and the opportunity to run kernel code in HYP is specially
> great with VHE).
> 
> Instead, let's move the save/restore of sp_el0 to the assembly
> code (in __guest_enter), making sure that sp_el0 is correct
> very early on when we exit the guest, and is preserved as long
> as possible to its host value when we enter the guest.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/kvm/hyp/entry.S     | 23 +++++++++++++++++++++++
>  arch/arm64/kvm/hyp/sysreg-sr.c | 17 +++--------------
>  2 files changed, 26 insertions(+), 14 deletions(-)
>

Reviewed-by: Andrew Jones <drjones@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
