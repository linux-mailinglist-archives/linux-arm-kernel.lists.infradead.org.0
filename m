Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E657414422E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:31:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85gvfEDTsuF5TLCQRvH4YbP3J0rjKAP7J8VGujjdhmI=; b=kpa9snUt2PDSUk
	Kike2Bqh5QtMo+EyicE04+Y//RsjcVtqEtkGc7MLNRevL+bdzecRpnI4ztxpVoT+pnlBxp3BjLX4E
	nZClCK+iVSMekaP+hPVChzhFaW0A+eHYUaIE0zzysgbdgPURdpDGp6Gvp8rmTNFHpf0eECjcEGsN8
	PSKePcd4cN38qz4HoW5SKyYi7Q5+LY3KGjiSzKrdmpMoFI4m655hRl/jh8aPDIPMmTEJDCp/UfZ5j
	BnpBj2VpJOeIQj/QLilXVlueZitj29Vr3KVxjXI7VyugC7d9VJX9tqv8siaZ9FG4QtFHQiohCwAXO
	lpzeO7MDiKaa5Ct2XiDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwQa-0006O3-OE; Tue, 21 Jan 2020 16:30:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwQS-0006Nc-Nl
 for linux-arm-kernel@bombadil.infradead.org; Tue, 21 Jan 2020 16:30:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mxflqPtTzg3Ku1VbkLyyrn7MV7M3mR8q27sY9MnBA2o=; b=eRkiN5OR/C+/cf0hbHK8j2A64
 vUIIZ555KVN5wUkAChsiUs9n01Jie63mv+6gSleslogUtj5MilBykNEdMKvGPmUNPipwK9UX6jsPj
 P1oZc8JN/xJIHKw+bl3HebNUi6utdSqTVN009M4dePUIKHwXKEdkJbYQgaF8K+SVJ767/879Xi5/B
 I8Lsifd4QwEUzV0mv4oU+plg0npUjeOChbLTXzf3S5lXIvHXtM/bef97HKXRS6GEzzZOSQCv9VINJ
 vk5wtrsT8MhCzap8cIpIkQN7qhXLZKoaT4vbmDnUkHPGbyjKItgT0URpgXWaqvxS/qDtKTnsksAWz
 FGoaYB+kQ==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwQl-0004jq-Vt
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 16:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579624218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mxflqPtTzg3Ku1VbkLyyrn7MV7M3mR8q27sY9MnBA2o=;
 b=CkU8pzFdFImRSWI76gxeNkQ65ju4U28Zz+B7r6t3DkRDyWjkJhTtGUUupgr1QecMRrkXac
 EyOmoPwwBzxQwkcOaMXpA0WjwQMCicxv9KN/awcZ+ajDuDbKSqjIDJPrXeTHRS9sLPoe5n
 c5yrZcg/l5ll20kE8VSQZSbP02umpv8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-90-6-u4abFTOKCN3lU35lN2Fg-1; Tue, 21 Jan 2020 11:30:16 -0500
X-MC-Unique: 6-u4abFTOKCN3lU35lN2Fg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09BCB101FEAF;
 Tue, 21 Jan 2020 16:30:14 +0000 (UTC)
Received: from treble (ovpn-122-154.rdu2.redhat.com [10.10.122.154])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 08DCA48;
 Tue, 21 Jan 2020 16:30:12 +0000 (UTC)
Date: Tue, 21 Jan 2020 10:30:11 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 04/57] objtool: check: Ignore empty alternative groups
Message-ID: <20200121163011.tk5koyg24gzuhoaa@treble>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-5-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-5-jthierry@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_163108_130543_63D15A00 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Jan 09, 2020 at 04:02:07PM +0000, Julien Thierry wrote:
> Atlernative section can contain entries for alternatives with no
> instructions. Objtool will currently crash when handling such an entry.
> 
> Just skip that entry, but still give a warning to discourage useless
> entries.
> 
> Signed-off-by: Julien Thierry <jthierry@redhat.com>
> ---
>  tools/objtool/check.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index 5968e6f08891..27e5380e0e0b 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -866,6 +866,13 @@ static int add_special_section_alts(struct objtool_file *file)
>  		}
>  
>  		if (special_alt->group) {
> +			if (!special_alt->orig_len) {
> +				WARN("empty alternative entry at %s+0x%lx",
> +				     orig_insn->sec->name,
> +				     orig_insn->offset);
> +				continue;
> +			}
> +

I think WARN_FUNC() can be used here instead.

-- 
Josh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
