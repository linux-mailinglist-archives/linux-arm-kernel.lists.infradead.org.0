Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B0A1796E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 18:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1QVsc25s5lWCbkpoRK0R0eI3Hcrn48KrUqJFmCOg7Y=; b=FH0LOt7vFloBEo
	ZO6AGZQYXCUvnhjmCFpn53tWqyEXyjAC1f0cuFnA/rFJyr9F/AOQUwd2M9THzugeTmUVrPl0sQBBN
	OLcH+TQIJX2GoVLSSR3WHTBSxzaEcRGQVZjJ2ke47h0GtM75xti12QaGfV3xO4cJIeIazDpffJtpT
	qS7arBhXmuaSZxzqFSS7K461frGpRpkMrgBclkYSNiYYNiZzo0GgkG5DrEdtaj7QIn6wnYFbhzna6
	pbDfA65Mnb4ak8UgP62Eg93AMOjiqxFLOGa4JFqwn+BwAGdLzTErGCbsfk2YL8uDCb+X/lebtGcOp
	RiUazgIHRmcfa4Rv48cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Xzi-0004Kv-Nv; Wed, 04 Mar 2020 17:39:42 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Xzc-0004CY-IM
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 17:39:37 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 09:37:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="229399961"
Received: from ayeshakh-mobl.amr.corp.intel.com ([10.252.205.163])
 by orsmga007.jf.intel.com with ESMTP; 04 Mar 2020 09:37:32 -0800
Message-ID: <b524cb9c2c61bf90087ad7174a84b754143d376a.camel@linux.intel.com>
Subject: Re: [RFC PATCH v2 0/2] Introduce multi PM domains helpers
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: Daniel Baluta <daniel.baluta@oss.nxp.com>, rjw@rjwysocki.net, 
 len.brown@intel.com
Date: Wed, 04 Mar 2020 09:37:32 -0800
In-Reply-To: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
References: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_093936_657460_3166475A 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: aisheng.dong@nxp.com, ulf.hansson@linaro.org, festevam@gmail.com,
 alsa-devel@alsa-project.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de, khilman@kernel.org,
 pierre-louis.bossart@linux.intel.com, linux-kernel@vger.kernel.org,
 paul.olaru@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, daniel.baluta@nxp.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-03-04 at 14:19 +0200, Daniel Baluta wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> i.MX8QXP/i.MX8QM has IPs that need multiple power domains to be up
> in order to work. In order to help drivers, we introduce multi PM
> domains helpers that are able to activate/deactivate multi PM
> domains.
> 
> First patch introduces the helpers and second patch demonstrates how
> a driver can use them instead of hardcoding the PM domains handling.
> 
> Changes since v1: (addressed Ranjani's comments)
> 	- enhanced description for dev_multi_pm_attach return value
> 	- renamed exit_unroll_pm label to exit_detach_pm
> 
> Daniel Baluta (2):
>   PM / domains: Introduce multi PM domains helpers
>   ASoC: SOF: Use multi PM domains helpers
Both patches LGTM. Thanks Daniel.

Reviewed-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
