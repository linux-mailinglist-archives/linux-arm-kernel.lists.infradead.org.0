Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298EE144252
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibznueA66MWzFqaVmP/Qrizy4fZhRYTcp1fL0WHlqTg=; b=lCibSvCTrd+4/O
	i0d+/J60qElOpJvUgppMCDOgxtrCMOKsv5V05ZH2+jrsE4QilLI/Q7tNZcmQcTYSmQdX/vq9XAps0
	MRDLuKXENiemh/X5eyp7bcuFVJbVWWF9D3CbUVR+chn4dBS07XS5Zv/SGmYnyUS/aKCH7F0MnWJOQ
	KxksnUI+g2M9ANpoGb92cPFYYbThLN1XtAWlnJu3FfYPD4pFdikJ/75XdIhernNEaMaVwzlu3Jmn0
	btlscIy7nvx4qRKe0hqbuvahElPhxtLKmob9B1H4w6/80u55arzsdaV302XVlBPZkk+Lx0IupOfzE
	SRd3BQgxniIMJbANzhwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwXg-0000K6-1f; Tue, 21 Jan 2020 16:38:16 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwXQ-0000GY-B5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 16:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579624677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Yf4F2Q+jP5jpb9BsV98BXepooKGbqCkOI9lfShBlAeQ=;
 b=X9PZg8HO1/T0iLnm2bUaCaf46MVsQELz/8OFLSL3xgR0PJ5VBWgmtkAA+QnmLXNqzSVc6E
 t/eXu1Wob6OO7Pk2kdhnUZlmocHH6W7nPybuCxBAvBTJAkt49efynWkUlP2vcV6ftT6RlI
 Ax3dtQU8rOFjCxDorkHaPk/tdqaQtHY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-VrUfivWiNLS7ip51Icjx2g-1; Tue, 21 Jan 2020 11:37:52 -0500
X-MC-Unique: VrUfivWiNLS7ip51Icjx2g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB33C2F2E;
 Tue, 21 Jan 2020 16:37:50 +0000 (UTC)
Received: from treble (ovpn-122-154.rdu2.redhat.com [10.10.122.154])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 309105C1BB;
 Tue, 21 Jan 2020 16:37:49 +0000 (UTC)
Date: Tue, 21 Jan 2020 10:37:47 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 08/57] objtool: Make ORC support optional
Message-ID: <20200121163747.kbasjd2wn4q44vcf@treble>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-9-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-9-jthierry@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_083800_460521_890410A3 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 04:02:11PM +0000, Julien Thierry wrote:
> diff --git a/tools/objtool/Makefile b/tools/objtool/Makefile
> index d2a19b0bc05a..24d653e0b6ec 100644
> --- a/tools/objtool/Makefile
> +++ b/tools/objtool/Makefile
> @@ -6,6 +6,10 @@ ifeq ($(ARCH),x86_64)
>  ARCH := x86
>  endif
>  
> +ifeq ($(ARCH),x86)
> +OBJTOOL_ORC := y
> +endif

I think this should check SRCARCH instead, a la:

  https://lkml.kernel.org/r/d5d11370ae116df6c653493acd300ec3d7f5e925.1579543924.git.jpoimboe@redhat.com

-- 
Josh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
