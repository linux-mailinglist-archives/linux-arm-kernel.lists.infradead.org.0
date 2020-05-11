Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17861CD706
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wr/HWiTbipvQO62lKx9X17l6WhVoPz52De8NQqQ2mdE=; b=m5q+n7H5TwunSl
	Dh3831TbSMeVy+G3jRSKZgGCz3hAnIzLJIM9KEDLQCgUl4sg48h4T0nlU/F+gUrIbxeXOJKPbZ2Rn
	nMkInznPMAxFbAvoAAqDaUmAHCWayq5vMpMwJYo/5+JYzHn984CrbFRXCWC+2pc3vvQVNIpRcdOri
	kdP+QGu14TY56135c+oTxFuxfoFeZCb5TAba3Qhxls0iASbHFTRGtizS3CUkrfXyg+Ku8SH4Y/e/U
	XEnbJK5U0hTF6H+3zwOLrvWfMLOG2wsnGaaTmrpTzKpVajB/yARaa8dHiayWF4L9dVma1J88tT2O+
	DG4EOEYrExT2CHd/2ZJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6CE-0006Ui-Lo; Mon, 11 May 2020 11:02:06 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Bo-0006Ns-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589194899;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O4XZdKi10BPE8hXljNPQKlDFXXtBAToj+e/VOZfbERA=;
 b=SBJfdwv0JBMPBTxL2NwB/06BSO0N9+B/beRsrsqYchElPorzvJrBVmGy55dH203shoUvEJ
 d8CYhDow/2IBl5c/l5sGW252wahQQdAGwgqPHD/ZYi0d1m0td6wpuXpWSdgJtwOeyX/fOa
 S0krBDUfdh6XNmii/2/dUskR5BJEZnM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-93o9sHwmN4CiUFwVvLFFxg-1; Mon, 11 May 2020 07:01:35 -0400
X-MC-Unique: 93o9sHwmN4CiUFwVvLFFxg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA1058014C0;
 Mon, 11 May 2020 11:01:32 +0000 (UTC)
Received: from krava (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with SMTP id ADF939CB9;
 Mon, 11 May 2020 11:01:28 +0000 (UTC)
Date: Mon, 11 May 2020 13:01:27 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC v3 02/12] perf jevents: Add support for system events
 tables
Message-ID: <20200511110127.GB2986380@krava>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-3-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588852671-61996-3-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040140_677700_4A704155 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
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
> +static bool is_sys_dir(char *fname)
> +{
> +	char *pos;
> +
> +	while (true) {
> +		pos = strchr(fname, '/');

would strrchr be faster? also I thought there's something like
basename function that could be usable in here?

jirka

> +
> +		if (!pos) {
> +			if (!strcmp(fname, "sys"))
> +				return true;
> +			return false;
> +		}
> +
> +		fname = pos + 1;
> +	}
> +
> +	return false;
> +}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
