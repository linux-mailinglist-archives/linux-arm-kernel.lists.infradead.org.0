Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA3F16AA6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 16:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlZ+Zz4crwzR4lk/rbDxzWP02BWwZncrB+axDQS9LVw=; b=C6cHUdyNTDH1KZ
	TD7XGZfS2zE46lC4VLWtz4ToVvyjBOMP5155mIt/CgOm2lp0LmhSKWyHwYQiLngtiW1NFTp8rW3r5
	Vj5Rf+GhDqQhdf/nAGEFYGq6UK3MnjBU8MHOyZlhXUkJQ+pz466IG0Fto1JnrMTcNUsMX0/7KMjLN
	xGmATg5/xixzXyZDP4D2MONhZhTVDjHe/XRaQa2F067Gz9ZMh1U1xru39j+uno+mUFnApnc6qvLnM
	I3Csl1oUIWXBkBzEsnuUReXpsrEWng0qmdpIgPI3Kl7KZNdHf2a4i65KogUQFHXovnoqzaXo7HUvk
	Orx7OA8uspvnwjrx2Ngw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6FwP-0008Pp-EX; Mon, 24 Feb 2020 15:46:41 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Fw3-0008CB-Fw
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 15:46:21 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id B47C12062B;
 Mon, 24 Feb 2020 16:46:06 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 94BF1202E7;
 Mon, 24 Feb 2020 16:46:06 +0100 (CET)
Subject: Re: [PATCH v9 00/15] CoreSight CTI Driver
To: Mike Leach <mike.leach@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 DT <devicetree@vger.kernel.org>, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
References: <20200210213924.20037-1-mike.leach@linaro.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <0acb5970-7d87-6180-01d2-154f568a3235@free.fr>
Date: Mon, 24 Feb 2020 16:46:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210213924.20037-1-mike.leach@linaro.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Feb 24 16:46:06 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_074619_686610_964A2045 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/02/2020 22:39, Mike Leach wrote:

> Mike Leach (15):
>   coresight: cti: Initial CoreSight CTI Driver
>   coresight: cti: Add sysfs coresight mgmt reg access.
>   coresight: cti: Add sysfs access to program function regs
>   coresight: cti: Add sysfs trigger / channel programming API
>   dt-bindings: arm: Adds CoreSight CTI hardware definitions.
>   coresight: cti: Add device tree support for v8 arch CTI
>   coresight: cti: Add device tree support for custom CTI.
>   coresight: cti: Enable CTI associated with devices.
>   coresight: cti: Add connection information to sysfs
>   dt-bindings: qcom: Add CTI options for qcom msm8916
>   dt-bindings: arm: Juno platform - add CTI entries to device tree.
>   dt-bindings: hisilicon: Add CTI bindings for hi-6220
>   docs: coresight: Update documentation for CoreSight to cover CTI.
>   docs: sysfs: coresight: Add sysfs ABI documentation for CTI
>   Update MAINTAINERS to add reviewer for CoreSight.

Some of the patch titles end with a full stop, others don't.
(Dunno if it's worth the hassle, in case you respin)

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
