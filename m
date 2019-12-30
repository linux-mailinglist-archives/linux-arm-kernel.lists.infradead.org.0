Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E766112CDF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:07:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P6s3Pu/evTOScwWmmveBPDsBW5SBqZWZ9N+Sjrj8GS8=; b=eH1Kkdy7SSTAKAw80cnAVtxMXu
	qAq1YxYK7Btqu5GFHvOa/j8rUTtfMVNOS+Ln2lx0fCM2+vIJ5qr2DEWNB0S2ba+7d0/7mWiVsZBO9
	buq3RKzCbZEGwvp68E5Dotm1oUGdH/mrPJoFz4iFY1yD3hHOuXhzCeiQMxqKaaPXIPwFv7y6HZZvA
	X6l+A9LFVFkDcV5hRtkZdVBU2moOgYnkIEnJxkjjwrY5UyZtDY/PfjWs8+J0gOqmQw9aBwVrKIsgi
	XdJvDer51HgfB9dsj7jmIdgKXAq2KziMn/Yas7Q/likFNC24r4Sx6g45Hcyl2x7IQ0mZQNGCY5tlr
	VcHd8VBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr1U-00040E-To; Mon, 30 Dec 2019 09:07:36 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr1F-0003hm-1u
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:07:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577696841; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: To:
 Subject: Sender; bh=Cxlyn1MkuXzt/FXwtDlSabtnDzP8nX874OYdBzTekBY=;
 b=sPzWENYhh/aKv5auVWI6oqWQ6b8upBuEXuG02bB4Cl50iprQ/CqQxnjL8qTfKoYvLJ+tIKbK
 gpWlynKgyV154X6L1ClPV5Wzl+8YTY/plMAevob2IE7q40tiE3UApqrQj7RMYJAgufTkc7e9
 XTfyTFtI8iLHznSEaDvIPxpRWG8=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e09be47.7fca19e5efb8-smtp-out-n02;
 Mon, 30 Dec 2019 09:07:19 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AB526C43383; Mon, 30 Dec 2019 09:07:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8019AC433CB;
 Mon, 30 Dec 2019 09:07:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8019AC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH V2 0/7] Add minimal boot support for IPQ6018
To: Stephen Boyd <sboyd@kernel.org>, agross@kernel.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org,
 sivaprak@codeaurora.org
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
 <20191227013353.4CB292080D@mail.kernel.org>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <ac5700ed-5b0e-5e75-a44a-cab7c543875b@codeaurora.org>
Date: Mon, 30 Dec 2019 14:37:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191227013353.4CB292080D@mail.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_010721_854543_C164CD55 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On 12/27/2019 7:03 AM, Stephen Boyd wrote:
> Quoting Sricharan R (2019-12-19 02:41:42)
>> The IPQ6018 is Qualcomm\u2019s 802.11ax SoC for Routers,
>> Gateways and Access Points.
>>
>> This series adds minimal board boot support for ipq6018-cp01 board.
>>
>> [v2]
>>  * Splitted dt bindings  and driver into different patches. Added missing bindings
>>    and some style changes.
>>  * Added ipq6018 schema
>>  * Addressed review comments for gcc clock bindings.
>>  * Removed all clk critical flags, removed 1/1 factor clocks, moved to new
>>    way of specifying clk parents, and addressed other review comments.
>>  * Sorted nodes based on address, name, label. Removed unused clock nodes,
>>    Addressed other review comments.
> 
> Can you just send the clk and clk binding to me in a different series?
> I don't want to review all the other patches in the same thread.
> 

  Sure, will send separately.

Regards,
 Sricharan

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
