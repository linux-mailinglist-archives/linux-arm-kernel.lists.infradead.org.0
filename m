Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5154B157407
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:08:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcIq0QX0OELSATmK89I4S51u8M8n0pGVz1nu2jkh/O8=; b=Yt+zTyikshpeUE
	PBrBgsAAJ/iA7C+iiGZBQWQOZzXvvJ70Z58O4hZWFZxhvrl/t0/Df1JMpP7Z5b6cACvouQKwUZAlt
	MflxVtQ7djCbMUumb259jB7/MrdBzZ100bym/kz/ghUbMEDlK82CYu4F9Npc+R3unik4+mN1RglAp
	+gH5O3L9D6K8h4XXKYwobksiOuxyhWekFk9116oPMbRA4i3X0B2RvLyfUelNX1xF5z5Z4ondhKtrZ
	x8Q1A153wJ5GU+X2/oy2ABWnxqh69ehC1lvW3pc7SS/oSevN+YulhzrW4wNJS2Fnd3vK8/Wq73+0V
	26hsNaGAeBn5D6JtuWYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17rI-0008EB-Ic; Mon, 10 Feb 2020 12:08:12 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17r4-00088V-I6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:08:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581336476;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jONdue0ovlDdMXefHuursR0LxtLZt0LrzIOWpvfMZzk=;
 b=T3rIsJW5riVSRPnHtDRNxp2zwpOegUEfhFbB+C1CjHFgRp2mpxB5kArsgX1yxInl45wqPy
 SED/LpYBwi0Zdk9g0PW24cxhE4MND1UAieSqPEltQ9nFPbqrAOgxSBU0OfMjveERY1f9eP
 bzMicCqE8EwKqNAtOdL7FdHx2h7zZBg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-Q1NGfm_wOESApJ57bhvzhQ-1; Mon, 10 Feb 2020 07:07:47 -0500
X-MC-Unique: Q1NGfm_wOESApJ57bhvzhQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 251201005510;
 Mon, 10 Feb 2020 12:07:45 +0000 (UTC)
Received: from krava (unknown [10.43.17.9])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A1A389F30;
 Mon, 10 Feb 2020 12:07:42 +0000 (UTC)
Date: Mon, 10 Feb 2020 13:07:39 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 3/7] perf jevents: Add support for a system events PMU
Message-ID: <20200210120739.GE1907700@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-4-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579876505-113251-4-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_040758_728646_C1DDDEFE 
X-CRM114-Status: GOOD (  13.10  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 10:35:01PM +0800, John Garry wrote:

SNIP

> +	return ret;
> +}
> +
>  /*
>   * If we fail to locate/process JSON and map files, create a NULL mapping
>   * table. This would at least allow perf to build even if we can't find/use
> @@ -887,6 +917,7 @@ static int get_maxfds(void)
>   */
>  static FILE *eventsfp;
>  static char *mapfile;
> +static char *mapfile_sys;
>  
>  static int is_leaf_dir(const char *fpath)
>  {
> @@ -1024,6 +1055,11 @@ static int process_one_file(const char *fpath, const struct stat *sb,
>  			return 0;
>  		}
>  
> +		if (!strcmp(bname, "mapfile_sys.csv")) {
> +			mapfile_sys = strdup(fpath);


we could release that in the cleanup code at the end of main
together with 'mapfile', which is also missing

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
