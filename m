Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8240A1B6A97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 03:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mlUSxIAEiECWmpfhzLI+iahfCKYJ6Cp2d0hLhKGKisY=; b=Y+gw+QRx9oMpAVzdoYJ2hOKSM
	nSfsRZxxolnky8Q3cwFwTyjFDDe3vIzzDZ5cr65Wcb+7BV19eyzPBN9P7CgNIhD7CiWT7H4P5iZN8
	7EN1zXjV3Abk9f7oTQ+vd0NyBpc3t/V+X3yMn0CJ/epa/3arf2poRfzPhpppn/MdlPqrXVaxz00RH
	A2/TaNIsurUj25rDitntFolMx2dF+832x8er0PYBNqumlmzG7FRML5dVsgUiT1o8ipfTMdvr6WsEC
	f8BqLEJ9/eDe8oCttU/3aAq4coQZjNKPaNTk1KwO9CnEWOq4ApnwJoNJ686ZNU1zztKnP/1dHg6AD
	PDXsfFWMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRml8-0004XX-RZ; Fri, 24 Apr 2020 01:04:02 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRmky-00048t-RO
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 01:03:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587690233; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=G6mhG4mz2toGOYigr/TcPYDN0XCRA/uAhCT3m96wlxE=;
 b=GTCOF7xx5WejNRULDqD8PXtrWGv62XLdWKjKHpDVuEJvrkIQPw6eMCmjArmTRUCO+UMVUdDY
 7lo6pN7l+OuutR4GbV4Ty7LtCDrwtvQsKBXidhWN6gqggFZz++AwKDf6SH1bxg8Gv1RmPkV6
 MOc1okVLBd11EOKJyGpTX+m9Mnk=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea23af5.7f9296407570-smtp-out-n05;
 Fri, 24 Apr 2020 01:03:49 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id ABD3BC433F2; Fri, 24 Apr 2020 01:03:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.142.6] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: clew)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C04BEC433CB;
 Fri, 24 Apr 2020 01:03:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C04BEC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=clew@codeaurora.org
Subject: Re: [PATCH 2/4] soc: qcom: glink_ssr: Internalize ssr_notifiers
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Ohad Ben-Cohen <ohad@wizery.com>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
 <20200423003736.2027371-3-bjorn.andersson@linaro.org>
From: Chris Lew <clew@codeaurora.org>
Message-ID: <520f62ea-144d-92dd-aaa5-562d45deeade@codeaurora.org>
Date: Thu, 23 Apr 2020 18:03:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200423003736.2027371-3-bjorn.andersson@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_180353_876352_DE419CE3 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi <sibis@codeaurora.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/22/2020 5:37 PM, Bjorn Andersson wrote:
> Rather than carrying a special purpose blocking notifier for glink_ssr
> in remoteproc's qcom_common.c, move it into glink_ssr so allow wider
> reuse of the common one.
> 
> The rpmsg glink header file is used in preparation for the next patch.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Acked-by: Chris Lew <clew@codeaurora.org>

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, a 
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
