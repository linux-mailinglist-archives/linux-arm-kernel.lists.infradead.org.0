Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AD7157418
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:08:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTNgO7Pf1GN+Z0bsV8PPU1Wj142KHZ+2NcPnv9J3YIs=; b=BJyH7vSY9b6YjH
	Q+SamZTSBpAqcoUpRz9stMsw6PFoGwajmqWGd2fKCYgPzHhHds3amYPeiuZH26PT+gh2XNDNg/KEh
	wA/a/63hK/a/MzfXOq1axlk0YnBmDw5ZUtUNVez01OBWNw+xzJqr6j4VDad5gbWfLavVw2DQhwdBU
	ir5ivfPN3LnNazWMtjSVzq7wCmBj8Jz1lB+Knmb6y2UpQ4+1f+1sonIA4fm7YZwJIKqKaB7rOXleb
	XLtWcQiataEwrAdREY0vX+SLCK4DIp4wIQ6gaG93EAkAHHhWfnfkZvq1PemkafP3Etiyl0fvpXEZ1
	h7ZL7mT8RUQKvDW2D+EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17rj-0000B2-S0; Mon, 10 Feb 2020 12:08:39 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17rI-0008M5-65
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581336490;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eSK8ISZif/OQRXa4102Rfe/YBGClc/e/gjEdCPPB1jI=;
 b=BZFwQaJ30FICU3dZ6GpLDjoGay8jThDoGiMG/mXhaX5R30pbz4eVEDohBo4FoptY6OH5/w
 REQGT0WE4TqnnvBRgZXAUiwuewnUhY+yWU3X8Y7gTO2Q47b/g+VMewFBfzEsTmjcQmsMy8
 nJjWVpoEudcQ6Umk0g1dVkEGcfud9x8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-VV3IeyKkOKWqK7d0Wa9iyA-1; Mon, 10 Feb 2020 07:08:06 -0500
X-MC-Unique: VV3IeyKkOKWqK7d0Wa9iyA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DAC01084424;
 Mon, 10 Feb 2020 12:08:04 +0000 (UTC)
Received: from krava (unknown [10.43.17.9])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B1EE319C70;
 Mon, 10 Feb 2020 12:08:01 +0000 (UTC)
Date: Mon, 10 Feb 2020 13:07:59 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 5/7] perf pmu: Support matching by sysid
Message-ID: <20200210120759.GG1907700@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-6-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579876505-113251-6-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_040812_321202_277F1DDA 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

On Fri, Jan 24, 2020 at 10:35:03PM +0800, John Garry wrote:

SNIP

> +		fclose(file);
> +		pr_debug("gets failed for file %s\n", path);
> +		free(buf);
> +		return NULL;
> +	}
> +	fclose(file);
> +
> +	/* Remove any whitespace, this could be from ACPI HID */
> +	s = strlen(buf);
> +	for (i = 0; i < s; i++) {
> +		if (buf[i] == ' ') {
> +			buf[i] = 0;
> +			break;
> +		};
> +	}
> +
> +	return buf;
> +}
> +
> +static char *perf_pmu__getsysid(void)
> +{
> +	char *sysid;
> +	static bool printed;
> +
> +	sysid = getenv("PERF_SYSID");
> +	if (sysid)
> +		sysid = strdup(sysid);
> +
> +	if (!sysid)
> +		sysid = get_sysid_str();
> +	if (!sysid)
> +		return NULL;
> +
> +	if (!printed) {
> +		pr_debug("Using SYSID %s\n", sysid);
> +		printed = true;
> +	}
> +	return sysid;
> +}

this part is getting complicated and AFAIK we have no tests for it

if you could think of any tests that'd be great.. perhaps we could
load 'our' json test files and check appropriate events/aliasses
via in pmu object.. or via parse_events interface.. those test aliases
would have to be part of perf, but we have tests compiled in anyway

thanks,
jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
