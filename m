Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3297018EA16
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 17:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Subject:Reply-To:To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/KM2zljgPao1PEirKiKnu8d6YrTpyhGJfBOke3kUr8=; b=nq+MxsITPIsKux
	nUBwlOQayshycLHk7ErkoyeQxZRknpUXBdcUaU7BuMTNT+ugS2fezEBSwa4q26iFqTYhMuZ77Njoj
	cxnry1MAMK7MTZNYq8QkbJT8hhkIfNWH8RQ54DlNhfwzwQbvVuHCQARYNpByt1VBQNCSr3/J//6zo
	6FLXNrrePVVtx3PmZS33WFqvpH7GGZuUi8s14w3Y8Ns7GpmpkbbfXcopMd5HqQAMWaG1ao4jLYt/v
	8gYwo0bn3tnZr69wAAN+8XzVVUrY/4kr4TGT2v6dM2vfWkGHhcjGxuh+8JAvlV2Vu+VA3/yzImakE
	NPALzkU45ZOSmgOR9Weg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG3Fs-0003If-SJ; Sun, 22 Mar 2020 16:15:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG3Fd-0002xz-Es; Sun, 22 Mar 2020 16:15:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id m17so4648240wrw.11;
 Sun, 22 Mar 2020 09:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:cc:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=hizVSe59radb+6FhRqDPjO/ntM+mFAolvmlI5rEmhI0=;
 b=QB2WW586/dn1R2EKvP9IStphvlHgFLJvuuhgtH0CBS6HHLKq2N2mHhFKG3E5fwHN0W
 uw/NagBrkjWo1TreySFiPUrykpJZz6KiYSR7pAQxhSvjbNgoH7OkIk4PF/fiHRPzUHkK
 WyGPqHZxvyoCgWJUZLsmfFCS4tIK2SoDeAnP5f9Vo4VRy1EpAC0CZKQRF21O8W+MW811
 XTLNinDhFFgd2ZcVChKbC2EwsTadMosoMPgrO88IWBR1Zy+a6L2JLKpQlMzTe03BY/M0
 ttoXlV7KFxd7HR9gPQWMfplkEETMUnXOT2i0PZuGdHYkvMn9CbG3UPdIIfGegQvv9uwA
 H4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hizVSe59radb+6FhRqDPjO/ntM+mFAolvmlI5rEmhI0=;
 b=c/cazoPRawbgladqGxIQODuOH0JdNnI02R83QMcGZObJMaMCeMxWZTb5+bMs6TSuSQ
 jDyxvR+tZsliOlv9XnfR09J+1isaPcz86ZDkPojowOgqbeZkB3xZW8LFgoNC5eGkDTMm
 Bd2IT+dmk9zPIKdOn3unnB+7mFWuRwrg+hyEnRIjVBbddeuKeFQjv+4ILhiM/V/OI0d4
 WW/is+KAXPtR6oa14LzcZG4Vh76QyLWbG1FaCHvIbstZdc9wK/AZS27ahJXJ6CU26YyK
 rEJA11d4VLoFYK0+RaYzrvIyVxBtcVmxk1by08rLq3WiHQOu1NMkMH+v30wZos22bfzq
 lUBg==
X-Gm-Message-State: ANhLgQ1gEJ4C7PP7JhmJEdGgOEnsMq62o5FTR9ie2+/DwLjBiqXe0kT2
 zy+b9vKOPW+PYI+SRE4P74w=
X-Google-Smtp-Source: ADFU+vuL8u1yT0LW3mBPs899oOcxhjI7ql5VCngzIx8aQj1gkmk9nYlVF3dvavMFzzvuU9NzW/a43Q==
X-Received: by 2002:a5d:5386:: with SMTP id d6mr17017585wrv.92.1584893696625; 
 Sun, 22 Mar 2020 09:14:56 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q4sm19846680wmj.1.2020.03.22.09.14.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Mar 2020 09:14:56 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: fix defines in pd_vio node for
 rk3399
References: <20200322140046.5824-1-jbx6244@gmail.com>
 <48a91cc1-7751-4df0-a2cd-940eb829fa16@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <1a6f0ba0-c49c-c547-1252-eed404655f43@gmail.com>
Date: Sun, 22 Mar 2020 17:14:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <48a91cc1-7751-4df0-a2cd-940eb829fa16@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_091501_510469_EF90ED8F 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.7 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Why is 'pd_tcpc0, pd_tcpc1' grouped under 'pd_vio' instead of VD_LOGIC?

Thanks

On 3/22/20 4:45 PM, Johan Jonker wrote:
> Hi,
> 
> The RK3399 TRM uses both
> 
> 'pd_tcpc0, pd_tcpc1'
> 
> as
> 
> 'pd_tcpd0, pd_tcpd1'.
> 
> What should we use here?
> 
> Thanks.
> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index 8aac201f0..3dc8fe620 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -1087,12 +1087,12 @@
>>  					pm_qos = <&qos_isp1_m0>,
>>  						 <&qos_isp1_m1>;
>>  				};
>> -				pd_tcpc0@RK3399_PD_TCPC0 {
>> +				pd_tcpc0@RK3399_PD_TCPD0 {
>>  					reg = <RK3399_PD_TCPD0>;
>>  					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
>>  						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
>>  				};
>> -				pd_tcpc1@RK3399_PD_TCPC1 {
>> +				pd_tcpc1@RK3399_PD_TCPD1 {
>>  					reg = <RK3399_PD_TCPD1>;
>>  					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
>>  						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
>> -- 
>> 2.11.0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
