Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5F91CD708
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Xi3hja4iAELIOIW4XoRa5tGN0D3//RfV8jKpMusrvs=; b=ASLm7aZGpSlGPk
	afPRceLE4MeKkvgCK5vcIDTsCpEHlcu8++8933FfElJUaSgHOBrFPap1XIp7iWc7ewd+cFjkcIr75
	gO7EuyttK3qqlnaVy3zbFD/lQNfRdkQOIYhE5z3NCbXLs2TDRnH1f1XJkE6U1scDXum0aqhPvsGWS
	8quCZM9ttojratqIo1i4lU3/oQQAIiDN6S664R8a+1DeaiOz+hxA/VcAe5SZZ0J8yZKaa52qohKQ3
	M1OsZPReSu/ASmKKXr3J5mDFzDTMMLnYww/21pWqdgFs9pRsj3QGvaFbfkIQsBKiM9k2mpDFvtgVC
	w2MrjfcAJRpWU1A4iV7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6CV-0006l9-DR; Mon, 11 May 2020 11:02:23 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Bx-0006Vs-3b
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589194907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oFDVkhRoHqXvQ6Q+8XkWGBWxZCbZLeL6G8I1FDsAcKI=;
 b=huMNMqYJN46cyRV6jtJobDr/Lr0lDnESjvF8bZtAafJ62TX4naY7+jfQ0YHPbk46tFhnJm
 6MCtJXDKIrr7t/hNO7/J//zKc0dGZiF2OlY3zAKKSrdtWoBlgrWA0xFHg46CZikU/rQBRQ
 CxMS6HjJV4EsWigJyAg0HshPra0VLpY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-449-N-YvmnBvNaWFqTnrZdz2WA-1; Mon, 11 May 2020 07:01:44 -0400
X-MC-Unique: N-YvmnBvNaWFqTnrZdz2WA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E9EFD460;
 Mon, 11 May 2020 11:01:41 +0000 (UTC)
Received: from krava (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with SMTP id 4576D60FC2;
 Mon, 11 May 2020 11:01:38 +0000 (UTC)
Date: Mon, 11 May 2020 13:01:37 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC v3 02/12] perf jevents: Add support for system events
 tables
Message-ID: <20200511110137.GC2986380@krava>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-3-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588852671-61996-3-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040149_234640_C8A0E9A7 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, irogers@google.com, ak@linux.intel.com,
 qiangqing.zhang@nxp.com, peterz@infradead.org, robin.murphy@arm.com,
 linuxarm@huawei.com, acme@kernel.org, linux-kernel@vger.kernel.org,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 07:57:41PM +0800, John Garry wrote:

SNIP

> +				      &sys_event_tables);
> +		}
> +
>  		print_events_table_prefix(eventsfp, tblname);
>  		return 0;
>  	}
> @@ -1180,7 +1253,6 @@ int main(int argc, char *argv[])
>  	} else if (rc < 0) {
>  		/* Make build fail */
>  		fclose(eventsfp);
> -		free_arch_std_events();
>  		ret = 1;
>  		goto out_free_mapfile;
>  	} else if (rc) {
> @@ -1206,27 +1278,31 @@ int main(int argc, char *argv[])
>  	if (close_table)
>  		print_events_table_suffix(eventsfp);
>  
> -	if (!mapfile) {
> -		pr_info("%s: No CPU->JSON mapping?\n", prog);
> -		goto empty_map;
> +	if (mapfile) {
> +		if (process_mapfile(eventsfp, mapfile)) {
> +			pr_err("%s: Error processing mapfile %s\n", prog,
> +			       mapfile);
> +			/* Make build fail */
> +			fclose(eventsfp);
> +			ret = 1;
> +		}
> +	} else {
> +		pr_err("%s: No CPU->JSON mapping?\n", prog);

shouldn't we jump to empty_map in here? there still needs to be a
mapfile, right?

jirka

>  	}
>  
> -	if (process_mapfile(eventsfp, mapfile)) {
> -		pr_info("%s: Error processing mapfile %s\n", prog, mapfile);
> -		/* Make build fail */
> +	if (process_system_event_tables(eventsfp)) {
>  		fclose(eventsfp);
> -		free_arch_std_events();
>  		ret = 1;
>  	}
>  
> -
>  	goto out_free_mapfile;
>  
>  empty_map:
>  	fclose(eventsfp);
>  	create_empty_mapping(output_file);
> -	free_arch_std_events();
>  out_free_mapfile:
> +	free_arch_std_events();
> +	free_sys_event_tables();
>  	free(mapfile);
>  	return ret;
>  }

SNIP


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
