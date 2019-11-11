Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669A6F774C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 16:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sG7SUI3e889P51bDEH/pef6IzD/N6sy7P37iYzNqQx8=; b=AaHxKuLnibaOYP
	yUU6zgb0C2JKoUKGcm+MYYN3cVnJ94HJjymHQHyvtpGFUoYkHzzS5Aw5p8/9IEHjxfm4LtzYEDtjx
	CHn+titxR9/YnguWId0fnnlHwFO8F1PMhhFhByGVhgnCm7EweKM8Ac/dJbyfjRdFYXg6ajxPKq2rO
	w1rjDBZopHBlOP4rFsZzVchOOjIaB9zScbX8u6G3jv+202XhxobwFJlqx6j/Ymql+HttNUNuGkk7N
	3URclkqa0YshbBF0pynFbVvIMlsFoxNDFWa/L32RmluTvTPVrV3DmRa0GTbmjCmCGJZ3+P7yZi6NS
	AS8ipZjSBlUgWAr0+SFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUBBB-00040x-D9; Mon, 11 Nov 2019 15:00:33 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUBAz-00040E-12; Mon, 11 Nov 2019 15:00:22 +0000
Received: from [192.168.0.108] (223.167.21.236) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Mon, 11 Nov
 2019 23:00:39 +0800
Subject: Re: [PATCH v4 3/4] soc: amlogic: Add support for Secure power domains
 controller
To: Kevin Hilman <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>
References: <1572868028-73076-1-git-send-email-jianxin.pan@amlogic.com>
 <1572868028-73076-4-git-send-email-jianxin.pan@amlogic.com>
 <7hmud4stfo.fsf@baylibre.com>
 <57b9c706-c341-c7cf-698a-66335b34442b@amlogic.com>
 <7h36eucw1u.fsf@baylibre.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <8e227a22-97af-fbdf-945f-f99b12d736c2@amlogic.com>
Date: Mon, 11 Nov 2019 23:00:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <7h36eucw1u.fsf@baylibre.com>
Content-Language: en-US
X-Originating-IP: [223.167.21.236]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_070021_067541_004B323B 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

On 2019/11/11 22:44, Kevin Hilman wrote:
> Hi Jianxin,
> 
> Jianxin Pan <jianxin.pan@amlogic.com> writes:
> 
> [...]
> 
>>>> +	SEC_PD(RAMB,	GENPD_FLAG_ALWAYS_ON),
>>>> +	SEC_PD(IR,	0),
>>>> +	SEC_PD(SPICC,	0),
>>>> +	SEC_PD(SPIFC,	0),
>>>> +	SEC_PD(USB,	0),
>>>> +	/* NIC is for NIC400, and should be always on */
>>>
>>> Why?
>>>
>> NIC domain is for ARM CoreLink NIC-400 Network Interconnect, and should be always on since bootloader.
> 
> OK, makes sense.  I suggest a minor change to the comment to remind that
> this is an interconnect:
> 
>    /* NIC is for the Arm NIC-400 interconnect, and should be always on */
> 
OK, I will update it, and thanks for the advice.
> Thanks,
> 
> Kevin
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
