Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D591FC94E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EU4V9PbI1+8/a/q3xfzJu1cuFYM3Lcaio7BEPWExD9k=; b=QzPrSd7jrb0hOABtiMjiBLpUBC
	rXlvCR4Mx4fiWnFwefoDlwHzm0XmpZq5uWqo8kzREs0HH2nQYYjEM+bGZ4KAH5gld9Wun5VPXFUp1
	nM3XaDMPxFLa2KJ77rtxO2tNAGIpLDbghxbx5HjNG/ruNKMO8/K8Q/5Yta8Xt/ZaRJ63z5QTfooct
	6SOEk/d3ZjJuuVHsHML05vtp1gRLv4GDZwCaeQ9oNkBkgPdk8f1ym6l6KrzshfcdXmI5uBaxr7HH8
	6W+yhazuBkeL3Rqk0ceiyzsjHJ5+DH6Wc4hYtB9fS33UYGDNZmCPPZAibp7cC2VtApNnsqmUpt8gs
	xioM7Yqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTqs-00069S-Aw; Wed, 17 Jun 2020 08:55:22 +0000
Received: from mail29.static.mailgun.info ([104.130.122.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTqj-00068k-N3
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 08:55:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592384113; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Date: Message-ID: Cc: Subject: From: To: Sender;
 bh=BA2fok94E4/l1bj3x8ojJagXQ5ZDP+XkKM3L4ij1inM=;
 b=aFyKLHKQE2K/dS6g/w0sfKlN6fb7+PDOrd7t9y+msFRO5COzjaJdllKCGLEqTmi58WWtqX/R
 7wy3qDUreGaOJi5WK88LzkhP4PL7Bjw3yOGFWFESJXpDmCE6wn/1cAEIvjwPXKgG+EeW1NbN
 DkNbjD5o++kgTneaUsTcIRnxKZ0=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 5ee9da706f2ee827dae38fe7 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 17 Jun 2020 08:55:12
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 37C42C433C9; Wed, 17 Jun 2020 08:55:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.0.101] (unknown [124.123.165.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: neeraju)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C6345C433C9;
 Wed, 17 Jun 2020 08:55:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C6345C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=neeraju@codeaurora.org
To: marc.zyngier@arm.com, will@kernel.org
From: Neeraj Upadhyay <neeraju@codeaurora.org>
Subject: Query regarding ERRATUM_1418040
Message-ID: <1ce7dad5-a981-5968-cc34-7648faea8636@codeaurora.org>
Date: Wed, 17 Jun 2020 14:25:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_015513_844969_5638B9EB 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.29 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I have query regarding the errata 1418040 [1]. Here, on kernel exit to 
EL0 64 bit mode, will it always enable ARCH_TIMER_USR_VCT_ACCESS_EN; and 
override any other erratas, which might require EL0 direct vct access to 
be disabled for 64 bit also? Also, this errata applies mitigation for 
all CPUs (on return to 32 bit EL0), even if, not all cpus are impacted 
by the errata?




Thanks
Neeraj


[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/kernel/entry.S?h=v5.8-rc1#n334

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member of the Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
