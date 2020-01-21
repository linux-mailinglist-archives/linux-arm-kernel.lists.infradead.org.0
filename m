Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500C6144350
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFlvcJo1wefTEdGeOaJzsx2omHrLB9BRHQmwu49HK5E=; b=YM2RLP+M0ALnEQ
	ETvLeghiTZBEpGrRNhr9dmYfdjI4Xrui0cYJVtnU7NOQqSZf4YE4XGyJajiTKsA1XOvUBLEd6X4fH
	TmgL522MtPOJzSBVRTbjzDiDzkddkxn8qutxwmWBQIUMdmN5wb3ibWKt7rLiUSJt2EmemVmPaV9N9
	lNuihrg4JpW7vthCiSrgNytA5EaCfZf/GHbHAIbCiyhsmE4AGr43vTqp4Qq7ieCOO3xqGY5RDaPH2
	AjCeF1aD0alDhiBQkpsM0/lgiH4oAIwzBiKTrwj8IYVc0xb0a8uKw7GlSqjTvM5o8ZuTQb5joalGi
	ub2OQ/d1SwlkZOQ/W77Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxPC-0000Hd-MM; Tue, 21 Jan 2020 17:33:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxOt-0000Ge-4i
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579627993;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=X+1nAC0+SxgPPTs8vkrGO5Iz83uXJrfWdyhSIti9ZQE=;
 b=f4upiMyNr2zvFixS4co9SvZ6N3lVMln7tuYLwzX+9eiHKFbmhyRvGmPtAUXYB8W4q1tdEk
 A4IdCjhHuquGC0cSK6JW0toFH2LkV2AbktEvuFZ5JUKdbq+P7x+8bFP4MzzBl/1PqI5AbI
 U6aCsXrBFNODTw5rOTtHcAtbyzfUuTQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-8ATiIqFlPqyuRUumYZ_QDA-1; Tue, 21 Jan 2020 12:33:10 -0500
X-MC-Unique: 8ATiIqFlPqyuRUumYZ_QDA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83410107ACC4;
 Tue, 21 Jan 2020 17:33:08 +0000 (UTC)
Received: from treble (ovpn-122-154.rdu2.redhat.com [10.10.122.154])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C49184DB2;
 Tue, 21 Jan 2020 17:33:07 +0000 (UTC)
Date: Tue, 21 Jan 2020 11:33:05 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 12/57] objtool: check: Allow jumps from an alternative
 group to itself
Message-ID: <20200121173305.urv77ral76su26cs@treble>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-13-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-13-jthierry@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_093317_807142_E8BD1501 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
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

On Thu, Jan 09, 2020 at 04:02:15PM +0000, Julien Thierry wrote:
> Alternatives can contain instructions that jump to another instruction
> in the same alternative group. This is actually a common pattern on
> arm64.
> 
> Keep track of instructions jumping within their own alternative group
> and carry on validating such branches.
> 
> Signed-off-by: Julien Thierry <jthierry@redhat.com>
> ---
>  tools/objtool/check.c | 48 ++++++++++++++++++++++++++++++++++---------
>  tools/objtool/check.h |  1 +
>  2 files changed, 39 insertions(+), 10 deletions(-)
> 
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index 8f2ff030936d..c7b3f1e2a628 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -722,6 +722,14 @@ static int handle_group_alt(struct objtool_file *file,
>  	sec_for_each_insn_from(file, insn) {
>  		if (insn->offset >= special_alt->orig_off + special_alt->orig_len)
>  			break;
> +		/* Is insn a jump to an instruction within the alt_group */
> +		if (insn->jump_dest && insn->sec == insn->jump_dest->sec &&
> +		    (insn->type == INSN_JUMP_CONDITIONAL ||
> +		     insn->type == INSN_JUMP_UNCONDITIONAL)) {
> +			dest_off = insn->jump_dest->offset;
> +			insn->intra_group_jump = special_alt->orig_off <= dest_off &&
> +				dest_off < special_alt->orig_off + special_alt->orig_len;
> +		}

This patch adds some complexity, just so we can keep the

  "don't know how to handle branch to middle of alternative instruction group"

warning for the case where code from outside an alternative insn group
is branching to inside the group.  But I've never actually seen that
case in practice, and I get the feeling that warning isn't very useful
or realistic.

How about we just remove the warning?

-- 
Josh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
