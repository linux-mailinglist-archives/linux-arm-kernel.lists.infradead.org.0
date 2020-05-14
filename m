Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DAF1D2D30
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 12:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+r55Pr6dZ2BGD3vlNFTL5lAU0H0HkSHOXanp3t3V3Js=; b=NVHzw3tYH7OLnj
	FUUnnbQnH4p3bNy3YeqgoUgaluGpHDEhVyX6LfTsKed+PhsoWnF+nmbb7Tzrjma0N1GDz3zFYeBZY
	lEP+m/HfphEGwXkcEjuRlk4zWgnS6PjC17DZWFnRqVaWGKrTIz3qs88wKAf/Ynn5ddUSaAqxYLXm7
	KNvuMhcFjNXufQz6Sg3eM+UFkAYgcm9Pm+xmqaTSPNo1/rVyYEApzA3bbb+uckVm6chKeZ6TEHanZ
	3rcUhzMHb2uu1gkzP5nsJid5lc0YTqQDjlXLRsAVeg7xwUX9AL4aca0TWQGiKASXjZzvujFrrHPYI
	I/SgPGJNbZFKzT4V4NTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZBNk-0006gg-4O; Thu, 14 May 2020 10:46:28 +0000
Received: from smtp2.axis.com ([195.60.68.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZBNa-0006fL-Qr
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 10:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=1223; q=dns/txt; s=axis-central1;
 t=1589453179; x=1620989179;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/QiWqwCY0he86CmS8M6CKwlH1XkaAD8P1wAxOQ7yl8o=;
 b=R6wIxSRpTD/76ryYXgBmHibnw1yFN+voce8gz2dVDMJpPfMOy6LoZpn3
 9LwXN6uwMwQTQWFAmqBLvNkEXsgjsHLyR3eWzMH0JDSggAASqIsqc1R+a
 fZrmsE9tsET1pM8/QgTJjUsSBHEQH0WP1IyoaR8B0IeBsGc5le8Hlo6Xe
 7An1oDyppxU2AyynfRv7bOwKyx1uLzjRsp8Gb2RC/Rn0VkGUFVxpKROIn
 /uZ+ORYNQWEDObllbGawJS25SzHxcXs4yScLlUyf3qcckL7O2oqLBNT8N
 LAI+5Dj4TeBp4vlTmDaWutcYUy9lB7HXOf7OoBKEmLvZ0JmX7tlX2hh7U A==;
IronPort-SDR: UMWgmyq8sHVnEMDqeVGc2t7zv76i5GtdkN/IP/73570nJPpt2kmZ+BFcwYp9oN3g7OBVbm1l3v
 huRpu5fhUBp0Z4iYWpurCRZ98ucDhxRYqKh4ZwdVLAbYEHmXPdFjPMGf5VclcoYFal+dsZqfqQ
 Y0cnyF6tvBatWVX7DH7gCoKJvn86ehyVSQ0alfCM+2tmDc5lqdFSQxjk6pPPiqULeYGTKXC+dj
 cu9gKsF1u9qJ+BrLSGpQ5AUqmfzweTFYkurlIk/vrxXLzG7GmzsoXq7Rr9KQ9hetQyp98Kb9tV
 nu4=
X-IronPort-AV: E=Sophos;i="5.73,391,1583190000"; 
   d="scan'208";a="8479237"
Date: Thu, 14 May 2020 12:46:13 +0200
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: Jessica Yu <jeyu@kernel.org>, <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 1/2] module: allow arch overrides for .init section
 names
Message-ID: <20200514104613.ckwql7s4xbgqj7ss@axis.com>
References: <20200511114803.4475-1-vincent.whitchurch@axis.com>
 <20200511154459.GA26699@linux-8ccs.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511154459.GA26699@linux-8ccs.fritz.box>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_034619_200962_DC8EF553 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.18 listed in list.dnswl.org]
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
Cc: kernel <kernel@axis.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 05:45:00PM +0200, Jessica Yu wrote:
> +++ Vincent Whitchurch [11/05/20 13:48 +0200]:
> >ARM stores unwind information for .init.text in sections named
> >.ARM.extab.init.text and .ARM.exidx.init.text.  Since those aren't
> >currently recognized as init sections, they're allocated along with the
> >core section, and relocation fails if the core and the init section are
> >allocated from different regions and can't reach other.
> >
> >  final section addresses:
> >        ...
> >        0x7f800000 .init.text
> >        ..
> >        0xcbb54078 .ARM.exidx.init.text
> >        ..
> >
> > section 16 reloc 0 sym '': relocation 42 out of range (0xcbb54078 ->
> > 0x7f800000)
> >
> >Allow architectures to override the section name so that ARM can fix
> >this.
> >
> >Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
> >---
> >v2: Add comment and move module_init_section() next to module_exit_section().
> 
> Thanks, this patch looks fine to me. You could add my:
> 
>    Acked-by: Jessica Yu <jeyu@kernel.org>
> 
> Alternatively, I can take this through modules-next if the second
> patch gets a review and ack from an ARM maintainer.

Thanks!  I've put the patches in Russell's patch system.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
