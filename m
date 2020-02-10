Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D7F158026
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9e7086eQQPBGKEw62MS8WRuV+LXYm2nPAKK0/8/fSSA=; b=iUF+xOptzKWxJudGUNMwzGIyk
	4W5Tk0/QFqpkj7SpimiXApIZAT5/0jX5Q8fEGjdca4S3HtVmyo/pb+CjhoCHSR8KQqidwdD4WOhN8
	awunxGK4QadlPuevJVkIFIWy/LHRwGOuS5FvBXID3OJlAcaWW/MIYt4SveAKlincBdePCD3z/oLMu
	vlQPJjqXN6HM6jddrl5eFdLXfWCnZrfrUcabLwj8259aIQOrUS5qbqAi4o11ZSvZ7tLFwtNXDW9dw
	j0w1b6o8aJVOgtG7ZiPcjTWJDlj8wyupSpNe/goeLChjO7iA9tNTGqWA3HOVdfLbsWIxw42HXOrtL
	YdF+pIG8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CGM-0002iL-Om; Mon, 10 Feb 2020 16:50:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CGA-000254-88
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:50:11 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01AGmDCa031519; Mon, 10 Feb 2020 17:50:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=eBkGpkRko2BRohv8+fSQZ08+pRwJLd2qKeoxI/IMxyU=;
 b=AMe9XJZpA3R33TTPo2JG4NLTwXJVSH2UgLjhsqnhX84t82wAQfHAK65EaMX6YGn7O/1V
 VdExp851mQM/rlJZ8QvH+aDrMUOFbXZ3Di6+e3976aKQ2OMVmJWoOhB7LSt1STV5i6Jw
 g4AXzqyrD43NeQG7phbtXEDcnyt1GuPJ6JfDXk7z9/kIqYfzXXE0f/MZ+0PZGIiEEr8k
 AtcxXR/ufW4xArJ4cm9Fzg9idffrRTnlitZjWj26tavSnQjlvjRIR+sP+OE4PH0Wmzhg
 vdldDmys4B12PKOpwYcEyyj9DWVRSSOFsm0r13CWU64zhmpRMHMZv157RwWoBMsnZdI/ /w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ud9c7mx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 17:50:05 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A1AA610002A;
 Mon, 10 Feb 2020 17:50:00 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 969FD2C0984;
 Mon, 10 Feb 2020 17:50:00 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Feb
 2020 17:49:59 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Correct stmfx node name on
 stm32mp157c-ev1 board
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <mcoquelin.stm32@gmail.com>, 
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
References: <20200210134331.14039-1-benjamin.gaignard@st.com>
 <20200210134331.14039-2-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <fb300410-7ee8-d199-9ffa-a91da0f80c8d@st.com>
Date: Mon, 10 Feb 2020 17:49:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210134331.14039-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_06:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_085010_577868_E4C5F85A 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin

On 2/10/20 2:43 PM, Benjamin Gaignard wrote:
> Change stmfx node name to fit with yaml requirements.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157c-ev1.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
> index 228e35e16884..ffd4e0caeedc 100644
> --- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
> +++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
> @@ -210,7 +210,7 @@
>   		interrupt-parent = <&gpioi>;
>   		vdd-supply = <&v3v3>;
>   
> -		stmfx_pinctrl: stmfx-pin-controller {
> +		stmfx_pinctrl: pinctrl {
>   			compatible = "st,stmfx-0300-pinctrl";
>   			gpio-controller;
>   			#gpio-cells = <2>;
> 

Applied on stm32-next.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
