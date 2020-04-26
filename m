Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1151B93F6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 22:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyZI9wKOAiFK347H+Gu2/7GENphRlEi9+OwxDM/eAdU=; b=AKtwZecdDtFmuU
	l83axKmszg2QAOFuSePvfxmMLhTSnv0xQfuwkvyVWMSXSlafp+Z7yn+PMMAztG6LhvHn0QWXI9anF
	bChEP6h8MSrxrOEgspcT5driIBF+YZfJZHo+QJI8JapMUEk1qrAMdMkLehVi3eJentEbTIJTT1XHP
	AVLPDmWQFm8IeaCgrU3S6dd6YzhXonl0ZwG8yMcAGsK+/TOrCi2AV4o42vLip4x5qEA5gF0O8vLoU
	aAZwXsTKO7tYw5WxL/V9uXkN6QSSu/AlmZ33j5hJiDSN/ZYNdSQQnfQJiRLCz5AoifL0itBbHwVIO
	2LZkKfWwm6XoQba7cRyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSo21-0006bW-2C; Sun, 26 Apr 2020 20:37:41 +0000
Received: from smtprelay0028.hostedemail.com ([216.40.44.28]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSo1t-0006RN-0N
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 20:37:34 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 5FA14182CED34;
 Sun, 26 Apr 2020 20:37:27 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2919:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:4250:4321:5007:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12679:12740:12760:12895:13069:13311:13357:13439:14096:14097:14659:14721:21080:21451:21627:21990:22047:30012:30054:30080:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: bite55_40f3731081a4e
X-Filterd-Recvd-Size: 2161
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Sun, 26 Apr 2020 20:37:26 +0000 (UTC)
Message-ID: <0480c38b2e164ab0c25aae2db628c221ea0da111.camel@perches.com>
Subject: Re: [PATCH 5/5] coresight: Avoid casting void pointers
From: Joe Perches <joe@perches.com>
To: Stephen Boyd <swboyd@chromium.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>
Date: Sun, 26 Apr 2020 13:37:25 -0700
In-Reply-To: <20200426185805.14923-6-swboyd@chromium.org>
References: <20200426185805.14923-1-swboyd@chromium.org>
 <20200426185805.14923-6-swboyd@chromium.org>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_133733_111884_4DB91288 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.28 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.28 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2020-04-26 at 11:58 -0700, Stephen Boyd wrote:
> We don't need to cast void pointers, such as the amba_id data. Assign to
> a local variable to make the code prettier and also return NULL instead
> of 0 to make sparse happy.
[]
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
[]
> @@ -206,9 +206,12 @@ cti_remove_assoc_from_csdev(struct coresight_device *csdev) {}
>  /* extract the data value from a UCI structure given amba_id pointer. */
>  static inline void *coresight_get_uci_data(const struct amba_id *id)
>  {
> -	if (id->data)
> -		return ((struct amba_cs_uci_id *)(id->data))->data;
> -	return 0;
> +	struct amba_cs_uci_id *uci_id = id->data;
> +
> +	if (uci_id)
> +		return id->data;

Missing one more level of indirection here yes?

		return uci_id->data;

> +
> +	return NULL;
>  }

And this code would generally be written to return the expected
value at the bottom of the function and any unusual return
early like:

static inline void *coresight_get_uci_data(const struct amba_id *id)
{
	struct amba_cs_uci_id *uci_id = id->data;

	if (!uci_id)
		return NULL;

	return uci_id->data;
}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
