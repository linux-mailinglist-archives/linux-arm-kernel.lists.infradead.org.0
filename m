Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C39CEB938
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJbzxgbpCXXbE7vqkcwuwqpA/N/3rt2lzCFfa6AfanU=; b=bW1Fz+mTmhjxAF
	w4nqJEIwBp9JEwLnzbD5az6+aoqLni4Uy4OGR0Z+AG8R+lNjo6BLwqKth4rlirSdscpKclHHzUO09
	lu6/mVtmsLsuLbth0Z35j7QVUHLU9lxfqREqc17Zf4kYMCFOb5N3lMYrl50IC5CpTPfP2NzRFiYch
	rmA2+AnydgbxuhJiaY9Fwu70odNV1nE3w9DPJK98OtUD4tUH8wp6oVbRoLgJs7/Dm9vog8aj+k0H7
	QxkpeaOIFk2y9fw5eGfHr18A3j0yTPVC3jN/rr1HLNHULSIJkbpgX+w0oefuCHHvkN46qc46kChE+
	w1zkIYhNU+k8lHO43rMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQIId-0002iI-En; Thu, 31 Oct 2019 21:48:11 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIIT-0002h7-7f
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:48:02 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 14:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,253,1569308400"; d="scan'208";a="204331816"
Received: from epobrien-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.103])
 by orsmga006.jf.intel.com with ESMTP; 31 Oct 2019 14:47:48 -0700
Date: Thu, 31 Oct 2019 23:47:45 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [Patch v3 6/7] doc: keys: Document usage of TEE based Trusted Keys
Message-ID: <20191031214745.GG10507@linux.intel.com>
References: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
 <1572530323-14802-7-git-send-email-sumit.garg@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572530323-14802-7-git-send-email-sumit.garg@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_144801_289517_6B5544FD 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 janne.karhunen@gmail.com, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 stuart.yoder@arm.com, casey@schaufler-ca.com, linux-integrity@vger.kernel.org,
 jens.wiklander@linaro.org, linux-arm-kernel@lists.infradead.org,
 serge@hallyn.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 07:28:42PM +0530, Sumit Garg wrote:
> Provide documentation for usage of TEE based Trusted Keys via existing
> user-space "keyctl" utility. Also, document various use-cases.
> 
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>

This is the most important commit in order for someone who don't deal
that much with ARM TEE to get right. Until this commit is right, I don't
unfortunately have much to say about other commits.

Instead of making disjoint islands, you should edit trusted-encrypted.rst
so that it describes commonalities and differences.

What the document currently describes is the usage model. It could be a
section of its own. In that you should describe first the common
parameters and separetely the backend specific parametrs.

From kernel internals (there could be a section with this name)  the
document describe the key generation e.g. is the hardware used and how
it is used, is there salting with krng and so forth.

/Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
