Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46261CD70B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1TjqoSgaMWLYo8EKchhLa7NOXagGZ859nnf1pHCItM=; b=hvClmwYjcUs0td
	f/39fb6UUcUG1MxPdX7gycqK68cWghm851mVUB4rwndaiynyQw/SZRbpWi0O2eMjv5PaU/cy6aSzu
	HMpQ+B0h1ZnHQInIro6UprIksm4AUVbJ7rUgPcirte9OwbjVlwkCZKgKL1pU6gxsCf9SGGeSauUKv
	MLvg4lJEMqb9PKPVUJzQFzoMUVVUa2QAZKAJ6RgQnSfB3M6493w1EmZeezO6CaFtAXcbc1ijJvTRJ
	McMvRHEXsY20jiSUAZ9MBUUf4hSMKW+RCaGdC0C3rlXvhVcuWGQI6v4MDd6GI5dqgUjgXOKWeDsUf
	OiX/QIRYKc5wRvZDV6rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6Cl-0006z8-I3; Mon, 11 May 2020 11:02:39 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6C6-0006dX-Qi
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589194917;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/wxVoTSctGeT+2x6Wq8s20j7ese2p9h/0eegbNP4kOM=;
 b=c0gkqkbhiVwy4n9rjjWoblLLlii1OK7GIHdoN9mBCpZNWpWadYF8sCSdAUU6001n815Zli
 pnlkxugtji2gAKxTBFgXxcOZ09S5aFZD1fw7/v9CIC2/wZjrTA9HQquLw9JebL4uduOODN
 Fcr0jT3nbQl+7ZbFMxNKe//S3wtUsZM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-Db2IzRKJPYKnYViZoazu_A-1; Mon, 11 May 2020 07:01:53 -0400
X-MC-Unique: Db2IzRKJPYKnYViZoazu_A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBDB61899520;
 Mon, 11 May 2020 11:01:50 +0000 (UTC)
Received: from krava (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with SMTP id 3F2486C77D;
 Mon, 11 May 2020 11:01:47 +0000 (UTC)
Date: Mon, 11 May 2020 13:01:46 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC v3 02/12] perf jevents: Add support for system events
 tables
Message-ID: <20200511110146.GD2986380@krava>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-3-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588852671-61996-3-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040158_966910_66EF7493 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

>  
> +static int process_system_event_tables(FILE *outfp)
> +{
> +	struct sys_event_table *sys_event_table;
> +
> +	fprintf(outfp, "struct pmu_sys_events pmu_sys_event_tables[] = {");
> +
> +	list_for_each_entry(sys_event_table, &sys_event_tables, list) {
> +		fprintf(outfp, "\n\t{\n\t\t.table = %s,\n\t},",
> +			sys_event_table->name);
> +	}
> +	fprintf(outfp, "\n\t{\n\t\t.table = 0\n\t},");

this will add extra tabs:

        {
                .table = 0
        },

while the rest of the file starts items without any indent

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
