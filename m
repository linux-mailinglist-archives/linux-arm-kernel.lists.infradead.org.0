Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0F91D23B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8HubthmdidvC5fosWEChql1IQAOJo+ePz+ypp6b8eE=; b=HvSOpca37Vadlv
	XENC1KCJB+BupAyyKkXzWuBU93ehmeo+yiOBmaoL3YsdxpxhNOF7jqReWI/lwZ/CT4DRHUP0hQ6rl
	bjM6/idijo9LHRdS+9kvzd2Tt0hMUfINfgK7rdbpljPoMRux5QkdnVyHs15AnXvH3sz0Nrq6LSnGQ
	xPMByHD24Bb5aoRQ5ey/gQB/+VL7kW8tAj+1sBCwzMLCRPlG6vkIEMhMCtVj/84yBtuCjJDIy9lTO
	5DIz4LlS36Zo90BLf0yugPRfTvjYGqnWr9cyAItFPf8PPo+sqIKpPVhxd8gMPRjnirO9/zMMReGpR
	DjzVwvbTaegjm86pTk2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1r1-0008Lx-Ay; Thu, 14 May 2020 00:36:03 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1qp-0008LX-Qc
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:35:52 +0000
IronPort-SDR: oHxskS4boY8iqXKFMSIblG4BHLdvbV/l7tcQaIxjXaMUBdgOE8EeasvOmQV3nw8e8A/9cj2Q8a
 hQCkXQshUZIg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 17:35:51 -0700
IronPort-SDR: qWZ3dOBL4TSN8JHurlrHYwreU6MqZgJdMSS3aPfhUJPRgmGOaTvSzv8XYi3T0+pATI4ThhDdvr
 oqKRbHNutSlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,389,1583222400"; d="scan'208";a="280681247"
Received: from gliber-mobl1.ger.corp.intel.com ([10.249.38.41])
 by orsmga002.jf.intel.com with ESMTP; 13 May 2020 17:35:44 -0700
Message-ID: <2d7d0293e51c38fe6b557eba193cf30bb8d53e80.camel@linux.intel.com>
Subject: Re: [PATCH v4 4/4] MAINTAINERS: Add entry for TEE based Trusted Keys
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>, zohar@linux.ibm.com, jejb@linux.ibm.com
Date: Thu, 14 May 2020 03:35:43 +0300
In-Reply-To: <1588758017-30426-5-git-send-email-sumit.garg@linaro.org>
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-5-git-send-email-sumit.garg@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_173551_901046_EE29DB14 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 op-tee@lists.trustedfirmware.org, corbet@lwn.net, janne.karhunen@gmail.com,
 linux-doc@vger.kernel.org, jmorris@namei.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, Markus.Wamser@mixed-mode.de, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-05-06 at 15:10 +0530, Sumit Garg wrote:
> Add MAINTAINERS entry for TEE based Trusted Keys framework.
> 
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>

Acked-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>

/Jarkko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
