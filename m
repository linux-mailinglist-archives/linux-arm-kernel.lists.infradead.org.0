Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6221818DF7D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 11:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mxNCyf6Wk5lbF9CebN3XMRYTEmROwWPWxYhQ17nisk=; b=CgkYXKtryyU2X6
	AzeHeQ3w89O3IFBCrn4guHEwDhmeBZyDJZgweDWIIsKNz+mxRp0o4YZ3NkOTIn42eehEWnm+Q/y2y
	eAFIzgE+NPsf6XrNSSi6EP4DaHvdk8znO3DG/EgejmMPAlWdmDXVlurMYth4Vc4bgne8d0y6y2zsf
	QnWQ1B6zZs2leLg5wVtKp1R4so54ooOMkep3ol0N8StSDXFI2yIJa1o3suoGm/XTgPk6LwneT/6RQ
	BMegHQB65BozKPdwXSkEqISHG9to74UubBamrCuCYvQol7lKXaFFwVg3YIifhxncxpl3a0bMKwapU
	fVFCF1mI150teQz0jb7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFbY3-0003JS-I7; Sat, 21 Mar 2020 10:40:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFbXm-0003J4-VR
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 10:39:56 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60BC32072C;
 Sat, 21 Mar 2020 10:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584787192;
 bh=bCp40qIqmUuQz7X5ywaAdzCex0ePugSTNMhM578biFQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EsrzvWE8dE7hDvPPNIiAkPHo8QI8KmjxF0FWVVX/K/sW6xsVA8yWyHi+nXekf9DXC
 2HsEBNN7jqOR/bIrFVU932u4a0u0Jblfn4+JIDIyUV+w1BqgMSFX6HK1FRwi0FiGdS
 kklLxMsdWm07eJUaT97n0CCvwwt61JrnKZBaNGdI=
Date: Sat, 21 Mar 2020 11:39:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v11 00/12] coresight: next v5.6-rc6
Message-ID: <20200321103950.GA1063010@kroah.com>
References: <20200320165303.13681-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320165303.13681-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_033955_032781_CA970C48 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 10:52:51AM -0600, Mathieu Poirier wrote:
> Hi Greg,
> 
> As requested here is another respin - the only thing that changed is
> the replacement of scnprintf() and all sysfs output are now singular,
> i.e don't need any parsing.  That triggered some modification to
> sysfs entries, which have been taken into account in the documentation.
> 
> Applies and compile cleanly on your char-misc-next branch.

Much nicer, thanks for these, all now queued up.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
